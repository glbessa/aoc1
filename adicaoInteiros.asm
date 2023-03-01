.text
	li $t0, 10
	li $t1, 20
	add $s1, $t0, $t1 #s1 = t0 + t1
	addi $s2, $t0, 10 #s2 = t0 + 10
	addi $s3, $zero, 20 #s3 = 0 + 20 <=> li $s3, 20