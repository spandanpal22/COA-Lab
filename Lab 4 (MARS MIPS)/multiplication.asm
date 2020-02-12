.data
	prompt: .asciiz "Enter a number : "
	message: .asciiz "\nProduct is "
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
	
	#prompt
	li $v0,4
	la $a0,prompt
	syscall
	#get the user's input	
	li $v0,5
	syscall
	#move the $v0 value to $t0	
	move $t1,$v0
	
	
	
	mul $t2,$t1,$t0
	li $v0,1
	move $a0,$t2
	syscall