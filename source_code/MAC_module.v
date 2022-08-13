module MAC_module(in_B,in_W,in_A,clk_MAC,rst,count,flag,OUT1_R,OUT1_I,OUT2_R,OUT2_I);
input 	wire [15:0] in_B,in_W,in_A;
input 	wire 		  clk_MAC,rst,flag;
 input	wire [2:0] count;
output 	wire [15:0] OUT1_R,OUT1_I,OUT2_R,OUT2_I;

wire [15:0] out_mul,out_acc,out_Add_Sub;
wire ld_R,ld_I;

assign ld_R=count==1&&flag;
assign ld_I=count==3&&flag;


mult_FP #( .in_size(16),.frac_in(10),.frac_out(10),.int_out(5)) mult_FP(in_B, in_W,out_mul);

ADD_SUB ADD_SUB1 (out_acc,out_mul,count==1,out_Add_Sub);

accumolator_module acc (out_Add_Sub,in_A,clk_MAC,out_acc,(count[0]||count[2]),rst,OUT1_R,OUT1_I,OUT2_R,OUT2_I,ld_I,ld_R);

endmodule
