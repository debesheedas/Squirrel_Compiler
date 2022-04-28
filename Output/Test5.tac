start:
params 0

float arr`2[36]
arr`2[0] = 1.0
arr`2[4] = 2.0
arr`2[8] = 3.0
arr`2[12] = 4.0
arr`2[16] = 5.0
arr`2[20] = 6.0
arr`2[24] = 7.0
arr`2[28] = 8.0
arr`2[32] = 9.0

#L4:
~t0 = 0

i`3 = (int) ~t0

#L9:

~t1 = 3

if i`3 < ~t1 goto #L10
goto #L7

#L10:

~t4 = 0

j`4 = (int) ~t4

#L18:

~t5 = 3

if j`4 < ~t5 goto #L19
goto #L16

#L19:


~t8 = i`3 * 3
~t9 = j`4 * 1
~t10 = ~t8 + ~t9

~t11 = ~t10 * 4
output float, arr`2[~t11]

#L22:
~t12 = (string) " "
output string, ~t12

#L20:


~t6 = 1

~t7 = j`4 + ~t6

j`4 = ~t7

goto #L18
#L16:

#L15:
~t13 = (string) "\n"
output string, ~t13

#L11:


~t2 = 1

~t3 = i`3 + ~t2

i`3 = ~t3

goto #L9
#L7:

#L6:
return 

#L1:
