.data

__t7:
	.asciiz "Fibonacci iterative\n"
__t8:
	.asciiz "Enter a number: "
__t10:
	.asciiz "Fibonacci of "
__t11:
	.asciiz " is "
__t12:
	.asciiz "\n"
.text
.globl main

fibonacci:
move $s8, $sp

addi $t0, $a0, 0
li $t1, 0
addi $t2, $t1, 0
li $t3, 1
addi $t4, $t3, 0
li $t5, 0
addi $t6, $t5, 0
li $t7, 0
addi $s0, $t7, 0
_L17:
sub $s1, $s0, $t0
blt $s1, $zero, _L18
j _L15
_L18:
add $s1, $t2, $t4
addi $t6, $s1, 0
addi $t2, $t4, 0
addi $t4, $t6, 0
li $s2, 1
add $s3, $s0, $s2
addi $s0, $s3, 0
j _L17
_L15:
move $sp, $s8
move $v0, $t6
jr $ra
jr $ra
main:

move $s8, $sp

la $t0, __t7
li $v0, 4
la $a0, __t7
syscall
li $t1, 0
la $t2, __t8
li $v0, 4
la $a0, __t8
syscall
li $v0, 5
syscall
move $t1, $v0

# -------------------------------- 
addi $sp, $sp, -4
sw $t0, 4($sp)
addi $sp, $sp, -4
sw $t1, 4($sp)
addi $sp, $sp, -4
sw $t2, 4($sp)
addi $sp, $sp, -4
sw $ra, 4($sp)
addi $sp, $sp, -4
sw $s8, 4($sp)
move $a0, $t1
jal fibonacci
move $t3, $v0
lw $s8, 4($sp)
lw $ra, 8($sp)
lw $t0, 0($s8)
lw $t1, -4($s8)
lw $t2, -8($s8)
addi $t4, $t3, 0
la $t5, __t10
li $v0, 4
la $a0, __t10
syscall
move $a0, $t1
li $v0, 1
syscall
la $t6, __t11
li $v0, 4
la $a0, __t11
syscall
move $a0, $t4
li $v0, 1
syscall
la $t7, __t12
li $v0, 4
la $a0, __t12
syscall
move $sp, $s8
jr $ra

