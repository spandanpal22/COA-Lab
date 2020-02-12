.data
	number1: .word 10
	number2: .word 11
	
.text
	lw $t1,number1
	lw $t1,number2
	add $t2,$t0,$t1
	li $v0,1
	#add $a0,$zero,$t2
	#move $a0,$t2
	#la $a0,($t2)
	syscall