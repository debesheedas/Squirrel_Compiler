factorial:
params 1
param int n`2

~t0 = 1

r`2 = (int) ~t0

#L10:
~t1 = 1

i`3 = (int) ~t1

#L15:


if i`3 <= n`2 goto #L16
goto #L13

#L16:




~t4 = r`2 * i`3

r`2 = ~t4

#L17:


~t2 = 1

~t3 = i`3 + ~t2

i`3 = ~t3

goto #L15
#L13:

#L12:

return r`2
#L6:
~t5 = (string) "this part is not reachable"
output string, ~t5

#L4:
return 0

start:
params 0

~t7 = 5

param ~t7
~t6 = call factorial, 1

r`4 = (int) ~t6

#L34:
output int, r`4

#L32:
~t8 = (string) "\n"
output string, ~t8

#L30:
return
#L28:
~t9 = 2

x`4 = (int) ~t9

#L26:
~t10 = 3

y`4 = (int) ~t10

#L24:


~t11 = x`4 + y`4

z`4 = (int) ~t11

#L22:
output int, z`4

#L20:
return 

#L19:

#L2: