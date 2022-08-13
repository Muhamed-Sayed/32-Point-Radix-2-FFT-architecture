module stage3(X0r,X0i,X1r,X1i,X2r,X2i,X3r,X3i,X4r,X4i,X5r,X5i,X6r,X6i,X7r,X7i,X8r,X8i,X9r,X9i,X10r,X10i,
				  X11r,X11i,X12r,X12i,X13r,X13i,X14r,X14i,X15r,X15i,X16r,X16i,X17r,X17i,X18r,X18i,X19r,X19i,
				  X20r,X20i,X21r,X21i,X22r,X22i,X23r,X23i,X24r,X24i,X25r,X25i,X26r,X26i,X27r,X27i,X28r,X28i,
				  X29r,X29i,X30r,X30i,X31r,X31i,
				  W0r,W0i,W4r,W4i,W8r,W8i,W12r,W12i,
				  OUT0r,OUT0i,OUT1r,OUT1i,OUT2r,OUT2i,OUT3r,OUT3i,OUT4r,OUT4i,OUT5r,OUT5i,OUT6r,OUT6i,
				  OUT7r,OUT7i,OUT8r,OUT8i,OUT9r,OUT9i,OUT10r,OUT10i,OUT11r,OUT11i,OUT12r,OUT12i,OUT13r,OUT13i,
				  OUT14r,OUT14i,OUT15r,OUT15i,OUT16r,OUT16i,OUT17r,OUT17i,OUT18r,OUT18i,OUT19r,OUT19i,OUT20r,
				  OUT20i,OUT21r,OUT21i,OUT22r,OUT22i,OUT23r,OUT23i,OUT24r,OUT24i,OUT25r,OUT25i,OUT26r,OUT26i,
				  OUT27r,OUT27i,OUT28r,OUT28i,OUT29r,OUT29i,OUT30r,OUT30i,OUT31r,OUT31i,clk_MAC,rst,count_reg,count,flag);

input wire clk_MAC,rst,flag;
input wire [2:0] count_reg,count;

input wire [15:0] X0r,X0i,X1r,X1i,X2r,X2i,X3r,X3i,X4r,X4i,X5r,X5i,X6r,X6i,X7r,X7i,X8r,X8i,X9r,X9i,X10r,X10i,
					  X11r,X11i,X12r,X12i,X13r,X13i,X14r,X14i,X15r,X15i,X16r,X16i,X17r,X17i,X18r,X18i,X19r,X19i,
					  X20r,X20i,X21r,X21i,X22r,X22i,X23r,X23i,X24r,X24i,X25r,X25i,X26r,X26i,X27r,X27i,X28r,X28i,
					  X29r,X29i,X30r,X30i,X31r,X31i,
					  W0r,W0i,W4r,W4i,W8r,W8i,W12r,W12i;
					  
output wire [15:0] OUT0r,OUT0i,OUT1r,OUT1i,OUT2r,OUT2i,OUT3r,OUT3i,OUT4r,OUT4i,OUT5r,OUT5i,OUT6r,OUT6i,
						OUT7r,OUT7i,OUT8r,OUT8i,OUT9r,OUT9i,OUT10r,OUT10i,OUT11r,OUT11i,OUT12r,OUT12i,OUT13r,
						OUT13i,OUT14r,OUT14i,OUT15r,OUT15i,OUT16r,OUT16i,OUT17r,OUT17i,OUT18r,OUT18i,OUT19r,OUT19i,
						OUT20r,OUT20i,OUT21r,OUT21i,OUT22r,OUT22i,OUT23r,OUT23i,OUT24r,OUT24i,OUT25r,OUT25i,
						OUT26r,OUT26i,OUT27r,OUT27i,OUT28r,OUT28i,OUT29r,OUT29i,OUT30r,OUT30i,OUT31r,OUT31i;

Butter_fly BF0 		(X0i,X0r,X4i,X4r,W0r,W0i,OUT0r,OUT0i,OUT4r,OUT4i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF1 		(X1i,X1r,X5i,X5r,W4r,W4i,OUT1r,OUT1i,OUT5r,OUT5i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF2 		(X2i,X2r,X6i,X6r,W8r,W8i,OUT2r,OUT2i,OUT6r,OUT6i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF3 		(X3i,X3r,X7i,X7r,W12r,W12i,OUT3r,OUT3i,OUT7r,OUT7i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF4 		(X8i,X8r,X12i,X12r,W0r,W0i,OUT8r,OUT8i,OUT12r,OUT12i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF5 		(X9i,X9r,X13i,X13r,W4r,W4i,OUT9r,OUT9i,OUT13r,OUT13i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF6 		(X10i,X10r,X14i,X14r,W8r,W8i,OUT10r,OUT10i,OUT14r,OUT14i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF7 		(X11i,X11r,X15i,X15r,W12r,W12i,OUT11r,OUT11i,OUT15r,OUT15i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF8 		(X16i,X16r,X20i,X20r,W0r,W0i,OUT16r,OUT16i,OUT20r,OUT20i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF9 		(X17i,X17r,X21i,X21r,W4r,W4i,OUT17r,OUT17i,OUT21r,OUT21i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF10 	(X18i,X18r,X22i,X22r,W8r,W8i,OUT18r,OUT18i,OUT22r,OUT22i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF11 	(X19i,X19r,X23i,X23r,W12r,W12i,OUT19r,OUT19i,OUT23r,OUT23i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF12 	(X24i,X24r,X28i,X28r,W0r,W0i,OUT24r,OUT24i,OUT28r,OUT28i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF13 	(X25i,X25r,X29i,X29r,W4r,W4i,OUT25r,OUT25i,OUT29r,OUT29i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF14 	(X26i,X26r,X30i,X30r,W8r,W8i,OUT26r,OUT26i,OUT30r,OUT30i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF15 	(X27i,X27r,X31i,X31r,W12r,W12i,OUT27r,OUT27i,OUT31r,OUT31i,clk_MAC,rst,count_reg,count,flag);

endmodule
