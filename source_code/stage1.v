module stage1(X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,
				  X24,X25,X26,X27,X28,X29,X30,X31,W0r,W0i,
				  OUT0r,OUT0i,OUT1r,OUT1i,OUT2r,OUT2i,OUT3r,OUT3i,OUT4r,OUT4i,OUT5r,OUT5i,OUT6r,OUT6i,
				  OUT7r,OUT7i,OUT8r,OUT8i,OUT9r,OUT9i,OUT10r,OUT10i,OUT11r,OUT11i,OUT12r,OUT12i,OUT13r,OUT13i,
				  OUT14r,OUT14i,OUT15r,OUT15i,OUT16r,OUT16i,OUT17r,OUT17i,OUT18r,OUT18i,OUT19r,OUT19i,OUT20r,
				  OUT20i,OUT21r,OUT21i,OUT22r,OUT22i,OUT23r,OUT23i,OUT24r,OUT24i,OUT25r,OUT25i,OUT26r,OUT26i,
				  OUT27r,OUT27i,OUT28r,OUT28i,OUT29r,OUT29i,OUT30r,OUT30i,OUT31r,OUT31i,clk_MAC,rst,count_reg,count,flag);
input wire clk_MAC,rst,flag;
input wire [2:0] count_reg,count;
input wire [7:0] X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,
				  X24,X25,X26,X27,X28,X29,X30,X31;
input wire [15:0] 	W0r,W0i;			  
					  
output wire [15:0] OUT0r,OUT0i,OUT1r,OUT1i,OUT2r,OUT2i,OUT3r,OUT3i,OUT4r,OUT4i,OUT5r,OUT5i,OUT6r,OUT6i,
						OUT7r,OUT7i,OUT8r,OUT8i,OUT9r,OUT9i,OUT10r,OUT10i,OUT11r,OUT11i,OUT12r,OUT12i,OUT13r,
						OUT13i,OUT14r,OUT14i,OUT15r,OUT15i,OUT16r,OUT16i,OUT17r,OUT17i,OUT18r,OUT18i,OUT19r,OUT19i,
						OUT20r,OUT20i,OUT21r,OUT21i,OUT22r,OUT22i,OUT23r,OUT23i,OUT24r,OUT24i,OUT25r,OUT25i,
						OUT26r,OUT26i,OUT27r,OUT27i,OUT28r,OUT28i,OUT29r,OUT29i,OUT30r,OUT30i,OUT31r,OUT31i;

Butter_fly BF0			(16'b0,{{2{X0[7]}},X0,6'b0},16'b0,{{2{X16[7]}},X16,6'b0},W0r,W0i,OUT0r,OUT0i,OUT1r,OUT1i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF1			(16'b0,{{2{X8[7]}},X8,6'b0},16'b0,{{2{X24[7]}},X24,6'b0},W0r,W0i,OUT2r,OUT2i,OUT3r,OUT3i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF2			(16'b0,{{2{X4[7]}},X4,6'b0},16'b0,{{2{X20[7]}},X20,6'b0},W0r,W0i,OUT4r,OUT4i,OUT5r,OUT5i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF3 		(16'b0,{{2{X12[7]}},X12,6'b0},16'b0,{{2{X28[7]}},X28,6'b0},W0r,W0i,OUT6r,OUT6i,OUT7r,OUT7i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF4			(16'b0,{{2{X2[7]}},X2,6'b0},16'b0,{{2{X18[7]}},X18,6'b0},W0r,W0i,OUT8r,OUT8i,OUT9r,OUT9i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF5			(16'b0,{{2{X10[7]}},X10,6'b0},16'b0,{{2{X26[7]}},X26,6'b0},W0r,W0i,OUT10r,OUT10i,OUT11r,OUT11i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF6			(16'b0,{{2{X6[7]}},X6,6'b0},16'b0,{{2{X22[7]}},X22,6'b0},W0r,W0i,OUT12r,OUT12i,OUT13r,OUT13i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF7			(16'b0,{{2{X14[7]}},X14,6'b0},16'b0,{{2{X30[7]}},X30,6'b0},W0r,W0i,OUT14r,OUT14i,OUT15r,OUT15i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF8			(16'b0,{{2{X1[7]}},X1,6'b0},16'b0,{{2{X17[7]}},X17,6'b0},W0r,W0i,OUT16r,OUT16i,OUT17r,OUT17i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF9			(16'b0,{{2{X9[7]}},X9,6'b0},16'b0,{{2{X25[7]}},X25,6'b0},W0r,W0i,OUT18r,OUT18i,OUT19r,OUT19i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF10		(16'b0,{{2{X5[7]}},X5,6'b0},16'b0,{{2{X21[7]}},X21,6'b0},W0r,W0i,OUT20r,OUT20i,OUT21r,OUT21i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF11		(16'b0,{{2{X13[7]}},X13,6'b0},16'b0,{{2{X29[7]}},X29,6'b0},W0r,W0i,OUT22r,OUT22i,OUT23r,OUT23i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF12		(16'b0,{{2{X3[7]}},X3,6'b0},16'b0,{{2{X19[7]}},X19,6'b0},W0r,W0i,OUT24r,OUT24i,OUT25r,OUT25i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF13		(16'b0,{{2{X11[7]}},X11,6'b0},16'b0,{{2{X27[7]}},X27,6'b0},W0r,W0i,OUT26r,OUT26i,OUT27r,OUT27i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF14		(16'b0,{{2{X7[7]}},X7,6'b0},16'b0,{{2{X23[7]}},X23,6'b0},W0r,W0i,OUT28r,OUT28i,OUT29r,OUT29i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF15		(16'b0,{{2{X15[7]}},X15,6'b0},16'b0,{{2{X31[7]}},X31,6'b0},W0r,W0i,OUT30r,OUT30i,OUT31r,OUT31i,clk_MAC,rst,count_reg,count,flag);


endmodule
