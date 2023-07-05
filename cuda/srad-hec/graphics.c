#include <stdio.h>

//  WRITE FUNCTION

void write_graphics(
    const char* filename,
    fp* input, 
    int data_rows, 
    int data_cols, 
    int major,
    int data_range){

  //================================================================================80
  //  VARIABLES
  //================================================================================80

  FILE* fid;
  int i, j;

  //================================================================================80
  //  CREATE/OPEN FILE FOR WRITING
  //================================================================================80

  fid = fopen(filename, "w");
  if( fid == NULL ){
    printf( "The file was not created/opened for writing\n" );
    return;
  }

  //================================================================================80
  //  WRITE PGM FILE HEADER
  //================================================================================80

  fprintf(fid, "P2\n");
  fprintf(fid, "%d %d\n", data_cols, data_rows);
  fprintf(fid, "%d\n", data_range);

  //================================================================================80
  //  WRITE VALUES TO THE FILE
  //================================================================================80

  // if matrix is saved row major in memory (C)
  if(major==0){
    for(i=0; i<data_rows; i++){
      for(j=0; j<data_cols; j++){
        fprintf(fid, "%d ", (int)input[i*data_cols+j]);
      }
      fprintf(fid, "\n");
    }
  }
  // if matrix is saved column major in memory (MATLAB)
  else{
    for(i=0; i<data_rows; i++){
      for(j=0; j<data_cols; j++){
        fprintf(fid, "%d ", (int)input[j*data_rows+i]);
      }
      fprintf(fid, "\n");
    }
  }

  //================================================================================80
  //  CLOSE FILE
  //================================================================================80

  fclose(fid);

}

//====================================================================================================100
//====================================================================================================100
//  READ FUNCTION
//====================================================================================================100
//====================================================================================================100

bool read_graphics(
    const char* filename,
    fp* input,
    int data_rows, 
    int data_cols,
    int major){

  //================================================================================80
  //  VARIABLES
  //================================================================================80

  FILE* fid;
  int i, j;
  char c;
  int temp;

  //================================================================================80
  //  OPEN FILE FOR READING
  //================================================================================80

  fid = fopen(filename, "r");
  if( fid == NULL ){
    printf( "The file was not opened for reading\n" );
    return false;
  }

  //================================================================================80
  //  SKIP PGM FILE HEADER
  //================================================================================80

  i = 0;
  while(i<3){
    c = fgetc(fid);
    if(c == '\n'){
      i = i+1;
    }
  };

  //================================================================================80
  //  READ VALUES FROM THE FILE
  //================================================================================80

  if(major==0){                                // if matrix is saved row major in memory (C)
    for(i=0; i<data_rows; i++){
      for(j=0; j<data_cols; j++){
        fscanf(fid, "%d", &temp);
        input[i*data_cols+j] = (fp)temp;
      }
    }
  }
  else{                                        // if matrix is saved column major in memory (MATLAB)
    for(i=0; i<data_rows; i++){
      for(j=0; j<data_cols; j++){
        fscanf(fid, "%d", &temp);
        input[j*data_rows+i] = (fp)temp;
      }
    }
  }

  //================================================================================80
  //  CLOSE FILE
  //================================================================================80

  fclose(fid);
  return true;
}
