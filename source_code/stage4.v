module stage4(X0r,X0i,X1r,X1i,X2r,X2i,X3r,X3i,X4r,X4i,X5r,X5i,X6r,X6i,X7r,X7i,X8r,X8i,X9r,X9i,X10r,X10i,
				  X11r,X11i,X12r,X12i,X13r,X13i,X14r,X14i,X15r,X15i,X16r,X16i,X17r,X17i,X18r,X18i,X19r,X19i,
				  X20r,X20i,X21r,X21i,X22r,X22i,X23r,X23i,X24r,X24i,X25r,X25i,X26r,X26i,X27r,X27i,X28r,X28i,
				  X29r,X29i,X30r,X30i,X31r,X31i,
				  W0r,W0i,W2r,W2i,W4r,W4i,W6r,W6i,W8r,W8i,W10r,W10i,W12r,W12i,W14r,W14i,
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
					  W0r,W0i,W2r,W2i,W4r,W4i,W6r,W6i,W8r,W8i,W10r,W10i,W12r,W12i,W14r,W14i;
					  
output wire [15:0] OUT0r,OUT0i,OUT1r,OUT1i,OUT2r,OUT2i,OUT3r,OUT3i,OUT4r,OUT4i,OUT5r,OUT5i,OUT6r,OUT6i,
						OUT7r,OUT7i,OUT8r,OUT8i,OUT9r,OUT9i,OUT10r,OUT10i,OUT11r,OUT11i,OUT12r,OUT12i,OUT13r,
						OUT13i,OUT14r,OUT14i,OUT15r,OUT15i,OUT16r,OUT16i,OUT17r,OUT17i,OUT18r,OUT18i,OUT19r,OUT19i,
						OUT20r,OUT20i,OUT21r,OUT21i,OUT22r,OUT22i,OUT23r,OUT23i,OUT24r,OUT24i,OUT25r,OUT25i,
						OUT26r,OUT26i,OUT27r,OUT27i,OUT28r,OUT28i,OUT29r,OUT29i,OUT30r,OUT30i,OUT31r,OUT31i;

Butter_fly BF0 		(X0i,X0r,X8i,X8r,W0r,W0i,OUT0r,OUT0i,OUT8r,OUT8i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF1 		(X1i,X1r,X9i,X9r,W2r,W2i,OUT1r,OUT1i,OUT9r,OUT9i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF2 		(X2i,X2r,X10i,X10r,W4r,W4i,OUT2r,OUT2i,OUT10r,OUT10i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF3 		(X3i,X3r,X11i,X11r,W6r,W6i,OUT3r,OUT3i,OUT11r,OUT11i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF4 		(X4i,X4r,X12i,X12r,W8r,W8i,OUT4r,OUT4i,OUT12r,OUT12i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF5 		(X5i,X5r,X13i,X13r,W10r,W10i,OUT5r,OUT5i,OUT13r,OUT13i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF6 		(X6i,X6r,X14i,X14r,W12r,W12i,OUT6r,OUT6i,OUT14r,OUT14i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF7 		(X7i,X7r,X15i,X15r,W14r,W14i,OUT7r,OUT7i,OUT15r,OUT15i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF8 		(X16i,X16r,X24i,X24r,W0r,W0i,OUT16r,OUT16i,OUT24r,OUT24i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF9 		(X17i,X17r,X25i,X25r,W2r,W2i,OUT17r,OUT17i,OUT25r,OUT25i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF10 	(X18i,X18r,X26i,X26r,W4r,W4i,OUT18r,OUT18i,OUT26r,OUT26i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF11 	(X19i,X19r,X27i,X27r,W6r,W6i,OUT19r,OUT19i,OUT27r,OUT27i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF12 	(X20i,X20r,X28i,X28r,W8r,W8i,OUT20r,OUT20i,OUT28r,OUT28i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF13 	(X21i,X21r,X29i,X29r,W10r,W10i,OUT21r,OUT21i,OUT29r,OUT29i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF14 	(X22i,X22r,X30i,X30r,W12r,W12i,OUT22r,OUT22i,OUT30r,OUT30i,clk_MAC,rst,count_reg,count,flag);
Butter_fly BF15 	(X23i,X23r,X31i,X31r,W14r,W14i,OUT23r,OUT23i,OUT31r,OUT31i,clk_MAC,rst,count_reg,count,flag);

endmodule
