.data

__t0:
<<<<<<< HEAD
	.asciiz "H/h for head, T/t for tail\n"
=======
	.asciiz "H for head, T for tail\n"
>>>>>>> final
__t1:
	.asciiz "Enter the first outcome: "
__t2:
	.asciiz "Enter the second outcome: "
__t3:
	.asciiz "2 Heads\n"
__t5:
	.asciiz "Head and Tail\n"
__t7:
	.asciiz "Tail and Head\n"
__t9:
	.asciiz "2 Tails\n"
.text
.globl main

main:

move $s8, $sp

li $t0, 48
li $t1, 48
la $t2, __t0
li $v0, 4
la $a0, __t0
syscall
la $t3, __t1
li $v0, 4
la $a0, __t1
syscall
li $v0, 12
syscall
move $t0, $v0
li $v0, 12
syscall
la $t4, __t2
li $v0, 4
la $a0, __t2
syscall
li $v0, 12
syscall
move $t1, $v0
li $v0, 12
syscall
li $t5, 72
<<<<<<< HEAD
sub $t4, $t0, $t5
bne $t4, $zero, _L19
li $t6, 72
sub $t4, $t1, $t6
bne $t4, $zero, _L25
=======
sub $t6, $t0, $t5
bne $t6, $zero, _L19
li $t6, 72
sub $t7, $t1, $t6
bne $t7, $zero, _L25
>>>>>>> final
la $t7, __t3
li $v0, 4
la $a0, __t3
syscall
j _L24
_L25:
<<<<<<< HEAD
la $t8, __t5
=======
la $s0, __t5
>>>>>>> final
li $v0, 4
la $a0, __t5
syscall
j _L24
_L24:
j _L18
_L19:
<<<<<<< HEAD
li $t9, 72
sub $t4, $t1, $t9
bne $t4, $zero, _L35
la $s0, __t7
=======
li $s1, 72
sub $s2, $t1, $s1
bne $s2, $zero, _L35
la $s2, __t7
>>>>>>> final
li $v0, 4
la $a0, __t7
syscall
j _L34
_L35:
<<<<<<< HEAD
la $s1, __t9
=======
la $s3, __t9
>>>>>>> final
li $v0, 4
la $a0, __t9
syscall
j _L34
_L34:
j _L18
_L18:
move $sp, $s8
jr $ra

