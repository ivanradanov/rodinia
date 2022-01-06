#include <stdlib.h>
    struct band {
        int dimX; 
    };
    struct dimensions {
        struct band LL;
    };
void writeNStage2DDWT(struct dimensions* bandDims) 
{
    free(bandDims);
}
