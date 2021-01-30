`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:02 01/01/2018 
// Design Name: 
// Module Name:    yimaqi_M 
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
module yimaqi_M(
    input [31:0] instr_E,
	 output reg jal_M,
	 output reg jalr_M,
	 output reg mult_M,
	 output reg mflo_M,
	 output reg mfhi_M,
	 output reg div_M,
	 output reg bgezal,
    output reg memwrite_M,
	 output reg regwrite_M,
	 output reg sw,
	 output reg sh,
	 output reg sb,
	 output reg memtoreg_M
    );
	 always @ * begin
		case(instr_E[31:26])
		6'b000000:begin
			if(instr_E[5:0]==6'b100001)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal = 0;
				sw = 0;
				sh = 0;
				sb = 0;
				mflo_M = 0;
				mult_M = 0;
				div_M = 0;
				mfhi_M = 0;
			end
			else if(instr_E[5:0]==6'b100011)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal = 0;
				sw = 0;
				sh = 0;
				sb = 0;
				mflo_M = 0;
				mult_M = 0;
				div_M = 0;
				mfhi_M = 0;
			end
			else if(instr_E[5:0]==6'b100101)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal = 0;
				sw = 0;
				sh = 0;
				sb = 0;
				mflo_M = 0;
				mult_M = 0;
				div_M = 0;
				mfhi_M = 0;
			end
			else if(instr_E[5:0]==6'b001001)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 1;
				bgezal = 0;
				sw = 0;
				sh = 0;
				sb = 0;
				mflo_M = 0;
				mult_M = 0;
				div_M = 0;
				mfhi_M = 0;
			end
			else if(instr_E[5:0]==6'b000110)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal = 0;
				sw = 0;
				sh = 0;
				sb = 0;
				mflo_M = 0;
				mult_M = 0;
				div_M = 0;
				mfhi_M = 0;
			end
			else if(instr_E[5:0]==6'b101010)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal = 0;
				sw = 0;
				sh = 0;
				sb = 0;
				mflo_M = 0;
				mult_M = 0;
				div_M = 0;
				mfhi_M = 0;
			end
			else if(instr_E[5:0]==6'b001010)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal = 0;
				sw = 0;
				sh = 0;
				sb = 0;
				mflo_M = 0;
				mult_M = 0;
				div_M = 0;
				mfhi_M = 0;
			end
			else if(instr_E[5:0]==6'b000011)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal = 0;
				sw = 0;
				sh = 0;
				sb = 0;
				mflo_M = 0;
				mult_M = 0;
				div_M = 0;
				mfhi_M = 0;
			end
			else if(instr_E[5:0]==6'b000111)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal = 0;
				sw = 0;
				sh = 0;
				sb = 0;
				mflo_M = 0;
				mult_M = 0;
				div_M = 0;
				mfhi_M = 0;
			end
			else if(instr_E[5:0]==6'b011000)begin
				memwrite_M = 0;
				regwrite_M = 0;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal = 0;
				sw = 0;
				sh = 0;
				sb = 0;
				mflo_M = 0;
				mult_M = 1;
				div_M = 0;
				mfhi_M = 0;
			end
			else if(instr_E[5:0]==6'b010010)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal = 0;
				sw = 0;
				sh = 0;
				sb = 0;
				mflo_M = 1;
				mult_M = 0;
				div_M = 0;
				mfhi_M = 0;
			end
			else if(instr_E[5:0]==6'b011010)begin
				memwrite_M = 0;
				regwrite_M = 0;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal = 0;
				sw = 0;
				sh = 0;
				sb = 0;
				mflo_M = 0;
				mult_M = 0;
				div_M = 1;
				mfhi_M = 0;
			end
			else if(instr_E[5:0]==6'b010000)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal = 0;
				sw = 0;
				sh = 0;
				sb = 0;
				mflo_M = 0;
				mult_M = 0;
				div_M = 0;
				mfhi_M = 1;
			end
			else begin
				memwrite_M = 0;
				regwrite_M = 0;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal = 0;
				sw = 0;
				sh = 0;
				sb = 0;
				mflo_M = 0;
				mult_M = 0;
				div_M = 0;
				mfhi_M = 0;
			end
		end
		6'b001101:begin
			memwrite_M = 0;
			regwrite_M = 1;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal = 0;
			sw = 0;
			sh = 0;
			sb = 0;
			mflo_M = 0;
			mult_M = 0;
			div_M = 0;
			mfhi_M = 0;
		end
		6'b001111:begin
			memwrite_M = 0;
			regwrite_M = 1;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal = 0;
			sw = 0;
			sh = 0;
			sb = 0;
			mflo_M = 0;
			mult_M = 0;
			div_M = 0;
			mfhi_M = 0;
		end
		6'b100011:begin
			memwrite_M = 0;
			regwrite_M = 1;
			memtoreg_M = 1;
			jal_M = 0;
			jalr_M = 0;
			bgezal = 0;
			sw = 0;
			sh = 0;
			sb = 0;
			mflo_M = 0;
			mult_M = 0;
			div_M = 0;
			mfhi_M = 0;
		end
		6'b101011:begin
			memwrite_M = 1;
			regwrite_M = 0;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal = 0;
			sw = 1;
			sh = 0;
			sb = 0;
			mflo_M = 0;
			mult_M = 0;
			div_M = 0;
			mfhi_M = 0;
		end
		6'b001000:begin
			memwrite_M = 0;
			regwrite_M = 1;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal = 0;
			sw = 0;
			sh = 0;
			sb = 0;
			mflo_M = 0;
			mult_M = 0;
			div_M = 0;
			mfhi_M = 0;
		end
		6'b000011:begin
			memwrite_M = 0;
			regwrite_M = 1;
			memtoreg_M = 0;
			jal_M = 1;
			jalr_M = 0;
			bgezal = 0;
			sw = 0;
			sh = 0;
			sb = 0;
			mflo_M = 0;
			mult_M = 0;
			div_M = 0;
			mfhi_M = 0;
		end
		6'b000001:begin
			memwrite_M = 0;
			regwrite_M = 1;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal = 1;
			sw = 0;
			sh = 0;
			sb = 0;
			mflo_M = 0;
			mult_M = 0;
			div_M = 0;
			mfhi_M = 0;
		end
		6'b101001:begin
		   memwrite_M = 1;
			regwrite_M = 0;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal = 0;
			sw = 0;
			sh = 1;
			sb = 0;
			mflo_M = 0;
			mult_M = 0;
			div_M = 0;
			mfhi_M = 0;
		end
		6'b101000:begin
		   memwrite_M = 1;
			regwrite_M = 0;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal = 0;
			sw = 0;
			sh = 0;
			sb = 1;
			mflo_M = 0;
			mult_M = 0;
			div_M = 0;
			mfhi_M = 0;
		end
		6'b100101:begin
			memtoreg_M = 1;
			regwrite_M = 1;
			jal_M = 0;
			jalr_M = 0;
			bgezal = 0;
			sw = 0;
			sh = 0;
			sb = 0;
			mflo_M = 0;
			mult_M = 0;
			div_M = 0;
			mfhi_M = 0;
		end
		6'b100001:begin
			memtoreg_M = 1;
			regwrite_M = 1;
			jal_M = 0;
			jalr_M = 0;
			bgezal = 0;
			sw = 0;
			sh = 0;
			sb = 0;
			mflo_M = 0;
			mult_M = 0;
			div_M = 0;
			mfhi_M = 0;
		end
		6'b100100:begin
			memtoreg_M = 1;
			regwrite_M = 1;
			jal_M = 0;
			jalr_M = 0;
			bgezal = 0;
			sw = 0;
			sh = 0;
			sb = 0;
			mflo_M = 0;
			mult_M = 0;
			div_M = 0;
			mfhi_M = 0;
		end
		6'b100000:begin
			memtoreg_M = 1;
			regwrite_M = 1;
			jal_M = 0;
			jalr_M = 0;
			bgezal = 0;
			sw = 0;
			sh = 0;
			sb = 0;
			mflo_M = 0;
			mult_M = 0;
			div_M = 0;
			mfhi_M = 0;
		end

		default:begin
			memwrite_M = 0;
			regwrite_M = 0;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal = 0;
			sw = 0;
			sh = 0;
			sb = 0;
			mflo_M = 0;
			mult_M = 0;
			div_M = 0;
			mfhi_M = 0;
		end
		endcase
	 end
 	 


endmodule
