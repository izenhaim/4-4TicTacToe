.data 
# s0 : keeps the sign chosen by user at the first time
	chooseYourSign : .asciiz "choose X or O to start with : "
	
	

.text 

main :
	li $v0,4
	la $a0,chooseYourSign
	syscall
	
	li $v0,12
	syscall
	
	move $s0,$v0  # v0 is equal to the sign chosen by user
	beq $s0,'O',zeroSign
		li $s0,1
		j resume
	zeroSign :
		li $s0,0
	resume :
	li $v0,1
	move $a0,$s0
	syscall
	
	
	li $v0,10
	syscall
	
	