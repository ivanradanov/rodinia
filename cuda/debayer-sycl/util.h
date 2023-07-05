#ifndef UTIL_H_
#define UTIL_H_

#ifdef DEBUG
#define INLINE
#define assert(x) \
  if (! (x)) \
  { \
    printf((const char *)"Assert(%s) failed in %s:%d\n", #x, __FILE__, __LINE__); \
  }
#define assert_val(x, val) \
  if (! (x)) \
  { \
    printf((const char *)"Assert(%s) failed in %s:%d:  %d\n", #x, __FILE__, __LINE__, val); \
  }
#else
#define INLINE inline
#define assert(X)
#define assert_val(X, val)
//#define printf(fmt, ...)
#endif

// emulate the builtin OpenCL function
#define convert_uchar_sat(x) ((uchar) (x > 255 ? 255 : (x < 0 ? 0 : x)))

//don't take this near upper limits of integral type
INLINE uint divUp(const uint x, const uint divisor){
  return (x + (divisor - 1)) / divisor;
}

INLINE uint divUpSafe(const uint x, const uint divisor){
  const uint k = x / divisor;
  return k * divisor >= x ? k : k + 1;
}

INLINE uint roundUpToMultiple(const uint x, const uint multiple){
  return divUp(x, multiple) * multiple;
}

#define STRINGIFY2( x) #x
#define STRINGIFY(x) STRINGIFY2(x)

#define PASTE_2( a, b) a##b
#define PASTE( a, b) PASTE_2( a, b)

#define PASTE_3( a, b, c) a##b##c
#define PASTE3( a, b, c) PASTE_3( a, b, c)

#endif
