.data
	a__2:
		.word 1, 2, 3, 4, 5, 6, 7, 8, 9
	b__2:
		.word -1, 2, -3, 4, -4, 6, -11, 8, -10
	c__2:
		.word 0, 0, 0, 0, 0, 0, 0, 0, 0
__t28:
	.asciiz "\n"
.text
.globl main

main:
move $s8, $sp
li $t0, 0
addi $t1, $t0, 0
_L13:
li $t2, 9
sub $t3, $t1, $t2
blt $t3, $zero, _L14
j _L11
_L14:
li $t3, 3
div $t1, $t3
mflo $t4
addi $t5, $t4, 0
li $t6, 3
div $t1, $t6
mfhi $t7
addi $s0, $t7, 0
li $s1, 3
mult $t5, $s1
mflo $s1
li $s2, 1
mult $s0, $s2
mflo $s2
add $s3, $s1, $s2
li $s4, 4
mult $s3, $s4
mflo $s4
li $s5, 3
mult $t5, $s5
mflo $s5
li $s6, 1
mult $s0, $s6
mflo $s6
add $s7, $s5, $s6
li $t8, 4
mult $s7, $t8
mflo $t8
lw $t8, a__2($t8)
li $t9, 3
mult $t5, $t9
mflo $t9
addi $sp, $sp, -4
sw $t3, 4($sp)
sw $t3, 0($s8)
li $t3, 1
li $t3, 1
mult $s0, $t3
mflo $t3
addi $sp, $sp, -4
sw $t7, 4($sp)
add $t7, $t9, $t3
addi $sp, $sp, -4
sw $s1, 4($sp)
sw $s1, -8($s8)
li $s1, 4
li $s1, 4
mult $t7, $s1
mflo $s1
lw $s1, b__2($s1)
addi $sp, $sp, -4
sw $s3, 4($sp)
add $s3, $t8, $s1
addi $sp, $sp, -4
sw $s5, 4($sp)
addi $s5, $s3, 0
sw $s5, c__2($s4)
addi $sp, $sp, -4
sw $s7, 4($sp)
sw $s7, -20($s8)
li $s7, 3
li $s7, 3
mult $t5, $s7
mflo $s7
sw $t8, 4($s8)
sw $t8, 4($s8)
li $t8, 1
li $t8, 1
mult $s0, $t8
mflo $t8
addi $sp, $sp, -4
sw $t3, 4($sp)
add $t3, $s7, $t8
addi $sp, $sp, -4
sw $s3, 4($sp)
sw $s3, -28($s8)
li $s3, 4
li $s3, 4
mult $t3, $s3
mflo $s3
lw $s4, c__2($s3)
move $a0, $s4
li $v0, 1
syscall
addi $sp, $sp, -4
sw $s4, 4($sp)
la $s4, __t28
li $v0, 4
la $a0, __t28
syscall
addi $sp, $sp, -4
sw $t8, 4($sp)
li $t8, 1
addi $sp, $sp, -4
sw $s3, 4($sp)
add $s3, $t1, $t8
addi $t1, $s3, 0
j _L13
_L11:
move $sp, $s8
jr $ra

