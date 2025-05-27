.data
eqmsg: .asciiz "The numbers are equal."
nemsg: .asciiz "The numbers are not equal."

.text
main:
	li $t0, 5
	li $t1, 5
	beq $t0, $t1, equal  # if (t0 == t1) goto equal
not_equal:
	la $a0, nemsg        # print_str(nemsg)
	li $v0, 4
	syscall
	j exit               # goto exit
equal:
	la $a0, eqmsg
	li $v0, 4
	syscall
exit:
	li $v0, 10
	syscall