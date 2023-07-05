#ifndef PML_H
#define PML_H

#include "constants.h"
#include "grid.h"

void init_eta(llint nx, llint ny, llint nz, struct grid_t grid,
              float dt_sch,
              float *eta);

#endif
