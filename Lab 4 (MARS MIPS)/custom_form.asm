.data
	name: .asciiz "Enter your name : "
	roll: .asciiz "\nEnter your roll number : "
	branch: .asciiz "\nEnter your branch : "
	phone: .asciiz "\nEnter your contact number : "
	address: .asciiz "\nEnter your address : "
	buffer: .space 30
	
.text
	#prompt
	li $v0,4
	la $a0,name
	syscall
	#get the user's input	
	li $v0,8
	la $a0, buffer #load byte space into address
        li $a1, 30 # allot the byte space for string
        move $t0,$a0 #save string to t0
	syscall
	
	#prompt
	li $v0,4
	la $a0,roll
	syscall
	#get the user's input	
	li $v0,5
	syscall
	#move the $v0 value to $t0	
	move $t1,$v0
	
	#prompt
	li $v0,4
	la $a0,branch
	syscall
	#get the user's input	
	li $v0,8
	syscall
	#move the $v0 value to $t0	
	move $t2,$v0
	
	#prompt
	li $v0,4
	la $a0,phone
	syscall
	#get the user's input	
	li $v0,5
	syscall
	#move the $v0 value to $t0	
	move $t3,$v0
	
	#prompt
	li $v0,4
	la $a0,address
	syscall
	#get the user's input	
	li $v0,8
	syscall
	#move the $v0 value to $t0	
	move $t4,$v0

