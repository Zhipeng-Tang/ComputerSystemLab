<h1><center>实验一、二、三报告</center></h1>

<center>BY  唐志鹏  SA23011068</center>

## 实验一

### bitXor

$$
\begin{align}
x \oplus y &= \overline{x}y + x \overline{y} \\
&= \overline{\overline{\overline{x}y}\cdot \overline{x \overline{y}}} \\
&= \overline{(x+\overline{y})\cdot (\overline{x}+y)} \\
&= \overline{xy+\overline{x}\overline{y}} \\
&= \overline{xy} \cdot \overline{\overline{x}\overline{y}}
\end{align}
$$

```c
int bitXor(int x, int y) {
    return ~(x&y)&~(~x&~y);
}
```

### tmin

对于32位int, Tmin = 0x80000000, 将 1 左移31位即可

```c
int tmin(void) {
    return 1<<31;
}
```

### isTmax

首先，我们知道 Tmax = 0x7FFFFFFF, 不难想到求 Tmax+1 = Tmin = 0x80000000。观察可知，`~(Tmax+1) = Tmax`，只需判断 ~(x+1) 与 x 是否相等即可得出结论。但是，题目要求不能用等于号，于是利用 x^x = 0 的性质进行判断，即 `return !~(x+1)^x`。

然而，-1 = 0xFFFFFFFF。对其进行加1后，该操作数会被截断，高位进位无效，使得结果为0x00000000，每一位刚好也和-1的每一位互补。因此，x = -1的情况是需要特判的。

```c
int isTmax(int x) {
    return !(~(x+1)^x|!(x+1));
}
```

### allOddBits

构造一个32位的奇数位全为1的数 y = 0xAAAAAAAA，将其与 x 进行与运算，如果结果仍为 y, 则 x 的奇数位均为 1.

考虑先构造0xAA, 然后利用移位操作得到 0xAAAAAAAA。

```c
int allOddBits(int x) {
    int y = 0xAA + (0xAA << 8);
    y = y + (y << 16);
    return !((x&y)^y);
}
```

### negate

 `~x + x = -1`

```c
int negate(int x) {
    return ~x+1;
}
```

### isAsciiDigit

- 先检查高26位是否全为0，作为条件1

```c
int flag1 = !(x >> 6);
```

- 再检查中间是否为0011，作为条件2

```c
int flag2 = !(0b11 ^ (x >> 4));
```

- 最后检查末尾4位是否在0000与1001之间， 先得到最后四位数

```c
int y = x & (0xF);
```

- y 在 0 到 9 之间，则 y - 10 < 0，由于符号限制，我们通过移位后判断符号位来作为条件3。由于不能用减法，可以通过`-x = ~x +1`达到目的

```c
int flag3 = (y + ~0xA + 1) >> 31;
int isAsciiDigit(int x) {
    return (!(x >> 6)) & (!(0b11 ^ (x >> 4))) & (((x & (0xF)) + ~0xA + 1) >> 31);
}
```

### conditional

- 先将 x 归整化

  ```c
  a = !x
  ```

- 当 $x=0$ 时， a = 0x00000001, 考虑 ∼a+1=0xFFFFFFFF

- 当 $x≠0$时， a = 0, 考虑 ∼(∼a+1)=0xFFFFFFFF

```c
int conditional(int x, int y, int z) {
    x = ~(!x)+1;
    return (x&z)+(~x&y);
}
```

### isLessOrEqual

- 当 y 与 x 同号时，x - y 不会溢出，因此判断 x - y 的符号即可


- 当 y 与 x 异号时，x - y 可能会溢出，这时只分别判断 y 和 x 的符号即可


```c
int isLessOrEqual(int x, int y) {
    int signx = (x >> 31) & 1;
    int signy = (y >> 31) & 1;
    int flag1 = signx & (!signy);
    int e = signx ^ signy; //同号
    int flag2 = ((!e) & ((x + ~y) >> 31) & 1);
    return flag1 | flag2;
}
```

### logicalNeg

- 当 x = 0 时，-x = 0，两者符号位相同，而当 x ≠ 0 时，-x 与 x 的符号位显然不同，由此就可以解决本题。


- 令 x 与 -x 异或，则若 x = 0, 则异或后的符号位为0，否则为1，取符号位作为结果，则得到的结果刚好与题目中要求的返回值相反。


```c
int logicalNeg(int x) {
    return (((~ x + 1) | x) >> 31) + 1;
}
```

### howManyBits

- 从右到左找出最左边的1在第几位，然后加上一位符号位；如果是负数，则取反做相同操作。
- 找最左边的1采用二分法。每次取高位半部分，如果高位不为0，就将数右移半部分，只关注高位；如果高位为0，则不用右移，只关注低位部分。重复这个过程，知道只有一位即可。

```c
int howManyBits(int x) {
    int flag = x >> 31;
    x = ((~flag) & x) | (flag & (~x));
    int bit_16 = (!!(x >> 16)) << 4; 
    x = x >> bit_16;
    int bit_8 = !!(x>>8)<<3;
    x = x >> bit_8;
    int bit_4 = !!(x >> 4) << 2;
    x = x >> bit_4;
    int bit_2 = !!(x >> 2) << 1;
    x = x >> bit_2;
    int bit_1 = !!(x >> 1);
    x = x >> bit_1;
    int bit_0 = x;
    return bit_16+bit_8+bit_4+bit_2+bit_1+bit_0+1;
}
```

### floatScale2

- 分几种情况：
  - NaN，即 exp=0xFF 的情况，直接返回 uf 即可；
  - 非规格化数，即 exp=0 且 frac!=0 的情况，直接将 frac 左移一位即可；
  - 0，即 exp=0 且 frac=0 的情况，用上述做法即可；
  - 规格化数，直接 exp++ 即可。

```c
unsigned floatScale2(unsigned uf) {
    unsigned s = (uf >> 31) & 0x1;
    unsigned exp = (uf >> 23) & 0xFF;
    unsigned frac = (uf & 0x7FFFFF);
    //NaN
    if(exp == 0xFF) 
        return uf;
    //
    else if(exp == 0){
        frac <<= 1;
        return (s << 31) | (exp << 23) | frac;
    }
    //else
    exp++;
    return (s << 31) | (exp << 23) | frac;

}
```

### floatFloat2Int

- 分几种情况：
  - exp>=31，表示数字超过 int 表示范围，返回 0x80000000u；
  - exp<0，表示数字小于 1，取整后返回 0；
  - 0<=exp<=23，则 frac 的一部分仍然是小数部分，需要右移舍去，再将更新后的 frac 最左端补 1；
  - 23<exp<31，则 frac 全部都为整数部分，并且还需要左移补 0，再将更新后的 frac 最左端补 1。

```c
int floatFloat2Int(unsigned uf) {
    unsigned s = (uf >> 31) & 0x1;
    unsigned exp = (uf >> 23) & 0xFF;
    unsigned frac = (uf & 0x7FFFFF);
    int E = exp - 127;
    frac = frac | (1 << 23);
    if(E < 0) return 0;
    else if(E >= 31) return 0x1 << 31;
    else{
        if(E<23) {
            frac>>=(23 - E);
        }else{
            frac <<= (E - 23);
        }
    }
    if (s)
        return ~frac + 1;
    return frac;
}
```

### floatPower2

- 分几种情况：
  - x>127，超出规格化表示范围，返回 +INF；
  - x<-148，过小，返回 0；
  - -126<x<126，规格化数，直接令 exp=x+127，frac=0 后返回；
  - -148<=x<=-127，非规格化数，直接令 frac=1<<(x+148)，exp=0 后返回。

```c
unsigned floatPower2(int x) {
    if(x < -149)
        return 0;
    else if(x < -126)
        return 1 << (x + 149);
    else if(x <= 127)
        return (x + 127) << 23;
    else
        return (0xFF) << 23;
}
```

