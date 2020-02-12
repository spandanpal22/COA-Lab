.data
	message: .asciiz "Hello"
	
.text
	li $v0,4
	la $a0,message
	syscall