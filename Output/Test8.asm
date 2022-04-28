.data
	arr__2:
		.word 1, 2, 1, 2, 1

__t16:
	.asciiz "No"
__t17:
	.asciiz "\n"
__t18:
	.asciiz "Yes"
__t19:
	.asciiz "\n"
.text
.globl main

main:

move $s8, $sp

li $t0, 0
addi $t1, $t0, 0
_L13:
li $t2, 5
li $t3, 2
div $t2, $t3
mflo $t4
sub $t5, $t1, $t4
blt $t5, $zero, _L14
j _L11
_L14:
li $t5, 1
mult $t1, $t5
mflo $t5
li $t6, 4
mult $t5, $t6
mflo $t6
lw $t6, arr__2($t6)
li $t7, 5
sub $s0, $t7, $t1
li $s1, 1
sub $s2, $s0, $s1
li $s3, 1
mult $s2, $s3
mflo $s3
li $s4, 4
mult $s3, $s4
mflo $s4
lw $s4, arr__2($s4)
sub $s5, $t6, $s4
bne $s5, $zero, _L18
j _L17
_L18:
la $s5, __t16
li $v0, 4
la $a0, __t16
syscall
la $s6, __t17
li $v0, 4
la $a0, __t17
syscall
move $sp, $s8
jr $ra
_L17:
li $s7, 1
add $t8, $t1, $s7
addi $t1, $t8, 0
j _L13
_L11:
la $t9, __t18
li $v0, 4
la $a0, __t18
syscall
addi $sp, $sp, -4
sw $t9, 4($sp)
la $t9, __t19
li $v0, 4
la $a0, __t19
syscall
move $sp, $s8
jr $ra

