module control_unit(in, immSel, regRW, ALUsrc, ALUop, MRW, WB, PCsrc);
	input [31:0] in;
	output reg regRW;
	output reg ALUsrc;
	output reg MRW;
	output reg WB;
	output reg PCsrc;
	output reg [1:0] immSel;
	output reg [3:0] ALUop;
	
	always @(in)
	begin
		case (in)
			
			32'h00450693: begin
				regRW= 1'b1;
				ALUsrc=1'b0;
				MRW=1'b0;
				WB=1'b0;
				PCsrc=1'b0;
				immSel= 2'b01;
				ALUop= 4'b0010;
			end
			
			32'h00100713: begin 
				regRW= 1'b1;
				ALUsrc=1'b0;
				MRW=1'b0;
				WB=1'b0;
				PCsrc=1'b0;
				immSel= 2'b01;
				ALUop= 4'b0010;
			end
			
			32'h00b76463: begin
				regRW= 1'b0;
				ALUsrc=1'b0;
				MRW=1'b0;
				WB=1'b0;
				PCsrc=1'b0;
				immSel= 2'b00;
				ALUop= 4'b0001;
			end
			
			32'h00008067: begin 
				regRW= 1'b0;
				ALUsrc=1'b0;
				MRW=1'b0;
				WB=1'b0;
				PCsrc=1'b1;
				immSel= 2'b00;
				ALUop= 4'b0000;
			end
			
			32'h0006a803: begin 
				regRW= 1'b1;
				ALUsrc=1'b1;
				MRW=1'b0;
				WB=1'b1;
				PCsrc=1'b0;
				immSel= 2'b00;
				ALUop= 4'b0000;
			end
			
			32'h00068613: begin 
				regRW= 1'b1;
				ALUsrc=1'b0;
				MRW=1'b0;
				WB=1'b0;
				PCsrc=1'b0;
				immSel= 2'b01;
				ALUop= 4'b0010;
			end
			
			32'h00070793: begin 
				regRW= 1'b1;
				ALUsrc=1'b0;
				MRW=1'b0;
				WB=1'b0;
				PCsrc=1'b0;
				immSel= 2'b01;
				ALUop= 4'b0010;
			end
			
			32'hffc62883: begin 
				regRW= 1'b1;
				ALUsrc=1'b1;
				MRW=1'b0;
				WB=1'b1;
				PCsrc=1'b0;
				immSel= 2'b00;
				ALUop= 4'b0000;
			end
			
			32'h01185a63: begin
				regRW= 1'b0;
				ALUsrc=1'b0;
				MRW=1'b0;
				WB=1'b0;
				PCsrc=1'b0;
				immSel= 2'b00;
				ALUop= 4'b0001;
			end
			
			32'h01162023: begin 
				regRW= 1'b0;
				ALUsrc=1'b1;
				MRW=1'b1;
				WB=1'b0;
				PCsrc=1'b0;
				immSel= 2'b00;
				ALUop= 4'b0000;
			end
			
			32'hfff78793: begin 
				regRW= 1'b1;
				ALUsrc=1'b0;
				MRW=1'b0;
				WB=1'b0;
				PCsrc=1'b0;
				immSel= 2'b01;
				ALUop= 4'b0010;
			end
			
			32'hffc60613: begin 
				regRW= 1'b1;
				ALUsrc=1'b0;
				MRW=1'b0;
				WB=1'b0;
				PCsrc=1'b0;
				immSel= 2'b01;
				ALUop= 4'b0010;
			end
			
			32'hfe0796e3: begin
				regRW= 1'b0;
				ALUsrc=1'b0;
				MRW=1'b0;
				WB=1'b0;
				PCsrc=1'b0;
				immSel= 2'b00;
				ALUop= 4'b0001;
			end
			
			32'h00279793: begin 
				regRW= 1'b1;
				ALUsrc=1'b0;
				MRW=1'b0;
				WB=1'b0;
				PCsrc=1'b0;
				immSel= 2'b01;
				ALUop= 4'b0010;
			end
			
			32'h00f507b3: begin 
				regRW= 1'b1;
				ALUsrc=1'b0;
				MRW=1'b0;
				WB=1'b0;
				PCsrc=1'b0;
				immSel= 2'b00;
				ALUop= 4'b0010;
			end 
			
			32'h0107a023: begin 
				regRW= 1'b0;
				ALUsrc=1'b1;
				MRW=1'b1;
				WB=1'b0;
				PCsrc=1'b0;
				immSel= 2'b00;
				ALUop= 4'b0000;
			end
			
			32'h00170713: begin 
				regRW= 1'b1;
				ALUsrc=1'b0;
				MRW=1'b0;
				WB=1'b0;
				PCsrc=1'b0;
				immSel= 2'b01;
				ALUop= 4'b0010;
			end
			
			32'h00468693: begin 
				regRW= 1'b1;
				ALUsrc=1'b0;
				MRW=1'b0;
				WB=1'b0;
				PCsrc=1'b0;
				immSel= 2'b01;
				ALUop= 4'b0010;
			end
			
			32'hfc1ff06f: begin 
				regRW= 1'b0;
				ALUsrc=1'b0;
				MRW=1'b0;
				WB=1'b0;
				PCsrc=1'b1;
				immSel= 2'b00;
				ALUop= 4'b0000;
			end
	
		endcase
	end
endmodule
