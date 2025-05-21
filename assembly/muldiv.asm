.text
main:
	li $t0, 7          # t0 = 7
	li $t1, 3          # t1 = 3
	
	mul $t3, $t0, $t1  # t3 = t0 * t1
	# mult $t0, $t1
	# mflo $t3
	
	div $t0, $t1       # lo = t0 / t1;   hi = t0 % t1
	mflo $t5           # Quotient
	mfhi $t6           # Remainder
exit:
	li $v0, 10         # Return 0
	syscall