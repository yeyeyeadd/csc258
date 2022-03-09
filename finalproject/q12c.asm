.globl q12

.data

len: .word 6
list: .word -3, 2, 0, -1, 4, 5

.text
q12: 	la $s0, list
	la $s1, len
	lw $t8, 0($s1)
	
NEXT:	sub $t8, $t8, 1
	sub $t9, $t8, $zero
	la $s0, list
	beqz $t8, END
	
top:	lw $t1, 0($s0)
	lw $t2 4($s0)
	sub $t3, $t2, $t1
	bgtz $t3, INC
	sw $t2, 0($s0)
	sw $t1, 4($s0)
	
INC:	addi $s0, $s0, 4
	subi $t9, $t9, 1
	bgtz $t9, top	
	
	j NEXT

END: 	li $v0, 10
	syscall	
