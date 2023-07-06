#!/bin/bash

echo "
adam-cuda
adv-cuda
aligned-types-cuda
all-pairs-distance-cuda
aobench-cuda
asmooth-cuda
assert-cuda
asta-cuda
atan2-cuda
atomicAggregate-cuda
atomicCAS-cuda
atomicCost-cuda
atomicIntrinsics-cuda
atomicPerf-cuda
attention-cuda
attentionMultiHead-cuda
bezier-surface-cuda
binomial-cuda
black-scholes-cuda
bonds-cuda
bsearch-cuda
bspline-vgh-cuda
burger-cuda
car-cuda
cbsfil-cuda
ccsd-trpdrv-cuda
channelShuffle-cuda
channelSum-cuda
clenergy-cuda
clink-cuda
cmembench-cuda
cobahh-cuda
collision-cuda
columnarSolver-cuda
complex-cuda
concurrentKernels-cuda
convolutionSeparable-cuda
cooling-cuda
copy-cuda
crossEntropy-cuda
d2q9-bgk-cuda
d3q19-bgk-cuda
damage-cuda
dct8x8-cuda
debayer-cuda
dpid-cuda
ecdh-cuda
entropy-cuda
expdist-cuda
extend2-cuda
f16sp-cuda
feynman-kac-cuda
fhd-cuda
flip-cuda
floydwarshall-cuda
fwt-cuda
ga-cuda
gabor-cuda
geam-cuda
gelu-cuda
gemmEx-cuda
geodesic-cuda
gmm-cuda
goulash-cuda
grep-cuda
haccmk-cuda
hellinger-cuda
hmm-cuda
hwt1d-cuda
idivide-cuda
interleave-cuda
ising-cuda
iso2dfd-cuda
jenkins-hash-cuda
kalman-cuda
keccaktreehash-cuda
keogh-cuda
knn-cuda
laplace-cuda
laplace3d-cuda
lavaMD-cuda
layout-cuda
lfib4-cuda
log2-cuda
lombscargle-cuda
loopback-cuda
mask-cuda
matern-cuda
matrix-rotate-cuda
maxFlops-cuda
maxpool3d-cuda
memcpy-cuda
memtest-cuda
minisweep-cuda
mkl-sgemm-cuda
mt-cuda
murmurhash3-cuda
ne-cuda
nms-cuda
overlay-cuda
p2p-cuda
page-rank-cuda
particle-diffusion-cuda
particles-cuda
perlin-cuda
pitch-cuda
pool-cuda
popcount-cuda
prefetch-cuda
projectile-cuda
qrg-cuda
resize-cuda
rfs-cuda
ring-cuda
rng-wallace-cuda
rowwiseMoments-cuda
rtm8-cuda
rushlarsen-cuda
score-cuda
sheath-cuda
shuffle-cuda
simplemoc-cuda
simpleMultiDevice-cuda
snake-cuda
softmax-cuda
sort-cuda
sph-cuda
split-cuda
spm-cuda
stencil1d-cuda
stencil3d-cuda
surfel-cuda
tensorAccessor-cuda
thomas-cuda
threadfence-cuda
vote-cuda
wedford-cuda
zerocopy-cuda
"
exit

##### POLYGEIST FAILS TO COMPILE BELOW #####

accuracy-cuda
ace-cuda
addBiasResidualLayerNorm-cuda
affine-cuda
aidw-cuda
aop-cuda
atomicReduction-cuda
atomicSystemWide-cuda
babelstream-cuda
background-subtract-cuda
btree-cuda
bh-cuda
bilateral-cuda
bincount-cuda
bitonic-sort-cuda
bn-cuda
bscan-cuda
bwt-cuda
cc-cuda
ccs-cuda
ced-cuda
chacha20-cuda
che-cuda
chemv-cuda
clock-cuda
cm-cuda
compute-score-cuda
concat-cuda
convolution1D-cuda
crc64-cuda
cross-cuda
dp-cuda
degrid-cuda
dense-embedding-cuda
depixel-cuda
deredundancy-cuda
dispatch-cuda
doh-cuda
dropout-cuda
dslash-cuda
dwconv-cuda
dxtc1-cuda
egs-cuda
eigenvalue-cuda
eikonal-cuda
epistasis-cuda
extrema-cuda
f16max-cuda
face-cuda
fdtd3d-cuda
fft-cuda
filter-cuda
flame-cuda
floydwarshall2-cuda
fluidSim-cuda
fpc-cuda
fsm-cuda
gamma-correction-cuda
gc-cuda
gd-cuda
glu-cuda
graphB+-cuda
grrt-cuda

gru-cuda
haversine-cuda
henry-cuda
hexciton-cuda
hungarian-cuda
inversek2j-cuda
jaccard-cuda
langevin-cuda
ldpc-cuda
libor-cuda
lif-cuda
linearprobing-cuda
logprob-cuda
lrn-cuda
lulesh-cuda
mandelbrot-cuda
marchingCubes-cuda
matrixT-cuda
mcpr-cuda
md-cuda
mdh-cuda
medianfilter-cuda

merge-cuda
metropolis-cuda
michalewicz-cuda
minimod-cuda
minkowski-cuda
mis-cuda
mixbench-cuda
mnist-cuda
mpc-cuda
mrc-cuda
multinomial-cuda
nbody-cuda
nlll-cuda
nqueen-cuda

ntt-cuda
overlap-cuda
p4-cuda
perplexity-cuda
phmm-cuda
pnpoly-cuda
pns-cuda
pointwise-cuda
present-cuda
radixsort-cuda
randomAccess-cuda
relu-cuda
reverse-cuda
romberg-cuda
rsbench-cuda
rsmt-cuda
s3d-cuda
s8n-cuda
sampling-cuda
scan-cuda
scel-cuda
ss-cuda
sssp-cuda
stddev-cuda
su3-cuda
svd3x3-cuda
sw4ck-cuda
swish-cuda
tensorT-cuda
tissue-cuda
tonemapping-cuda
tsa-cuda
tsp-cuda
winograd-cuda
wlcpow-cuda
wyllie-cuda
zeropoint-cuda
zmddft-cuda


# Affine map error
chi2-cuda

# found mlir loop with more than one exit, skipping.
lanczos-cuda

# we failed to emit call to builtin function __nvvm_shfl_sync_down_f32
warpsort-cuda

# Unhandled:
# `__builtin_clzl'
# `__builtin_is_constant_evaluated'
# `__builtin_unreachable'
# `__builtin_is_constant_evaluated'
# `__builtin_unreachable'
# `__builtin_memcmp'
# `__builtin_memcmp
histogram-cuda

# Take too long
contract-cuda
crs-cuda
ddbp-cuda
tridiagonal-cuda
sosfil-cuda
vmc-cuda
zoom-cuda
vanGenuchten-cuda
is-cuda
morphology-cuda
lid-driven-cavity-cuda
md5hash-cuda
ert-cuda
secp256k1-cuda
qtclustering-cuda
nbnxm-cuda
resnet-kernels-cuda
gibbs-cuda
reaction-cuda
scan2-cuda
quicksort-cuda
frechet-cuda


##### CLANG FAILS TO COMPILE BENCHMARKS BELOW #####

# Failing with the __noinline__ problem
mmcsf-cuda
ans-cuda
boxfilter-cuda
sortKV-cuda
coordinates-cuda
diamond-cuda
divergence-cuda
ge-spmm-cuda
gpp-cuda
hbc-cuda
kurtosis-cuda
match-cuda
meanshift-cuda
mtf-cuda
recursiveGaussian-cuda
remap-cuda
sa-cuda
scan3-cuda
segment-reduce-cuda
wordcount-cuda
minibude-cuda

# nvcc -dc
xlqc-cuda

# No input file
cmp-cuda

# --default-stream unsupported
bmf-cuda

# mpi
halo-finder-cuda

# shuffle
bm3d-cuda

# textures
miniWeather-cuda
multimaterial-cuda
permutate-cuda
pso-cuda
rodrigues-cuda
wsm5-cuda

# Other compilation failures
axhelm-cuda
daphne-cuda
aes-cuda
amgmk-cuda
bitpacking-cuda
bsw-cuda
conversion-cuda
distort-cuda
easyWave-cuda
fpdc-cuda
fresnel-cuda
frna-cuda
hausdorff-cuda
heat2d-cuda
hogbom-cuda
hypterm-cuda
interval-cuda
jacobi-cuda
kmc-cuda
langford-cuda
lci-cuda
lda-cuda
lebesgue-cuda
logan-cuda
lr-cuda
lsqt-cuda
mcmd-cuda
merkle-cuda
mf-sgd-cuda
miniDGS-cuda
miniFE-cuda
minimap2-cuda
minmax-cuda
mr-cuda
mriQ-cuda
nonzero-cuda
norm2-cuda
openmp-cuda
pad-cuda
prna-cuda
rainflow-cuda
rsc-cuda
sad-cuda
saxpy-ompt-cuda
sc-cuda
seam-carving-cuda
segsort-cuda
shmembench-cuda
si-cuda
simpleSpmv-cuda
slu-cuda
sobel-cuda
sobol-cuda
sparkler-cuda
sptrsv-cuda
tc-cuda
testSNAP-cuda
tpacf-cuda
tqs-cuda
triad-cuda
unfold-cuda
urng-cuda
vol2col-cuda
voxelizer-cuda
xsbench-cuda

##### COMPILATION FAILURES END #####

# rodinia dupes
b+tree-cuda
hybridsort-cuda
srad-cuda
streamcluster-cuda
cfd-cuda
gaussian-cuda
particlefilter-cuda
lud-cuda
backprop-cuda
bfs-cuda
hotspot-cuda
hotspot3D-cuda
myocyte-cuda
nn-cuda
nw-cuda
pathfinder-cuda
heartwall-cuda
kmeans-cuda
leukocyte-cuda

# not timing TODO
heat-cuda

# we dont care about this
mallocFree-cuda
