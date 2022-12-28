.text
.globl main
main:
ori $t0, $zero, 0x1001 # t0 = 0x00001001
sll $t0, $t0, 16 # t0 = 0x10010000 
lw $s0, 0($t0) # s0 = 0x10010000
slt $s1, $s0, $zero # s1 = s0 < 0 ? 
beq $s1, $zero, positivo # se s1 = 0 : positivo 
sub $s0, $zero, $s0 # s0 = |s0|
sw $s0, 0($t0) # s0 = 0x10010000
j fim 

positivo: 
sw $s0, 0($t0) # s0 = 0x10010000
j fim  

fim: 

.data
A: .word -10

