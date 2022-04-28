.data
	arr__2:
		.float 12.0, 2.0, 4.4, 56.25, 87.1, 9.0, 9.0, 0.0, -2.5, 4.0

.text
.globl main

main:

move $s8, $sp

li $t0, 0
li $t1, 0
li $t2, 0
li $t3, 0
addi $t4, $t3, 0
_L15:
li $t5, 10
sub $t6, $t4, $t5
blt $t6, $zero, _L16
j _L13
_L16:
li $t6, 1
mult $t4, $t6
mflo $t6
li $t7, 4
mult $t6, $t7
mflo $t7
l.s $f3, arr__2($t7)
cvt.w.s $f1, $f3
mfc1 $s0, $f1
addi $t1, $s0, 0
li $s1, 1
add $s2, $t4, $s1
addi $s3, $s2, 0
_L26:
li $s4, 10
sub $s5, $s3, $s4
blt $s5, $zero, _L27
j _L24
_L27:
li $s5, 1
mult $s3, $s5
mflo $s5
li $s6, 4
mult $s5, $s6
mflo $s6
l.s $f4, arr__2($s6)
cvt.w.s $f1, $f4
mfc1 $s7, $f1
addi $t2, $s7, 0
sub $t8, $t1, $t2
blt $t8, $zero, _L33
j _L32
_L33:
addi $t0, $t1, 0
li $t8, 1
mult $t4, $t8
mflo $t8
li $t9, 4
mult $t8, $t9
mflo $t9
addi $sp, $sp, -4
sw $t9, 4($sp)
addi $t9, $t2, 0
addi $sp, $sp, -4
sw $t9, 4($sp)
lw $t9, 0($s8)
s.s $t9, arr__2($t9)
sw $t9, 0($s8)
sw $t9, 0($s8)
li $t9, 1
li $t9, 1
mult $s3, $t9
mflo $t9
addi $sp, $sp, -4
sw $t9, 4($sp)
sw $t9, -8($s8)
li $t9, 4
li $t9, 4
mult $t9, $t9
mflo $t9
addi $sp, $sp, -4
sw $t9, 4($sp)
addi $t9, $t0, 0
addi $sp, $sp, -4
sw $t9, 4($sp)
lw $t9, -12($s8)
s.s $t9, arr__2($t9)
_L32:
addi $sp, $sp, -4
sw $s3, 4($sp)
li $s3, 1
addi $sp, $sp, -4
sw $s3, 4($sp)
sw $s3, -24($s8)
lw $s3, -24($s8)
add $s3, $s3, $s3
addi $sp, $sp, -4
sw $s3, 4($sp)
addi $s3, $s3, 0
j _L26
_L24:
addi $sp, $sp, -4
sw $t4, 4($sp)
sw $t4, -32($s8)
li $t4, 1
li $t4, 1
mult $t4, $t4
mflo $t4
addi $sp, $sp, -4
sw $t4, 4($sp)
sw $t4, -36($s8)
li $t4, 4
li $t4, 4
mult $t4, $t4
mflo $t4
l.s $f5, arr__2($t4)
mov.s $f12, $f5
li $v0, 2
syscall
addi $sp, $sp, -4
sw $t4, 4($sp)
li $t4, 1
addi $sp, $sp, -4
sw $t4, 4($sp)
sw $t4, -44($s8)
lw $t4, -44($s8)
add $t4, $t4, $t4
addi $sp, $sp, -4
sw $t4, 4($sp)
addi $t4, $t4, 0
j _L15
_L13:
move $sp, $s8
jr $ra

