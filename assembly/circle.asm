# *** Prog54c ***
.data
prompt: .asciiz "Enter circle radius: "
a_msg:  .asciiz "Area: "
p_msg:  .asciiz "Perimeter: "
endl:   .asciiz "\n"
pi:     .float  3.14159
two:    .float  2.0

.text
main:
	# Prompt for radius
	la $a0, prompt
	li $v0, 4
	syscall
	# Read in radius
	li $v0, 6               # f0 = read_float()
	syscall
	mov.s $f10, $f0         # f10 = f0 (radius)
	# Load in PI
	l.s $f11, pi            # f11 = pi
	# Compute area
	mul.s $f2, $f10, $f10   # f2 = f10^2 (f10 * f10)
	mul.s $f14, $f11, $f2   # f14 (area) = f11 (pi) * f2 (radius^2)
	# Compute perimeter
	l.s $f15, two           # f15 = 2.0
	mul.s $f16, $f15, $f11  # f16 = 2.0 * pi
	mul.s $f18, $f16, $f10  # f18 (perim) = f16 (2*pi) * f10 (radius)
	# Print area
	la $a0, a_msg           # print_str(a_msg)
	li $v0, 4
	syscall
	mov.s $f12, $f14        # f12 = f14 (area)
	li $v0, 2               # print_float(f12)
	syscall
	la $a0, endl            # print_str(endl)
	li $v0, 4
	syscall
	# Print perimeter
	la $a0, p_msg           # print_str(p_msg)
	li $v0, 4
	syscall
	mov.s $f12, $f18        # f12 = f18 (perimeter)
	li $v0, 2               # print_float(f12)
	syscall
	la $a0, endl            # print_str(endl)
	li $v0, 4
	syscall
exit:
	li $v0, 10
	syscall	
	