.text
	addi $t1, $0, -4
	
	# 9 * x + 7
	sll $t4, $t1, 3
	add $t4, $t4, $t1
	addi $t4, $t4, 7
	
	# 2 * x + 8
	sll $t5, $t1, 1
	addi $t5, $t5, 8
	
	beq $t5, $0, fim
	
	# divisao
	div $t4, $t5
	
	mflo $t2
	mfhi $t3

fim: