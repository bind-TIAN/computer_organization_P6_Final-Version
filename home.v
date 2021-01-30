`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:04:32 01/28/2018 
// Design Name: 
// Module Name:    home 
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
module home(
	 input [1:0] alu_f,
	 input [31:0] dmdm,
	 input lw,
	 input lh,
	 input lhu,
	 input lb,
	 input lbu,
	 output reg [31:0] dmdm_mux
    );
	 initial begin
			dmdm_mux = 0;
	 end
	 always @ * begin
			if(lw==1)begin
				dmdm_mux = dmdm;
			end
			else if(lh==1&&alu_f[1]==0)begin
				dmdm_mux = {{16{dmdm[15]}},dmdm[15:0]};
			end
			else if(lh==1&&alu_f[1]==1)begin
				dmdm_mux = {{16{dmdm[31]}},dmdm[31:16]};
			end
			else if(lb==1&&alu_f==2'b00)begin
				dmdm_mux = {{24{dmdm[7]}},dmdm[7:0]};
			end
			else if(lb==1&&alu_f==2'b01)begin
				dmdm_mux = {{24{dmdm[15]}},dmdm[15:8]};
			end
			else if(lb==1&&alu_f==2'b10)begin
				dmdm_mux = {{24{dmdm[23]}},dmdm[23:16]};
			end
			else if(lb==1&&alu_f==2'b11)begin
				dmdm_mux = {{24{dmdm[31]}},dmdm[31:24]};
			end
			else if(lbu==1&&alu_f==2'b00)begin
				dmdm_mux = {{24{0}},dmdm[7:0]};
			end
			else if(lbu==1&&alu_f==2'b01)begin
				dmdm_mux = {{24{0}},dmdm[15:8]};
			end
			else if(lbu==1&&alu_f==2'b10)begin
				dmdm_mux = {{24{0}},dmdm[23:16]};
			end
			else if(lbu==1&&alu_f==2'b11)begin
				dmdm_mux = {{24{0}},dmdm[31:24]};
			end
			else if(lhu==1&&alu_f[1]==1)begin
				dmdm_mux = {{16{0}},dmdm[31:16]};
			end
			else if(lhu==1&&alu_f[1]==0)begin
				dmdm_mux = {{16{0}},dmdm[15:0]};
			end
	 end


endmodule
