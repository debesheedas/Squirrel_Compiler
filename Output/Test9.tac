start:
params 0

int arr`2[40]
arr`2[0] = 12
arr`2[4] = 24
arr`2[8] = 35
arr`2[12] = 41
arr`2[16] = 52
arr`2[20] = 60
arr`2[24] = 76
arr`2[28] = 82
arr`2[32] = 91
arr`2[36] = 100

#L20:
key`2 = (int) 0
#L18:
~t0 = (string) "Enter the key to search for: "
output string, ~t0

#L16:
input int, key`2

#L14:
~t1 = 0

low`2 = (int) ~t1

#L12:
~t2 = 9

high`2 = (int) ~t2

#L10:
mid`2 = (int) 0
#L8:
#L22:


if low`2 <= high`2 goto #L23
goto #L6

#L23:




~t4 = low`2 + high`2

~t5 = 2

~t3 = ~t4 / ~t5

mid`2 = ~t3

#L26:


~t6 = mid`2 * 1

~t7 = ~t6 * 4
~t8 = arr`2[~t7]

if key`2 == ~t8 goto #L29
goto #L30

#L29:

~t9 = (string) "Found at index: "
output string, ~t9

#L37:
output int, mid`2

#L35:
~t10 = (string) "\n"
output string, ~t10

#L33:
return
#L31:
goto #L28
#L30:


~t11 = mid`2 * 1

~t12 = ~t11 * 4
~t13 = arr`2[~t12]

if key`2 < ~t13 goto #L39
goto #L40

#L39:



~t15 = 1

~t14 = mid`2 - ~t15

high`2 = ~t14

#L41:
goto #L28
#L40:



~t16 = 1

~t17 = mid`2 + ~t16

low`2 = ~t17

#L43:

#L28:
goto #L22
#L6:
~t18 = (string) "Not found"
output string, ~t18

#L4:
~t19 = (string) "\n"
output string, ~t19

#L2:
return 

#L1:
