`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:19 02/12/2018 
// Design Name: 
// Module Name:    cheng 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module cheng(
    input [31:0] a,
    input [31:0] b,
    output [63:0] c
	 
    );
	 assign c = a * b;


endmodule
