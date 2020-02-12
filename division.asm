.data
	
	
.text
	addi $t0,$zero,200
	addi $t1,$zero,10
	div $t0,$t1
	mflo $s0
	
	li $v0,1
	add $a0,$zero,$s0
	syscall
	
	mfhi $s1
	li $v0,1
	add $a0,$zero,$s1
	syscall