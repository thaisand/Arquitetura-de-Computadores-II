.text

.globl main
main:
ori $t0, $zero, 0x1001 # t0 = 0x00001001
sll $t0, $t0, 16 # t0 = 0x10010000
lw $s0, 0 ($t0) # s0* = &t0
andi $t1, $s0, 1 # t1(par) = 0 e t1(impar) = 1
bne $t1, $zero, impar # se t1 != 0 : impar 
sw $t1, 4($t0) # salva 0 na segunda posicao da memoria
j fim 

impar: 
sw $t1, 4 ($t0) # salva 1 na segunda posicao da memoria
fim:

.data
A: .word 1743

