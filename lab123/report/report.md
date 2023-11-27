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

- howManyBits - return the minimum number of bits required to represent x in

- two's complement

- Examples:

- - howManyBits(12) = 5
  - howManyBits(298) = 10
  - howManyBits(-5) = 4
  - howManyBits(0) = 1
  - howManyBits(-1) = 1
  - howManyBits(0x80000000) = 32

- Legal ops: ! ~ & ^ | + << >>

- Max ops: 90

**题意理解**

x 为正数，以八位为例：0011 1010，需找到最高位 1，除此以外，还需一位 0 作为符号位；

x 为负数，以八位为例：1100 1001，需找到最高位 0，除此以外，还需更高一位 1 作为符号位

**做法**

1. 为了统一，不妨当 x 为负数时，将其取反，如上例： ∼�=00110110 , 那么也只需要找到最高位 1 后再加一位就好，这步操作如下

```c
int flag = x >> 31;    
x = ((~flag) & x) | (flag & (~x)); 
```

\2. 利用二分的思想，先考虑高16位：

**0001 1000 1100 0000 | 0000 0100 1000 0000**

将 x 右移16位 x = x >> 16 ：

**0000 0000 0000 0000 | 0001 1000 1100 0000**

进行规格化处理 x = !! x：

**0000 0000 0000 0000 | 0000 0000 0000 0001**

若高 16 位有 1，处理后的 x = 0x00000001。需要的位数至少为 16，引入变量 bit_16 记录该权重。怎么做呢？将处理后的 x 左移 4 位即可

```c
int bit_16 = (!!(x >> 16)) << 4; 
```

\3. 如果高 16 位有 1 ，则将 x 右移 16 位，对右移后的 x 的低 16 位中的高 8 位进行同样的操作，从而二分地在 x 的高16位中找到最大位的 1 ；如果高 16 位没有 1 ，则 x 无需右移， 在 x 的低 16 位中的高 8 位进行同样的操作。

由此可得右移操作：

```c
x = x >> bit_16;
```

\4. 同理，分别对高 8 位，4位，2位，1位进行检查，检查后进行同样的操作。

\5. 最后将所有权重求和，便是最终结果

**举例**

- 设 x = 1101 1000 1100 0000 | 0000 0100 1000 0000
- 负数取反：y = 0010 0111 0011 1111 | 1111 1011 0111 1111
- 高16位右移：y = 0000 0000 0000 0000 | 0010 0111 0011 1111
- 规格化：y = 0000 0000 0000 0000 | 0000 0000 0000 0001
- bit_16 处理：bit_16 = y << 4 = 16 //说明 x 至少需要 16 位
- x 右移：x = x >> bit_16 = 0000 0000 0000 0000 | 0010 0111 0011 1111
  \>
- 低 16 位中的高 8 位右移：y = 0000 0000 0000 0000 | 0000 0000 | 0010 0111
- 规格化：y = 0000 0000 0000 0000 | 0000 0000 | 0000 0001
- bit_8 处理：bit_8 = y << 3 = 8 //说明 x 又需要 8 位
- x 右移：x = x >> bit_8 = 0000 0000 0000 0000 | 0000 0000 | 0010 0111
  \>
- 低 8 位的高 4 位右移：y = 0000 0000 0000 0000 | 0000 0000 | 0000 | 0010
- 规格化：y = 0000 0000 0000 0000 | 0000 0000 | 0000 | 0001
- bit_4 处理：bit_4 = y << 2 = 4 //说明 x 又需要 4 位
- x 右移：x = x >> bit_4 = 0000 0000 0000 0000 | 0000 0000 | 0000 | 0010
  \>
- 低 4 位的高 2 位右移：y = 0000 0000 0000 0000 | 0000 0000 | 0000 | 00 | 00
- 规格化：y = 0000 0000 0000 0000 | 0000 0000 | 0000 | 00 | 00
- bit_2 处理：bit_2 = y << 1 = 0 //说明 x 这 4 位中的 1 在低 2 位中
- x 右移：x = x >> bit_2 = 0000 0000 0000 0000 | 0000 0000 | 0000 | 00 | 10 //不移动
  \>
- 低 2 位的高 1 位右移：y = 0000 0000 0000 0000 | 0000 0000 | 0000 | 00 | 0 | 1
- 规格化：y = 0000 0000 0000 0000 | 0000 0000 | 0000 | 00 | 0 | 1
- bit_1 处理：bit_1 = y << 0 = 1 //说明 x 又需要1位
- x 右移：x = x >> bit_1 = 0000 0000 0000 0000 | 0000 0000 | 0000 | 00 | 0 | 1 //不移动
  \>
- bit_0 处理：bit_0 = x = 1
- bit_8 + bit_4 + bit_2 + bit_1 + bit_0 + 1= 31 与正确答案符合！

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

## Problem-float

### floatScale2

- floatScale2 - Return bit-level equivalent of expression 2*f for
- floating point argument f.
- Both the argument and result are passed as unsigned int's, but
- they are to be interpreted as the bit-level representation of
- single-precision floating point values.
- When argument is NaN, return argument
- Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
- Max ops: 30

先分别取符号 s，尾数 frac，和阶码 exp

```c
unsigned s = (uf >> 31) & 0x1;
unsigned exp = (uf >> 23) & 0xFF;
unsigned frac = (uf & 0x7FFFFF);
```

- 非规格化的

此时，exp == 0，由于此时 frac 就是尾码，直接 frac << 1 即可

- 规格化的

此时，exp!=0 && ！=255，exp ++即可

- 特殊值

根据题目要求，返回 uf

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

- floatFloat2Int - Return bit-level equivalent of expression (int) f
- for floating point argument f.
- Argument is passed as unsigned int, but
- it is to be interpreted as the bit-level representation of a
- single-precision floating point value.
- Anything out of range (including NaN and infinity) should return0x80000000u.
- Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
- Max ops: 30

![img](https://pic2.zhimg.com/80/v2-2a0cba54cfc790b5faf0fe3a320a7399_720w.webp)

与上题一样，先取符号 s，尾数 frac，和阶码 exp

```c
unsigned s = (uf >> 31) & 0x1;
unsigned exp = (uf >> 23) & 0xFF;
unsigned frac = (uf & 0x7FFFFF);
```

- 非规格化的

此时，exp == 0，而 E = 1 - Bias = 1 - 127 = -126, M < 1。显然，return 0

- 规格化的

此时，exp!=0 && exp！=255。我们把 frac 作为基数进行修改，最后返回 frac 。首先由于这是规格化的，所以要加上开头的“1”。

```c
int E = exp - 127;   
frac = frac | (1 << 23); 
```

�=(−1)�×�×2�

- 当 E < 0 时，显然 V < 1, return 0

- - frac 为 23 位，若 E > 23, 则进行加权时，能在 frac 的末尾添加 (E - 23) 个 0
  - 若 E < 23, 则 frac 末尾的 (23 - E)个数无法保留
  - 若 E >= 31, 显然为 infinity ，return 0x80000000u

- 特殊值 exp == 0xFF, return 0x80000000u

- 还要注意考虑负数的情况，根据 s 的值进行判断，最后利用我们前面用到的取负技巧即可。

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

- floatPower2 - Return bit-level equivalent of the expression 2.0^x
- (2.0 raised to the power x) for any 32-bit integer x.
- The unsigned value that is returned should have the identical bit
- representation as the single-precision floating-point number 2.0^x.
- If the result is too small to be represented as a denorm, return 0
- If too large, return +INF.
- Legal ops: Any integer/unsigned operations incl. ||, &&. Also if, while
- Max ops: 30

要做这道题，首先要导出浮点数非规格化和规格化分别表示的浮点数的范围。

1.非规格化的

此时，E = 1 - Bias = 1 - 127 = -126, 而 ����=0.00…1=2−23 , 所以非规格化浮点最小为 2−23×2−126=2−149 , ����=2−1+2−2+⋯+2−23=1−2−23 , 所以非规格化浮点最大为2−126×(1−2−23)

\2. 规格化的

����=1 , ����=1−127=−126 所以规格化的最小为 2−126

����=1.11…11 , �����=11111110=2127 所以规格化最大为不到 2128

可得下表：

![img](https://pic2.zhimg.com/80/v2-33a54cf2ab159523c471bf884c2526c9_720w.webp)

所以：

- x > 127 时，返回 Nan
- x <= -149时，返回 0
- -126 <= x <=127 时，为规格化的。直接让尾码为全0，控制阶码即可，由 x = expr - bias => exp = x + 127
- -149 < x < -126 时，为非规格化的，阶码值为 E = 1 - bias = -126。这时候只能通过控制尾码来计算。由�×2−126=2�⇒�=2�+126尾码的值是二次幂的形式，所以，尾码一定是通过一个“1”左移得到的。尾码各位以2的次幂形式的权值如下

![img](https://pic2.zhimg.com/80/v2-833086860fc45c1b4d6a75121185efdd_720w.webp)

设1左移n位，则 x+126 = -(23 - n)，得 n = x + 149

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

