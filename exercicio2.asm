.text
	ori $t1, $0, 0x1
	sll $t2, $t1, 0x1
	or $t1, $t1, $t2
	
	sll $t2, $t1, 0x2
	or $t1, $t1, $t2
	
	sll $t2, $t1, 0x4
	or $t1, $t1, $t2
	
	sll $t2, $t1, 0x8
	or $t1, $t1, $t2
	
	sll $t2, $t1, 0x10
	or $t1, $t1, $t2