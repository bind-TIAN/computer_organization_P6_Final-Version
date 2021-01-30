`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:04:13 01/02/2018 
// Design Name: 
// Module Name:    hushgai 
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
module hushgai(
    input [4:0] rs_E,
    input [4:0] rt_E,
    input [4:0] writereg_M,
    input [4:0] writereg_W,
	 input [4:0] writereg_E_E,
    input regwrite_E,
    input regwrite_M,
    input regwrite_W,
    input memtoreg_E,
    input memtoreg_M,
    input [4:0] rs_D,
    input [4:0] rt_D,
    input branch_D,
	 input jal_E,
	 input jr,
	 input jalr_D,
	 input jalr_E,
	 input bgezal_D,
	 input bgezal_E,
	 input mult_D,
	 input busy,
	 input start,
	 input mflo_E,
	 input mfhi_E,
    output flush_E,
    output [1:0] forward_AD,
    output [1:0] forward_BD,
	 output [1:0] forward_AE,
    output [1:0] forward_BE,
	 output stall_F,
    output stall_D
	 );
	 assign forward_AE = (regwrite_M&&(rs_E==writereg_M)&&(writereg_M!=0))? 2'b10 : //writereg_M
								(regwrite_W&&(rs_E==writereg_W)&&(writereg_W!=0))? 2'b01 : 2'b00;
	 assign forward_BE = (regwrite_M&&(rt_E==writereg_M)&&(writereg_M!=0))? 2'b10 : 
								(regwrite_W&&(rt_E==writereg_W)&&(writereg_W!=0))? 2'b01 : 2'b00;	
	 assign forward_AD = (regwrite_M&&(rs_D==writereg_M)&&(writereg_M!=0))? 2'b10 : 
								(regwrite_W&&(rs_D==writereg_W)&&(writereg_W!=0))? 2'b01 : 2'b00;
	 assign forward_BD = (regwrite_M&&(rt_D==writereg_M)&&(writereg_M!=0))? 2'b10 : 
								(regwrite_W&&(rt_D==writereg_W)&&(writereg_W!=0))? 2'b01 : 2'b00;
	 assign lw_stall = (memtoreg_E&&((writereg_E_E==rt_D&&rt_D!=0)||(writereg_E_E==rs_D&&rs_D!=0)))? 1:0;
	 assign jal_stall = ((jalr_E||jal_E)&&((writereg_E_E==rt_D&&rt_D!=0) ||(writereg_E_E==rs_D&&rs_D!=0)))?1:0;
	 assign branch_stall = ((branch_D&&regwrite_E&&((writereg_E_E==rs_D&&rs_D!=0)||(writereg_E_E==rt_D&&rt_D!=0)))||(branch_D&&memtoreg_M&&((writereg_M==rs_D&&rs_D!=0)||(writereg_M==rt_D&&rt_D!=0))))?1:0;
	 assign jr_stall = (((jr||jalr_D)&&regwrite_E&&((writereg_E_E==rs_D&&rs_D!=0)||(writereg_E_E==rt_D&&rt_D!=0)))||((jr||jalr_D)&&memtoreg_M&&((writereg_M==rs_D&&rs_D!=0)||(writereg_M==rt_D&&rt_D!=0))))?1:0;////D,jr
	 assign stall_F = ((mfhi_E)||(mflo_E)||(start)||(busy)||(lw_stall) || (branch_stall)||(jal_stall)||jr_stall)?1:0;///||jr_stall
	 assign stall_D = ((mfhi_E)||(mflo_E)||(start)||(busy)||(lw_stall) || (branch_stall)||(jal_stall)||jr_stall)?1:0;
	 assign flush_E =  ((mfhi_E)||(mflo_E)||(start)||(busy)||(lw_stall) ||(jal_stall)||(jr_stall)||(branch_stall))?1:0;//�����branch���ȥ���������
	 //assign jalr_stall = ((jalr&&regwrite_E&&((writereg_E==rs_D&&rs_D!=0)||(writereg_E==rt_D&&rt_D!=0)))||(jalr&&memtoreg_M&&((writereg_M==rs_D&&rs_D!=0)||(writereg_M==rt_D&&rt_D!=0))))?1:0;
	 //assign bgezal_stall = (((bgezal_D&&regwrite_E&&((writereg_E_E==rs_D&&rs_D!=0)||(writereg_E_E==rt_D&&rt_D!=0)))||(bgezal_D&&memtoreg_M&&((writereg_M==rs_D&&rs_D!=0)||(writereg_M==rt_D&&rt_D!=0))))||(bgezal_E&&((writereg_E_E==rt_D&&rt_D!=0) ||(writereg_E_E==rs_D&&rs_D!=0))))?1:0;
	 
	 


endmodule

