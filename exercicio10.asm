.text
	# area do triangulo equilatero
	
	# como os valores tem que serem positivos pode-se usar o ori
	ori $t1, $0, 160
	ori $t2, $0, 120
	
	mult $t1, $t2
	mflo $t3
	
	# tanto faz entre usar o logico ou o aritmetico, ja que nunca vai ser negativo
	sra $t3, $t3, 1