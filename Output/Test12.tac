fibonacci:
params 1
param int n`2

~t0 = 0

a`2 = (int) ~t0

#L12:
~t1 = 1

b`2 = (int) ~t1

#L10:
~t2 = 0

c`2 = (int) ~t2

#L8:
~t3 = 0

i`3 = (int) ~t3

#L17:


if i`3 < n`2 goto #L18
goto #L15

#L18:




~t6 = a`2 + b`2

c`2 = ~t6

#L23:


a`2 = b`2

#L21:


b`2 = c`2

#L19:


~t4 = 1

~t5 = i`3 + ~t4

i`3 = ~t5

goto #L17
#L15:

#L14:

return c`2
#L4:
return 0

start:
params 0

~t7 = (string) "Fibonacci iterative\n"
output string, ~t7

#L44:
n`4 = (int) 0
#L42:
~t8 = (string) "Enter a number: "
output string, ~t8

#L40:
input int, n`4

#L38:

param n`4
~t9 = call fibonacci, 1

res`4 = (int) ~t9

#L36:
~t10 = (string) "Fibonacci of "
output string, ~t10

#L34:
output int, n`4

#L32:
~t11 = (string) " is "
output string, ~t11

#L30:
output int, res`4

#L28:
~t12 = (string) "\n"
output string, ~t12

#L26:
return 

#L25:

#L2: