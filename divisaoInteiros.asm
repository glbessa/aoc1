.data
	num: .space 4
	num2: .word 0x1A
	num3: .word 64

.text
	li $s0, 10000
	li $s1, 10
	lw $s2, num3
	div $s0, $s1 # divisao inteira s0 / s1
		     # parte inteira vai para o registrador lo
		     # o resto vai para hi
	
	mflo $t0 # move from lo
	mfhi $t1 # move from hi
	
	# srl
	srl $t2, $s2, 2 # move o binario duas casas para a direita = divisao por 4
	
	j salvar
	
salvar:
	sw $s0, num