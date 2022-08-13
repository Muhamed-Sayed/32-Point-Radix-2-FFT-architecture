module mult_FP #(parameter in_size=16,frac_in=10,frac_out=10,int_out=5)(A, B,out);
localparam size_out=frac_out+int_out+1;
	input 	wire signed [in_size-1:0] A;
	input    wire signed	[in_size-1:0] B;
	output   wire signed	[size_out-1:0] out;
	
wire sign,zero_flag;
wire [2*in_size-1:0] frac_temp;

assign frac_temp=A*B;
assign sign= zero_flag&&(A[in_size-1]^B[in_size-1]);
assign zero_flag=(|A[in_size-2:0])&&(|B[in_size-2:0]);
assign out={sign,frac_temp[(frac_in*2-1)+int_out:(frac_in*2-1)+int_out-(size_out-2)]};
//assign out=A*B;
endmodule 
