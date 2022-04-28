gcd_recursive:
params 2
param int a`2
param int b`2


~t0 = 0

if b`2 == ~t0 goto #L9
goto #L8

#L9:


return a`2
#L10:

#L8:



~t2 = a`2 % b`2

#L12:
param b`2
param ~t2
~t1 = call gcd_recursive, 2

return ~t1
#L4:
return 0

start:
params 0

a`4 = (int) 0
#L41:
~t3 = (string) "Enter the first number: "
output string, ~t3

#L39:
input int, a`4

#L37:
b`4 = (int) 0
#L35:
~t4 = (string) "Enter the second number: "
output string, ~t4

#L33:
input int, b`4

#L31:


#L43:
param a`4
param b`4
~t5 = call gcd_recursive, 2

gcd`4 = (int) ~t5

#L29:
~t6 = (string) "The GCD of "
output string, ~t6

#L27:
output int, a`4

#L25:
~t7 = (string) " and "
output string, ~t7

#L23:
output int, b`4

#L21:
~t8 = (string) " is "
output string, ~t8

#L19:
output int, gcd`4

#L17:
~t9 = (string) "\n"
output string, ~t9

#L15:
return 

#L14:

#L2: