.text

.globl main
main:
addi $t0, $zero, 0x1001 # t0 = 0x1001
sll $t0, $t0, 16 # t0 = 0x10010000
lw $s0, 0 ($t0) # s0 = t0 = 0x10010000 = x = 5
lw $s1, 4 ($t0) # s1 = 0x10010004 = z = 7
sll $t1, $s0, 7 # t1 = s0 * 2^7 = 128x = 640
sub $t1, $t1, $s0 # t1 = 127x = 635
sll $t2, $s1, 6 # t2 = s1 * 2^6 = 64z = 448
add $t2, $t2, $s1 # t2 = 65z = 455
sub $t3, $t1, $t2 # t3 = 127 x - 65z = 180
addi $t3, $t3, 1 # t3 = 127x - 65z + 1 = 181
add $s2, $zero, $t3 # s2 = t3 = 181
sw $s2, 8 ($t0) # y = 127 x - 65z + 1 = 181

.data
x: .word 5 
z: .word 7
y: .word 0
