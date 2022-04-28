.data

__t3:
	.asciiz "Enter the first number: "
__t4:
	.asciiz "Enter the second number: "
__t6:
	.asciiz "The GCD of "
__t7:
	.asciiz " and "
__t8:
	.asciiz " is "
__t9:
	.asciiz "\n"
.text
.globl main

gcd_recursive:
move $s8, $sp

addi $t0, $a0, 0
addi $t1, $a1, 0
li $t2, 0
sub $t3, $t1, $t2
beq $t3, $zero, _L9
j _L8
_L9:
move $sp, $s8
move $v0, $t0
jr $ra
jr $ra
_L8:
div $t0, $t1
mfhi $t3

# -------------------------------- 
addi $sp, $sp, -4
sw $t0, 4($sp)
addi $sp, $sp, -4
sw $t1, 4($sp)
addi $sp, $sp, -4
sw $t2, 4($sp)
addi $sp, $sp, -4
sw $t3, 4($sp)
addi $sp, $sp, -4
sw $ra, 4($sp)
addi $sp, $sp, -4
sw $s8, 4($sp)
move $a1, $t3
move $a0, $t1
jal gcd_recursive
move $t4, $v0
lw $s8, 4($sp)
lw $ra, 8($sp)
lw $t0, 0($s8)
lw $t1, -4($s8)
lw $t2, -8($s8)
lw $t3, -12($s8)
move $sp, $s8
move $v0, $t4
jr $ra
jr $ra
main:

move $s8, $sp

li $t0, 0
la $t1, __t3
li $v0, 4
la $a0, __t3
syscall
li $v0, 5
syscall
move $t0, $v0
li $t2, 0
la $t3, __t4
li $v0, 4
la $a0, __t4
syscall
li $v0, 5
syscall
move $t2, $v0

# -------------------------------- 
addi $sp, $sp, -4
sw $t0, 4($sp)
addi $sp, $sp, -4
sw $t1, 4($sp)
addi $sp, $sp, -4
sw $t2, 4($sp)
addi $sp, $sp, -4
sw $t3, 4($sp)
addi $sp, $sp, -4
sw $ra, 4($sp)
addi $sp, $sp, -4
sw $s8, 4($sp)
move $a1, $t2
move $a0, $t0
jal gcd_recursive
move $t4, $v0
lw $s8, 4($sp)
lw $ra, 8($sp)
lw $t0, 0($s8)
lw $t1, -4($s8)
lw $t2, -8($s8)
lw $t3, -12($s8)
addi $t5, $t4, 0
la $t6, __t6
li $v0, 4
la $a0, __t6
syscall
move $a0, $t0
li $v0, 1
syscall
la $t7, __t7
li $v0, 4
la $a0, __t7
syscall
move $a0, $t2
li $v0, 1
syscall
la $s0, __t8
li $v0, 4
la $a0, __t8
syscall
move $a0, $t5
li $v0, 1
syscall
la $s1, __t9
li $v0, 4
la $a0, __t9
syscall
move $sp, $s8
jr $ra

