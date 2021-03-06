module lab8_immGen(in, select, out);
	input [31:0] in;
	input select;
	output reg [31:0] out;
	
	
	always @(select)
	begin
	case(in[31]) 

		1'b1: begin
			out [31:12] = 20'b11111111111111111111;
			out [11:0] = in[31:20];
		end
		
		1'b0: begin
			out [31:12] = 20'd0;
			out [11:0] = in[31:20];
		end
	endcase
	end
endmodule
		
	