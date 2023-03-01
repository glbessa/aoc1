.text
	addi $t1, $0, 1 # x
	addi $t2, $0, 1 # y
	addi $t3, $0, 1 # z
	
	# 4 * x
	sll $t4, $t1, 2 
	
	# 2 * y
	sll $t5, $t2, 1
	
	# 3 * z
	addi $t6, $0, 3
	mult $t3, $t6
	mflo $t6
	
	# 4x - 2y + 3z
	sub $t7, $t4, $t5
	add $t7, $t7, $t6