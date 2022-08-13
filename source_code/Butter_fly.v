module Butter_fly(Ai,Ar,Bi,Br,Wr,Wi,OUT1_R,OUT1_I,OUT2_R,OUT2_I,clk_MAC,rst,count_reg,count,flag);
input wire clk_MAC,rst;
input wire [15:0] Ai,Ar,Bi,Br,Wr,Wi;
input wire [2:0] count_reg,count;
input wire flag;
output wire [15:0] OUT1_R,OUT1_I,OUT2_R,OUT2_I;

wire [15:0] mux_W,mux_B,mux_A;

assign mux_B= (!count[0]) ? Bi : Br;
assign mux_W= (count_reg==0||count_reg==3) ? Wr : Wi;
assign mux_A= (!count[1]) ? Ai : Ar;

//counter counter(clk_MAC,count,rst);

MAC_module MAC1 (mux_B,mux_W,mux_A,clk_MAC,rst,count_reg,flag,OUT1_R,OUT1_I,OUT2_R,OUT2_I);

//reg_count reg_count(count,count_reg,clk_MAC,flag,rst);

endmodule
