.data

__t9:
	.asciiz " "
__t17:
	.asciiz "*"
__t18:
	.asciiz "\n"
.text
.globl main

main:

move $s8, $sp

li $t0, 0
li $v0, 5
syscall
move $t0, $v0
li $t1, 0
li $t2, 0
addi $t1, $t2, 0
_L13:
sub $t3, $t1, $t0
blt $t3, $zero, _L14
j _L11
_L14:
li $t3, 0
li $t4, 0
addi $t3, $t4, 0
_L28:
sub $t5, $t0, $t1
li $t6, 1
sub $t7, $t5, $t6
sub $s0, $t3, $t7
blt $s0, $zero, _L29
j _L26
_L29:
la $s0, __t9
li $v0, 4
la $a0, __t9
syscall
li $s1, 1
add $s2, $t3, $s1
addi $t3, $s2, 0
j _L28
_L26:
li $s3, 0
li $s4, 0
addi $s3, $s4, 0
_L35:
li $s5, 2
mult $s5, $t1
mflo $s6
li $s7, 1
add $t8, $s6, $s7
sub $t9, $s3, $t8
blt $t9, $zero, _L36
j _L33
_L36:
la $t9, __t17
li $v0, 4
la $a0, __t17
syscall
addi $sp, $sp, -4
sw $t9, 4($sp)
li $t9, 1
addi $sp, $sp, -4
sw $t9, 4($sp)
add $t9, $s3, $t9
addi $s3, $t9, 0
j _L35
_L33:
addi $sp, $sp, -4
sw $t1, 4($sp)
la $t1, __t18
li $v0, 4
la $a0, __t18
syscall
addi $sp, $sp, -4
sw $t1, 4($sp)
li $t1, 1
addi $sp, $sp, -4
sw $t1, 4($sp)
sw $t1, -16($s8)
lw $t1, -16($s8)
add $t1, $t1, $t1
addi $sp, $sp, -4
sw $t1, 4($sp)
addi $t1, $t1, 0
j _L13
_L11:
move $sp, $s8
jr $ra

