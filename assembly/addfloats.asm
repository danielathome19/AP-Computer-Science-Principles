.data
n1: .float 5.0
n2: .float 10.0
n3: .double 7.2
n4: .double 8.5

.text
main:
	l.s $f0, n1          # float f0 = 5.0
	l.s $f1, n2
	add.s $f2, $f0, $f1  # f2 = f0 + f1
	l.d $f4, n3          # double f4 = 7.2
	l.d $f6, n4          # doubles take up two $f registers
	sub.d $f8, $f4, $f6  # f8 = f4 - f6
exit:
	li $v0, 10
	syscall