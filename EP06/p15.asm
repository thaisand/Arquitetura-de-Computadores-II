.text

.globl main
main:
addi $s0, $zero, 0x1001 # s0 = 0x00001001
sll $s0, $s0, 16 # s0 = 0x10010000

addi $t0, $zero, 100 # t0 = 100
addi $t1, $zero, 0 # i = t1 = 0 
addi $t2, $zero, 0 # soma = t2 = 0 

dowhile: 
sll $t3, $t1, 1 # t1 = 2*i
addi $t3, $t3, 1 # t3 = 2*i + 1
sw $t3, 0($s0) # vetor[i] = 2*i + 1
add $t2, $t2, $t3 # soma = soma + vetor[i]
addi $s0, $s0, 4 # proxima posicao da memoria 
addi $t1, $t1, 1 # i++ 
bne $t0, $t1, dowhile # se t1 != t0 : dowhile
sw $t2, 0 ($s0) # s0 = soma 
j fim 
fim:

.data


