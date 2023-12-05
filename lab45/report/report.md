<h1><center>实验四、五报告</center></h1>

<center>BY  唐志鹏  SA23011068</center>

## 实验四

### rotate

- 将矩阵分为 $8 \times 8$ 的块，并在块内部将 `dst` 重复计算的单元提出

  ```c
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
  ```

### smooth

- 将所有像素分为三类：

  - $4$ 个顶点：周围四个像素进行平均
  - 边上的点：周围六个像素进行平均
  - 内部点：周围九个像素进行平均

  ```c
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
  ```

### 实验结果

![result](./fig/lab4_result.png)