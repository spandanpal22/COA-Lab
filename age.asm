.data
	prompt: .asciiz "Enter your age"
	message: .asciiz "\nYour age is "
	
.text
	#prompt
	li $v0,4
	la $a0,prompt
	syscall
	#get the user's input	
	li $v0,5
	syscall
	#move the $v0 value to $t0	
	move $t0,$v0
	#display the message	
	li $v0,4
	la $a0,message
	syscall
	#display the age
	li $v0,1
	move $a0,$t0
	syscall