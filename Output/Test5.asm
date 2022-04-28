.data
	arr__2:
		.float 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0

__t12:
	.asciiz " "
__t13:
	.asciiz "\n"
.text
.globl main

main:

move $s8, $sp

li $t0, 0
addi $t1, $t0, 0
_L9:
li $t2, 3
sub $t3, $t1, $t2
blt $t3, $zero, _L10
j _L7
_L10:
li $t3, 0
addi $t4, $t3, 0
_L18:
li $t5, 3
sub $t6, $t4, $t5
blt $t6, $zero, _L19
j _L16
_L19:
li $t6, 3
mult $t1, $t6
mflo $t6
li $t7, 1
mult $t4, $t7
mflo $t7
add $s0, $t6, $t7
li $s1, 4
mult $s0, $s1
mflo $s1
l.s $f3, arr__2($s1)
mov.s $f12, $f3
li $v0, 2
syscall
la $s2, __t12
li $v0, 4
la $a0, __t12
syscall
li $s3, 1
add $s4, $t4, $s3
addi $t4, $s4, 0
j _L18
_L16:
la $s5, __t13
li $v0, 4
la $a0, __t13
syscall
li $s6, 1
add $s7, $t1, $s6
addi $t1, $s7, 0
j _L9
_L7:
move $sp, $s8
jr $ra

