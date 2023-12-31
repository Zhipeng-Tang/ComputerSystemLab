/********************************************************
 * Kernels to be optimized for the CS:APP Performance Lab
 ********************************************************/

#include <stdio.h>
#include <stdlib.h>
#include "defs.h"

/* 
 * Please fill in the following team struct 
 */
team_t team = {
    "serandt",              /* Team name */

    "Harry Q. Bovik",     /* First member full name */
    "bovik@nowhere.edu",  /* First member email address */

    "Tangzhipeng",                   /* Second member full name (leave blank if none) */
    "tangzhipeng@mail.ustc.edu.cn"                    /* Second member email addr (leave blank if none) */
};

/***************
 * ROTATE KERNEL
 ***************/

/******************************************************
 * Your different versions of the rotate kernel go here
 ******************************************************/

/* 
 * naive_rotate - The naive baseline version of rotate 
 */
char naive_rotate_descr[] = "naive_rotate: Naive baseline implementation";
void naive_rotate(int dim, pixel *src, pixel *dst) 
{
    int i, j;

    for (i = 0; i < dim; i++)
	for (j = 0; j < dim; j++)
	    dst[RIDX(dim-1-j, i, dim)] = src[RIDX(i, j, dim)];
}

/* 
 * rotate - Your current working version of rotate
 * IMPORTANT: This is the version you will be graded on
 */
char rotate_descr[] = "rotate: Current working version";
void rotate(int dim, pixel *src, pixel *dst) 
{
    int i, j, t, a, b;

    for (j = 0; j < dim; j += 8)
    {
        for (i = 0; i < dim; i += 8)
        {
            for (b = j; b < j + 8; b++)
            {
                t = (dim - 1 - b) * dim;
                for (a = i; a < i + 8; a++)
                    dst[t + a] = src[RIDX(a, b, dim)];
            }
        }
    }
}

/*********************************************************************
 * register_rotate_functions - Register all of your different versions
 *     of the rotate kernel with the driver by calling the
 *     add_rotate_function() for each test function. When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.  
 *********************************************************************/

void register_rotate_functions() 
{
    add_rotate_function(&naive_rotate, naive_rotate_descr);   
    add_rotate_function(&rotate, rotate_descr);   
    /* ... Register additional test functions here */
}


/***************
 * SMOOTH KERNEL
 **************/

/***************************************************************
 * Various typedefs and helper functions for the smooth function
 * You may modify these any way you like.
 **************************************************************/

/* A struct used to compute averaged pixel value */
typedef struct {
    int red;
    int green;
    int blue;
    int num;
} pixel_sum;

/* Compute min and max of two integers, respectively */
static int min(int a, int b) { return (a < b ? a : b); }
static int max(int a, int b) { return (a > b ? a : b); }

/* 
 * initialize_pixel_sum - Initializes all fields of sum to 0 
 */
static void initialize_pixel_sum(pixel_sum *sum) 
{
    sum->red = sum->green = sum->blue = 0;
    sum->num = 0;
    return;
}

/* 
 * accumulate_sum - Accumulates field values of p in corresponding 
 * fields of sum 
 */
static void accumulate_sum(pixel_sum *sum, pixel p) 
{
    sum->red += (int) p.red;
    sum->green += (int) p.green;
    sum->blue += (int) p.blue;
    sum->num++;
    return;
}

/* 
 * assign_sum_to_pixel - Computes averaged pixel value in current_pixel 
 */
static void assign_sum_to_pixel(pixel *current_pixel, pixel_sum sum) 
{
    current_pixel->red = (unsigned short) (sum.red/sum.num);
    current_pixel->green = (unsigned short) (sum.green/sum.num);
    current_pixel->blue = (unsigned short) (sum.blue/sum.num);
    return;
}

/* 
 * avg - Returns averaged pixel value at (i,j) 
 */
static pixel avg(int dim, int i, int j, pixel *src) 
{
    int ii, jj;
    pixel_sum sum;
    pixel current_pixel;

    initialize_pixel_sum(&sum);
    for(ii = max(i-1, 0); ii <= min(i+1, dim-1); ii++) 
	for(jj = max(j-1, 0); jj <= min(j+1, dim-1); jj++) 
	    accumulate_sum(&sum, src[RIDX(ii, jj, dim)]);

    assign_sum_to_pixel(&current_pixel, sum);
    return current_pixel;
}

/******************************************************
 * Your different versions of the smooth kernel go here
 ******************************************************/

/*
 * naive_smooth - The naive baseline version of smooth 
 */
char naive_smooth_descr[] = "naive_smooth: Naive baseline implementation";
void naive_smooth(int dim, pixel *src, pixel *dst) 
{
    int i, j;

    for (i = 0; i < dim; i++)
	for (j = 0; j < dim; j++)
	    dst[RIDX(i, j, dim)] = avg(dim, i, j, src);
}

/*
 * smooth - Your current working version of smooth. 
 * IMPORTANT: This is the version you will be graded on
 */
char smooth_descr[] = "smooth: Current working version";
void smooth(int dim, pixel *src, pixel *dst) 
{
    int i, j, t;

    // corner
    int left_top[4] = {0, dim - 2, (dim - 2) * dim, (dim - 2) * dim + (dim - 2)};
    int right_top[4] = {1, dim - 1, (dim - 2) * dim + 1, (dim - 2) * dim + (dim - 1)};
    int left_bottom[4] = {dim, dim + dim - 2, (dim - 1) * dim, (dim - 1) * dim + (dim - 2)};
    int right_bottom[4] = {dim + 1, dim + dim - 1, (dim - 1) * dim + 1, (dim - 1) * dim + (dim - 1)};
    int corners[4] = {0, dim - 1, (dim - 1) * dim, (dim - 1) * dim + (dim - 1)};
    for (i = 0; i < 4; i++)
    {
        dst[corners[i]].blue = (src[left_top[i]].blue + src[right_top[i]].blue + src[left_bottom[i]].blue + src[right_bottom[i]].blue) / 4;
        dst[corners[i]].green = (src[left_top[i]].green + src[right_top[i]].green + src[left_bottom[i]].green + src[right_bottom[i]].green) / 4;
        dst[corners[i]].red = (src[left_top[i]].red + src[right_top[i]].red + src[left_bottom[i]].red + src[right_bottom[i]].red) / 4;
    }

    // border
    i = 0; // top
    for (j = 1; j <= dim - 2; j++)
    {
        dst[j].blue = (src[RIDX(i, j - 1, dim)].blue + src[RIDX(i, j, dim)].blue + src[RIDX(i, j + 1, dim)].blue + src[RIDX(i + 1, j - 1, dim)].blue + src[RIDX(i + 1, j, dim)].blue + src[RIDX(i + 1, j + 1, dim)].blue) / 6;
        dst[j].green = (src[RIDX(i, j - 1, dim)].green + src[RIDX(i, j, dim)].green + src[RIDX(i, j + 1, dim)].green + src[RIDX(i + 1, j - 1, dim)].green + src[RIDX(i + 1, j, dim)].green + src[RIDX(i + 1, j + 1, dim)].green) / 6;
        dst[j].red = (src[RIDX(i, j - 1, dim)].red + src[RIDX(i, j, dim)].red + src[RIDX(i, j + 1, dim)].red + src[RIDX(i + 1, j - 1, dim)].red + src[RIDX(i + 1, j, dim)].red + src[RIDX(i + 1, j + 1, dim)].red) / 6;
    }
    i = dim - 1; // bottom
    for (j = 1; j <= dim - 2; j++)
    {
        dst[RIDX(i, j, dim)].blue = (src[RIDX(i - 1, j - 1, dim)].blue + src[RIDX(i - 1, j, dim)].blue + src[RIDX(i - 1, j + 1, dim)].blue + src[RIDX(i, j - 1, dim)].blue + src[RIDX(i, j, dim)].blue + src[RIDX(i, j + 1, dim)].blue) / 6;
        dst[RIDX(i, j, dim)].green = (src[RIDX(i - 1, j - 1, dim)].green + src[RIDX(i - 1, j, dim)].green + src[RIDX(i - 1, j + 1, dim)].green + src[RIDX(i, j - 1, dim)].green + src[RIDX(i, j, dim)].green + src[RIDX(i, j + 1, dim)].green) / 6;
        dst[RIDX(i, j, dim)].red = (src[RIDX(i - 1, j - 1, dim)].red + src[RIDX(i - 1, j, dim)].red + src[RIDX(i - 1, j + 1, dim)].red + src[RIDX(i, j - 1, dim)].red + src[RIDX(i, j, dim)].red + src[RIDX(i, j + 1, dim)].red) / 6;
    }
    j = 0; // left
    for (i = 1; i <= dim - 2; i++)
    {
        dst[RIDX(i, j, dim)].blue = (src[RIDX(i - 1, j, dim)].blue + src[RIDX(i - 1, j + 1, dim)].blue + src[RIDX(i, j, dim)].blue + src[RIDX(i, j + 1, dim)].blue + src[RIDX(i + 1, j, dim)].blue + src[RIDX(i + 1, j + 1, dim)].blue) / 6;
        dst[RIDX(i, j, dim)].green = (src[RIDX(i - 1, j, dim)].green + src[RIDX(i - 1, j + 1, dim)].green + src[RIDX(i, j, dim)].green + src[RIDX(i, j + 1, dim)].green + src[RIDX(i + 1, j, dim)].green + src[RIDX(i + 1, j + 1, dim)].green) / 6;
        dst[RIDX(i, j, dim)].red = (src[RIDX(i - 1, j, dim)].red + src[RIDX(i - 1, j + 1, dim)].red + src[RIDX(i, j, dim)].red + src[RIDX(i, j + 1, dim)].red + src[RIDX(i + 1, j, dim)].red + src[RIDX(i + 1, j + 1, dim)].red) / 6;
    }
    j = dim - 1; // right
    for (i = 1; i <= dim - 2; i++)
    {
        dst[RIDX(i, j, dim)].blue = (src[RIDX(i - 1, j - 1, dim)].blue + src[RIDX(i - 1, j, dim)].blue + src[RIDX(i, j - 1, dim)].blue + src[RIDX(i, j, dim)].blue + src[RIDX(i + 1, j - 1, dim)].blue + src[RIDX(i + 1, j, dim)].blue) / 6;
        dst[RIDX(i, j, dim)].green = (src[RIDX(i - 1, j - 1, dim)].green + src[RIDX(i - 1, j, dim)].green + src[RIDX(i, j - 1, dim)].green + src[RIDX(i, j, dim)].green + src[RIDX(i + 1, j - 1, dim)].green + src[RIDX(i + 1, j, dim)].green) / 6;
        dst[RIDX(i, j, dim)].red = (src[RIDX(i - 1, j - 1, dim)].red + src[RIDX(i - 1, j, dim)].red + src[RIDX(i, j - 1, dim)].red + src[RIDX(i, j, dim)].red + src[RIDX(i + 1, j - 1, dim)].red + src[RIDX(i + 1, j, dim)].red) / 6;
    }

    // others
    for (i = 1; i <= dim - 2; i++)
    {
        t = i * dim;
        for (j = 1; j <= dim - 2; j++)
        {
            dst[t + j].blue = (src[t - dim + j - 1].blue + src[t - dim + j].blue + src[t - dim + j + 1].blue + src[t + j - 1].blue + src[t + j].blue + src[t + j + 1].blue + src[t + dim + j - 1].blue + src[t + dim + j].blue + src[t + dim + j + 1].blue) / 9;
            dst[t + j].green = (src[t - dim + j - 1].green + src[t - dim + j].green + src[t - dim + j + 1].green + src[t + j - 1].green + src[t + j].green + src[t + j + 1].green + src[t + dim + j - 1].green + src[t + dim + j].green + src[t + dim + j + 1].green) / 9;
            dst[t + j].red = (src[t - dim + j - 1].red + src[t - dim + j].red + src[t - dim + j + 1].red + src[t + j - 1].red + src[t + j].red + src[t + j + 1].red + src[t + dim + j - 1].red + src[t + dim + j].red + src[t + dim + j + 1].red) / 9;
        }
    }
}


/********************************************************************* 
 * register_smooth_functions - Register all of your different versions
 *     of the smooth kernel with the driver by calling the
 *     add_smooth_function() for each test function.  When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.  
 *********************************************************************/

void register_smooth_functions() {
    add_smooth_function(&smooth, smooth_descr);
    add_smooth_function(&naive_smooth, naive_smooth_descr);
    /* ... Register additional test functions here */
}

