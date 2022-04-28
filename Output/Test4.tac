start:
params 0

float arr`2[40]
arr`2[0] = 12.0
arr`2[4] = 2.0
arr`2[8] = 4.4
arr`2[12] = 56.25
arr`2[16] = 87.1
arr`2[20] = 9.0
arr`2[24] = 9.0
arr`2[28] = 0.0
arr`2[32] = -2.5
arr`2[36] = 4.0

#L10:
temp`2 = (int) 0
#L8:
a`2 = (int) 0
#L6:
b`2 = (int) 0
#L4:
~t0 = 0

i`3 = (int) ~t0

#L15:

~t1 = 10

if i`3 < ~t1 goto #L16
goto #L13

#L16:



~t4 = i`3 * 1

~t5 = ~t4 * 4
~tf0 = arr`2[~t5]

~t6 = (int) ~tf0
a`2 = ~t6

#L21:

~t7 = 1

~t8 = i`3 + ~t7

j`4 = (int) ~t8

#L26:

~t9 = 10

if j`4 < ~t9 goto #L27
goto #L24

#L27:



~t12 = j`4 * 1

~t13 = ~t12 * 4
~tf1 = arr`2[~t13]

~t14 = (int) ~tf1
b`2 = ~t14

#L30:


if a`2 < b`2 goto #L33
goto #L32

#L33:



temp`2 = a`2

#L38:

~t15 = i`3 * 1

~t16 = ~t15 * 4


~t17 = (int) b`2
arr`2[~t16] = ~t17

#L36:

~t18 = j`4 * 1

~t19 = ~t18 * 4


~t20 = (int) temp`2
arr`2[~t19] = ~t20

#L34:

#L32:


~t10 = 1

~t11 = j`4 + ~t10

j`4 = ~t11

goto #L26
#L24:

#L23:

~t21 = i`3 * 1

~t22 = ~t21 * 4
output float, arr`2[~t22]

#L17:


~t2 = 1

~t3 = i`3 + ~t2

i`3 = ~t3

goto #L15
#L13:

#L12:
return 

#L1:
