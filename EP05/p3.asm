.text 
.globl inicio
inicio: 
addi $s0, $zero, 3 # x = 3
add $t0, $s0, $s0 # t0 = 2x 
add $t0, $t0, $t0 # t0 = 4x
add $t0, $t0, $t0 # t0 = 8x 
add $t0, $t0, $t0 # t0 = 16x 
sub $t0, $t0, $s0 # t0 = 15x
addi $s1, $zero, 4 # y = 4
add $t1, $s1, $s1 # t1 = 2y
add $t1, $t1, $t1 # t1 = 4y
add $t2, $t1, $t1 # t2 = 8y
add $t2, $t2, $t2 # t2 = 16y
add $t2, $t2, $t2 # t2 = 32y
add $t2, $t2, $t2 # t2 = 64y
add $t2, $t2, $t1 # t2 = 68y
sub $t2, $t2, $s1 # t2 = 67y
add $t3, $t0, $t2 # t3 = 15x+67y
add $t3, $t3, $t3 # t3 = 2*(15x+67y)
add $t3, $t3, $t3 # t3 = 4*(15x+67y) 
add $s2, $zero, $t3 # z = 4*(15x+67y) 
.data