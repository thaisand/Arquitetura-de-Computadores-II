.text 
.globl teste 
teste:
ori $t1, $zero, 0x1001 # t1 = 0x00001001
sll $t1, $t1, 16 # t1 = 0x10010000
lw $s0, 0 ($t1) # s0 = 0x10010000 = 15
lw $s1, 4 ($t1) # s1 = 0x10010004 = 25
lw $s2, 8 ($t1) # s2 = 0x10010008 = 13
lw $s3, 12 ($t1) # s3 = 0x1001000C = 17
add $s4, $s0, $s1 # s4 = s0 + s1 = 15 + 25
add $s5, $s2, $s3 # s5 = s2 + s3 = 13 + 17 
add $s6, $s4, $s5 # s6 = s4 + s5 
sw $s6, 16 ($t1) # t1 = 0x10010000 = x1 + x2 + x3 +x4

.data 
x1: .word 15
x2: .word 25
x3: .word 13
x4: .word 17 
soma: .word -1
