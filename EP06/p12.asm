.text

.globl main
main:
addi $t0, $zero, 0x1001 # t0 = 0x00001001
sll $t0, $t0, 16 # t0 = 0x10010000
lw $t1, 12 ($t0) # t1 = k = ***x
lw $t2, 0 ($t1) # t2 = **x
lw $t3, 0 ($t2) # t3 = *x 
lw $t4, 0 ($t3) # t4 = x 
add $s0, $t4, $t4 # s0 = 2k 
sw $s0, 16 ($t0) # pppx = 2k 

.data
x: .word 100
px: .word 0x10010000
ppx: .word 0x10010004
pppx: .word 0x10010008


