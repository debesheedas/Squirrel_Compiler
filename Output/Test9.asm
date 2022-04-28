.data
	arr__2:
		.word 12, 24, 35, 41, 52, 60, 76, 82, 91, 100

__t0:
	.asciiz "Enter the key to search for: "
__t9:
	.asciiz "Found at index: "
__t10:
	.asciiz "\n"
__t18:
	.asciiz "Not found"
__t19:
	.asciiz "\n"
.text
.globl main

main:

move $s8, $sp

li $t0, 0
la $t1, __t0
li $v0, 4
la $a0, __t0
syscall
li $v0, 5
syscall
move $t0, $v0
li $t2, 0
addi $t3, $t2, 0
li $t4, 9
addi $t5, $t4, 0
li $t6, 0
_L22:
sub $t7, $t3, $t5
ble $t7, $zero, _L23
j _L6
_L23:
add $t7, $t3, $t5
li $s0, 2
div $t7, $s0
mflo $s1
addi $t6, $s1, 0
li $s2, 1
mult $t6, $s2
mflo $s2
li $s3, 4
mult $s2, $s3
mflo $s3
lw $s3, arr__2($s3)
sub $s4, $t0, $s3
beq $s4, $zero, _L29
j _L30
_L29:
la $s4, __t9
li $v0, 4
la $a0, __t9
syscall
move $a0, $t6
li $v0, 1
syscall
la $s5, __t10
li $v0, 4
la $a0, __t10
syscall
move $sp, $s8
jr $ra
_L30:
li $s6, 1
mult $t6, $s6
mflo $s6
li $s7, 4
mult $s6, $s7
mflo $s7
lw $s7, arr__2($s7)
sub $t8, $t0, $s7
blt $t8, $zero, _L39
j _L40
_L39:
li $t8, 1
sub $t9, $t6, $t8
addi $t5, $t9, 0
j _L28
_L40:
addi $sp, $sp, -4
sw $t3, 4($sp)
li $t3, 1
addi $sp, $sp, -4
sw $t3, 4($sp)
add $t3, $t6, $t3
addi $sp, $sp, -4
sw $t3, 4($sp)
addi $t3, $t3, 0
_L28:
j _L22
_L6:
addi $sp, $sp, -4
sw $t9, 4($sp)
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

