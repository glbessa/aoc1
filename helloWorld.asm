.data
	#area para dados na memoria principal
	msg: .asciiz "Ola mundo" #mensagem a exibir

.text
	#area para instrucoes do programa
	li $v0, 4 #instrucao para imprimir string
	la $a0, msg #load address, indica o endereco da mensagem
	syscall #executa tudo