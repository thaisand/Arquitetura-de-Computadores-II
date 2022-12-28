.text 
.globl inicio
inicio: 
addi $s0, $zero, 3 # x = 3
addi $s1, $zero, 4 # y = 4
add $t0, $zero, $s0 # t0 = x = 3
sll $t0, $t0, 4 # t0 = 16x
sub $t0, $t0, $s0 # t0 = 15x 
add $t1,$zero, $s1 #t1 = y = 4
sll $t1, $t1, 6 # t1 = 64y
add $t2, $s1, $s1 # t2 = 2y
add $t2, $t2, $s1 #t2 = 3y
add $t1, $t1, $t2 # t1 = 67y
add $t3, $t0, $t1 # t3 = 15x + 67y
sll $s6, $t3, 2 # z = (15x + 67y)*4

.data