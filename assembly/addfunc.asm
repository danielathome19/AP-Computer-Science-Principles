.text
main:
	li $a0, 5          # a0 = 5
	li $a1, 7          # a1 = 7
	jal add_ints       # v0 = add_ints(a0, a1)
	move $t0, $v0
exit:
	li $v0, 10
	syscall

####################################### 
#  Add_Ints(a0: int, a1: int)
#  Returns: v0 - The sum of a0 + a1
#######################################
add_ints:
	add $v0, $a0, $a1  # v0 = a0 + a1
	jr $ra             # return v0
	