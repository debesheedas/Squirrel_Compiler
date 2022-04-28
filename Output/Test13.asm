.data

__t22:
	.asciiz "YES"
__t23:
	.asciiz "NO"
.text
.globl main

main:

move $s8, $sp

li $t0, 10
addi $t1, $t0, 0
li $t2, 20
addi $t3, $t2, 0
li $t4, 3
addi $t5, $t4, 0
li $t6, 4
addi $t7, $t6, 0
li $s0, 5
addi $s1, $s0, 0
li $s2, 6
addi $s3, $s2, 0
li $s4, 7
addi $s5, $s4, 0
li $s6, 8
addi $s7, $s6, 0
li $t8, 9
addi $t9, $t8, 0
addi $sp, $sp, -4
sw $t8, 4($sp)
li $t8, 10
addi $sp, $sp, -4
sw $t8, 4($sp)
addi $t8, $t8, 0
addi $sp, $sp, -4
sw $s6, 4($sp)
li $s6, 11
addi $sp, $sp, -4
sw $s6, 4($sp)
addi $s6, $s6, 0
addi $sp, $sp, -4
sw $s4, 4($sp)
li $s4, 10
addi $sp, $sp, -4
sw $s4, 4($sp)
sub $s4, $t1, $s4
beq $s4, $zero, _L27
j _L28
_L27:
addi $sp, $sp, -4
sw $t3, 4($sp)
li $t3, 20
addi $sp, $sp, -4
sw $t3, 4($sp)
sub $t3, $t3, $t3
beq $t3, $zero, _L32
j _L33
_L32:
addi $sp, $sp, -4
sw $t5, 4($sp)
li $t5, 3
addi $sp, $sp, -4
sw $t5, 4($sp)
sub $t5, $t5, $t5
beq $t5, $zero, _L37
j _L38
_L37:
addi $sp, $sp, -4
sw $t7, 4($sp)
li $t7, 4
addi $sp, $sp, -4
sw $t7, 4($sp)
sub $t7, $t7, $t7
beq $t7, $zero, _L42
j _L43
_L42:
addi $sp, $sp, -4
sw $s1, 4($sp)
li $s1, 5
addi $sp, $sp, -4
sw $s1, 4($sp)
sub $s1, $s1, $s1
beq $s1, $zero, _L47
j _L48
_L47:
addi $sp, $sp, -4
sw $s3, 4($sp)
li $s3, 6
addi $sp, $sp, -4
sw $s3, 4($sp)
sub $s3, $s3, $s3
beq $s3, $zero, _L52
j _L53
_L52:
addi $sp, $sp, -4
sw $s5, 4($sp)
li $s5, 7
addi $sp, $sp, -4
sw $s5, 4($sp)
sub $s5, $s5, $s5
beq $s5, $zero, _L57
j _L58
_L57:
addi $sp, $sp, -4
sw $s7, 4($sp)
li $s7, 8
addi $sp, $sp, -4
sw $s7, 4($sp)
sub $s7, $s7, $s7
beq $s7, $zero, _L62
j _L63
_L62:
addi $sp, $sp, -4
sw $t9, 4($sp)
li $t9, 9
addi $sp, $sp, -4
sw $t9, 4($sp)
sub $t9, $t9, $t9
beq $t9, $zero, _L67
j _L68
_L67:
addi $sp, $sp, -4
sw $t8, 4($sp)
li $t8, 10
addi $sp, $sp, -4
sw $t8, 4($sp)
sub $t8, $t8, $t8
beq $t8, $zero, _L72
j _L73
_L72:
addi $sp, $sp, -4
sw $s6, 4($sp)
li $s6, 11
addi $sp, $sp, -4
sw $s6, 4($sp)
sub $s6, $s6, $s6
beq $s6, $zero, _L77
j _L78
_L77:
sw $t9, -80($s8)
la $t9, __t22
li $v0, 4
la $a0, __t22
syscall
j _L76
_L78:
_L76:
j _L71
_L73:
_L71:
j _L66
_L68:
_L66:
j _L61
_L63:
_L61:
j _L56
_L58:
_L56:
j _L51
_L53:
_L51:
j _L46
_L48:
_L46:
j _L41
_L43:
_L41:
j _L36
_L38:
_L36:
j _L31
_L33:
_L31:
j _L26
_L28:
addi $sp, $sp, -4
sw $t9, 4($sp)
la $t9, __t23
li $v0, 4
la $a0, __t23
syscall
_L26:
move $sp, $s8
jr $ra

