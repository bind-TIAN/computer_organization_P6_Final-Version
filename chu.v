`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:58:42 02/14/2018 
// Design Name: 
// Module Name:    chu 
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
module chu(
    input [31:0] a,
    input [31:0] b,
    output [31:0] c
    );
	 assign c = a / b;


endmodule
