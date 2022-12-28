.text

.globl main
main:
ori $t0, $zero, 0x1001 # t0 = 0x00001001
sll $t0, $t0, 16 # t0 = 0x10010000
lw $s0, 0($t0) # s0 = x 
lw $s1, 4 ($t0) # s1 = y
lw $s2, 8 ($t0) #s2 = z
div $s0, $s2 # x / z
mflo $s3 # s3 = lo
mult $s3, $s1 # (x / z) * y
mflo $s4 # s4 = lo 
mfhi $s5 # s5 = hi 
or $t1, $zero, $s5 # t1 = 0000 | hi
sll $t1, $t1, 16 # t1 = hi | 0000
and $t1, $t1, $s4 # t1 = hi | lo 
sw $t1, 12 ($t0) # t0 + 12 = (x / z) * y

.data
x: .word 0x186A00
y: .word 0x13880
z: .word 0x61A80


