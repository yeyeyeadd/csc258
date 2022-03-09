.globl q12

.data

len: .word 6
list: .word -3, 2, 0, -1, 4, 5

.text
q12:	
	la $s0, list
	la $s1, len
	lw $s2, 0($s1)

top: 	beqz $s2, END
	lw $t0, 0($s0)
	bgtz $t0, NEXT
	sw $zero, 0($s0)
	
NEXT: 	addi $s0, $s0, 4
	sub $s2, $s2, 1
	j top

END: 	li $v0, 10
	syscall