.text 
.globl inicio
inicio:
ori $s0, $zero, 0x186A 
sll $s0, $s0, 4 # x = 100000
ori $s1, $zero, 0x30D4
sll $s1, $s1, 4 # y = 200000 
add $s2, $s0, $s1 # z = x + y = 300000
.data