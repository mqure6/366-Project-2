# Final Implmentation of IsFibonacciOdd(n)

	li $s0, 7	# Insert "n" to s0; supposedly n is in memory "somewhere", 5 is a placeholder

FibStart:
	li $s1, 0	# s1 will be used as a counter during the for loop needed for the Fib sequence
	sub $s3, $s0, 1  # s3 = n - 1, used in the condition for the Fib sequence loop
	
	# Load the registers used in the Fibonacchi calculation
	li $t1, 0	# t1 = "a"
	li $t2, 1	# t2 = "b"
	
	ble $s0, 1, baseEnd 	# if(n<=1), jump to end of function
	
	# t0 acts as a "temp" variable, t1 holds the final value
	FibSeq:	
		bge $s1, $s3, endFib	# if i (s1) < n - 1 (s3), jump to end 
		addi $t0, $t2, 0
		add $t2, $t1, $t2
		addi $t1, $t0, 0
		add $s1, $s1, 1		# increment counter
		b FibSeq		# loop back to the branch condition
	
	baseEnd:
		addi $t1, $s0, 0	# End function based on base condition, returns s0

	endFib: 
		sw $t1, 268500992	# Banish FibNum to the depths of RAM
	# At this point both t0 and t1 hold the correct value
	# t1 will be changed during the remainder calculation
	# The SIM shows the exact data addresses during program execution
	# 268500992 was the first address I saw, so we store FibNum there - Moiz


oddStart:
	b odd	# Start the program at odd

division: 
	li $t3, 0	# t3 = quotient
	li $t4, 2	# Because we need to do m%2, or m - 2 a lot
	
divWhile:
	blt $t1, $t4, divEnd	# If remainder <= 2, stop
	sub $t1, $t1, $t4
	addi $t3, $t3, 1
	b divWhile	  
	
divEnd:
	addi $t8, $t1, 0	# Remainder = result of division
	b divReturn
	
odd:	
	li $t8, 0	# t8 = remainder
	
	b division	# Go do division
	
returnFalse:
	li $v0, 0	# Return "fibNum is even"
	b endOdd
	
divReturn:
	beq $t8, 0, returnFalse	# If remainder = 0, fibNum is even
	
	li $v0, 1	# Return "fibNum is odd"

endOdd:	
	nop	# NOTE: This is only here to prevent an infinite loop for even values
		# Otherwise we'd jump between lines 61 and 58 forever
		
	
