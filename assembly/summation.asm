# (Do) While-Loop Equivalent
.text
main:
	li $s0, 0          # s0 (sum) = 0
	li $t0, 1          # t1 (counter) = 1
loop:
	add $s0, $s0, $t0  # sum += counter
	addi $t0, $t0, 1   # counter++ (t0 = t0 + 1)
	bne $t0, 11, loop  # if (counter != 11) goto loop
exit:
	li $v0, 10
	syscall
	