module finalProject( pcOut, clk, reset, romOut, offset, cout);
	input clk;
	input reset;
	
	wire selectPC;
	assign selectPC;
	
	
	wire [3:0] ALUop;
	wire regRW, ALUsrc, MRW,WB, PCsrc;
	wire [1:0] immSel;
	
	output [31:0] romOut;
	
	
	input [7:0] offset;
	output [7:0] pcOut;
	output cout;
	
	wire [4:0] rs1, rs2, rd;
	
	wire [31:0] ramMux, aluOut, ramOut;
	
	wire [31:0] regMux, immOut, regB, regA;

	lab7_PC pc_1 (pcOut, clk, reset, selectPC ,offset, cout);
	lab7_ROM rom_1 (romOut, pcOut);
	lab7_ID id_1 (romOut, rd, rs1, rs2);
	control_unit cu_1(romOut, immSel, regRW, ALUsrc, ALUop, MRW, WB, PCsrc);
	
	assign regMux = ALUsrc? immOut: regB;
	assign ramMux = WB? aluOut: ramOut;

	
	lab8_immGen imm_1 (romOut, immSel, immOut);
	
	
	lab3_combined reg_1 (rs1, regA, regB, rs2, regRW, reset, clk, ramMux, rsd);
	
	wire [3:0] status;
	lab4_combined alu_1 (regA, regB, ALUsrc, ALUOp, status, aluOut);
	
	
	lab5_top ram_1(aluOut, MRW, clk, regB, ramOut);
	
	
	

endmodule 
