.globl q12

.data

len: .word 6
list: .word -3, 2, 0, -1, 4, 5

.text
q12:
	la $s0, list
	la $s1, len
	li $t6, 16
	
	lw $t1, 0($s1)
	
top:	lw $t0, 0($s0)
	mul $t0, $t0, $t6
	sw $t0, 0($s0)
	addi $t1, $t1, -1
	addi $s0, $s0, 4
	bne $t1, $zero, top
	
END: 	li $v0, 10
	syscall
	