# See Psueodocode in Doc or "odd" and "division" functions in 366Project2.c

division: 
	li $t3, 0	# t3 = quotient
	li $t4, 2	# Because we need to do m%2, or m - 2 a lot
divWhile:
	ble $t0, $t4, divEnd	# If remainder <= 2, stop
	#This function needs to end by branching back to "odd"
	
divEnd:
	#go back to wherever we left off in "odd"
	
odd:	
	li $t0, 6	# Placeholder, replace this with getting the value from FibonacciCalc
	li $t1, 0	# t1 = remainder
	
	b division	# Go do division
	
	beq $t1, 0, returnFalse	# If remainder = 0, fibNum is even
	
	li $v0, 1	# Return "fibNum is odd"
	
returnFalse:
	li $v0, 0	# Return "fibNum is even"
	
	
	