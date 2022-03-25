
(The original rodinia readme is at [README](README))

## Running the cuda benchmarks

### Dataset
Download and place the `data/` contents from the 3.1 release from
http://lava.cs.virginia.edu/Rodinia/download_links.htm in `data/`.

### Compiler setup
Create a file defining Makefile variables used in compilation (refer to [common/epyc02.polygeist.host.make.config](common/epyc02.polygeist.host.make.config) or [common/kiev0.nvcc.host.make.config](common/kiev0.nvcc.host.make.config) for an example) and link it to `common/host.make.config`
```
cd common
# For cuda
vim my.host.make.config
ln -s my.host.make.config host.make.config
# For openmp
vim my.openmp.host.make.config
ln -s my.openmp.host.make.config openmp.host.make.config
```

This will cause it to be included from the Makefiles

All of the commands commands regarding the cuda benchmarks act on the ones listed in [scripts/cuda_apps.sh](scripts/cuda_apps.sh).

### Compilation
```sh
make TIMED_CUDA_clean
make TIMED_CUDA
```

To build with disabled verification code:
```sh
make TIMED_CUDA_clean
make MY_VERIFICATION_DISABLE=1 TIMED_CUDA
```


### Running
#### Timing:
```sh
./scripts/run_timed_cuda.sh
```
Will run the benchmarks and dump output and timing information in `results/cuda/`

#### Verification:
Dump verification information (can be done when running the benchmarks natively on cuda)
```sh
./scripts/dump_cuda_correctness_info.sh
```

Verify against already dumped verification info:
```sh
./scripts/check_cuda_correctness.sh
```

Verify against already dumped verification info but don't stop at a mismatch, continue to the end and log all mismatches:
```sh
./scripts/log_cuda_correctness.sh
```

To check the last log:
```sh
./scripts/vim_last_log.sh
```

The default location of the verification files is `verification_data/`.
