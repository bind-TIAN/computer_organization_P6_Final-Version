`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:37:54 02/04/2018 
// Design Name: 
// Module Name:    zhzh 
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
module zhzh(
	 input  memwrite_M,
	 input [31:0] writedata_M,
	 input [3:0] bet,
	 output reg [31:0] data_dm_M
    );
	 always @ * begin
			if(memwrite_M==1&&bet==4'b1111)begin
				
				data_dm_M <= writedata_M;
			end
			else if(memwrite_M==1&&bet==4'b0011)begin
				
				data_dm_M <= {16'b0,writedata_M[15:0]};
			end
			else if(memwrite_M==1&&bet==4'b1100)begin
				
				data_dm_M <= {writedata_M[15:0],16'b0};
			end
			else if(memwrite_M==1&&bet==4'b0001)begin
				
				data_dm_M <= {24'b0,writedata_M[7:0]};
			end
			else if(memwrite_M==1&&bet==4'b0010)begin
				
				data_dm_M <= {16'b0,writedata_M[7:0],7'b0};
			end
			else if(memwrite_M==1&&bet==4'b0100)begin
				
				data_dm_M <= {7'b0,writedata_M[7:0],16'b0};
			end
			else if(memwrite_M==1&&bet==4'b1000)begin
				
				data_dm_M <= {writedata_M[7:0],24'b0};
			end
	 end


endmodule
