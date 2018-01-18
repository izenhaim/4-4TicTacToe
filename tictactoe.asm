.data 
askForNextRound : .asciiz "Do you want to play again? "

.text 






RoundBegin :
	
	
	beq $s0,1 UserStart
	PCStart:
	
	UserStart:
	jal Interact
	move $a0,$v0
	move $a1,$v1
	jal Play
	jal ShowCase
	jal CheckWin
	beq $v0,1 RoundFinish
	j UserStart
	RoundFininsh:
	li $v0,4
	la $a0,askForNextRound
	syscall
	li $v0,5
	syscall
	#DOTO ASK FOR NEXT ROUND put in v0
	#
	#
	beq $v0,0
	
	FinishUp:
	li $v0,10
	syscall 
	
	
	
		
	
	
	
	
