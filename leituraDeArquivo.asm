.data
	filename: .asciiz "/home/glbessa/Documentos/faculdade/semestre4/aoc1/teste.txt" #local do arquivo
	buffer: .space 2048 #reserva 1024 bytes na secao de dados
	quebraDeLinha: .asciiz "\n"
	
.text
	#abrir arquivo
	li $v0, 13 #chamada do sistema para abrir arquivo
	la $a0, filename #colocando nome do arquivo nos registradores
	li $a1, 0 #abrir para leitura
	li $a2, 0
	syscall
	move $s6, $v0 #salva as informacoes do arquivo
	
	#imprimir status de abertura
	#li $v0, 1 #instrucao para imprimir inteiro
	#la $a0, ($s6) #load address, indica o endereco da mensagem
	#syscall #executa tudo
	
	#imprimir quebra de linha
	li $v0, 4 #instrucao para imprimir string
	la $a0, quebraDeLinha #load address, indica o endereco da mensagem
	syscall #executa tudo
	
	#ler arquivo
	li $v0, 14 #chamada do sistema para ler o arquivo
	move $a0, $s6 #alocando as informacoes do arquivo em a0
	la $a1, buffer #endereco do buffer para onde vao os dados
	li $a2, 1024 #hardcoded buffer length
	syscall
	
	#fechar arquivo
	li $v0, 16 #chamada do sistema para fechar arquivo
	move $a0, $s6 #alocando as informacoes do arquivo em a0
	syscall
	
	#imprimir conteudo do arquivo
	li $v0, 4 #instrucao para imprimir string
	la $a0, buffer #load address, indica o endereco da mensagem
	syscall #executa tudo
