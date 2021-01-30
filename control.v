`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:12:50 01/01/2018 
// Design Name: 
// Module Name:    control 
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
module control(
    input [31:0] instr_D,
    //output reg [31:0] instr_E,
    output reg beq,
	 output reg jr,
	 output reg extop,
	 //output reg jal,
	 output reg j,
	 output reg jal_D,
	 output reg bgezal,
	 output reg mult_D,
	 output reg div_D,
	 output reg mflo_D,
	 output reg mfhi_D,
	 output reg jalr_D
    );
	 always @ * begin
		case(instr_D[31:26])
		6'b000000:begin
			if(instr_D[5:0]==6'b100001)begin
				beq = 0;
				extop = 0;
				jr = 0;
				//jal = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal = 0;
				mult_D = 0;
				mflo_D = 0;
				div_D = 0;
				mfhi_D = 0;
			end
			else if(instr_D[5:0]==6'b100011)begin
				beq = 0;
				extop = 0;
				jr = 0;
				//jal = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal = 0;
				mult_D = 0;
				mflo_D = 0;
				div_D = 0;
				mfhi_D = 0;
			end
			else if(instr_D[5:0]==6'b100101)begin
				beq = 0;
				extop = 0;
				jr = 0;
				//jal = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal = 0;
				mult_D = 0;
				mflo_D = 0;
				div_D = 0;
				mfhi_D = 0;
			end
			else if(instr_D[5:0]==6'b001000)begin
				beq = 0;
				extop = 0;
				jr = 1;
				//jal = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal = 0;
				mult_D = 0;
				mflo_D = 0;
				div_D = 0;
				mfhi_D = 0;
			end
			else if(instr_D[5:0]==6'b001001)begin
				beq = 0;
				extop = 0;
				jr = 0;
				//jal = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 1;
				bgezal = 0;
				mult_D = 0;
				mflo_D = 0;
				div_D = 0;
				mfhi_D = 0;
			end
			else if(instr_D[5:0]==6'b000110)begin
				beq = 0;
				extop = 0;
				jr = 0;
				//jal = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal = 0;
				mult_D = 0;
				mflo_D = 0;
				div_D = 0;
				mfhi_D = 0;
			end
			else if(instr_D[5:0]==6'b101010)begin
				beq = 0;
				extop = 0;
				jr = 0;
				//jal = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal = 0;
				mult_D = 0;
				mflo_D = 0;
				div_D = 0;
				mfhi_D = 0;
			end
			else if(instr_D[5:0]==6'b001010)begin
				beq = 0;
				extop = 0;
				jr = 0;
				//jal = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal = 0;
				mult_D = 0;
				mflo_D = 0;
				div_D = 0;
				mfhi_D = 0;
			end
			else if(instr_D[5:0]==6'b000011)begin
				beq = 0;
				extop = 0;
				jr = 0;
				//jal = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal = 0;
				mult_D = 0;
				mflo_D = 0;
				div_D = 0;
				mfhi_D = 0;
			end
			else if(instr_D[5:0]==6'b000111)begin
				beq = 0;
				extop = 0;
				jr = 0;
				//jal = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal = 0;
				mult_D = 0;
				mflo_D = 0;
				div_D = 0;
				mfhi_D = 0;
			end
			else if(instr_D[5:0]==6'b011000)begin
				beq = 0;
				extop = 0;
				jr = 0;
				//jal = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal = 0;
				mult_D = 1;
				mflo_D = 0;
				div_D = 0;
				mfhi_D = 0;
			end
			else if(instr_D[5:0]==6'b010010)begin
				beq = 0;
				extop = 0;
				jr = 0;
				//jal = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal = 0;
				mult_D = 0;
				mflo_D = 1;
				div_D = 0;
				mfhi_D = 0;
			end
			else if(instr_D[5:0]==6'b011010)begin
				beq = 0;
				extop = 0;
				jr = 0;
				//jal = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal = 0;
				mult_D = 0;
				mflo_D = 0;
				div_D = 1;
				mfhi_D = 0;
			end
			else if(instr_D[5:0]==6'b010000)begin
				beq = 0;
				extop = 0;
				jr = 0;
				//jal = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal = 0;
				mult_D = 0;
				mflo_D = 0;
				div_D = 0;
				mfhi_D = 1;
			end
			//else if(instr_D[5:0]==6'b)
			else begin
				beq = 0;
				extop = 0;
				jr = 0;
				//jal = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal = 0;
				mult_D = 0;
				mflo_D = 0;
				div_D = 0;
				mfhi_D = 0;
			end
		end
		6'b001101:begin
			beq = 0;
			extop = 0;
			jr = 0;
			//jal = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal = 0;
			mult_D = 0;
			mflo_D = 0;
			div_D = 0;
			mfhi_D = 0;
		end
		6'b001111:begin
			beq = 0;
			extop = 0;
			jr = 0;
			//jal = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal = 0;
			mult_D = 0;
			mflo_D = 0;
			div_D = 0;
			mfhi_D = 0;
		end
		6'b100011:begin
			beq = 0;
			extop = 1;
			jr = 0;
			//jal = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal = 0;
			mult_D = 0;
			mflo_D = 0;
			div_D = 0;
			mfhi_D = 0;
		end
		6'b101011:begin
			beq = 0;
			extop = 1;
			jr = 0;
			//jal = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal = 0;
			mult_D = 0;
			mflo_D = 0;
			div_D = 0;
			mfhi_D = 0;
		end
		6'b101001:begin
			beq = 0;
			extop = 1;
			jr = 0;
			//jal = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal = 0;
			mult_D = 0;
			mflo_D = 0;
			div_D = 0;
			mfhi_D = 0;
		end
		6'b101000:begin
			beq = 0;
			extop = 1;
			jr = 0;
			//jal = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal = 0;
			mult_D = 0;
			mflo_D = 0;
			div_D = 0;
			mfhi_D = 0;
		end
		6'b000100:begin
			//instr_E = instr_D;
			beq = 1;
			extop = 1;/////（原来过弱强测是0）
			jr = 0;
			//jal = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal = 0;
			mult_D = 0;
			mflo_D = 0;
			div_D = 0;
			mfhi_D = 0;
		end
		
		6'b000011:begin
			beq = 0;
			extop = 0;
			jr = 0;
			//jal = 1;
			j = 0;
			jal_D = 1;
			jalr_D = 0;
			bgezal = 0;
			mult_D = 0;
			mflo_D = 0;
			div_D = 0;
			mfhi_D = 0;
		end
		6'b000010:begin
			extop = 0;
			jr = 0;
			beq = 0;
			//jal = 0;
			j = 1;
			jal_D = 0;
			jalr_D = 0;
			bgezal = 0;
			mult_D = 0;
			mflo_D = 0;
			div_D = 0;
			mfhi_D = 0;
		end
		6'b001000:begin
			extop = 1;
			jr = 0;
			beq = 0;
			//jal = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal = 0;
			mult_D = 0;
			mflo_D = 0;
			div_D = 0;
			mfhi_D = 0;
		end
		6'b000001:begin
			extop = 1;
			jr = 0;
			beq = 0;
			//jal = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal = 1;
			mult_D = 0;
			mflo_D = 0;
			div_D = 0;
			mfhi_D = 0;
		end
		6'b100101:begin
			beq = 0;
			extop = 1;
			jr = 0;
			//jal = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal = 0;
			mult_D = 0;
			mflo_D = 0;
			div_D = 0;
			mfhi_D = 0;
		end
		6'b100001:begin
			beq = 0;
			extop = 1;
			jr = 0;
			//jal = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal = 0;
			mult_D = 0;
			mflo_D = 0;
			div_D = 0;
			mfhi_D = 0;
		end
		6'b100100:begin
			beq = 0;
			extop = 1;
			jr = 0;
			//jal = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal = 0;
			mult_D = 0;
			mflo_D = 0;
			div_D = 0;
			mfhi_D = 0;
		end
		6'b100000:begin
			beq = 0;
			extop = 1;
			jr = 0;
			//jal = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal = 0;
			mult_D = 0;
			mflo_D = 0;
			div_D = 0;
			mfhi_D = 0;
		end
		
		default:begin
			//instr_E = 0;
			extop = 0;
			jr = 0;
			beq = 0;
			//jal = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal = 0;
			mult_D = 0;
			mflo_D = 0;
			div_D = 0;
			mfhi_D = 0;
		end
		endcase
	 end
	 
//assign jr=(op==6'b0&&func==6'b001000);

endmodule
