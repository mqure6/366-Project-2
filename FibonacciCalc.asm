# See Psueodocode in Doc or "fib" Function in 366Project2.c

	
	li $s0, 5	# Insert "n" to s0; supposedly n is in memory "somewhere", 5 is a placeholder
	li $s1, 0	# s1 will be used as a counter during the for loop needed for the Fib sequence
	sub $s3, $s0, 1  # s3 = n - 1, used in the condition for the Fib sequence loop
	
	# Load the registers used in the Fibonacchi calculation
	li $t1, 0	# t1 = "a"
	li $t2, 1	# t2 = "b"
	
	ble $s0, 1, baseEnd 	# if(n<=1), jump to end of function
	
	# t0 acts as a "temp" variable, t1 holds the final value
	FibSeq:	
		bge $s1, $s3, end	# if i (s1) < n - 1 (s3), jump to end 
		move $t0, $t2
		add $t2, $t1, $t2
		move $t1, $t0
		add $s1, $s1, 1		# increment counter
		b FibSeq		# loop back to the branch condition
	
	baseEnd:
		move $t1, $s0	# End function based on base condition, returns s0

	end:
    	sw $t1, n      # Store result back to memory
		# Exit program
		li $v0, 10     # Exit syscall
    	syscall