`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:30 01/27/2018 
// Design Name: 
// Module Name:    be 
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
module be(
	 input [31:0] alu_two,
	 input sw,
	 input sh,
	 input sb,
	 output reg [3:0] bee
    );
	 initial begin
			bee = 0;
	 end
	 always @ *	begin
		if(sw==1)begin
			bee = 4'b1111;
		end
		else if(sh==1&&alu_two[1]==0)begin
			bee = 4'b0011;
		end
		else if(sh==1&&alu_two[1]==1)begin
			bee = 4'b1100;
		end
		else if(sb==1&&alu_two[2:0]==2'b00)begin
			bee = 4'b0001;
		end
		else if(sb==1&&alu_two[2:0]==2'b01)begin
			bee = 4'b0010;
		end
		else if(sb==1&&alu_two[2:0]==2'b10)begin
			bee = 4'b0100;
		end
		else if(sb==1&&alu_two[2:0]==2'b11)begin
			bee = 4'b1000;
		end
	end
endmodule
