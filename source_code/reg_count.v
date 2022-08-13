module reg_count(in,out,clk_MAC,flag,rst);
input wire clk_MAC,rst;
input wire [2:0] in;
output reg [2:0] out;
output reg flag;

always @(posedge clk_MAC or negedge rst)
begin
	if(!rst)
		out<=0;
	else
		begin
		if(in==1)
			flag<=1;
		out<=in;
		end
end

endmodule
