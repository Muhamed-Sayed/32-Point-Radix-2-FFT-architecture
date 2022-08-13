module accumolator_module(in_BW,in_A,clk_MAC,out_accu,rst_signal,rst,OUT1_R,OUT1_I,OUT2_R,OUT2_I,Ld_I,Ld_R);

input wire clk_MAC,rst_signal,rst,Ld_I,Ld_R;
input wire [15:0] in_BW,in_A;
output reg [15:0] out_accu,OUT1_R,OUT1_I,OUT2_R,OUT2_I;

always @ (posedge clk_MAC or negedge rst)
	begin
		if(!rst)
			begin 
			out_accu<=0; OUT1_R<=0; OUT1_I<=0; OUT2_R<=0; OUT2_I<=0;end
		else
		 begin
			if (Ld_R)	
				begin OUT1_R<=in_A+in_BW; OUT2_R<=in_A-in_BW; out_accu<=0;  end
			else if (Ld_I)	
				begin OUT1_I<=in_A+in_BW; OUT2_I<=in_A-in_BW; out_accu<=0;  end	
			else if (rst_signal)
			out_accu<=0; 
			else
				begin out_accu<=in_BW; end
		 end	
	end

endmodule
