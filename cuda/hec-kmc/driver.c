#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <errno.h>
#include "svm.h"
#define Malloc(type,n) (type *)malloc((n)*sizeof(type))

// the function is defined in main.cpp
void cal_km(struct svm_problem *pecm);

void print_null(const char *s) {}

void exit_with_help()
{
  printf(
      "Usage: svm-train [options] training_set_file\n"
      "options:\n"
      "-d degree : set degree in kernel function (default 3)\n"
      "-g gamma : set gamma in kernel function (default 1/num_features)\n"
      "-r coef0 : set coef0 in kernel function (default 0)\n"
      "-c cost : set the parameter C of C-SVC, epsilon-SVR, and nu-SVR (default 1)\n"
      "-n nu : set the parameter nu of nu-SVC, one-class SVM, and nu-SVR (default 0.5)\n"
      "-p epsilon : set the epsilon in loss function of epsilon-SVR (default 0.1)\n"
      "-m cachesize : set cache memory size in MB (default 100)\n"
      "-e epsilon : set tolerance of termination criterion (default 0.001)\n"
      "-h shrinking : whether to use the shrinking heuristics, 0 or 1 (default 1)\n"
      "-b probability_estimates : whether to train a SVC or SVR model for probability estimates, 0 or 1 (default 0)\n"
      "-wi weight : set the parameter C of class i to weight*C, for C-SVC (default 1)\n"
      "-v n: n-fold cross validation mode\n"
      "-q : quiet mode (no outputs)\n"
      );
  exit(1);
}

void exit_input_error(int line_num)
{
  fprintf(stderr,"Wrong input format at line %d\n", line_num);
  exit(1);
}

void parse_command_line(int argc, char **argv, char *input_file_name, char *model_file_name);
void read_problem(const char *filename);
void do_cross_validation();
void cal_km(struct svm_problem *p_km);

struct svm_parameter param;    // set by parse_command_line
struct svm_problem prob;       // set by read_problem
struct svm_model *model;
struct svm_node *x_space;
int cross_validation;
int nr_fold;

static char *line = NULL;
static int max_line_len;

void setup_pkm(struct svm_problem *p_km)
{
  int i;

  p_km->l = prob.l;
  p_km->x = Malloc(struct svm_node,p_km->l);
  p_km->y = Malloc(double,p_km->l);

  for(i=0;i<prob.l;i++)
  {
    (p_km->x+i)->values = Malloc(double,prob.l+1);
    (p_km->x+i)->dim = prob.l+1;
  }

  for( i=0; i<prob.l; i++) p_km->y[i] = prob.y[i];
}

void free_pkm(struct svm_problem *p_km)
{
  int i;

  for(i=0;i<prob.l;i++)
    free( (p_km->x+i)->values);

  free( p_km->x );
  free( p_km->y );
}

double do_crossvalidation(struct svm_problem * p_km)
{
  int i;
  int total_correct = 0;
  double total_error = 0;

  double rate = 0;
  double sumv = 0, sumy = 0, sumvv = 0, sumyy = 0, sumvy = 0;
  double *target = Malloc(double,prob.l);

  svm_cross_validation(p_km,&param,nr_fold,target);

  if(param.svm_type == EPSILON_SVR ||
      param.svm_type == NU_SVR)
  {
    for(i=0;i<prob.l;i++)
    {
      double y = prob.y[i];
      double v = target[i];
      total_error += (v-y)*(v-y);
      sumv += v;
      sumy += y;
      sumvv += v*v;
      sumyy += y*y;
      sumvy += v*y;
    }
    printf("Cross Validation Mean squared error = %g\n",total_error/prob.l);
    printf("Cross Validation Squared correlation coefficient = %g\n",
        ((prob.l*sumvy-sumv*sumy)*(prob.l*sumvy-sumv*sumy))/
        ((prob.l*sumvv-sumv*sumv)*(prob.l*sumyy-sumy*sumy))
          );
  }
  else
  {
    for(i=0;i<prob.l;i++)
      if(target[i] == prob.y[i])
        ++total_correct;

    rate = (100.0*total_correct)/prob.l;
  }
  free(target);
  return rate;
}

void run_pair(struct svm_problem * p_km)
{
  double rate;

  cal_km(p_km);

  param.kernel_type = PRECOMPUTED;

  rate = do_crossvalidation(p_km);

  printf("Cross Validation = %g%%\n", rate);
}

void do_cross_validation_with_KM_precalculated(   )
{
  struct svm_problem p_km;

  setup_pkm(&p_km );

  run_pair( &p_km);

  free_pkm(&p_km);
}

static char* readline(FILE *input)
{
  int len;

  if(fgets(line,max_line_len,input) == NULL)
    return NULL;

  while(strrchr(line,'\n') == NULL)
  {
    max_line_len *= 2;
    line = (char *) realloc(line,max_line_len);
    len = (int) strlen(line);
    if(fgets(line+len,max_line_len-len,input) == NULL)
      break;
  }
  return line;
}

int main(int argc, char **argv)
{
  int i;
  char input_file_name[1024];
  char model_file_name[1024];
  const char *error_msg;

  parse_command_line(argc, argv, input_file_name, model_file_name);
  read_problem(input_file_name);
  error_msg = svm_check_parameter(&prob,&param);
  if(error_msg)
  {
    fprintf(stderr,"ERROR: %s\n",error_msg);
    exit(1);
  }

  if(cross_validation)
  {
    do_cross_validation_with_KM_precalculated(  );
  }
  svm_destroy_param(&param);
  free(prob.y);

#ifdef _DENSE_REP
  for (i = 0; i < prob.l; ++i)
    free((prob.x+i)->values);
#else
  free(x_space);
#endif
  free(prob.x);
  free(line);

  return 0;
}

void parse_command_line(int argc, char **argv, char *input_file_name, char *model_file_name)
{
  int i;
  void (*print_func)(const char*) = NULL;  // default printing to stdout

  // default values
  param.svm_type = C_SVC;
  param.kernel_type = RBF;
  param.degree = 3;
  param.gamma = 0;
  param.coef0 = 0;
  param.nu = 0.5;
  param.cache_size = 100;
  param.C = 1;
  param.eps = 1e-3;
  param.p = 0.1;
  param.shrinking = 1;
  param.probability = 0;
  param.nr_weight = 0;
  param.weight_label = NULL;
  param.weight = NULL;
  cross_validation = 0;

  // parse options
  for(i=1;i<argc;i++)
  {
    if(argv[i][0] != '-') break;
    if(++i>=argc)
      exit_with_help();
    switch(argv[i-1][1])
    {
      case 's':
        param.svm_type = atoi(argv[i]);
        break;
      case 't':
        param.kernel_type = atoi(argv[i]);
        break;
      case 'd':
        param.degree = atoi(argv[i]);
        break;
      case 'g':
        param.gamma = atof(argv[i]);
        break;
      case 'r':
        param.coef0 = atof(argv[i]);
        break;
      case 'n':
        param.nu = atof(argv[i]);
        break;
      case 'm':
        param.cache_size = atof(argv[i]);
        break;
      case 'c':
        param.C = atof(argv[i]);
        break;
      case 'e':
        param.eps = atof(argv[i]);
        break;
      case 'p':
        param.p = atof(argv[i]);
        break;
      case 'h':
        param.shrinking = atoi(argv[i]);
        break;
      case 'b':
        param.probability = atoi(argv[i]);
        break;
      case 'q':
        print_func = &print_null;
        i--;
        break;
      case 'v':
        cross_validation = 1;
        nr_fold = atoi(argv[i]);
        if(nr_fold < 2)
        {
          fprintf(stderr,"n-fold cross validation: n must >= 2\n");
          exit_with_help();
        }
        break;
      case 'w':
        ++param.nr_weight;
        param.weight_label = (int *)realloc(param.weight_label,sizeof(int)*param.nr_weight);
        param.weight = (double *)realloc(param.weight,sizeof(double)*param.nr_weight);
        param.weight_label[param.nr_weight-1] = atoi(&argv[i-1][2]);
        param.weight[param.nr_weight-1] = atof(argv[i]);
        break;
      default:
        fprintf(stderr,"Unknown option: -%c\n", argv[i-1][1]);
        exit_with_help();
    }
  }

  svm_set_print_string_function(print_func);

  // determine filenames

  if(i>=argc)
    exit_with_help();

  strcpy(input_file_name, argv[i]);

  if(i<argc-1)
    strcpy(model_file_name,argv[i+1]);
  else
  {
    char *p = strrchr(argv[i],'/');
    if(p==NULL)
      p = argv[i];
    else
      ++p;
    sprintf(model_file_name,"%s.model",p);
  }
}

// read in a problem (in svmlight format)

void read_problem(const char *filename)
{
  int elements, max_index, inst_max_index, i, j;
#ifdef _DENSE_REP
  double value;
#endif
  FILE *fp = fopen(filename,"r");
  char *endptr;
  char *idx, *val, *label;

  if(fp == NULL)
  {
    fprintf(stderr,"can't open input file %s\n",filename);
    exit(1);
  }

  prob.l = 0;
  elements = 0;

  max_line_len = 1024;
  line = Malloc(char,max_line_len);
#ifdef _DENSE_REP
  max_index = 1;
  while(readline(fp) != NULL)
  {
    char *p;    
    p = strrchr(line, ':');
    if(p != NULL)
    {      
      while(*p != ' ' && *p != '\t' && p > line)
        p--;
      if(p > line)
        max_index = (int) strtol(p,&endptr,10) + 1;
    }
    if(max_index > elements)
      elements = max_index;
    ++prob.l;
  }

  rewind(fp);

  prob.y = Malloc(double,prob.l);
  prob.x = Malloc(struct svm_node,prob.l);

  for(i=0;i<prob.l;i++)
  {
    int *d; 
    (prob.x+i)->values = Malloc(double,elements);
    (prob.x+i)->dim = 0;

    inst_max_index = -1; // strtol gives 0 if wrong format, and precomputed kernel has <index> start from 0
    readline(fp);

    label = strtok(line," \t");
    prob.y[i] = strtod(label,&endptr);
    if(endptr == label)
      exit_input_error(i+1);

    while(1)
    {
      idx = strtok(NULL,":");
      val = strtok(NULL," \t");

      if(val == NULL)
        break;

      errno = 0;
      j = (int) strtol(idx,&endptr,10);
      if(endptr == idx || errno != 0 || *endptr != '\0' || j <= inst_max_index)
        exit_input_error(i+1);
      else
        inst_max_index = j;

      errno = 0;
      value = strtod(val,&endptr);
      if(endptr == val || errno != 0 || (*endptr != '\0' && !isspace(*endptr)))
        exit_input_error(i+1);

      d = &((prob.x+i)->dim);
      while (*d < j)
        (prob.x+i)->values[(*d)++] = 0.0;
      (prob.x+i)->values[(*d)++] = value;
    }  
  }
  max_index = elements-1;

#else
  while(readline(fp)!=NULL)
  {
    char *p = strtok(line," \t"); // label

    // features
    while(1)
    {
      p = strtok(NULL," \t");
      if(p == NULL || *p == '\n') // check '\n' as ' ' may be after the last feature
        break;
      ++elements;
    }
    ++elements;
    ++prob.l;
  }
  rewind(fp);

  prob.y = Malloc(double,prob.l);
  prob.x = Malloc(struct svm_node *,prob.l);
  x_space = Malloc(struct svm_node,elements);

  max_index = 0;
  j=0;
  for(i=0;i<prob.l;i++)
  {
    inst_max_index = -1; // strtol gives 0 if wrong format, and precomputed kernel has <index> start from 0
    readline(fp);
    prob.x[i] = &x_space[j];
    label = strtok(line," \t\n");
    if(label == NULL) // empty line
      exit_input_error(i+1);

    prob.y[i] = strtod(label,&endptr);
    if(endptr == label || *endptr != '\0')
      exit_input_error(i+1);

    while(1)
    {
      idx = strtok(NULL,":");
      val = strtok(NULL," \t");

      if(val == NULL)
        break;

      errno = 0;
      x_space[j].index = (int) strtol(idx,&endptr,10);
      if(endptr == idx || errno != 0 || *endptr != '\0' || x_space[j].index <= inst_max_index)
        exit_input_error(i+1);
      else
        inst_max_index = x_space[j].index;

      errno = 0;
      x_space[j].value = strtod(val,&endptr);
      if(endptr == val || errno != 0 || (*endptr != '\0' && !isspace(*endptr)))
        exit_input_error(i+1);

      ++j;
    }

    if(inst_max_index > max_index)
      max_index = inst_max_index;
    x_space[j++].index = -1;
  }
#endif

  if(param.gamma == 0 && max_index > 0)
    param.gamma = 1.0/max_index;

  if(param.kernel_type == PRECOMPUTED)
    for(i=0;i<prob.l;i++)
    {
#ifdef _DENSE_REP
      if ((prob.x+i)->dim == 0 || (prob.x+i)->values[0] == 0.0)
      {
        fprintf(stderr,"Wrong input format: first column must be 0:sample_serial_number\n");
        exit(1);
      }
      if ((int)(prob.x+i)->values[0] < 0 || (int)(prob.x+i)->values[0] > max_index)
      {
        fprintf(stderr,"Wrong input format: sample_serial_number out of range\n");
        exit(1);
      }
#else
      if (prob.x[i][0].index != 0)
      {
        fprintf(stderr,"Wrong input format: first column must be 0:sample_serial_number\n");
        exit(1);
      }
      if ((int)prob.x[i][0].value <= 0 || (int)prob.x[i][0].value > max_index)
      {
        fprintf(stderr,"Wrong input format: sample_serial_number out of range\n");
        exit(1);
      }
#endif
    }
  fclose(fp);
}
