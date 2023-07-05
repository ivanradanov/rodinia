//blackScholesAnalyticEngineKernels.cu
//Scott Grauer-Gray
//Kernels for running black scholes using the analytic engine

#ifndef BLACK_SCHOLES_ANALYTIC_ENGINE_KERNELS_CU
#define BLACK_SCHOLES_ANALYTIC_ENGINE_KERNELS_CU

//declarations for the kernels
#include "blackScholesAnalyticEngineKernels.cuh"

//needed for the constants in the error function
#include "errorFunctConsts.cuh"


//device kernel to retrieve the compound factor in interestRate
__device__ float interestRateCompoundFactor(float t, yieldTermStruct currYieldTermStruct)
{
  return (expf((currYieldTermStruct.forward)*t));
}


//device kernel to retrieve the discount factor in interestRate
__device__ float interestRateDiscountFactor(float t, yieldTermStruct currYieldTermStruct)
{
  return 1.0f / interestRateCompoundFactor(t, currYieldTermStruct);
}


//device function to get the variance of the black volatility function
__device__ float getBlackVolBlackVar(blackVolStruct volTS)
{
  float vol = volTS.volatility;
  return vol*vol*volTS.timeYearFraction;
}


//device function to get the discount on a dividend yield
__device__ float getDiscountOnDividendYield(float yearFraction, yieldTermStruct dividendYieldTermStruct)
{
  float intDiscountFactor = interestRateDiscountFactor(yearFraction, dividendYieldTermStruct);
  return intDiscountFactor;
}


//device function to get the discount on the risk free rate
__device__ float getDiscountOnRiskFreeRate(float yearFraction, yieldTermStruct riskFreeRateYieldTermStruct)
{
  return interestRateDiscountFactor(yearFraction, riskFreeRateYieldTermStruct);
}


//device kernel to run the error function
__device__ float errorFunct(normalDistStruct normDist, float x)
{
  float R,S,P,Q,s,y,z,r, ax;

  ax = fabsf(x);

  if(ax < 0.84375f) 
  {      
    if(ax < 3.7252902984e-09f) 
    { 
      if (ax < FLT_MIN*16.0f)
        return 0.125f*(8.0f*x+ (ERROR_FUNCT_efx8)*x);  /*avoid underflow */
      return x + (ERROR_FUNCT_efx)*x;
    }
    z = x*x;
    r = ERROR_FUNCT_pp0+z*(ERROR_FUNCT_pp1+z*(ERROR_FUNCT_pp2+z*(ERROR_FUNCT_pp3+z*ERROR_FUNCT_pp4)));
    s = ERROR_FUNCT_one+z*(ERROR_FUNCT_qq1+z*(ERROR_FUNCT_qq2+z*(ERROR_FUNCT_qq3+z*(ERROR_FUNCT_qq4+z*ERROR_FUNCT_qq5))));
    y = r/s;
    return x + x*y;
  }
  if(ax <1.25f) 
  {      
    s = ax-ERROR_FUNCT_one;
    P = ERROR_FUNCT_pa0+s*(ERROR_FUNCT_pa1+s*(ERROR_FUNCT_pa2+s*(ERROR_FUNCT_pa3+s*(ERROR_FUNCT_pa4+s*(ERROR_FUNCT_pa5+s*ERROR_FUNCT_pa6)))));
    Q = ERROR_FUNCT_one+s*(ERROR_FUNCT_qa1+s*(ERROR_FUNCT_qa2+s*(ERROR_FUNCT_qa3+s*(ERROR_FUNCT_qa4+s*(ERROR_FUNCT_qa5+s*ERROR_FUNCT_qa6)))));
    if(x>=0.0f) return ERROR_FUNCT_erx + P/Q; else return -1.0f*ERROR_FUNCT_erx - P/Q;
  }
  if (ax >= 6.0f) 
  {      
    if(x>=0.0f) 
      return ERROR_FUNCT_one-ERROR_FUNCT_tiny; 
    else 
      return ERROR_FUNCT_tiny-ERROR_FUNCT_one;
  }

  /* Starts to lose accuracy when ax~5 */
  s = ERROR_FUNCT_one/(ax*ax);

  if(ax < 2.85714285714285f) { /* |x| < 1/0.35 */
    R = ERROR_FUNCT_ra0+s*(ERROR_FUNCT_ra1+s*(ERROR_FUNCT_ra2+s*(ERROR_FUNCT_ra3+s*(ERROR_FUNCT_ra4+s*(ERROR_FUNCT_ra5+s*(ERROR_FUNCT_ra6+s*ERROR_FUNCT_ra7))))));
    S = ERROR_FUNCT_one+s*(ERROR_FUNCT_sa1+s*(ERROR_FUNCT_sa2+s*(ERROR_FUNCT_sa3+s*(ERROR_FUNCT_sa4+s*(ERROR_FUNCT_sa5+s*(ERROR_FUNCT_sa6+s*(ERROR_FUNCT_sa7+s*ERROR_FUNCT_sa8)))))));
  } else {    /* |x| >= 1/0.35 */
    R=ERROR_FUNCT_rb0+s*(ERROR_FUNCT_rb1+s*(ERROR_FUNCT_rb2+s*(ERROR_FUNCT_rb3+s*(ERROR_FUNCT_rb4+s*(ERROR_FUNCT_rb5+s*ERROR_FUNCT_rb6)))));
    S=ERROR_FUNCT_one+s*(ERROR_FUNCT_sb1+s*(ERROR_FUNCT_sb2+s*(ERROR_FUNCT_sb3+s*(ERROR_FUNCT_sb4+s*(ERROR_FUNCT_sb5+s*(ERROR_FUNCT_sb6+s*ERROR_FUNCT_sb7))))));
  }

  r = expf( -ax*ax-0.5625f +R/S);
  if(x>=0.0f) 
    return ERROR_FUNCT_one-r/ax; 
  else 
    return r/ax-ERROR_FUNCT_one;
}



//device kernel to run the operator function in cumulative normal distribution
__device__ float cumNormDistOp(normalDistStruct normDist, float z)
{
  z = (z - normDist.average) / normDist.sigma;
  float result = 0.5f * ( 1.0f + errorFunct(normDist, z*M_SQRT_2 ) );
  return result;
}


//device kernel to run the gaussian function in the normal distribution
__device__ float gaussianFunctNormDist(normalDistStruct normDist, float x)
{
  float deltax = x - normDist.average;
  float exponent = -(deltax*deltax)/normDist.denominator;

  // debian alpha had some strange problem in the very-low range
  return exponent <= -690.0f ? 0.0f :  // exp(x) < 1.0e-300 anyway
    normDist.normalizationFactor * expf(exponent);
}


//device kernel to retrieve the derivative in a cumulative normal distribution
__device__ float cumNormDistDeriv(normalDistStruct normDist, float x)
{
  float xn = (x - normDist.average) / normDist.sigma;
  return gaussianFunctNormDist(normDist, xn) / normDist.sigma;
}


//device function to initialize the cumulative normal distribution structure
__device__ void initCumNormDist(normalDistStruct& currCumNormDist)
{
  currCumNormDist.average = 0.0f;
  currCumNormDist.sigma = 1.0f;
  currCumNormDist.normalizationFactor = M_SQRT_2*M_1_SQRTPI/currCumNormDist.sigma;
  currCumNormDist.derNormalizationFactor = currCumNormDist.sigma*currCumNormDist.sigma;
  currCumNormDist.denominator = 2.0f*currCumNormDist.derNormalizationFactor;
}


//device function to initialize variable in the black calculator
__device__ void initBlackCalcVars(blackCalcStruct& blackCalculator, payoffStruct payoff)
{
  blackCalculator.d1 = log(blackCalculator.forward / blackCalculator.strike)/blackCalculator.stdDev + 0.5f*blackCalculator.stdDev;
  blackCalculator.d2 = blackCalculator.d1 - blackCalculator.stdDev;

  //initialize the cumulative normal distribution structure
  normalDistStruct currCumNormDist;
  initCumNormDist(currCumNormDist);

  blackCalculator.cum_d1 = cumNormDistOp(currCumNormDist, blackCalculator.d1);
  blackCalculator.cum_d2 = cumNormDistOp(currCumNormDist, blackCalculator.d2);
  blackCalculator.n_d1 = cumNormDistDeriv(currCumNormDist, blackCalculator.d1);
  blackCalculator.n_d2 = cumNormDistDeriv(currCumNormDist, blackCalculator.d2);

  blackCalculator.x = payoff.strike;
  blackCalculator.DxDstrike = 1.0f;

  // the following one will probably disappear as soon as
  // super-share will be properly handled
  blackCalculator.DxDs = 0.0f;

  // this part is always executed.
  // in case of plain-vanilla payoffs, it is also the only part
  // which is executed.
  switch (payoff.type) 
  {
    case CALL:
      blackCalculator.alpha     = blackCalculator.cum_d1;//  N(d1)
      blackCalculator.DalphaDd1 = blackCalculator.n_d1;//  n(d1)
      blackCalculator.beta      = -1.0f*blackCalculator.cum_d2;// -N(d2)
      blackCalculator.DbetaDd2  = -1.0f*blackCalculator.n_d2;// -n(d2)
      break;
    case PUT:
      blackCalculator.alpha     = -1.0f+blackCalculator.cum_d1;// -N(-d1)
      blackCalculator.DalphaDd1 = blackCalculator.n_d1;//  n( d1)
      blackCalculator.beta      = 1.0f-blackCalculator.cum_d2;//  N(-d2)
      blackCalculator.DbetaDd2  = -1.0f* blackCalculator.n_d2;// -n( d2)
      break;
  }
}


//device function to initialize the black calculator
__device__ void initBlackCalculator(blackCalcStruct& blackCalc, payoffStruct payoff, float forwardPrice, float stdDev, float riskFreeDiscount)
{
  blackCalc.strike = payoff.strike;
  blackCalc.forward = forwardPrice;
  blackCalc.stdDev = stdDev;
  blackCalc.discount = riskFreeDiscount;
  blackCalc.variance = stdDev * stdDev;

  initBlackCalcVars(blackCalc, payoff);
}


//device function to retrieve the output resulting value
__device__ float getResultVal(blackCalcStruct blackCalculator)
{
  float result = blackCalculator.discount * (blackCalculator.forward * 
      blackCalculator.alpha + blackCalculator.x * blackCalculator.beta);
  return result;
}


//global function to retrieve the output value for an option
__global__ void getOutValOption(const optionInputStruct* options, float* outputVals, int numVals)
{
  int optionNum = blockIdx.x * blockDim.x + threadIdx.x;

  //check if within current options
  if (optionNum < numVals)
  {
    const optionInputStruct threadOption = options[optionNum];

    payoffStruct currPayoff;
    currPayoff.type = threadOption.type;
    currPayoff.strike = threadOption.strike;

    yieldTermStruct qTS;
    qTS.timeYearFraction = threadOption.t;
    qTS.forward = threadOption.q;

    yieldTermStruct rTS;
    rTS.timeYearFraction = threadOption.t;
    rTS.forward = threadOption.r;

    blackVolStruct volTS;
    volTS.timeYearFraction = threadOption.t;
    volTS.volatility = threadOption.vol;

    blackScholesMertStruct stochProcess;
    stochProcess.x0 = threadOption.spot;
    stochProcess.dividendTS = qTS;
    stochProcess.riskFreeTS = rTS;
    stochProcess.blackVolTS = volTS;

    optionStruct currOption;
    currOption.payoff = currPayoff;
    currOption.yearFractionTime = threadOption.t;
    currOption.pricingEngine = stochProcess; 

    float variance = getBlackVolBlackVar(currOption.pricingEngine.blackVolTS);
    float dividendDiscount = getDiscountOnDividendYield(currOption.yearFractionTime, currOption.pricingEngine.dividendTS);
    float riskFreeDiscount = getDiscountOnRiskFreeRate(currOption.yearFractionTime, currOption.pricingEngine.riskFreeTS);
    float spot = currOption.pricingEngine.x0; 

    float forwardPrice = spot * dividendDiscount / riskFreeDiscount;

    //declare the blackCalcStruct
    blackCalcStruct blackCalc;

    //initialize the calculator
    initBlackCalculator(blackCalc, currOption.payoff, forwardPrice, sqrtf(variance), riskFreeDiscount);

    //retrieve the results values
    float resultVal = getResultVal(blackCalc);

    //write the resulting value to global memory
    outputVals[optionNum] = resultVal;
  }
}

#endif //BLACK_SCHOLES_ANALYTIC_ENGINE_KERNELS_CU

