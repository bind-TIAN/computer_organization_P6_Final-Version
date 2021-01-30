`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:07:32 02/12/2018 
// Design Name: 
// Module Name:    cc 
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
module cc(
    input [31:0] data1,
    input [31:0] data2,
    input start,
    input clk,
	 input regwrite,
    output reg busy,
	 output [31:0] loo,
	 output [31:0] hii,
	 output reg [63:0] daboss
    //output [31:0] da1,
    //output [31:0] da2
    );
	 reg [31:0] lo;
	 reg [31:0] hi;
	 integer i = 0;
	 initial begin
		busy = 0;
		for(i=0;i<32;i=i+1)begin
			lo[i] = 0;
			hi[i] = 0;
			
		end
		
	 end
	 initial begin
		
		for(i=0;i<64;i=i+1)begin
			daboss [i] = 0;
		end
		
	 end
	 always @(posedge clk)begin
		if(start)begin
			daboss <= data1 * data2;
			busy <= 1;
			
		end
		if(regwrite)begin
			lo <= daboss[31:0];
			hi <= daboss[63:32];
			busy <= 0;
		end
	 end
	 assign loo = lo[31:0];
	 assign hii = hi[31:0];


endmodule

