`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:03:07 01/03/2018 
// Design Name: 
// Module Name:    mips 
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
module mips(
	 input clk,
	 input reset
    );
	 wire [63:0] daboss;
	 wire [31:0] mux_pc_1,pcout_im_add4_1,code_jicunqi_2,pcchu_jicunqi_2,instr,instr_D,imm32,yi32,pcchu_D,addimm,data32_rs_E,data32_rt_E,instr_E,imm32_E,pcout_E,result_W,pcout_D,data1,data2,data_alu_M,ya_bijiaoqi,yb_bijiaoqi,pcout_M,ya_alu,yb_alu,data_alu_E,writedata_M,data_dm_M,instr_W,mux_alu,data_dm_W,data_alu_W,instr_M,pcout_W,pc_jal,result_W_W,pcchu_E,pcchu_M,pcchu_W,pcchu_D_D,result_W_W_W,jfq_pc,result_W_W_W_W,data_alu_M_D_E,yp,data_dmdm_W,DNA,loo_E,hii_E,lohi_E,lohi_M,lohi_W,dabs;
	 wire [15:0] imm16;
	 wire [4:0] rs,rt,rs_D,rt_D,rd_D,rtE,rdE,writereg_E,writereg_M,writereg_W,rsE,writereg_E_E,writereg_E_E_E,thhhh;
	 wire [3:0] aluop,beee;
	 wire beq,jr,extop,regdst_E,alusrc_E,regwrite_E,memtoreg_E,regwrite_W,bijiaoqi_out,yumen_pc,memwrite_M,regwrite_M,memtoreg_M,memtoreg_W,flush_E,stall_F_pc,stall_D_ce,stall_F,stall_D,jal_D,j,jal_W,jal_E,jalr_D,jalr_E,jalr_M,jalr_W,bgezal_D,ya_bijiaoqi_one,bgezalf,bgezal_E,bgezal_W,bgezal_M,jal_M,sb,sh,sw,lh,lhu,lb,lbu,lw,start,busy_E,mult_D,mflo_D,mflo_E,mflo_M,mflo_W,mult_M,mult_W,mult_E,div_D,div_E,div_M,div_W,mfhi_D,mfhi_E,mfhi_M,mfhi_W;
	 wire [1:0] forward_AD,forward_BD,forward_AE,forward_BE,alu_as;
	 wire [25:0] imm26;
	 
	 mux32_1_2 mux32_1_2(
	 .a(addimm),/////////////////////////////////��beq��pc+4+imm��
	 .b(pcchu_jicunqi_2),////////////////////////pc+4��pc���¡�
	 .pcjr(ya_bijiaoqi),////////////////////////��datars���ӡ�mux32_3_2������
	 .pcjal(pc_jal),//////////////////////////////����Ҫpc+4+signext��չ��
	 .pcj(pc_jal),///////////////////////////////����Ҫpc+4+signext��չ��
	 .pcjalr(ya_bijiaoqi),
	 .pcbgezal(addimm),//////////////////////////////��bgezal��pc+imm��yb
	 .bgezal(bgezalf),////////////////////////////��bgezal�źš�
	 .jr(jr),
	 .jal(jal_D),
	 .j(j),
	 .jalr(jalr_D),
	 .sel(yumen_pc),/////////////////////////////��beq�źš�
	 .c(mux_pc_1)///////////////////////////////��mux32_1_2�Ľ����
	 );
	 
	 pc_1 pc_1(
	 .clk(clk),
	 .reset(reset),
	 .en(stall_F_pc),
	 .pc(mux_pc_1),///////////////////////////////��mux32_1_2�Ľ����
	 .pcout(pcout_im_add4_1)   //////////////////�����ӵ�im�ϡ����ߡ����ӵ�add4_1�ϡ�
	 );
	 
	 im im(
	 .pc(pcout_im_add4_1),////////////////////////�����ӵ�im�ϡ����ߡ����ӵ�add4_1�ϡ�
	 .code(code_jicunqi_2)     
	 );
	 
	 add4_1 add4_1(
	 .pcout(pcout_im_add4_1),////////////////////�����ӵ�im�ϡ����ߡ����ӵ�add4_1�ϡ�
	 .pcchu(pcchu_jicunqi_2)    
	 );
	 
	 add4_3 add4_3(
	 .pcchuD(pcchu_D),////////////////////////////��pc+4��ֵ��
	 .pcchu_D_D(pcchu_D_D)////////////////////////��pc+8-----����E,M,W�Ĵ�����
	 );
	 
	 /*jiafaqi2 jiafaqi2(
	 .yiwei(imm32),////////signext(fu)
	 .pcpc(pcout_D),/////pc(fu)
	 .pcp(jfq_pc)////
	 );*/
	 
	 pinjie pinjie(
	 .pc(pcchu_D),
	 .imm26(imm26),
	 .c(pc_jal)////////////////////////////////////����Ҫpc+4+signext��չ��
	 );
	 
	 jicunqigai jicunqigai(///////////////////////////////////////////////////////////////////////..D
	 .clk(clk),
	 .clr(reset),
	 .en(stall_D_ce), 
	 .code(code_jicunqi_2),
	 .pcchu(pcchu_jicunqi_2),////////pc+4
	 .pcout(pcout_im_add4_1),////////pc
	 .instr(instr), 
	 .instr_D(instr_D),////////////////////////�����ӵ�fenweiqigai�ϡ��͡�control�ϡ�����������������������
	 .pcchu_D(pcchu_D),//////////////////////////�����ݵ�pc+4ֵ��
	 .pcout_D(pcout_D)//////////////////////////�����ݵ�pcֵ��
	 );
	 
	 /*jicunqi_2 jicunqi_2(
	 .clk(clk),
	 .clr(yumen_pc),
	 .en(stall_D_ce), //0
	 .code(code_jicunqi_2),
	 .pcchu(pcchu_jicunqi_2),
	 .pcout(pcout_im_add4_1),
	 .instr(instr),        
	 .pcchu_D(pcchu_D),
	 .pcout_D(pcout_D)
	 );*/
	 
	 fenweiqigai fenweiqigai(
	 .instr(instr_D),//////////////////////////�����ӵ�fenweiqigai�ϡ��͡�control�ϡ�����������������������
	 .rs(rs),
	 .rt(rt),
	 .rs_D(rs_D),
	 .rt_D(rt_D),
	 .rd_D(rd_D),
	 .imm16(imm16),
	 .sp(thhhh),
	 .imm26(imm26)
	 );
	 
	 control control(
	 .instr_D(instr_D),/////////////////////////�����ӵ�fenweiqigai�ϡ��͡�control�ϡ�����������������������
	 .beq(beq),
	 .jr(jr),
	 .extop(extop),   
	 .j(j),
	 .jalr_D(jalr_D),
	 .bgezal(bgezal_D),
	 .mult_D(mult_D),
	 .div_D(div_D),
	 .mflo_D(mflo_D),
	 .mfhi_D(mfhi_D),
	 .jal_D(jal_D)
	 );
	 
	 
	 regfile regfile(
	 .clk(clk),
	 .reset(reset),
	 .regwrite(regwrite_W),
	 .datars(rs),
	 .datart(rt),
	 .writerd(writereg_W),/////////////////��д��regfile�Ĵ�����------------ 
	 .writedata(result_W_W_W),//////////////��mux222--W(alu(output))or(dm(output)) or W(pc+8)��
	 .pcout_W(pcout_W),
	 .data1(data1),    
	 .data2(data2)     
	 );
	 
	 signext signext(
	 .imm16(imm16),
	 .extop(extop),
	 .imm32(imm32)      ////////////////////����������չ��...............
	 );                                                 // ...........
	                                                   //
	 zuoyi zuoyi(
	 .imm32(imm32),
	 .yi32(yi32)     ///////////////////////��������������
	 );
	 
	 add4_2 add4_2(
	 .yi32(yi32),
	 .pcout_D(pcchu_D),
	 .addimm(addimm)   //////////////////////��pc+4+signext<<2��  
	 );
	 
	 add_3 add_3(
	 .yiwei(yi32),
	 .pc(pcout_D),
	 .yp(yp)												//��bgezal����pc���¡�
	 );
	 
	 mux32_3_2 mux32_3_2(
	 .a(data1),////////////////////////��datars_D��
	 .b(result_W_W_W),///////////////////��mux222--W(alu(output))or(dm(output)) or W(pc+8)��
	 .c(data_alu_M_D_E),//////////////��mux10--M(alu)(output) or M(pc+8)��
	 .sel(forward_AD),////////////////��hushgai--AD��
	 .y(ya_bijiaoqi)       /////////��mux32_3_2�� �͡�mux32xin��  �����Ľ�����бȽ�                                 
	 );
	 
	 mux32xin mux32xin(
	 .a(data2),////////////////////////��datart_D��
	 .b(result_W_W_W),///////////////////��mux222--W(alu(output))or(dm(output)) or W(pc+8)��
	 .c(data_alu_M_D_E),//////////////��mux10--M(alu)(output) or M(pc+8)��
	 .sel(forward_BD),/////////////////��hushgai--BD��
	 .y(yb_bijiaoqi)        /////////////��mux32_3_2�� �͡�mux32xin��  �����Ľ�����бȽ� 
	 );
	 
	 bijiaoqi bijiaoqi(//////////////////�����߽��бȽϡ�
	 .a(ya_bijiaoqi),
	 .b(yb_bijiaoqi),
	 .c(bijiaoqi_out)     //////////////��mux32_3_2�� �͡�mux32xin��  �����Ľ�����бȽ� ���Ƚϵ�һλ��������
	 );
	 
	 bijiao bijiao(//////////////////////��������бȽϡ�
	 .datatwo(ya_bijiaoqi),//---------------------------��ָ��ıȽ��ж�---------------------------------------
	 .dataone(ya_bijiaoqi_one)//////////////////////////////////���Ƚϵ�һλ��������
	 );
	 
	 yumen yumen(//////////////////////////////���Ƚ��ź���ָ���ź����롿
	 .a(beq),
	 .b(bijiaoqi_out),///////////////////////////////////////////���Ƚϵ�һλ��������
	 .c(yumen_pc)       //��������һ��mux��///////////////��beq�źź�bijiaoqi�����Ľ�������룬��ͬ�����Ƿ���ת����pc��
	 );
	 
	 yumen44 yumen44(
	 .a(ya_bijiaoqi_one),///////////////////////////////////////���Ƚϵ�һλ��������
	 .b(bgezal_D),
	 .c(bgezalf)//--------��������һ��mux��--------------��ָ��������ж�---------------------------------------
	 );
	 
	 jicunqi_E jicunqi_E(
	 .instr_D(instr_D),
	 .data32rs_D(ya_bijiaoqi),//////////////D������·ѡ�����������
	 .data32rt_D(yb_bijiaoqi),//////////////
	 .pcout_D(pcout_D),
	 .rsD(rs_D),
	 .rtD(rt_D),
	 .rdD(rd_D),
	 .pcchu_D(pcchu_D_D),  ///////////////////////////////��pc+8-----����E,M,W�Ĵ�����                                  
	 .imm32_D(imm32),
	 .clk(clk),
	 .clr(flush_E),
	 .rsE(rsE),     
	 .rtE(rtE),
	 .rdE(rdE),
	 .s(thhhh),
	 .data32_rs_E(data32_rs_E),
	 .data32_rt_E(data32_rt_E),
	 .instr_E(instr_E),
	 .imm32_E(imm32_E),
	 .ss(thhhh),
	 .pcout_E(pcout_E),//////////////////////////////////�����ݵ�pcֵ��
	 .pcchu_E(pcchu_E) ///////////////////////////////////�����ݵ�pc+8ֵ�� 
	 );
	 
	 yimaqi_E yimaqi_E(
	 .instr_E(instr_E),
	 .regdst_E(regdst_E),
	 .alusrc_E(alusrc_E),
	 .aluop(aluop),
	 .regwrite_E(regwrite_E),
	 .memtoreg_E(memtoreg_E),
	 .jal_E(jal_E),
	 .jalr_E(jalr_E),
	 .mult_E(mult_E),
	 .start(start),
	 .mflo_E(mflo_E),
	 .mfhi_E(mfhi_E),
	 .div_E(div_E),
	 .bgezal(bgezal_E)
	 );
	 
	 mux32_xin mux32_xin(
	 .a(rdE),
	 .b(rtE),
	 .sel(regdst_E),//////////////////////ѡ��д��rd�Ĵ������������Ĵ���ֵ��ע����ָ���д��Ĵ�����
	 .c(writereg_E)     
	 );
	 
	 mux32_2 mux32_2(
	 .a(31),
	 .b(writereg_E),
	 .sel(jal_E||bgezal_E),///////////////ѡ��д��31�żĴ������������Ĵ���ֵ��jal-bgezal��
	 .c(writereg_E_E)//////////////////////��ѡ���źŽ�M����ˮ�Ĵ���������������������������������������
	 );
	 
	 /*mux32_4 mux32_4(
	 .a(31),
	 .b(writereg_E_E),
	 .sel(bgezal_E),
	 .c(writereg_E_E_E)
	 );*/
	 
	 mux32_3_2_3 mux32_3_2_3(
	 .a(data32_rs_E),///////////////��datars_E��
	 .b(result_W_W_W),////////////////��mux222--W(alu(output))or(dm(output)) or W(pc+8)��
	 .c(data_alu_M_D_E),////////////��mux10--M(alu)(output) or M(pc+8)��
	 .sel(forward_AE),///////////////��hushgai--AE��
	 .y(ya_alu)   //0
	 );
	 
	 mux32_3_2_4 mux32_3_2_4(
	 .a(data32_rt_E),////////////////��datart_E��
	 .b(result_W_W_W),/////////////////��mux222--W(alu(output))or(dm(output)) or W(pc+8)��
	 .c(data_alu_M_D_E),////////////��mux10--M(alu)(output) or M(pc+8)��
	 .sel(forward_BE),///////////////��hushgai--BE��
	 .y(yb_alu)   //0
	 );
	 
	 mux32_2_2 mux32_2_2(
	 .a(imm32_E),
	 .b(yb_alu),
	 .sel(alusrc_E),/////////////////��ѡ������������R�͡���ѡ������alu��
	 .c(mux_alu)   
	 );
	 
	 alu alu(
	 .data1_E(ya_alu),
	 .data2_E(mux_alu),///////////////////////////////��ѡ������alu��
	 .aluop(aluop),
	 .s(thhhh),
	 .Instr(instr_E),
	 .data_alu_E(data_alu_E)  
	 );
	 
	 cmd4 cmd4(
	 .data1(ya_alu),
	 .data2(mux_alu),
	 .start(start),
	 .clk(clk),
	 .mult_E(mult_E),
	 .div_E(div_E),
	 .busy(busy_E),
	 .lo(loo_E),
	 .hi(hii_E),
	 .daboss(daboss),
	 .dabs(dabs)
	 );
	 
	 /*mux2345 mux2345(
	 .a(loo_E),
	 .b(hii_E),
	 .sel(mfhi_E),
	 .c(lohi_E)
	 );*/
	 
	 /*cmd cmd(
	 .data1(ya_alu),
	 .data2(mux_alu),
	 .start(start),
	 .clk(clk),
	 .busy(busy_E),
	 .lo(loo_E),
	 .hi(hii_E),
	 .daboss(daboss)
	 );*/
	 /*cc cc(
	 .data1(ya_alu),
    .data2(mux_alu),
    .start(start),
    .clk(clk),
	 .regwrite(regwrite_W),
    .busy(busy_E),
	 .loo(loo_E),
	 .hii(hii_E),
	 .daboss(daboss)
	 );*/
	 
	 mux2333 mux2333(
	 .a(hii_E),
	 .b(loo_E),
	 .sel(mfhi_E),
	 .c(lohi_E)
	 );
	 
	 jicunqi_M jicunqi_M(
	 .instr_E(instr_E),
	 .data_alu_E(data_alu_E),
	 .writedata_E(yb_alu),
	 .pcout_E(pcout_E),////////////////////////////////�����ݵ�pcֵ��
	 .pcchu_E(pcchu_E),    ///////////////////////////////�����ݵ�pc+8ֵ��                             
	 .writereg_E(writereg_E_E),//////////////////////��ѡ���źŽ�M����ˮ�Ĵ���������������������
	 //.alu_m(),
	 .clk(clk),
	 .reset(reset),
	 .hilo_E(lohi_E),
	 .instr_M(instr_M),            
	 .data_alu_M(data_alu_M),
	 .writedata_M(writedata_M),
	 .writereg_M(writereg_M),//////////////////////////��д��W�Ĵ�����------------
	 .pcout_M(pcout_M),
	 .hilo_M(lohi_M),
	 //.alu_w(),
	 .pcchu_M(pcchu_M)            
	 );
	 
	 mux10 mux10(
	 .a(pcchu_M),///////////////////pc+8��M����
	 .b(data_alu_M),////////////////alu������
	 .sel(jal_M||bgezal_M||jalr_M),///////////////////��Ҫpc+8ת���Ŀ����ź�
	 .c(data_alu_M_D_E)////M��ת��----�ĸ���·ѡ����--D��mux32_3_2���͡�mux32xin��--E�� mux32_3_2_3���͡�mux32_3_2_4��
	 );
	 
	 be be(
	 .alu_two(data_alu_M),
	 .sw(sw),
	 .sh(sh),
	 .sb(sb),
	 .bee(beee)
	 );
	 
	 zhzh zhzh(
	 .memwrite_M(memwrite_M),
	 .writedata_M(writedata_M),
	 .bet(beee),
	 .data_dm_M(DNA)
	 );
	 
	 /*dmdm dmdm(
	 .clk(clk),
	 .reset(reset),
	 .memwrite_M(memwrite_M),
	 .data_alu_M(data_alu_M),
	 .writedata_M(writedata_M),
	 .pcout_M(pcout_M),
	 .bet(beee),
	 .data_dm_M(data_dm_M)
	 );*/
	 
	 dmgai dmgai(
	 .clk(clk),
	 .reset(reset),
	 .memwrite_M(memwrite_M),
	 .data_alu_M(data_alu_M),
	 .writedata_M(DNA),//writedata_M
	 .pcout_M(pcout_M),
	 .data_dm_M(data_dm_M)  
	 );
	 
	 yimaqi_M yimaqi_M(
	 .instr_E(instr_M),
	 .jal_M(jal_M),
	 .jalr_M(jalr_M),
	 .mult_M(mult_M),
	 .div_M(div_M),
	 .mflo_M(mflo_M),
	 .mfhi_M(mfhi_M),
	 .bgezal(bgezal_M),
	 .sb(sb),
	 .sh(sh),
	 .sw(sw),
	 .memwrite_M(memwrite_M),  
	 .regwrite_M(regwrite_M),
	 .memtoreg_M(memtoreg_M)
	 );
	 
	 yimaqi_W yimaqi_W(
	 .instr_W(instr_W),
	 .memtoreg_W(memtoreg_W),
	 .regwrite_W(regwrite_W),
	 .jal_W(jal_W),
	 .jalr_W(jalr_W),
	 .mult_W(mult_W),
	 .div_W(div_W),
	 .mflo_W(mflo_W),
	 .mfhi_W(mfhi_W),
	 .lb(lb),
	 .lbu(lbu),
	 .lh(lh),
	 .lhu(lhu),
	 .lw(lw),
	 .bgezal(bgezal_W)
	 );
	 
	 jicunqi_W jicunqi_W(
	 .instr_M(instr_M),
	 .data_dm_M(data_dm_M),
	 .data_alu_M(data_alu_M),
	 .pcchu_M(pcchu_M),    /////////////////////////////// �����ݵ�pc+8ֵ��                       
	 .writereg_M(writereg_M),//////////////////////////////��д��W�Ĵ�����------------
	 .pcout_M(pcout_M),/////////////////////////////////////�����ݵ�pcֵ��
	 .alu_m(data_alu_M),
	 .clk(clk),
	 .reset(reset),
	 .hilo_M(lohi_M),
	 .instr_W(instr_W),
	 .data_dm_W(data_dm_W),
	 .data_alu_W(data_alu_W),
	 .writereg_W(writereg_W), //////////////////////////////��д��regfile�Ĵ�����------------  
	 .pcout_W(pcout_W),
	 .alu_w(alu_as),
	 .hilo_W(lohi_W),
	 .pcchu_W(pcchu_W)                 
	 );
	 
	 home home(
	 .alu_f(alu_as),
	 .dmdm(data_dm_W),
	 .lw(lw),
	 .lh(lh),
	 .lhu(lhu),
	 .lb(lb),
	 .lbu(lbu),
	 .dmdm_mux(data_dmdm_W)
	 );
	 
	 mux32_2_5 mux32_2_5(
	 .a(data_dmdm_W),
	 .b(data_alu_W),
	 .sel(memtoreg_W),
	 .c(result_W)
	 );                    
	 
	 mux222 mux222(
	 .a(pcchu_W),///////////////////////��W��pc+8��
	 .b(result_W),
	 .sel(jal_W||jalr_W||bgezal_W),//////��pc+8�Ŀ����ź�--��pc+8д��Ĵ������źš�
	 .c(result_W_W)////W��ת��----�ĸ���·ѡ����--D��mux32_3_2���͡�mux32xin��--E�� mux32_3_2_3���͡�mux32_3_2_4��
	 );
	 
	 mux2233 mux2233(
	 .a(lohi_W),
	 .b(result_W_W),
	 .sel(mflo_W||mfhi_W),
	 .c(result_W_W_W)
	 );
	 
	 /*mux2222 mux2222(
	 .a(pcchu_W),
	 .b(result_W_W),
	 .sel(jalr_W),
	 .c(result_W_W_W)
	 );*/
	 
	 /*mux22222 mux22222(
	 .a(pcchu_W),////////////////pc+8����pc+12?(ָ��ı����ǽ�pc+8д��31�żĴ�����)
	 .b(result_W_W_W),
	 .sel(bgezal_W),
	 .c(result_W_W_W_W)
	 );*/
	 
	 hushgai hushgai(
	 .rs_E(rsE),
	 .rt_E(rtE),
	 .jal_E(jal_E),
	 .jr(jr),
	 .jalr_D(jalr_D),
	 .jalr_E(jalr_E),
	 .bgezal_D(bgezal_D),
	 .bgezal_E(bgezal_E),
	 .writereg_M(writereg_M),
	 .writereg_E_E(writereg_E_E),
	 .writereg_W(writereg_W),
	 .regwrite_E(regwrite_E),
	 .regwrite_M(regwrite_M),
	 .regwrite_W(regwrite_W),
	 .memtoreg_E(memtoreg_E),
	 .memtoreg_M(memtoreg_M),
	 .rs_D(rs_D),
	 .rt_D(rt_D),
	 .branch_D(beq),
	 .mult_D(mult_D),
	 .busy(busy_E),
	 .start(start),
	 .mflo_E(mflo_E),
	 .mfhi_E(mfhi_E),
	 .flush_E(flush_E),    
	 .forward_AD(forward_AD),
	 .forward_BD(forward_BD),
	 .forward_AE(forward_AE),
	 .forward_BE(forward_BE),
	 .stall_F(stall_F),
	 .stall_D(stall_D)
	 );
	 
	 feimen feimen(
	 .a(stall_F),
	 .b(stall_F_pc)  
	 );
	  
	 feimen2 feimen2(
	 .a(stall_D),
	 .b(stall_D_ce)  
	 );
 

endmodule 
