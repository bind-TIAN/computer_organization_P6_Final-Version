`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:29:44 01/27/2018 
// Design Name: 
// Module Name:    dmdm 
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
module dmdm(
	 input clk,
    input reset,
    input  memwrite_M,
    input [31:0] data_alu_M,
    input [31:0] writedata_M,
	 input [31:0] pcout_M,
	 input [3:0] bet,
    output [31:0] data_dm_M
    );
	 reg [31:0] ram [1023:0];
	 integer i = 0;
	 initial begin
		for(i=0;i<1024;i=i+1)begin
			ram[i] = 0;
		end
	 end
	 always @(posedge clk)begin
		if(reset)begin
			for(i=0;i<1024;i=i+1)begin
				ram[i] <= 0;
			end
		end
		else begin
			if(memwrite_M==1&&bet==4'b1111)begin
				$display("%d@%h:*%h <= %h", $time, pcout_M,data_alu_M ,writedata_M);
				ram[data_alu_M[11:2]]<=writedata_M;
			end
			else if(memwrite_M==1&&bet==4'b0011)begin
				$display("%d@%h:*%h <= %h", $time, pcout_M,data_alu_M ,16'b0,writedata_M[15:0]);
				ram[data_alu_M[11:2]]<={16'b0,writedata_M[15:0]};
			end
			else if(memwrite_M==1&&bet==4'b1100)begin
				$display("%d@%h:*%h <= %h", $time, pcout_M,data_alu_M ,16'b0,writedata_M[31:16]);
				ram[data_alu_M[11:2]]<={writedata_M[15:0],16'b0};
			end
			else if(memwrite_M==1&&bet==4'b0001)begin
				$display("%d@%h:*%h <= %h", $time, pcout_M,data_alu_M ,24'b0,writedata_M[7:0]);
				ram[data_alu_M[11:2]]<={24'b0,writedata_M[7:0]};
			end
			else if(memwrite_M==1&&bet==4'b0010)begin
				$display("%d@%h:*%h <= %h", $time, pcout_M,data_alu_M ,24'b0,writedata_M[15:8]);
				ram[data_alu_M[11:2]]<={16'b0,writedata_M[7:0],7'b0};
			end
			else if(memwrite_M==1&&bet==4'b0100)begin
				$display("%d@%h:*%h <= %h", $time, pcout_M,data_alu_M ,24'b0,writedata_M[23:16]);
				ram[data_alu_M[11:2]]<={7'b0,writedata_M[7:0],16'b0};
			end
			else if(memwrite_M==1&&bet==4'b1000)begin
				$display("%d@%h:*%h <= %h", $time, pcout_M,data_alu_M ,24'b0,writedata_M[31:24]);
				ram[data_alu_M[11:2]]<={writedata_M[7:0],24'b0};
			end
		end
	 end
	 assign data_dm_M = ram[data_alu_M[11:2]];
endmodule
