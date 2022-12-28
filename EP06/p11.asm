.text

.globl main
main:
addi $t0, $zero, 0x1001 # t0 = 0x1001
sll $t0, $t0, 16 # t0 = 0x10010000
lw $s0, 0 ($t0) # s0* = &t0 = &0x10010000 = x = 100000
lw $s1, 4 ($t0) # s1 = &0x10010004 = z = 200000
add $s2, $s0, $s1 # s2 = 300000
sub $t1, $s0, $s1 # t1 = x - z 
add $t1, $t1, $s2 # t1 = x - z + 300000
add $s3, $zero, $t1 # s3 = t1 
sw $s3, 8($t0) # y = x - z + 300000

.data
x: .word 100000
z: .word 200000
y: .word 0