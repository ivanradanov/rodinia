/*
 Illinois Open Source License
 
 University of Illinois/NCSA
 Open Source License
 
 Copyright © 2009,    University of Illinois.  All rights reserved.
 
 Developed by: 
 Innovative Systems Lab
 National Center for Supercomputing Applications
 http://www.ncsa.uiuc.edu/AboutUs/Directorates/ISL.html
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal with the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimers.
 
 * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimers in the documentation and/or other materials provided with the distribution.
 
 * Neither the names of Innovative Systems Lab and National Center for Supercomputing Applications, nor the names of its contributors may be used to endorse or promote products derived from this Software without specific prior written permission.
 
 THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE CONTRIBUTORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS WITH THE SOFTWARE.
 */


#ifndef __ARGS_H__
#define __ARGS_H__

typedef struct _options_
{
    char *data_name;
    char *random_name;
    int random_count;
    int ndpoints;
    int nrpoints;
    char *output_name;
    int bins_per_dec;
    float min_angle;
    float max_angle;
    int angle_units; // 0 - degrees; 1 - arcminutes
    int njk;  // n of jks; can be 0 (no jk), or 2,3,..., but not 1
} options;

void usage(char *name);
void parse_args(int argc, char **argv, options* args);

#endif
