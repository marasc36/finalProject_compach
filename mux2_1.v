module mux2_2(in1,in2,sel,out);
	input [7:0] in1,in2;
	input sel;
	output [7:0] out;
	
	assign out= sel?in1:in2; //sel=1,out=in1
endmodule
