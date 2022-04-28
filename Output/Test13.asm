.data

__t5:
	.asciiz "this part is not reachable"
__t8:
	.asciiz "\n"
.text
.globl main

factorial:
move $s8, $sp

addi $t0, $a0, 0
li $t1, 1
addi $t2, $t1, 0
li $t3, 1
addi $t4, $t3, 0
_L15:
sub $t5, $t4, $t0
ble $t5, $zero, _L16
j _L13
_L16:
mult $t2, $t4
mflo $t5
addi $t2, $t5, 0
li $t6, 1
add $t7, $t4, $t6
addi $t4, $t7, 0
j _L15
_L13:
move $sp, $s8
move $v0, $t2
jr $ra
jr $ra
main:

move $s8, $sp

li $t0, 5

# -------------------------------- 
addi $sp, $sp, -4
sw $t0, 4($sp)
addi $sp, $sp, -4
sw $ra, 4($sp)
addi $sp, $sp, -4
sw $s8, 4($sp)
move $a0, $t0
jal factorial
move $t1, $v0
lw $s8, 4($sp)
lw $ra, 8($sp)
lw $t0, 0($s8)
addi $t2, $t1, 0
move $a0, $t2
li $v0, 1
syscall
la $t3, __t8
li $v0, 4
la $a0, __t8
syscall
move $sp, $s8
jr $ra

