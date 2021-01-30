`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:53:48 02/13/2018 
// Design Name: 
// Module Name:    cmd 
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
module cmd(
	 input [31:0] data1,
	 input [31:0] data2,
	 input start,
	 input clk,
	 output reg busy,
	 output [31:0] lo,
	 output [31:0] hi,
	 output reg [63:0] daboss
    );
	 reg [31:0] loo;
	 reg [31:0] hii;
	 integer i = 0;
	 
	 initial begin
		daboss = 0;
		busy = 0;
		loo = 0;
		hii = 0;
	 end
	 always @(posedge clk)begin
		if(start)begin
			busy <= 1;
			daboss <= data1 * data2;
			i = 9;
			
		end
		else begin
			if(i%5==0)begin
				busy <= 0;
				loo <= daboss[31:0];
				hii <= daboss[63:32];
			end
			else begin
				i = i - 1;
			end
		end
	 end
	 assign lo = loo[31:0];
	 assign hi = hii[31:0];


endmodule
