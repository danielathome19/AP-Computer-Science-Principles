.data
prompt: .asciiz "Enter an integer: "

.text
main:
	# Print prompt
	la $a0, prompt
	li $v0, 4
	syscall
	
	# Read integer
	li $v0, 5      # Syscall for read int; stores in $v0
	syscall
	
	# Print integer
	move $a0, $v0  # $a0 = $v0
	li $v0, 1      # Syscall for print int
	syscall
exit:
	li $v0, 10
	syscall