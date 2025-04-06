# See Psueodocode in Doc or "odd" and "division" functions in 366Project2.c

	b odd	# Start the program at odd

division: 
	li $t3, 0	# t3 = quotient
	li $t4, 2	# Because we need to do m%2, or m - 2 a lot
	
divWhile:
	blt $t0, $t4, divEnd	# If remainder <= 2, stop
	sub $t0, $t0, $t4
	addi $t3, $t3, 1
	b divWhile	  
	
divEnd:
	move $t1, $t0	# Remainder = result of division
	b divReturn
	
odd:	
	li $t0, 7	# Placeholder, replace this with getting the value from FibonacciCalc
	li $t1, 0	# t1 = remainder
	
	b division	# Go do division
	
returnFalse:
	li $v0, 0	# Return "fibNum is even"
	# NOTE: This causes an infinite loop as line 27 keeps bringing us back here
	# In the final implementation there will be somewhere for us to branch off from here
	# The calculation is still done correctly, but it needs to be manually stopped...
	
divReturn:
	beq $t1, 0, returnFalse	# If remainder = 0, fibNum is even
	
	li $v0, 1	# Return "fibNum is odd"

	
	
	
