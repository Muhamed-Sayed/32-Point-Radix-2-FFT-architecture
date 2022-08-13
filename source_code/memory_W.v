module memory_W(W0r,W1r,W2r,W3r,W4r,W5r,W6r,W7r,W8r,W9r,W10r,W11r,W12r,W13r,W14r,W15r,
					 W0i,W1i,W2i,W3i,W4i,W5i,W6i,W7i,W8i,W9i,W10i,W11i,W12i,W13i,W14i,W15i);

output wire [15:0] W0r,W1r,W2r,W3r,W4r,W5r,W6r,W7r,W8r,W9r,W10r,W11r,W12r,W13r,W14r,W15r;
output wire [15:0] W0i,W1i,W2i,W3i,W4i,W5i,W6i,W7i,W8i,W9i,W10i,W11i,W12i,W13i,W14i,W15i;
reg [15:0] rom_Wr [0:15];			
reg [15:0] rom_Wi [0:15];	

initial 
	begin
		$readmemb("rom_Wr.txt",rom_Wr);
		$readmemb("rom_Wi.txt",rom_Wi);
	end		  
	
assign W0r=  rom_Wr[0];
assign W1r=  rom_Wr[1];
assign W2r=  rom_Wr[2];
assign W3r=  rom_Wr[3];
assign W4r=  rom_Wr[4];
assign W5r=  rom_Wr[5];
assign W6r=  rom_Wr[6];
assign W7r=  rom_Wr[7];
assign W8r=  rom_Wr[8];
assign W9r=  rom_Wr[9];
assign W10r=  rom_Wr[10];
assign W11r=  rom_Wr[11];
assign W12r=  rom_Wr[12];
assign W13r=  rom_Wr[13];
assign W14r=  rom_Wr[14];
assign W15r=  rom_Wr[15];

assign W0i=  rom_Wi[0];
assign W1i=  rom_Wi[1];
assign W2i=  rom_Wi[2];
assign W3i=  rom_Wi[3];
assign W4i=  rom_Wi[4];
assign W5i=  rom_Wi[5];
assign W6i=  rom_Wi[6];
assign W7i=  rom_Wi[7];
assign W8i=  rom_Wi[8];
assign W9i=  rom_Wi[9];
assign W10i=  rom_Wi[10];
assign W11i=  rom_Wi[11];
assign W12i=  rom_Wi[12];
assign W13i=  rom_Wi[13];
assign W14i=  rom_Wi[14];
assign W15i=  rom_Wi[15];


endmodule
