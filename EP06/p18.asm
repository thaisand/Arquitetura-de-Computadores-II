.text
.globl main
main:
ori $t0, $zero, 0x1001 # t0 = 0x00001001
sll $t0, $t0, 16 # t0 = 0x10010000
lw $s1, 0 ($t0) # s1 = x 
lw $s2, 4 ($t0) # s2 = y 
addi $s3, $zero, 0 # s3 = contador 
addi $s4, $zero, 1 # s4 = potencia

do:
mult $s4, $s1 # pot = pot * x
mflo $s4
addi $s3, $s3, 1 # contador++
bne $s3, $s2, do # contador != y
j fim

fim: 
sw $s4, 8 ($t0) # k = x ^ y 

.data
x: .word 5 
y: .word 3
