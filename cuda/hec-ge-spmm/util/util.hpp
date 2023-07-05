#ifndef GRB_UTIL_HPP
#define GRB_UTIL_HPP

#include <vector>
#include <iostream>
#include <typeinfo>
#include <cstdio>
#include <tuple>
#include <algorithm>
#include <sys/resource.h>
#include <sys/time.h>
#include <string>

#include <boost/program_options.hpp>

#include "mmio.hpp"
// #include "graphblas/types.hpp"

// Utility functions

namespace po = boost::program_options;

// void parseArgs( int argc, char**argv, po::variables_map& vm ) {
//   // Declare the supported options
//   po::options_description desc("Allowed options");
//   desc.add_options()
//     ("help", "produce help message")
//     ("ta", po::value<int>()->default_value(32), "threads per A row")
//     ("tb", po::value<int>()->default_value(32), "B slab width")
//     ("nt", po::value<int>()->default_value(128), "threads per block")
//     // ("BM", po::value<int>()->default_value(4), "number of row in output each block computes")
//     // ("BN", po::value<int>()->default_value(128),"number of columns in output each block computes")
//     // ("TN", po::value<int>()->default_value(64), "blockDim.x")
//     ("mode", po::value<std::string>()->default_value("fixedrow"), 
//        "row or column")
//     ("split", po::value<bool>()->default_value(false), 
//        "split spgemm computation")
//     ("iter", po::value<int>()->default_value(1000), "number of iterations")
//     ("device", po::value<int>()->default_value(0), "GPU device number")
//     ("nrows", po::value<int>()->default_value(100), "number of dense rows in A")
//     ("ncols", po::value<int>()->default_value(100), "number of dense cols in A")
//     ("max_ncols", po::value<int>()->default_value(64), "number of columns in B")
//     ("dense", po::value<int>()->default_value(1), "number of rows in dense")
//     ("debug", po::value<bool>()->default_value(false), "debug on")
//   ;

//   po::store(po::parse_command_line(argc, argv, desc), vm);
//   po::notify(vm);

//   // Note: No help message is produced if Boost Unittest Framework is also used
//   if( vm.count("help") ) {
//     std::cout << desc << "\n";
//     return;
//   }
// }

template<typename T>
bool compare(const std::tuple<int,
                              int,
                              T,
                              int> &lhs, 
             const std::tuple<int,
                              int,
                              T,
                              int> &rhs)
{
  int a = std::get<0>(lhs);
  int b = std::get<0>(rhs);
  int c = std::get<1>(lhs);
  int d = std::get<1>(rhs);
  if( a==b ) return c < d;
  else return a < b;
}

template<typename T>
void customSort( std::vector<int>& row_indices,
                 std::vector<int>& col_indices,
                 std::vector<T>& values )
{
  int nvals = row_indices.size();
  std::vector<std::tuple<int,
                         int,
                         T,
                         int> > my_tuple;

  for(int i=0;i<nvals;++i){
    my_tuple.push_back(std::make_tuple( row_indices[i], col_indices[i], 
                values[i], i));
  }
  std::sort( my_tuple.begin(), my_tuple.end(), compare<T> );
    
  std::vector<int> v1 = row_indices;
  std::vector<int> v2 = col_indices;
  std::vector<T>                v3 = values;

  for(int i=0;i<nvals;++i){
    int index= std::get<3>(my_tuple[i]);
    row_indices[i] = v1[index];
    col_indices[i] = v2[index];
    values[i]      = v3[index];
  }
}

template<typename T, typename mtxT>
void readTuples( std::vector<int>& row_indices,
                 std::vector<int>& col_indices,
                 std::vector<T>& values,
                 const int nvals,
                 FILE* f)
{
  int row_ind, col_ind;
  T value;
  mtxT raw_value;
  char type_str[3];
  type_str[0] = '%';
  if( typeid(mtxT)==typeid(int) )
    type_str[1] = 'd';
  else if( typeid(mtxT)==typeid(float) )
    type_str[1] = 'f';

  // Currently checks if there are fewer rows than promised
  // Could add check for edges in diagonal of adjacency matrix
  for( int i=0; i<nvals; i++ ) {
    if( fscanf(f, "%d", &row_ind)==EOF ) {
      std::cout << "Error: not enough rows in mtx file.\n";
      return;
    } else {
      int u = fscanf(f, "%d", &col_ind);

      // Convert 1-based indexing MTX to 0-based indexing C++
      row_indices.push_back(row_ind-1);
      col_indices.push_back(col_ind-1);

      u = fscanf(f, type_str, &raw_value);
      value = (T) raw_value;

      values.push_back(value);
      //std::cout << value << std::endl;
      //std::cout << "The first row is " << row_ind-1 << " " <<  col_ind-1
      //<< std::endl;

      // Finds max csr row.
      /*int csr_max = 0;
      int csr_current = 0;
      int csr_row = 0;
      int csr_first = 0;

      if( i!=0 ) {
        if( col_ind-1==0 ) csr_first++;
        if( col_ind-1==col_indices[i-1] )
          csr_current++;
        else {
          csr_current++;
          if( csr_current > csr_max ) {
            csr_max = csr_current;
            csr_current = 0;
            //csr_row = row_indices[i-1];
          } else
            csr_current = 0;
        }
      }*/
  }}
  //std::cout << "The biggest row was " << csr_row << " with " << csr_max << 
  //" elements.\n";
  //std::cout << "The first row has " << csr_first << " elements.\n";
}

template<typename T>
void readTuples( std::vector<int>& row_indices,
                 std::vector<int>& col_indices,
                 std::vector<T>& values,
                 const int nvals,
                 FILE* f)
{
  int row_ind, col_ind;
  T value = (T) 1.0;

  // Currently checks if there are fewer rows than promised
  // Could add check for edges in diagonal of adjacency matrix
  for( int i=0; i<nvals; i++ ) {
    if( fscanf(f, "%d", &row_ind)==EOF ) {
      std::cout << "Error: not enough rows in mtx file.\n";
      return;
    } else {
      int u = fscanf(f, "%d", &col_ind);

      // Convert 1-based indexing MTX to 0-based indexing C++
      row_indices.push_back(row_ind-1);
      col_indices.push_back(col_ind-1);
      values.push_back(value);

      // Finds max csr row.
      /*int csr_max = 0;
      int csr_current = 0;
      int csr_row = 0;
      int csr_first = 0;

      if( i!=0 ) {
        if( col_ind-1==0 ) csr_first++;
        if( col_ind-1==col_indices[i-1] )
          csr_current++;
        else {
          csr_current++;
          if( csr_current > csr_max ) {
            csr_max = csr_current;
            csr_current = 0;
            csr_row = row_indices[i-1];
          } else
            csr_current = 0;
        }
      }*/
  }}
  //std::cout << "The biggest row was " << csr_row << " with " << csr_max << 
  //" elements.\n";
  //std::cout << "The first row has " << csr_first << " elements.\n";
}

template<typename T>
void makeSymmetric( std::vector<int>& row_indices, 
                    std::vector<int>& col_indices,
                    std::vector<T>& values, 
                    int& nvals,
                    bool remove_self_loops=true ) {
  //std::cout << nvals << std::endl;

  for( int i=0; i<nvals; i++ ) {
    if( col_indices[i] != row_indices[i] ) {
      row_indices.push_back( col_indices[i] );
      col_indices.push_back( row_indices[i] );
      values.push_back( values[i] );
    }
  }

  nvals = row_indices.size();
  //std::cout << nvals << std::endl;

  // Sort
  customSort<T>( row_indices, col_indices, values );

  int curr = col_indices[0];
  int last;
  int curr_row = row_indices[0];
  int last_row;

  for( int i=0; i<nvals; i++ ) {
    last = curr;
    last_row = curr_row;
    curr = col_indices[i];
    curr_row = row_indices[i];

    // Self-loops (TODO: make self-loops contingent on whether we 
    // are doing graph algorithm or matrix multiplication)
    if( remove_self_loops && curr_row == curr )
      col_indices[i] = -1;

  // Duplicates
    // if( curr == last && curr_row == last_row ) {
    if ( i>0 && curr==last && curr_row==last_row ) {
      //printf("Curr: %d, Last: %d, Curr_row: %d, Last_row: %d\n", curr, last, 
    //  curr_row, last_row );
      col_indices[i] = -1;
  }}

  int shift = 0;

  // Remove self-loops and duplicates marked -1.
  int back = 0;
  for( int i=0; i+shift<nvals; i++ ) {
    if(col_indices[i] == -1) {
      for( ; back<=nvals; shift++ ) {
        back = i+shift;
        if( col_indices[back] != -1 ) {
          col_indices[i] = col_indices[back];
          row_indices[i] = row_indices[back];
          col_indices[back] = -1;
          break;
  }}}}

  nvals = nvals-shift;
  row_indices.resize(nvals);
  col_indices.resize(nvals);
  //std::cout << nvals << std::endl;
  values.resize(nvals);
}

template<typename T>
int readMtx( const char *fname,
             std::vector<int>& row_indices,
             std::vector<int>& col_indices,
             std::vector<T>& values,
             int& nrows,
             int& ncols,
             int& nvals)
            //  const bool DEBUG )
{
  int ret_code;
  MM_typecode matcode;
  FILE *f;

  if ((f = fopen(fname, "r")) == NULL) {
    printf( "File %s not found", fname );
    exit(1);
  }

  // Read MTX banner
  if (mm_read_banner(f, &matcode) != 0) {
    printf("Could not process Matrix Market banner.\n");
    exit(1);
  }

  // Read MTX Size
  if ((ret_code = mm_read_mtx_crd_size(f, &nrows, &ncols, &nvals)) !=0)
    exit(1);

  if (mm_is_integer(matcode))
    readTuples<T, int>( row_indices, col_indices, values, nvals, f );
  else if (mm_is_real(matcode))
    readTuples<T, float>( row_indices, col_indices, values, nvals, f );
  else if (mm_is_pattern(matcode))
    readTuples<T>( row_indices, col_indices, values, nvals, f );

  // If graph is symmetric, replicate it out in memory
  if( mm_is_symmetric(matcode) )
  // If user wants to treat MTX as a directed graph
  //if( undirected )
    makeSymmetric<T>( row_indices, col_indices, values, nvals);
  customSort<T>( row_indices, col_indices, values );

  // if( DEBUG ) mm_write_banner(stdout, matcode);
  // if( DEBUG ) mm_write_mtx_crd_size(stdout, nrows, ncols, nvals);

  return ret_code; //TODO: parse ret_code
}

template<typename T>
void printArray( const char* str, const T *array, int length=40 )
{
  if( length>40 ) length=40;
  std::cout << str << ":\n";
  for( int i=0;i<length;i++ )
    std::cout << "[" << i << "]:" << array[i] << " ";
  std::cout << "\n";
}

template<typename T>
void printArray( const char* str, std::vector<T>& array, int length=40 )
{
  if( length>40 ) length=40;
  std::cout << str << ":\n";
  for( int i=0;i<length;i++ )
    std::cout << "[" << i << "]:" << array[i] << " ";
  std::cout << "\n";
}

#endif  // GRB_UTIL_HPP
