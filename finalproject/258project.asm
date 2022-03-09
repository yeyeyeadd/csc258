#####################################################################
#
# CSC258H5S Fall 2020 Assembly Final Project
# University of Toronto, St. George
#
# Student: Yansong Wang, Student Number 1006474860
#
# Bitmap Display Configuration:
# - Unit width in pixels: 8
# - Unit height in pixels: 8
# - Display width in pixels: 256
# - Display height in pixels: 256
# - Base Address for Display: 0x10008000 ($gp)
#
# Which milestone is reached in this submission?
# Milestones 1 ab
# Milestones 2 ab
# Milestones 3 abc
# Milestones 4 bd
# Milestones 5 deg  Note: for play name: you can type your name only when you restart the progrom, not game. (show name on keboard display)
# (See the assignment handout for descriptions of the milestones)
# - Milestone 1/2/3/4/5 (choose the one the applies)
#readme: You can type your name, and input ` to finish your name and start
#	k move left
#	j move right
#	the speed will increase 1 when you touch 2 platform and notifiy.
#	and you can press s to restart the game
.data
	displayAddress: .word 0x10008000
	numberoffour: .word 0x00000004
	lastline: .word 0x10008F7C
	placeforgg1: .word 0x100086AC
	placeforgg2: .word 0x100086C8
	placeforwow: .word 0x10008600
	placeforpoggers: .word 0x10008600
	placeforawesome: .word 0x10008600
	last: .word 0x10008ffc
	speed: .word 400
	speedup: .word 50
	numberoftwo: .word 2
	red: .word 0xff0000
	green: .word 0x00ff00
	black: .word 0x000000
	blue: .word 0x0000ff
	background: .word 0xfbfae0
	lastone: .word 0x10008ffc
	placeforsun: .word 0x100080DC
	colorofsun: .word 0xf06507
	placeforcloud: .word 0x10008108
	colorofcloud: .word 0xc3f9fb
	name: .space 20
	inputname: .asciiz "Place type your name, enter ` to start\n"
.text
	lw $t6, numberoffour
	lw $t1, red # $t1 stores the red colour code
	lw $t2, green # $t2 stores the green colour code
	lw $t5, background #backgroud colour
		
printname: #print inputname
	la $a1, inputname  
	jal printst
	readc:
		jal getc
		addi $a0, $v0, 0
		jal printc
		j readc

printst:
	subi $sp, $sp, 4
	sw $ra, ($sp)
	loop:
	lb $a0, ($a1)
	jal printc
	addi $a1, $a1, 1
	bnez $a0, loop
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
	
	
getc:  #get user input
	lui $a3, 0xffff
	lw $t9, 0xffff0004
	beq $t9, 0x60, backgroud
	get:
		lw $t8, 0($a3)
		andi $t8, $t8, 0x1
		beqz $t8, get
		lw $v0, 4($a3)
		jr $ra		
		
		
printc: #print user input
	lui $a3, 0xffff
	print:
		lw $t8, 8($a3)
		andi $t8,$t8, 0x1
		beqz $t8, print
		sw $a0, 12($a3)
		jr $ra		
		
		
		
backgroud: lw $t9, displayAddress  #draw background
	lw $t8, lastone
	sw $t5, 0($t9)
	
paint:  addu $t9, $t9, $t6
	sw $t5, 0($t9)
	bne $t9, $t8, paint
	





new:	lw $t9, placeforsun  #draw a sun
	lw $t8, colorofsun
	sw $t8, 124($t9)
	sw $t8, 248($t9)
	sw $t8, 148($t9)
	sw $t8, 272($t9)
	sw $t8, 384($t9)
	sw $t8, 388($t9)
	sw $t8, 392($t9)
	sw $t8, 508($t9)
	sw $t8, 512($t9)
	sw $t8, 516($t9)
	sw $t8, 520($t9)
	sw $t8, 524($t9)
	sw $t8, 624($t9)
	sw $t8, 636($t9)
	sw $t8, 640($t9)
	sw $t8, 644($t9)
	sw $t8, 648($t9)
	sw $t8, 652($t9)
	sw $t8, 756($t9)
	sw $t8, 764($t9)
	sw $t8, 768($t9)
	sw $t8, 772($t9)
	sw $t8, 776($t9)
	sw $t8, 780($t9)
	sw $t8, 792($t9)
	sw $t8, 896($t9)
	sw $t8, 900($t9)
	sw $t8, 904($t9)
	sw $t8, 924($t9)
	sw $t8, 1156($t9)
	sw $t8, 1280($t9)
	
	lw $t9, placeforcloud
	lw $t8, colorofcloud #draw cloud
	sw $t8, 0($t9)
	sw $t8, 4($t9)
	sw $t8, 16($t9)
	sw $t8, 20($t9)
	sw $t8, 124($t9)
	sw $t8, 128($t9)
	sw $t8, 132($t9)
	sw $t8, 136($t9)
	sw $t8, 140($t9)
	sw $t8, 144($t9)
	sw $t8, 148($t9)
	sw $t8, 248($t9)
	sw $t8, 252($t9)
	sw $t8, 256($t9)
	sw $t8, 260($t9)
	sw $t8, 264($t9)
	sw $t8, 268($t9)
	sw $t8, 272($t9)
	sw $t8, 276($t9)
	sw $t8, 280($t9)
	sw $t8, 376($t9)
	sw $t8, 380($t9)
	sw $t8, 384($t9)
	sw $t8, 388($t9)
	sw $t8, 392($t9)
	sw $t8, 396($t9)
	sw $t8, 400($t9)
	sw $t8, 404($t9)
	sw $t8, 408($t9)
	sw $t8, 412($t9)
	sw $t8, 504($t9)
	sw $t8, 508($t9)
	sw $t8, 512($t9)
	sw $t8, 516($t9)
	sw $t8, 520($t9)
	sw $t8, 524($t9)
	sw $t8, 528($t9)
	sw $t8, 532($t9)
	sw $t8, 536($t9)
	sw $t8, 540($t9)
	sw $t8, 636($t9)
	sw $t8, 640($t9)
	sw $t8, 644($t9)
	sw $t8, 648($t9)
	sw $t8, 652($t9)
	sw $t8, 656($t9)
	sw $t8, 660($t9)
	sw $t8, 664($t9)
	sw $t8, 768($t9)
	sw $t8, 772($t9)
	sw $t8, 784($t9)
	sw $t8, 788($t9)
	
	


	addu $t0, $zero, $zero #set speed
	li $t9, 400
	la $t7, speed
	sw $t9, 0($t7)
	li $v0, 42
	li $a0, 0
	li $a1, 25
	syscall
	addu $s0, $zero, $a0
	addu $s0, $t6, $s0
	mul $s0, $s0, $t6
	addiu $s0, $s0, 0x10008CFC #doodler
	sw $t1, 0($s0)
	sw $t1, 4($s0)
	sw $t1, 124($s0)
	sw $t2, 128($s0)
	sw $t2, 132($s0)
	sw $t1, 136($s0)
	sw $t1, 252($s0)
	sw $t2, 256($s0)
	sw $t2, 260($s0)
	sw $t1, 264($s0)
	sw $t1, 384($s0)
	sw $t1, 388($s0)
	sw $t1, 508($s0)
	sw $t1, 520($s0)
	
	
	
	addiu $s1, $s0, 0x00000278
	sw $t2, 0($s1) #Frist platform
	sw $t2, 4($s1)
	sw $t2, 8($s1)
	sw $t2, 12($s1)
	sw $t2, 16($s1)
	
	
	
	li $v0, 42
	li $a0, 0
	li $a1, 27
	syscall
	addu $s2, $zero, $a0 
	mul $s2, $s2, $t6
	addu $s2, $s2, 0x10008A00
	sw $t2, 0($s2) #Second platform
	sw $t2, 4($s2)
	sw $t2, 8($s2)
	sw $t2, 12($s2)
	sw $t2, 16($s2)
	
	li $v0, 42
	li $a0, 0
	li $a1, 27
	syscall
	addu $s3, $zero, $a0
	mul $s3, $s3, $t6
	addu $s3, $s3, 0x10008500
	sw $t2, 0($s3) #Third platform
	sw $t2, 4($s3)
	sw $t2, 8($s3)
	sw $t2, 12($s3)
	sw $t2, 16($s3)
	
	li $v0, 42
	li $a0, 0
	li $a1, 27
	syscall
	addu $s4, $zero, $a0
	mul $s4, $s4, $t6
	addu $s4, $s4, 0x10008000
	sw $t2, 0($s4) #four platform
	sw $t2, 4($s4)
	sw $t2, 8($s4)
	sw $t2, 12($s4)
	sw $t2, 16($s4)
	


jump:	
	
	addi $s5, $zero, 0x00000080 #regular jump
	lw $t4, 0xffff0000
	bne  $t4, 1, nkj # no key input
	lw $s6, 0xffff0004 
	beq $s6, 0x73, backgroud
	beq $s6, 0x6B, jrtk
	beq $s6, 0x6A, jrtj
	j nkj
	
jrtk: 	addiu $s5, $zero, 0x0000007c #shift to right
	j nkj

jrtj:   addiu $s5, $zero, 0x00000084 #shift to left
	j nkj
	
nkj:	sw $t5, 0($s0) #draw the first one to black
	sw $t5, 4($s0)
	sw $t5, 124($s0)
	sw $t5, 128($s0)
	sw $t5, 132($s0)
	sw $t5, 136($s0)
	sw $t5, 252($s0)
	sw $t5, 256($s0)
	sw $t5, 260($s0)
	sw $t5, 264($s0)
	sw $t5, 384($s0)
	sw $t5, 388($s0)
	sw $t5, 508($s0)
	sw $t5, 520($s0)
	
	sw $t2, 0($s2) #Second platform
	sw $t2, 4($s2)
	sw $t2, 8($s2)
	sw $t2, 12($s2)
	sw $t2, 16($s2)

	subu  $s0, $s0, $s5
	sw $t1, 0($s0) #draw doodler to red
	sw $t1, 0($s0)
	sw $t1, 4($s0)
	sw $t1, 124($s0)
	sw $t2, 128($s0)
	sw $t2, 132($s0)
	sw $t1, 136($s0)
	sw $t1, 252($s0)
	sw $t2, 256($s0)
	sw $t2, 260($s0)
	sw $t1, 264($s0)
	sw $t1, 384($s0)
	sw $t1, 388($s0)
	sw $t1, 508($s0)
	sw $t1, 520($s0)
	
	#li $v0, 32 #sleep
	#li $a0, 200
	#syscall
	
	jal sleep
	
	addiu $t7, $zero, 0x1000877C #check if doodler still can jump
	beq $t7, $s0, fall
	subu $t7, $s0, $t7
	
	
	
	blez $t7, fall
	j jump
	
	
fall: 	
	addiu $s5, $zero, 0x00000080 #regular fall
	lw $t4, 0xffff0000
	bne  $t4, 1, nokey
	lw $s6, 0xffff0004 
	beq $s6, 0x73, backgroud # cheack if need to restart
	beq $s6, 0x6B, frtk 
	beq $s6, 0x6A, frtj
	j nokey
	
frtk: 	addiu $s5, $zero, 0x00000084 #shift to right
	j nokey

frtj:   addiu $s5, $zero, 0x0000007c #shift to left
	j nokey
	
	
nokey:	
	sw $t5, 0($s0) #draw doodler to black
	sw $t5, 4($s0)
	sw $t5, 124($s0)
	sw $t5, 128($s0)
	sw $t5, 132($s0)
	sw $t5, 136($s0)
	sw $t5, 252($s0)
	sw $t5, 256($s0)
	sw $t5, 260($s0)
	sw $t5, 264($s0)
	sw $t5, 384($s0)
	sw $t5, 388($s0)
	sw $t5, 508($s0)
	sw $t5, 520($s0)
	
	sw $t2, 0($s2) #Second platform
	sw $t2, 4($s2)
	sw $t2, 8($s2)
	sw $t2, 12($s2)
	sw $t2, 16($s2)
	
	addu $s0, $s0, $s5
	sw $t1, 0($s0) #draw doodler
	sw $t1, 0($s0)
	sw $t1, 4($s0)
	sw $t1, 124($s0)
	sw $t2, 128($s0)
	sw $t2, 132($s0)
	sw $t1, 136($s0)
	sw $t1, 252($s0)
	sw $t2, 256($s0)
	sw $t2, 260($s0)
	sw $t1, 264($s0)
	sw $t1, 384($s0)
	sw $t1, 388($s0)
	sw $t1, 508($s0)
	sw $t1, 520($s0)
	
	#li $v0, 32
	#li $a0, 200
	#syscall
	jal sleep
	
	addiu $s5, $s0, 508
	addiu $s7, $s0, 520  #check if doodler toach the second plat
	
	subiu $s6, $s2, 0x00000080
	beq $s7, $s6, touch
	beq $s5, $s6, touch
	
	subiu $s6, $s2, 0x0000007C
	beq $s7, $s6, touch
	beq $s5, $s6, touch

	subiu $s6, $s2, 0x00000078
	beq $s7, $s6, touch
	beq $s5, $s6, touch

	subiu $s6, $s2, 0x00000074
	beq $s7, $s6, touch
	beq $s5, $s6, touch
	
	subiu $s6, $s2, 0x00000070
	beq $s7, $s6, touch
	beq $s5, $s6, touch
	
	addiu $s5, $s0, 508 #check if doodler touch the first plat
	addiu $s7, $s0, 520 
	
	subiu $s6, $s1, 0x00000080  #check if doodler touch the first plat
	beq $s7, $s6, jump
	beq $s5, $s6, jump
	
	subiu $s6, $s1, 0x0000007C
	beq $s7, $s6, jump
	beq $s5, $s6, jump
	
	subiu $s6, $s1, 0x00000078
	beq $s7, $s6, jump
	beq $s5, $s6, jump

	subiu $s6, $s1, 0x000074
	beq $s7, $s6, jump
	beq $s5, $s6, jump
	
	subiu $s6, $s1, 0x000070
	beq $s7, $s6, jump
	beq $s5, $s6, jump
	
	addiu $t8, $zero, 0x10008E7C #lowest can fall
	subu $t8, $t8, $s0
	
	
	blez $t8, Exit # Not out of range should keep falling
	j fall
	
	
	
	
	
	
touch:	addiu $t0, $t0, 1
	
touch1:	sw $t5, 0($s1) #clean plate
	sw $t5, 4($s1)
	sw $t5, 8($s1)
	sw $t5, 12($s1)
	sw $t5, 16($s1)
	sw $t5, 0($s2)
	sw $t5, 4($s2)
	sw $t5, 8($s2)
	sw $t5, 12($s2)
	sw $t5, 16($s2)
	sw $t5, 0($s3)
	sw $t5, 4($s3)
	sw $t5, 8($s3)
	sw $t5, 12($s3)
	sw $t5, 16($s3)
	sw $t5, 0($s4)
	sw $t5, 4($s4)
	sw $t5, 8($s4)
	sw $t5, 12($s4)
	sw $t5, 16($s4)
	
	
	
	addiu $s2, $s2, 0x00000080
	sw $t2, 0($s2) #Draw Frist platform
	sw $t2, 4($s2)
	sw $t2, 8($s2)
	sw $t2, 12($s2)
	sw $t2, 16($s2)
	
	addiu $s3, $s3, 0x00000080
	sw $t2, 0($s3) #Draw Second platform
	sw $t2, 4($s3)
	sw $t2, 8($s3)
	sw $t2, 12($s3)
	sw $t2, 16($s3)
	
	addiu $s4, $s4, 0x00000080
	sw $t2, 0($s4) #Draw third platform
	sw $t2, 4($s4)
	sw $t2, 8($s4)
	sw $t2, 12($s4)
	sw $t2, 16($s4)
	
	
	sw $t5, 0($s0) #draw doodler to black
	sw $t5, 4($s0)
	sw $t5, 124($s0)
	sw $t5, 128($s0)
	sw $t5, 132($s0)
	sw $t5, 136($s0)
	sw $t5, 252($s0)
	sw $t5, 256($s0)
	sw $t5, 260($s0)
	sw $t5, 264($s0)
	sw $t5, 384($s0)
	sw $t5, 388($s0)
	sw $t5, 508($s0)
	sw $t5, 520($s0)
	
	addiu $s0, $s0, 0x00000080 #shift doodler down one line
	sw $t1, 0($s0) #draw doodler to red
	sw $t1, 0($s0)
	sw $t1, 4($s0)
	sw $t1, 124($s0)
	sw $t2, 128($s0)
	sw $t2, 132($s0)
	sw $t1, 136($s0)
	sw $t1, 252($s0)
	sw $t2, 256($s0)
	sw $t2, 260($s0)
	sw $t1, 264($s0)
	sw $t1, 384($s0)
	sw $t1, 388($s0)
	sw $t1, 508($s0)
	sw $t1, 520($s0)
	
	
	lw $t9, placeforsun  #draw a sun
	lw $t8, colorofsun
	sw $t8, 124($t9)
	sw $t8, 248($t9)
	sw $t8, 148($t9)
	sw $t8, 272($t9)
	sw $t8, 384($t9)
	sw $t8, 388($t9)
	sw $t8, 392($t9)
	sw $t8, 508($t9)
	sw $t8, 512($t9)
	sw $t8, 516($t9)
	sw $t8, 520($t9)
	sw $t8, 524($t9)
	sw $t8, 624($t9)
	sw $t8, 636($t9)
	sw $t8, 640($t9)
	sw $t8, 644($t9)
	sw $t8, 648($t9)
	sw $t8, 652($t9)
	sw $t8, 756($t9)
	sw $t8, 764($t9)
	sw $t8, 768($t9)
	sw $t8, 772($t9)
	sw $t8, 776($t9)
	sw $t8, 780($t9)
	sw $t8, 792($t9)
	sw $t8, 896($t9)
	sw $t8, 900($t9)
	sw $t8, 904($t9)
	sw $t8, 924($t9)
	sw $t8, 1156($t9)
	sw $t8, 1280($t9)
	
	lw $t9, placeforcloud
	lw $t8, colorofcloud #draw cloud
	sw $t8, 0($t9)
	sw $t8, 4($t9)
	sw $t8, 16($t9)
	sw $t8, 20($t9)
	sw $t8, 124($t9)
	sw $t8, 128($t9)
	sw $t8, 132($t9)
	sw $t8, 136($t9)
	sw $t8, 140($t9)
	sw $t8, 144($t9)
	sw $t8, 148($t9)
	sw $t8, 248($t9)
	sw $t8, 252($t9)
	sw $t8, 256($t9)
	sw $t8, 260($t9)
	sw $t8, 264($t9)
	sw $t8, 268($t9)
	sw $t8, 272($t9)
	sw $t8, 276($t9)
	sw $t8, 280($t9)
	sw $t8, 376($t9)
	sw $t8, 380($t9)
	sw $t8, 384($t9)
	sw $t8, 388($t9)
	sw $t8, 392($t9)
	sw $t8, 396($t9)
	sw $t8, 400($t9)
	sw $t8, 404($t9)
	sw $t8, 408($t9)
	sw $t8, 412($t9)
	sw $t8, 504($t9)
	sw $t8, 508($t9)
	sw $t8, 512($t9)
	sw $t8, 516($t9)
	sw $t8, 520($t9)
	sw $t8, 524($t9)
	sw $t8, 528($t9)
	sw $t8, 532($t9)
	sw $t8, 536($t9)
	sw $t8, 540($t9)
	sw $t8, 636($t9)
	sw $t8, 640($t9)
	sw $t8, 644($t9)
	sw $t8, 648($t9)
	sw $t8, 652($t9)
	sw $t8, 656($t9)
	sw $t8, 660($t9)
	sw $t8, 664($t9)
	sw $t8, 768($t9)
	sw $t8, 772($t9)
	sw $t8, 784($t9)
	sw $t8, 788($t9)
	
	li $v0, 32 #sleep
	li $a0, 20
	syscall
	
	
	lw $t9, lastline
	addu $t7, $zero, $t9
	subu $t7, $t7, $s2
	blez $t7, dt
	
	j touch1

	
dt:	addu $s1, $zero, $s2 #set plate 2 to plate 1
	addu $s2, $zero, $s3 #set plate 3 to plate 2
	addu $s3, $zero, $s4 

	li $v0, 42 #draw the thrird plate
	li $a0, 0
	li $a1, 27
	syscall
	addu $s4, $zero, $a0
	mulu $s4, $s4, $t6
	addiu $s4, $s4, 0x10008080
	sw $t2, 0($s4) #Draw four platform
	sw $t2, 4($s4)
	sw $t2, 8($s4)
	sw $t2, 12($s4)
	sw $t2, 16($s4)
	
	
	li $v0, 42 #draw springs
	li $a0, 0
	li $a1, 3
	
	lw $t8, numberoftwo
	beq $t0, $t8, note
	j jump
		
note: 	li $v0, 42
	li $a0, 0
	li $a1, 3
	syscall
	addi $t7, $zero, 0
	beq $a0, $t7, wow	
	addi $t7, $zero, 1
	beq $a0, $t7, poggers
	addi $t7, $zero, 2
	beq $a0, $t7, awesome
		
wow:	lw $t7, placeforwow #draw wow
	lw $t9, blue
	addi $t7, $t7, 4
	sw $t9, 0($t7)
	sw $t9, 40($t7)
	sw $t9, 132($t7)
	sw $t9, 148($t7)
	sw $t9, 164($t7)
	sw $t9, 264($t7)
	sw $t9, 280($t7)
	sw $t9, 288($t7)
	sw $t9, 272($t7)
	sw $t9, 396($t7)
	sw $t9, 412($t7)
	
	addi $t7, $t7, 48
	sw $t9, 0($t7)
	sw $t9, 4($t7)
	sw $t9, 124($t7)
	sw $t9, 136($t7)
	sw $t9, 252($t7)
	sw $t9, 264($t7)
	sw $t9, 384($t7)
	sw $t9, 388($t7)
	
	addi $t7, $t7, 16
	sw $t9, 0($t7)
	sw $t9, 40($t7)
	sw $t9, 132($t7)
	sw $t9, 148($t7)
	sw $t9, 164($t7)
	sw $t9, 264($t7)
	sw $t9, 280($t7)
	sw $t9, 288($t7)
	sw $t9, 272($t7)
	sw $t9, 396($t7)
	sw $t9, 412($t7)
	
	li $v0, 32 #sleep
	li $a0, 250
	syscall
	
	sw $t5, 0($t7)
	sw $t5, 40($t7)
	sw $t5, 132($t7)
	sw $t5, 148($t7)
	sw $t5, 164($t7)
	sw $t5, 264($t7)
	sw $t5, 280($t7)
	sw $t5, 288($t7)
	sw $t5, 272($t7)
	sw $t5, 396($t7)
	sw $t5, 412($t7)
	
	subi $t7, $t7, 16
	sw $t5, 0($t7)
	sw $t5, 4($t7)
	sw $t5, 124($t7)
	sw $t5, 136($t7)
	sw $t5, 252($t7)
	sw $t5, 264($t7)
	sw $t5, 384($t7)
	sw $t5, 388($t7)
	
	subi $t7, $t7, 48	
	sw $t5, 0($t7)
	sw $t5, 40($t7)
	sw $t5, 132($t7)
	sw $t5, 148($t7)
	sw $t5, 164($t7)
	sw $t5, 264($t7)
	sw $t5, 280($t7)
	sw $t5, 288($t7)
	sw $t5, 272($t7)
	sw $t5, 396($t7)
	sw $t5, 412($t7)
	
	j jump
	
poggers: lw $t7, placeforpoggers  # draw poggers
	lw $t9, blue
	addi $t7, $t7, 4
	sw $t9,	0($t7)
	sw $t9,	4($t7)
	sw $t9,	124($t7)
	sw $t9,	136($t7)
	sw $t9,	252($t7)
	sw $t9,	264($t7)
	sw $t9,	380($t7)
	sw $t9,	384($t7)
	sw $t9,	388($t7)
	sw $t9,	508($t7)
	sw $t9,	636($t7)
	
	addi $t7, $t7, 276
	sw $t9,	0($t7)
	sw $t9,	4($t7)
	sw $t9,	124($t7)
	sw $t9,	136($t7)
	sw $t9,	252($t7)
	sw $t9,	264($t7)
	sw $t9,	384($t7)
	sw $t9,	388($t7)
	
	addi $t7, $t7, 20
	sw $t9,	0($t7)
	sw $t9,	4($t7)
	sw $t9,	124($t7)
	sw $t9,	136($t7)
	sw $t9,	252($t7)
	sw $t9,	264($t7)
	sw $t9,	384($t7)
	sw $t9,	388($t7)
	sw $t9,	392($t7)
	sw $t9,	520($t7)
	sw $t9,	636($t7)
	sw $t9,	648($t7)
	sw $t9,	768($t7)
	sw $t9,	772($t7)
	
	addi $t7, $t7, 20
	sw $t9,	0($t7)
	sw $t9,	4($t7)
	sw $t9,	124($t7)
	sw $t9,	136($t7)
	sw $t9,	252($t7)
	sw $t9,	264($t7)
	sw $t9,	384($t7)
	sw $t9,	388($t7)
	sw $t9,	392($t7)
	sw $t9,	520($t7)
	sw $t9,	636($t7)
	sw $t9,	648($t7)
	sw $t9,	768($t7)
	sw $t9,	772($t7)
	
	addi $t7, $t7, 20
	sw $t9,	0($t7)
	sw $t9,	4($t7)
	sw $t9,	124($t7)
	sw $t9,	136($t7)
	sw $t9,	252($t7)
	sw $t9,	264($t7)
	sw $t9,	380($t7)
	sw $t9,	384($t7)
	sw $t9,	388($t7)
	sw $t9,	508($t7)
	sw $t9,	640($t7)
	sw $t9,	644($t7)
	
	addi $t7, $t7, 16
	sw $t9,	4($t7)
	sw $t9,	12($t7)
	sw $t9,	140($t7)
	sw $t9,	132($t7)
	sw $t9,	260($t7)
	sw $t9,	264($t7)
	sw $t9,	388($t7)
	sw $t9,	516($t7)
	sw $t9,	644($t7)
	
	li $v0, 32 #sleep
	li $a0, 250
	syscall
	
	sw $t5,	4($t7)		#clean poggers
	sw $t5,	12($t7)
	sw $t5,	140($t7)
	sw $t5,	132($t7)
	sw $t5,	260($t7)
	sw $t5,	264($t7)
	sw $t5,	388($t7)
	sw $t5,	516($t7)
	sw $t5,	644($t7)
	
	subi $t7, $t7, 16
	sw $t5,	0($t7)
	sw $t5,	4($t7)
	sw $t5,	124($t7)
	sw $t5,	136($t7)
	sw $t5,	252($t7)
	sw $t5,	264($t7)
	sw $t5,	380($t7)
	sw $t5,	384($t7)
	sw $t5,	388($t7)
	sw $t5,	508($t7)
	sw $t5,	640($t7)
	sw $t5,	644($t7)
	
	subi $t7, $t7, 20
	sw $t5,	0($t7)
	sw $t5,	4($t7)
	sw $t5,	124($t7)
	sw $t5,	136($t7)
	sw $t5,	252($t7)
	sw $t5,	264($t7)
	sw $t5,	384($t7)
	sw $t5,	388($t7)
	sw $t5,	392($t7)
	sw $t5,	520($t7)
	sw $t5,	636($t7)
	sw $t5,	648($t7)
	sw $t5,	768($t7)
	sw $t5,	772($t7)
	
	subi $t7, $t7, 20
	sw $t5,	0($t7)
	sw $t5,	4($t7)
	sw $t5,	124($t7)
	sw $t5,	136($t7)
	sw $t5,	252($t7)
	sw $t5,	264($t7)
	sw $t5,	384($t7)
	sw $t5,	388($t7)
	sw $t5,	392($t7)
	sw $t5,	520($t7)
	sw $t5,	636($t7)
	sw $t5,	648($t7)
	sw $t5,	768($t7)
	sw $t5,	772($t7)
	
	subi $t7, $t7, 20
	sw $t5,	0($t7)
	sw $t5,	4($t7)
	sw $t5,	124($t7)
	sw $t5,	136($t7)
	sw $t5,	252($t7)
	sw $t5,	264($t7)
	sw $t5,	384($t7)
	sw $t5,	388($t7)
	
	subi $t7, $t7, 276
	sw $t5,	0($t7)
	sw $t5,	4($t7)
	sw $t5,	124($t7)
	sw $t5,	136($t7)
	sw $t5,	252($t7)
	sw $t5,	264($t7)
	sw $t5,	380($t7)
	sw $t5,	384($t7)
	sw $t5,	388($t7)
	sw $t5,	508($t7)
	sw $t5,	636($t7)
	
	j jump
	

awesome: lw $t7, placeforawesome
	lw $t9, blue
	addi $t7, $t7, 4
	sw $t9, 0($t7)
	sw $t9, 4($t7)
	sw $t9, 124($t7)
	sw $t9, 136($t7)
	sw $t9, 252($t7)
	sw $t9, 256($t7)
	sw $t9, 260($t7)
	sw $t9, 264($t7)
	sw $t9, 380($t7)
	sw $t9, 392($t7)
	sw $t9, 508($t7)
	sw $t9, 520($t7)
	
	addi $t7, $t7, 148
	sw $t9, 0($t7)
	sw $t9, 24($t7)
	sw $t9, 128($t7)
	sw $t9, 140($t7)
	sw $t9, 152($t7)
	sw $t9, 256($t7)
	sw $t9, 264($t7)
	sw $t9, 280($t7)
	sw $t9, 272($t7)
	sw $t9, 388($t7)
	sw $t9, 404($t7)
	
	addi $t7, $t7, 44
	sw $t9, 0($t7)
	sw $t9, 4($t7)
	sw $t9, 124($t7)
	sw $t9, 136($t7)
	sw $t9, 252($t7)
	sw $t9, 256($t7)
	sw $t9, 260($t7)
	sw $t9, 264($t7)
	sw $t9, 380($t7)
	sw $t9, 512($t7)
	sw $t9, 516($t7)
	
	addi $t7, $t7, 20
	sw $t9, 0($t7)
	sw $t9, 4($t7)
	sw $t9, 8($t7)
	sw $t9, 124($t7)
	sw $t9, 256($t7)
	sw $t9, 260($t7)
	sw $t9, 392($t7)
	sw $t9, 508($t7)
	sw $t9, 512($t7)
	sw $t9, 516($t7)
	
	addi $t7, $t7, 20
	sw $t9, 0($t7)
	sw $t9, 4($t7)
	sw $t9, 124($t7)
	sw $t9, 136($t7)
	sw $t9, 252($t7)
	sw $t9, 264($t7)
	sw $t9, 380($t7)
	sw $t9, 392($t7)
	sw $t9, 512($t7)
	sw $t9, 516($t7)
	
	
	
	li $v0, 32 #sleep
	li $a0, 250
	syscall
	
	
	sw $t5, 0($t7)
	sw $t5, 4($t7)
	sw $t5, 124($t7)
	sw $t5, 136($t7)
	sw $t5, 252($t7)
	sw $t5, 264($t7)
	sw $t5, 380($t7)
	sw $t5, 392($t7)
	sw $t5, 512($t7)
	sw $t5, 516($t7)
	
	subi $t7, $t7, 20	
	sw $t5, 0($t7)
	sw $t5, 4($t7)
	sw $t5, 8($t7)
	sw $t5, 124($t7)
	sw $t5, 256($t7)
	sw $t5, 260($t7)
	sw $t5, 392($t7)
	sw $t5, 508($t7)
	sw $t5, 512($t7)
	sw $t5, 516($t7)
	
	subi $t7, $t7, 20
	sw $t5, 0($t7)
	sw $t5, 4($t7)
	sw $t5, 124($t7)
	sw $t5, 136($t7)
	sw $t5, 252($t7)
	sw $t5, 256($t7)
	sw $t5, 260($t7)
	sw $t5, 264($t7)
	sw $t5, 380($t7)
	sw $t5, 512($t7)
	sw $t5, 516($t7)
	
	subi $t7, $t7, 44
	sw $t5, 0($t7)
	sw $t5, 24($t7)
	sw $t5, 128($t7)
	sw $t5, 140($t7)
	sw $t5, 152($t7)
	sw $t5, 256($t7)
	sw $t5, 264($t7)
	sw $t5, 280($t7)
	sw $t5, 272($t7)
	sw $t5, 388($t7)
	sw $t5, 404($t7)

	
	subi $t7, $t7, 148
	sw $t5, 0($t7)
	sw $t5, 4($t7)
	sw $t5, 124($t7)
	sw $t5, 136($t7)
	sw $t5, 252($t7)
	sw $t5, 256($t7)
	sw $t5, 260($t7)
	sw $t5, 264($t7)
	sw $t5, 380($t7)
	sw $t5, 392($t7)
	sw $t5, 508($t7)
	sw $t5, 520($t7)
	
	j jump
	
		
Exit:	lw $t9, placeforgg1
	sw $t1, 0($t9)
	sw $t1, 4($t9)
	sw $t1, 124($t9)
	sw $t1, 136($t9)
	sw $t1, 248($t9)
	sw $t1, 376($t9)
	sw $t1, 388($t9)
	sw $t1, 392($t9)
	sw $t1, 396($t9)
	sw $t1, 508($t9)
	sw $t1, 520($t9)
	sw $t1, 640($t9)
	sw $t1, 644($t9)
	sw $t1, 648($t9)
	sw $t1, 776($t9)
	
	lw $t9, placeforgg2
	sw $t1, 0($t9)
	sw $t1, 4($t9)
	sw $t1, 124($t9)
	sw $t1, 136($t9)
	sw $t1, 248($t9)
	sw $t1, 376($t9)
	sw $t1, 388($t9)
	sw $t1, 392($t9)
	sw $t1, 396($t9)
	sw $t1, 508($t9)
	sw $t1, 520($t9)
	sw $t1, 640($t9)
	sw $t1, 644($t9)
	sw $t1, 648($t9)
	sw $t1, 776($t9)
	
	lw $t4, 0xffff0000
	bne  $t4, 1, Exit
	lw $s6, 0xffff0004
	beq $s6, 0x73, backgroud

	 
	
sleep: 	lw $t9, speed # sleep
	lw $t8, numberoftwo
	beq $t0, $t8, spu
	j sp
	
spu:	
	addu $t0, $zero, $zero #speed up
	beq $t9, $zero, sp
	lw $t7, speedup
	subu $t9, $t9, $t7
	la $t7, speed
	sw $t9, 0($t7)

sp:	li $v0, 32 #sleep
	move $a0, $t9
	syscall
	jr $ra
	
	
	
	
	
	
	
	
	
	
	
	
	
