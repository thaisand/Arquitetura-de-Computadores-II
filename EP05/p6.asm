.text 
.globl inicio
inicio:
ori $s0, $zero, 0x0111 # x = 0x00000111
sll $s0, $s0, 16 # x = 0x01110000
ori $s0, $s0, 0x1111 # x =0x01111111
ori $s1, $zero, 0x0493E # y =0x000049E
sll $s1, $s1, 4 # y = 0x00049E0
sll $t0, $s1, 2 # t0 = 4y
sub $s2, $s0, $t0 # z = x - 4y
.data