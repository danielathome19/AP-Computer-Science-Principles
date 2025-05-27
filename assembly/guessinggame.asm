# *** LP 4-9 ***
.data
prompt: .asciiz "Enter a # between 1 and 20: "
prtcpu: .asciiz "\nCPUs #: "
prtusr: .asciiz "\nYour #: "
prtwin: .asciiz "\nYou win!"
prtlos: .asciiz "\nYou lose."

.text
main:
	# Generate a number between [1-20] using syscall 42
	li $a1, 20       # a1 = 20 (max) 
	li $v0, 42       # a0 = randint(0, a1) [exclusive]
	syscall
	add $s0, $a0, 1  # s0 = a0 + 1 (min)
	# User input
	la $a0, prompt   # print_str(prompt)
	li $v0, 4
	syscall
	li $v0, 5        # v0 = read_int()
	syscall
	move $t0, $v0    # t0 = v0
	# Show CPU number
	la $a0, prtcpu   # print_str()
	li $v0, 4
	syscall
	move $a0, $s0    # print_int(s0)
	li $v0, 1
	syscall
	# Show user number
	la $a0, prtusr   # print_str()
	li $v0, 4
	syscall
	move $a0, $t0    # print_int(t0)
	li $v0, 1
	syscall
	# if (t0 != s0) goto do_lose
	bne $t0, $s0, do_lose
do_win:
	la $a0, prtwin
	li $v0, 4
	syscall
	j exit           # goto exit
do_lose:
	la $a0, prtlos
	li $v0, 4
	syscall	
exit:
	li $v0, 10
	syscall