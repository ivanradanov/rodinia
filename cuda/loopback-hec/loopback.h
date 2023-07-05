#define TAUSWORTHE_NUM_THREADS 256
#define TAUSWORTHE_NUM_BLOCKS 4096
#define TAUSWORTHE_TOTAL_NUM_THREADS  (TAUSWORTHE_NUM_THREADS * TAUSWORTHE_NUM_BLOCKS)
#define TAUSWORTHE_NUM_SEEDS_PER_GENERATOR 4
#define TAUSWORTHE_NUM_SEEDS (TAUSWORTHE_TOTAL_NUM_THREADS * TAUSWORTHE_NUM_SEEDS_PER_GENERATOR)
#define TAUSWORTHE_NUM_OUTPUTS_PER_RUN 2048

#define LOOKBACK_MAX_T  ((4096-256)/TAUSWORTHE_NUM_THREADS)
#define LOOKBACK_NUM_PARAMETER_VALUES  TAUSWORTHE_TOTAL_NUM_THREADS
#define LOOKBACK_TAUSWORTHE_NUM_BLOCKS TAUSWORTHE_NUM_BLOCKS
#define LOOKBACK_TAUSWORTHE_NUM_THREADS TAUSWORTHE_NUM_THREADS
#define LOOKBACK_PATHS_PER_SIM 512
#define PI 3.14159265f

unsigned Kiss()
{
  static unsigned z=362436069, w=521288629, jsr=123456789, jcong=380116160;

  z=36969*(z&65535)+(z>>16);
  w=18000*(w&65535)+(w>>16);
  unsigned mwc=(z<<16)+w;
  jsr^=(jsr<<17);
  jsr^=(jsr>>13);
  jsr^=(jsr<<5);
  jcong=69069*jcong+1234567;
  return (mwc^jcong)+jsr;
}

double Rand()
{
  unsigned long long x=Kiss();
  x=(x<<32)|Kiss();
  return x*5.4210108624275221703311375920553e-20;
}

