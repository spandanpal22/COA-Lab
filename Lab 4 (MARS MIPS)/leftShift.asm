.data
	
	
.text
	addi $t0,$zero,4
	#addi $t1,$zero,10
	sll $t2,$t0,4
	li $v0,1
	move $a0,$t2
	syscall