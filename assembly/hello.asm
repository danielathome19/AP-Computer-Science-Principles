.data
hello: .asciiz "Hello, world!"

.text
main:
	la $a0, hello  # Load address of string into $a0
	li $v0, 4      # Syscall for print string
	syscall        # Perform syscall
exit:
	li $v0, 10     # Syscall for exit
	syscall
