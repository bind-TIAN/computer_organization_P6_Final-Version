`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:41 01/01/2018 
// Design Name: 
// Module Name:    yimaqi_W 
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
module yimaqi_W(
    input [31:0] instr_W,
    output reg memtoreg_W,
	 output reg regwrite_W,
	 output reg jal_W,
	 output reg jalr_W,
	 output reg mult_W,
	 output reg mfhi_W,
	 output reg div_W,
	 output reg mflo_W,
	 output reg lw,
	 output reg lh,
	 output reg lhu,
	 output reg lb,
	 output reg lbu,
	 output reg bgezal
	 //output reg jr
    );
	 always @ * begin
		case(instr_W[31:26])
			6'b000000:begin
				if(instr_W[5:0]==6'b100001)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal = 0;
					lw = 0;
					lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 0;
				
					
				end
				else if(instr_W[5:0]==6'b100011)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal = 0;
					lw = 0;
					lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 0;
				end
				else if(instr_W[5:0]==6'b100101)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal = 0;
					lw = 0;
					lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 0;
				end
				else if(instr_W[5:0]==6'b001000)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal = 0;
					lw = 0;
					lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 0;
				end
				else if(instr_W[5:0]==6'b001001)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 1;
					bgezal = 0;
					lw = 0;
					lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 0;
				end
				else if(instr_W[5:0]==6'b000110)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal = 0;
					lw = 0;
					lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 0;
				end
				else if(instr_W[5:0]==6'b101010)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal = 0;
					lw = 0;
					lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 0;
				end
				else if(instr_W[5:0]==6'b001010)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal = 0;
					lw = 0;
					lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 0;
				end
				else if(instr_W[5:0]==6'b000011)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal = 0;
					lw = 0;
					lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 0;
				end
				else if(instr_W[5:0]==6'b000111)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal = 0;
					lw = 0;
					lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 0;
				end
				else if(instr_W[5:0]==6'b011000)begin
					memtoreg_W = 0;
					regwrite_W = 0;
					jal_W = 0;
					jalr_W = 0;
					bgezal = 0;
					lw = 0;
					lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 1;
					div_W = 0;
					mfhi_W = 0;
				end
				else if(instr_W[5:0]==6'b010010)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal = 0;
					lw = 0;
					lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 1;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 0;
				end
				else if(instr_W[5:0]==6'b010000)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal = 0;
					lw = 0;
					lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 1;
				end
				else if(instr_W[5:0]==6'b011010)begin
					memtoreg_W = 0;
					regwrite_W = 0;
					jal_W = 0;
					jalr_W = 0;
					bgezal = 0;
					lw = 0;
					lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 1;
					mfhi_W = 0;
				end
				else begin
					memtoreg_W = 0;
					regwrite_W = 0;
					jal_W = 0;
					jalr_W = 0;
					bgezal = 0;
					lw = 0;
					lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 0;
				end
				
			end
			6'b001101:begin
				memtoreg_W = 0;
				regwrite_W = 1;
				jal_W = 0;
				jalr_W = 0;
				bgezal = 0;
				lw = 0;
				lh = 0;
				lhu = 0;
				lb = 0;
				lbu = 0;
				mflo_W = 0;
				mult_W = 0;
				div_W = 0;
				mfhi_W = 0;
			end
			6'b001111:begin
				memtoreg_W = 0;
				regwrite_W = 1;
				jal_W = 0;
				jalr_W = 0;
				bgezal = 0;
				lw = 0;
					lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 0;
			end
			6'b100011:begin
				memtoreg_W = 1;
				regwrite_W = 1;
				jal_W = 0;
				jalr_W = 0;
				bgezal = 0;
				lw = 1;
				lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 0;
			end
			6'b101011:begin
				memtoreg_W = 0;
				regwrite_W = 0;
				jal_W = 0;//////////
				jalr_W = 0;
				bgezal = 0;
				lw = 0;
				lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 0;
			end
			6'b000011:begin
				memtoreg_W = 0;
				regwrite_W = 1;
				jal_W = 1;
				jalr_W = 0;
				bgezal = 0;
				lw = 0;
				lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 0;
			end
			6'b001000:begin
				memtoreg_W = 0;
				regwrite_W = 1;
				jal_W = 0;
				jalr_W = 0;
				bgezal = 0;
				lw = 0;
				lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 0;
			end
			6'b000001:begin
				memtoreg_W = 0;
				regwrite_W = 1;
				jal_W = 0;
				jalr_W = 0;
				bgezal = 1;
				lw = 0;
				lh = 0;
					lhu = 0;
					lb = 0;
					lbu = 0;
					mflo_W = 0;
					mult_W = 0;
					div_W = 0;
					mfhi_W = 0;
			end
			6'b100000:begin
				memtoreg_W = 1;
				regwrite_W = 1;
				jal_W = 0;
				jalr_W = 0;
				bgezal = 0;
				lb = 1;
				lw = 0;
				lh = 0;
				lhu = 0;
				
				lbu = 0;
				mflo_W = 0;
				mult_W = 0;
				div_W = 0;
				mfhi_W = 0;
			end
			6'b100100:begin
				memtoreg_W = 1;
				regwrite_W = 1;
				jal_W = 0;
				jalr_W = 0;
				bgezal = 0;
				lb = 0;
				lbu = 1;
				lh = 0;
				lhu = 0;
				lw = 0;
				mflo_W = 0;
				mult_W = 0;
				div_W = 0;
				mfhi_W = 0;
			end
			6'b100001:begin
				memtoreg_W = 1;
				regwrite_W = 1;
				jal_W = 0;
				jalr_W = 0;
				bgezal = 0;
				lb = 0;
				lh = 1;
				lbu = 0;
				lhu = 0;
				lw = 0;
				mflo_W = 0;
				mult_W = 0;
				div_W = 0;
				mfhi_W = 0;
			end
			6'b100101:begin
				memtoreg_W = 1;
				regwrite_W = 1;
				jal_W = 0;
				jalr_W = 0;
				bgezal = 0;
				lb = 0;
				lhu = 1;
				lbu = 0;
				lh = 0;
				lw = 0;
				mflo_W = 0;
				mult_W = 0;
				div_W = 0;
				mfhi_W = 0;
			end
			default: begin
				memtoreg_W = 0;
				regwrite_W = 0;
				jal_W = 0;
				jalr_W = 0;
				bgezal = 0;
				lb = 0;
				lhu = 0;
				lbu = 0;
				lh = 0;
				lw = 0;
				mflo_W = 0;
				mult_W = 0;
				div_W = 0;
				mfhi_W = 0;
			end
		endcase
	 end


endmodule
