start:
params 0

n`2 = (int) 0
#L8:
input int, n`2

#L6:
i`2 = (int) 0
#L4:

~t0 = 0

i`2 = ~t0

#L13:


if i`2 < n`2 goto #L14
goto #L11

#L14:

j`3 = (int) 0
#L23:

~t3 = 0

j`3 = ~t3

#L28:



~t5 = n`2 - i`2

~t6 = 1

~t4 = ~t5 - ~t6

if j`3 < ~t4 goto #L29
goto #L26

#L29:

~t9 = (string) " "
output string, ~t9

#L30:


~t7 = 1

~t8 = j`3 + ~t7

j`3 = ~t8

goto #L28
#L26:

#L25:
k`3 = (int) 0
#L19:

~t10 = 0

k`3 = ~t10

#L35:

~t12 = 2


~t11 = ~t12 * i`2

~t13 = 1

~t14 = ~t11 + ~t13

if k`3 < ~t14 goto #L36
goto #L33

#L36:

~t17 = (string) "*"
output string, ~t17

#L37:


~t15 = 1

~t16 = k`3 + ~t15

k`3 = ~t16

goto #L35
#L33:

#L32:
~t18 = (string) "\n"
output string, ~t18

#L15:


~t1 = 1

~t2 = i`2 + ~t1

i`2 = ~t2

goto #L13
#L11:

#L10:
return 

#L1:
