#soma vetor recursiva

.data
	vetor: .word 4,5,3,2
	
.text
main:

	la		a1, vetor 																			  #conflito na leitura de a1
	addi 	a2, zero, 3 #ultima posição do vetor
	jal		ra, rec_soma_vetor
	
	addi 	a7, zero, 1																				
	ecall #imprime o valor de retorno que está em a0
	addi 	a7, zero, 10
	ecall #return 0, ou seja, finaliza o código
	
rec_soma_vetor:
	#empilha
	addi 	sp, sp, -8
	sw		ra, 4(sp) #endereço																#conflito na leitura de sp
	sw		a2, 0(sp) #indice do vetor												#conflito na leitura de sp
	
	beq 	a2, zero, final
		addi	a2, a2, -1 #i--
		jal ra, rec_soma_vetor
		#desempilha	
		lw		ra, 4(sp) #endereço
		lw		a2, 0(sp) #indice do vetor
		addi 	sp, sp, 8
		
		#calculo
		slli	t0, a2, 2 #4*i																	#conflito na leitura de a2
		add	 	t0, a1, t0#posição de v[i] 											#conflito na leitura de t0
		lw		t0,	0(t0) #t0 = v[i]														#conflito na leitura de t0
		add a0, a0, t0 #acc = acc + v[i]											#conflito na leitura de t0
		
		
		jalr zero, ra, 0 	
		
	
	
	final:
		add a0, zero, zero
		jalr zero, ra, 0 
