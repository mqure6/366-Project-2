# ECE 366 Project 2
 
Group Members: Alex Zelewski (azale2), Moiz Qureshi (mqure6)

Contribution: 
- Alex:
   - Refined and troubleshooted base implementation of Fiboncaci sequence function (1A)
   - Troubleshooted implementation of Odd&Division functions (1B)
   - Troubleshooted IsFibonacciOdd implementation, especially storing values to memory (1C)
   - All tarballs and submissions
- Moiz:
   - Created repository
   - Used pseudocode provided to create a reference .c file
   - Created base code of Fiboncaci sequence function (1A)
   - Created base code of Odd&Division functions (1B)
   - Created and troubleshooted IsFibonacciOdd implementation (1C)
  
Repository Link: https://github.com/mqure6/366-Project-2.git

How to Run:
- FibonacciCalc.asm: The current implementation simply uses an immediate value for the "n'th" sequence number to calculate (see line 5). This immediate value can be adjusted to different integer values, then assembled and run within the MARS simulator.
- Odd&Division.asm: The current implementation loads an immediate value to $t0 as a placeholder function for grabbing the number calculated by FibonacciCalc (see line 20). This value may be adjusted to different integer values, then assembled and run within the MARS simulator.
- IsFibonacciOdd.asm: The current implmentation loads an immediate value to register $s0 to represent loading n from memory "somewhere" (see line 3). This immediate value may be adjusted to different integer values of n. The calculated number of the Fibonacci sequence is stored into memory address 268500992 (see line 28). This can be verified during program execution under the "Data Segment" section of the "Execute" tab within the MARS simulator. The final output is stored in register $v0, 1 indicating odd, 0 indicating even, verifiable via the register view to the right within the MARS simulator.
