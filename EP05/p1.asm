.text 
.globl inicio
inicio: 
addi $s0, $zero, 2 # a = $s0 = 2
addi $s1, $zero, 3 # b = $s1 = 3
addi $s2, $zero, 4 # c = $s2 = 4
addi $s3, $zero, 5 # d = $s3 = 5
add $t0, $s0, $s1 # a + b
add $t1, $s1, $s2 # c + d
sub $s4, $t0, $t1 # x = (a+b)-(c+d)
sub $t2, $s0, $s1 # a - b
add $s5, $t2, $s4 # y = a-b+x
sub $s1, $s4, $s5 # b = x-y

.data