module counter(clk_MAC,counter,rst);
input wire clk_MAC,rst;
output reg [2:0] counter;
always @(posedge clk_MAC or negedge rst)
	begin
		if(!rst)
			begin counter<=0; end
		else if(counter==4)
			counter<=0;
		else	
			counter<=counter+3'b01;		
	end 

endmodule
