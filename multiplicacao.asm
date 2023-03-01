.text
	ori $t0, $0, 0x3
	ori $t1, $0, 0x5
	mult $t0, $t1 # resultado armazenado em lo, caso de overflow ele vai para hi
	mflo $t2