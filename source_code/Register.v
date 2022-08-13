module Register #(parameter size=8)(inr,ini,outr,outi,clk,rst);
input wire clk,rst;
input wire [size-1:0] inr,ini;
output reg [size-1:0] outr,outi;


always @ (posedge clk or negedge rst)
	begin
		if(!rst)
			begin outr<=0; outi<=0; end
		else
			begin
				outr<=inr;
				outi<=ini;
			end
	end
endmodule
