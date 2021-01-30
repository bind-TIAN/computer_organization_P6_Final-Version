`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:21:32 01/01/2018 
// Design Name: 
// Module Name:    yimaqi_E 
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
module yimaqi_E(
    input [31:0] instr_E,
    output reg regdst_E,
    output reg alusrc_E,
    output reg [3:0] aluop,
	 output reg regwrite_E,
	 output reg memtoreg_E,
	 output reg jal_E,
	 output reg jalr_E,
	 output reg start,
	 output reg mflo_E,
	 output reg mfhi_E,
	 output reg mult_E,
	 output reg div_E,
	 output reg bgezal
	 //output reg jr
	 //output reg memwrite_E
	 
	 
    );
	 always @ * begin
		case(instr_E[31:26])
		6'b000000:begin
			if(instr_E[5:0]==6'b100001)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 0;//////////////addu
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
				//jr = 0;
				//memwrite_E = 0;
			end
			else if(instr_E[5:0]==6'b100011)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 1;/////////////subu
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
				//jr = 0;			

				//memwrite_E = 0;
			end
			else if(instr_E[5:0]==6'b100101)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 3;//////////////or
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
				//jr = 0;
				//memwrite_E = 0;
			end
			else if(instr_E[5:0]==6'b001001)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 0;//////////////or
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 1;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
				//jr = 0;
				//memwrite_E = 0;
			end
			else if(instr_E[5:0]==6'b000110)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 4;//////////////or
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
				//jr = 0;
				//memwrite_E = 0;
			end
			else if(instr_E[5:0]==6'b101010)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 7;//////////////or
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
				//jr = 0;
				//memwrite_E = 0;
			end
			else if(instr_E[5:0]==6'b001010)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 8;//////////////or
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
				//jr = 0;
				//memwrite_E = 0;
			end
			else if(instr_E[5:0]==6'b000011)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 10;//////////////or
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
				//jr = 0;
				//memwrite_E = 0;
			end
			else if(instr_E[5:0]==6'b000111)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 9;//////////////or
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
				//jr = 0;
				//memwrite_E = 0;
			end
			else if(instr_E[5:0]==6'b011000)begin
				regdst_E = 0;
				alusrc_E = 0;
				aluop = 0;//////////////or
				regwrite_E = 0;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 1;
				mflo_E = 0;
				mult_E = 1;
				div_E = 0;
				mfhi_E = 0;
				//jr = 0;
				//memwrite_E = 0;
			end
			else if(instr_E[5:0]==6'b010010)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 0;//////////////or
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 1;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
				//jr = 0;
				//memwrite_E = 0;
			end
			else if(instr_E[5:0]==6'b011010)begin
				regdst_E = 0;
				alusrc_E = 0;
				aluop = 0;//////////////or
				regwrite_E = 0;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 1;
				mflo_E = 0;
				mult_E = 0;
				div_E = 1;
				mfhi_E = 0;
				//jr = 0;
				//memwrite_E = 0;
			end
			else if(instr_E[5:0]==6'b010000)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 0;//////////////or
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 1;
				//jr = 0;
				//memwrite_E = 0;
			end
			else begin
				regdst_E = 0;
				alusrc_E = 0;
				aluop = 0;
				regwrite_E = 0;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
				//jr = 0;
				//memwrite_E = 0;
			end
			
			
		end
		6'b001101:begin
				regdst_E = 0;
				alusrc_E = 1;
				aluop = 3;//////////ori
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
				//memwrite_E = 0;
		end
		6'b001111:begin
				regdst_E = 0;
				alusrc_E = 1;
				aluop = 5;//////////lui
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
				//memwrite_E = 0;
		end
		6'b100011:begin
				regdst_E = 0;
				alusrc_E = 1;
				aluop = 0;//////////lw
				regwrite_E = 1;
				memtoreg_E = 1;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
				//memwrite_E = 0;
		end
		6'b101011:begin
				regdst_E = 0;
				alusrc_E = 1;
				aluop = 0;//////////sw
				regwrite_E = 0;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
				//memwrite_E = 1;
		end
		6'b101001:begin
				regdst_E = 0;
				alusrc_E = 1;
				aluop = 0;//////////sw
				regwrite_E = 0;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
		end
		6'b101000:begin
				regdst_E = 0;
				alusrc_E = 1;
				aluop = 0;//////////sw
				regwrite_E = 0;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
		end
		6'b000011:begin
				regdst_E = 0;
				alusrc_E = 0;
				aluop = 0;//////////xx
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 1;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
		end
		6'b001000:begin
				regdst_E = 0;
				alusrc_E = 1;
				aluop = 0;//////////xx（在用不到aluop的情况下是否将aluop置为0，因为这样的话相当于进行了加法运算）
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
		end
		6'b000001:begin
				regdst_E = 0;
				alusrc_E = 0;
				aluop = 0;//////////xx（在用不到aluop的情况下是否将aluop置为0，因为这样的话相当于进行了加法运算）
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E= 0;
				jalr_E = 0;
				bgezal = 1;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
		end
		6'b100101:begin
				regdst_E = 0;
				alusrc_E = 1;
				aluop = 0;//////////lhu
				regwrite_E = 1;
				memtoreg_E = 1;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
		end
		6'b100001:begin
				regdst_E = 0;
				alusrc_E = 1;
				aluop = 0;//////////lh
				regwrite_E = 1;
				memtoreg_E = 1;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
		end
		6'b100100:begin
				regdst_E = 0;
				alusrc_E = 1;
				aluop = 0;//////////lbu
				regwrite_E = 1;
				memtoreg_E = 1;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
		end
		6'b100000:begin
				regdst_E = 0;
				alusrc_E = 1;
				aluop = 0;//////////lb
				regwrite_E = 1;
				memtoreg_E = 1;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
		end
		default:begin
				regdst_E = 0;
				alusrc_E = 0;
				aluop = 0;//////////xx
				regwrite_E = 0;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal = 0;
				start = 0;
				mflo_E = 0;
				mult_E = 0;
				div_E = 0;
				mfhi_E = 0;
				//memwrite_E = 0;
		end
		endcase
	 end


endmodule
