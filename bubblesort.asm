#simple bubblesort
.data
	vetor: .word 4,1,5,7,3,2,8,6
	espaco: .asciz " "

.text

jal zero, main

bubblesort:
	for_fora:
		bge t6, a1, end_for_fora
		add t0, zero, zero
		for1:
			bge t0, a1, end_for1
			slli t4, t0, 2
			add t5, a0, t4  
			lw t2, 0(t5)
			lw t3, 4(t5)
			bgt t2, t3, troca
			jal zero, ipp
			troca:
			sw t3, 0(t5)
			sw t2, 4(t5)
						
			ipp:
			addi t0, t0, 1
			jal zero, for1
			end_for1:
		addi t6, t6, 1
		jal zero, for_fora
		end_for_fora:
		jalr ra


main:
	la a0, vetor
	addi a1, zero, 7
	jal ra, bubblesort
	
	addi a7, zero, 10
	ecall
