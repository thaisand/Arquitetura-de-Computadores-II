.text

.globl main
main:
ori $t0, $zero, 0x1001 # t0 = 0x00001001
sll $t0, $t0, 16 # t0 = 0x10010000
lw $s1, 0 ($t0) # s1 = x 
lw $s2, 4 ($t0) # s2 = y 
addi $s3, $zero, 0 # s3 = contador 
addi $s4, $zero, 0 # s4 = soma
do:
add $s4, $s4, $s1  # soma = soma + x
addi $s3, $s3, 1 # contador++
bne $s3, $s2, do # se s3 != s3 : do
j fim 

fim: 
sw $s4, 8 ($t0) # t0 + 8 = soma

.data
x: .word 5 
y: .word 7

