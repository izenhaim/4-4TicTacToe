.data
	msg1 : .asciiz "enter the first number : "
	msg2 : .asciiz "enter the second number : "
	msg3 : .asciiz "the multiplication of these 2 numbers is : "
	
.text

li $v0,4
la $a0,msg1
syscall

li $v0,5
syscall
move $t0,$v0

li $v0,4
la $a0,msg2
syscall

li $v0,5
syscall
move $a1,$v0
move $a0,$t0

jal multiplication
move $t0,$v0

li $v0,4
la $a0,msg3
syscall

move $a0,$t0
li $v0,1
syscall

li $v0,10
syscall


multiplication :  # adds $a0 to itself $a1 times
	move $t0,$a0
	Loop :
	add $t1,$t1,$t0
	subi $a1,$a1,1
	bne $a1,$zero,Loop
	move $v0,$t1
	jr $ra
	
	
