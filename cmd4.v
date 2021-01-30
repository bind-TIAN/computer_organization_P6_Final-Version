`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:10:22 02/14/2018 
// Design Name: 
// Module Name:    cmd4 
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
module cmd4(
	 input [31:0] data1,
	 input [31:0] data2,
	 input start,
	 input clk,
	 input mult_E,
	 input div_E,
	 output reg busy,
	 output [31:0] lo,
	 output [31:0] hi,
	 output reg [63:0] daboss,
	 output reg [31:0] dabss,
	 output reg [63:0] dabs
    );
	 reg [31:0] loo;
	 reg [31:0] hii;
	 integer i = 0;
	 integer j = 0;
	 initial begin
		daboss = 0;
		dabs = 0;
		dabss = 0;
		busy = 0;
		loo = 0;
		hii = 0;
	 end
	 always @(posedge clk)begin
			
		if(start==1&&mult_E==1)begin
			busy <= 1;
			daboss <= data1 * data2;
			i = 9;
		end
		else if(start==1&&div_E==1)begin
			busy <= 1;
			dabs <= data1 / data2;
			dabss <= data1 % data2;
			j = 19;
		end
		else begin
			if(i%5==0&&i!=0)begin
				busy <= 0;
				loo <= daboss[31:0];
				hii <= daboss[63:32];
				i = 0;
			end
			else if(j%10==0&&j!=0)begin
				busy <= 0;
				loo <= dabs[31:0];
				hii <= dabss[31:0];
				j = 0;
				
			end
			else begin
				if(i==0&&j==0)begin
					i = 0;
					j = 0;
					
				end
				else if(j==0&&i!=0)begin
					i = i - 1;
				end
				else if(i==0&&j!=0)begin
					j = j - 1;
				end
				else begin
					i = i - 1;
					j = j - 1;
				end
			end
		end
	 end
	 assign lo = loo[31:0];
	 assign hi = hii[31:0];
	 


endmodule
