`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:54:35 01/15/2018
// Design Name:   mips
// Module Name:   F:/xinjianwenjian/add_4er/p5new/test.v
// Project Name:  p5new
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		#45;
		reset =0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      always #5 clk = ~clk;
endmodule

