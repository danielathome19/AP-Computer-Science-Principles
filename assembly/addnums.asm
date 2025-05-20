.text
main:
	li $t0, 5          # $t0 = 5
	li $t1, 10         # $t1 = 10
	add $t2, $t0, $t1  # $t2 = $t0 + $t1
exit:
	li $v0, 10
	syscall
