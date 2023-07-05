Expectation Maximization with a Gaussian Mixture Model in CUDA

Some parameters must be adjusted at compile-time. You can edit "gaussian.h" and then recompile to change these features

Parameters of note:

MAX_ITERS - defines the maximum number of iterations (number of E-step + M-step iterations). If reached, iterating will stop and the current solution will be output. The epsilon value used for converge is computed based on the input parameter, but it may need adjustment depending on the nature of your data. "epsilon" can be found in "gaussian.cu"
COVARIANCE_DYNAMIC_RANGE - the program adds (Average_variance/COVARIANCE_DYNAMIC_RANGE) to the diagonal of the covariance matrices. This helps prevent the matrices from becoming singular (un-invertable). If you see "NaN" values appearing in your output, try reduces this value, but it may introduce a little bit more error into your result.
ENABLE_DEBUG - prints out a bunch of extra debugging information
ENABLE_PRINT - prints some basic program status whlie running and the final clustering parameters. Typically only disabled for doing performance tests.
ENABLE_OUTPUT - outputs the gaussian mixture parameters and the membership probabilities for every data point


=== Running the Code ===

Usage: ./main num_clusters infile outfile [target_num_clusters]
         num_clusters: The number of starting clusters
         infile: ASCII space-delimited FCS data file
         outfile: Clustering results output file
         target_num_clusters: A desired number of clusters. Must be less than or equal to num_clusters

An example from the source folder..
    $ ./main 500 data result
    
This will produce "result.summary" and "result.results". The former contains the gaussian mixture parameters, and the latter contains the data and the cluster membership probabilities for each data point. The data values and the probabilities are separated by the tab, and the individual dimensions are separated by commas.

    
The theory and sequential code for Gaussian mixture model application was based on the "cluster" application by Charles Bouman from the University of Purdue.
https://engineering.purdue.edu/~bouman/software/cluster/


