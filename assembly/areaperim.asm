# *** Prog52a ***
.data
prompt1: .asciiz "Enter length: "
prompt2: .asciiz "Enter width: "
out1:    .asciiz "Area: "
out2:    .asciiz "\nPerimeter: "

.text
main:
	# === Input Length ===
	la $a0, prompt1    # a0 = prompt1
	li $v0, 4          # print_str(a0)
	syscall
	li $v0, 5          # v0 = read_int()
	syscall
	move $t0, $v0      # t0 = v0
	# === Input Width ===
	la $a0, prompt2    # a0 = prompt2
	li $v0, 4          # print_str(a0)
	syscall
	li $v0, 5          # v0 = read_int()
	syscall
	move $t1, $v0      # t1 = v0
	# === Calculate ===
	#mul $t4, $t0, $t1
	mult $t0, $t1      # area (lo) = length (t0) * width (t1)
	mflo $t4           # t4 = lo
	li $s2, 2
	mul $t8, $t0, $s2  # t8 (2*len) = t0 * 2
	mul $t9, $t1, $s2  # t9 (2*wid) = t1 * 2
	add $t5, $t8, $t9  # perimeter (t5) = 2*length (t8) + 2*width (t9)
	# === Output ===
	# Area
	la $a0, out1       # a0 = out1 (area message)
	li $v0, 4          # print_str(a0)
	syscall
	move $a0, $t4      # a0 = t4
	li $v0, 1          # print_int(a0)
	syscall
	# Perimeter
	la $a0, out2       # a0 = out2 (perim message)
	li $v0, 4          # print_str(a0)
	syscall
	move $a0, $t5      # a0 = t5
	li $v0, 1          # print_int(a0)
	syscall
exit:
	li $v0, 10
	syscall