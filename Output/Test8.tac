start:
params 0

int arr`2[20]
arr`2[0] = 1
arr`2[4] = 2
arr`2[8] = 1
arr`2[12] = 2
arr`2[16] = 1

#L8:
~t0 = 0

i`3 = (int) ~t0

#L13:

~t2 = 5

~t3 = 2

~t1 = ~t2 / ~t3

if i`3 < ~t1 goto #L14
goto #L11

#L14:


~t6 = i`3 * 1

~t7 = ~t6 * 4
~t8 = arr`2[~t7]

~t11 = 5


~t10 = ~t11 - i`3

~t12 = 1

~t9 = ~t10 - ~t12

~t13 = ~t9 * 1

~t14 = ~t13 * 4
~t15 = arr`2[~t14]

if ~t8 != ~t15 goto #L18
goto #L17

#L18:

~t16 = (string) "No"
output string, ~t16

#L23:
~t17 = (string) "\n"
output string, ~t17

#L21:
return
#L19:

#L17:


~t4 = 1

~t5 = i`3 + ~t4

i`3 = ~t5

goto #L13
#L11:

#L10:
~t18 = (string) "Yes"
output string, ~t18

#L4:
~t19 = (string) "\n"
output string, ~t19

#L2:
return 

#L1:
