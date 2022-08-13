`timescale 1ns / 1ps

module FFT_TB;
////////////////////PARAMETERS AND SIGNALS DECLARATION///////////////////////////
	// Inputs
	reg [7:0] X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,
				 X24,X25,X26,X27,X28,X29,X30,X31;
	reg clk,clk_MAC,rst;

	// Outputs
	wire [15:0] S5_OUT0r,S5_OUT0i,S5_OUT1r,S5_OUT1i,S5_OUT2r,S5_OUT2i,S5_OUT3r,S5_OUT3i,S5_OUT4r,
				  S5_OUT4i,S5_OUT5r,S5_OUT5i,S5_OUT6r,S5_OUT6i,S5_OUT7r,S5_OUT7i,S5_OUT8r,S5_OUT8i,
				  S5_OUT9r,S5_OUT9i,S5_OUT10r,S5_OUT10i,S5_OUT11r,S5_OUT11i,S5_OUT12r,S5_OUT12i,
				  S5_OUT13r,S5_OUT13i,S5_OUT14r,S5_OUT14i,S5_OUT15r,S5_OUT15i,S5_OUT16r,S5_OUT16i,
				  S5_OUT17r,S5_OUT17i,S5_OUT18r,S5_OUT18i,S5_OUT19r,S5_OUT19i,S5_OUT20r,S5_OUT20i,
				  S5_OUT21r,S5_OUT21i,S5_OUT22r,S5_OUT22i,S5_OUT23r,S5_OUT23i,S5_OUT24r,S5_OUT24i,
				  S5_OUT25r,S5_OUT25i,S5_OUT26r,S5_OUT26i,S5_OUT27r,S5_OUT27i,S5_OUT28r,S5_OUT28i,
				  S5_OUT29r,S5_OUT29i,S5_OUT30r,S5_OUT30i,S5_OUT31r,S5_OUT31i;

	//clock parameters
	parameter pipeline_period =50;
	parameter MAC_period =10;
	
	/////////////// Instantiate the Unit Under Test (UUT)/////////////////
	FFT_module uut (
		.X0(X0), .X1(X1), .X2(X2), .X3(X3), .X4(X4), .X5(X5), .X6(X6), .X7(X7), .X8(X8), .X9(X9), 
		.X10(X10), .X11(X11), .X12(X12), .X13(X13), .X14(X14), .X15(X15), .X16(X16), .X17(X17), 
		.X18(X18), .X19(X19), .X20(X20), .X21(X21), .X22(X22), .X23(X23), .X24(X24), .X25(X25), 
		.X26(X26), .X27(X27), .X28(X28), .X29(X29), .X30(X30), .X31(X31), 
		.S5_OUT0r_reg(S5_OUT0r), .S5_OUT0i_reg(S5_OUT0i), .S5_OUT1r_reg(S5_OUT1r), .S5_OUT1i_reg(S5_OUT1i), 
		.S5_OUT2r_reg(S5_OUT2r), .S5_OUT2i_reg(S5_OUT2i), .S5_OUT3r_reg(S5_OUT3r), .S5_OUT3i_reg(S5_OUT3i), 
		.S5_OUT4r_reg(S5_OUT4r), .S5_OUT4i_reg(S5_OUT4i), .S5_OUT5r_reg(S5_OUT5r), .S5_OUT5i_reg(S5_OUT5i), 
		.S5_OUT6r_reg(S5_OUT6r), .S5_OUT6i_reg(S5_OUT6i), .S5_OUT7r_reg(S5_OUT7r), .S5_OUT7i_reg(S5_OUT7i), 
		.S5_OUT8r_reg(S5_OUT8r), .S5_OUT8i_reg(S5_OUT8i), .S5_OUT9r_reg(S5_OUT9r), .S5_OUT9i_reg(S5_OUT9i), 
		.S5_OUT10r_reg(S5_OUT10r), .S5_OUT10i_reg(S5_OUT10i), .S5_OUT11r_reg(S5_OUT11r), .S5_OUT11i_reg(S5_OUT11i), 
		.S5_OUT12r_reg(S5_OUT12r), .S5_OUT12i_reg(S5_OUT12i), .S5_OUT13r_reg(S5_OUT13r), .S5_OUT13i_reg(S5_OUT13i), 
		.S5_OUT14r_reg(S5_OUT14r), .S5_OUT14i_reg(S5_OUT14i), .S5_OUT15r_reg(S5_OUT15r), .S5_OUT15i_reg(S5_OUT15i), 
		.S5_OUT16r_reg(S5_OUT16r), .S5_OUT16i_reg(S5_OUT16i), .S5_OUT17r_reg(S5_OUT17r), .S5_OUT17i_reg(S5_OUT17i), 
		.S5_OUT18r_reg(S5_OUT18r), .S5_OUT18i_reg(S5_OUT18i), .S5_OUT19r_reg(S5_OUT19r), .S5_OUT19i_reg(S5_OUT19i), 
		.S5_OUT20r_reg(S5_OUT20r), .S5_OUT20i_reg(S5_OUT20i), .S5_OUT21r_reg(S5_OUT21r), .S5_OUT21i_reg(S5_OUT21i), 
		.S5_OUT22r_reg(S5_OUT22r), .S5_OUT22i_reg(S5_OUT22i), .S5_OUT23r_reg(S5_OUT23r), .S5_OUT23i_reg(S5_OUT23i), 
		.S5_OUT24r_reg(S5_OUT24r), .S5_OUT24i_reg(S5_OUT24i), .S5_OUT25r_reg(S5_OUT25r), .S5_OUT25i_reg(S5_OUT25i), 
		.S5_OUT26r_reg(S5_OUT26r), .S5_OUT26i_reg(S5_OUT26i), .S5_OUT27r_reg(S5_OUT27r), .S5_OUT27i_reg(S5_OUT27i), 
		.S5_OUT28r_reg(S5_OUT28r), .S5_OUT28i_reg(S5_OUT28i), .S5_OUT29r_reg(S5_OUT29r), .S5_OUT29i_reg(S5_OUT29i), 
		.S5_OUT30r_reg(S5_OUT30r), .S5_OUT30i_reg(S5_OUT30i), .S5_OUT31r_reg(S5_OUT31r), .S5_OUT31i_reg(S5_OUT31i), 
		.clk(clk), .clk_MAC(clk_MAC), .rst(rst)
	);
	
////////////////////////////INITIAL BLOCK/////////////////////////////////////
parameter NO_OF_DATA=5;   ///ENTER THE NUMBER OF DATA YOU WANT TEST ->(MAX.=5)
	initial begin
		initialization; 		// Initialize Inputs
		fork
			apply_IN(NO_OF_DATA);	//Applying inputs and displaying outputs
			monitor_OUT(NO_OF_DATA);
		join
				
	end
	
//////////////////////////initialize CLOCK PERIOD//////////////////////////////
      always #(MAC_period/2) clk_MAC=~clk_MAC;	//FREQ=100MHz
      always #(pipeline_period/2) clk=~clk;		//FREQ=20MHz
		
////////////////////////TASKS AND FUNCTIONS PART ///////////////////////////////		
task initialization;
	begin
		X0 = 0; X1 = 0; X2 = 0; X3 = 0; X4 = 0; X5 = 0; X6 = 0; X7 = 0; X8 = 0; X9 = 0; X10 = 0;
		X11 = 0; X12 = 0; X13 = 0; X14 = 0; X15 = 0; X16 = 0; X17 = 0; X18 = 0; X19 = 0; X20 = 0;
		X21 = 0; X22 = 0; X23 = 0; X24 = 0; X25 = 0; X26 = 0; X27 = 0; X28 = 0; X29 = 0;X30 = 0;
		X31 = 0; clk = 1; clk_MAC = 0;rst = 1;
		
		#pipeline_period 		rst = 0;
		#pipeline_period 		rst = 1;
		$display("System is initialized successfully \n");
		$display("\n ##################################### \n");
	end
endtask
/////////////////////////////////////////////
task apply_IN;	
input integer No_of_Data;
integer i;
reg [15:0] input_data [0:32*5];
	begin
		$readmemb("input_data_binary.txt",input_data);	
		for(i=0;i<No_of_Data;i=i+1)
			begin
			$display("READING DATA NUMBER: %d \n",i+1);
		 	 if(i==0)
				$display("CASE: PULSE INPUT\n");
			 else if(i==1)
				$display("CASE: SQUARE ROOT INPUT\n");	
			 else if(i==2)
				$display("CASE: TRIANGLE INPUT\n");	
			 else if(i>2)
				$display("CASE: RANDOM INPUT\n");
			display_InputData(No_of_Data,i);
			X0=input_data[i*32];
			X1=input_data[i*32+1];
			X2=input_data[i*32+2];
			X3=input_data[i*32+3];
			X4=input_data[i*32+4];
			X5=input_data[i*32+5];	
			X6=input_data[i*32+6];
			X7=input_data[i*32+7]; 
			X8=input_data[i*32+8];
			X9=input_data[i*32+9];
			X10=input_data[i*32+10];
			X11=input_data[i*32+11];
			X12=input_data[i*32+12];
			X13=input_data[i*32+13];	
			X14=input_data[i*32+14];
			X15=input_data[i*32+15]; 
			X16=input_data[i*32+16];
			X17=input_data[i*32+17];
			X18=input_data[i*32+18];
			X19=input_data[i*32+19];
			X20=input_data[i*32+20];
			X21=input_data[i*32+21];	
			X22=input_data[i*32+22];
			X23=input_data[i*32+23]; 
			X24=input_data[i*32+24];
			X25=input_data[i*32+25];
			X26=input_data[i*32+26];
			X27=input_data[i*32+27];
			X28=input_data[i*32+28];
			X29=input_data[i*32+29];	
			X30=input_data[i*32+30];
			X31=input_data[i*32+31]; 
			#pipeline_period;	
			end		
	end
endtask
/////////////////////////////////////////
task display_InputData;
	input integer No_of_Data,cuurent_data;
	integer fd;
	integer i; 
	reg[8*16:0] A; 
	reg [4:0] counter;	
	begin 
		counter=0;
		fd  = $fopen("input_data_floating.txt", "r"); 
		$fgets(A, fd);
		$display("DISPLAYING INPUT DATA  IN DICEMAL: \n");  
		for(i=0;i<(No_of_Data*32);i=i+1)	
		 begin
			 $fscanf(fd ,"%s/n",A);			 
			 if(i>=cuurent_data*32&&i<(cuurent_data*32+32))
				begin
				$display("X[%d] = %s",counter,A);
				counter=counter+1;		
				end
		 end
		 $fclose(fd);	
		 $display("\n ##################################### \n");
	end
endtask
///////////////////////////////////////
task monitor_OUT;
input reg [2:0] NO_DATA;
integer i;
	begin 
		#(5*pipeline_period);
		for(i=0;i<NO_DATA;i=i+1)
			begin
				#pipeline_period;
				$display("DISPLAYING FFT OUTPUTS NUMBER: %d \n",i+1);
				if(i==0)
					$display("CASE: PULSE INPUT\n");
				else if(i==1)
					$display("CASE: SQUARE ROOT INPUT\n");	
				else if(i==2)
					$display("CASE: TRIANGLE INPUT\n");	
				else if(i>2)
					$display("CASE: RANDOM INPUT\n");
				$display("OUT0_real = %b.%b  	OUT0_image = %b.%b",S5_OUT0r[15:10],S5_OUT0r[9:0],S5_OUT0i[15:10],S5_OUT0i[9:0]); 
				$display("OUT1_real = %b.%b  	OUT1_image = %b.%b",S5_OUT1r[15:10],S5_OUT1r[9:0],S5_OUT1i[15:10],S5_OUT1i[9:0]); 
				$display("OUT2_real = %b.%b  	OUT2_image = %b.%b",S5_OUT2r[15:10],S5_OUT2r[9:0],S5_OUT2i[15:10],S5_OUT2i[9:0]); 
				$display("OUT3_real = %b.%b  	OUT3_image = %b.%b",S5_OUT3r[15:10],S5_OUT3r[9:0],S5_OUT3i[15:10],S5_OUT3i[9:0]); 
				$display("OUT4_real = %b.%b  	OUT4_image = %b.%b",S5_OUT4r[15:10],S5_OUT4r[9:0],S5_OUT4i[15:10],S5_OUT4i[9:0]); 
				$display("OUT5_real = %b.%b  	OUT5_image = %b.%b",S5_OUT5r[15:10],S5_OUT5r[9:0],S5_OUT5i[15:10],S5_OUT5i[9:0]); 
				$display("OUT6_real = %b.%b  	OUT6_image = %b.%b",S5_OUT6r[15:10],S5_OUT6r[9:0],S5_OUT6i[15:10],S5_OUT6i[9:0]); 
				$display("OUT7_real = %b.%b  	OUT7_image = %b.%b",S5_OUT7r[15:10],S5_OUT7r[9:0],S5_OUT7i[15:10],S5_OUT7i[9:0]); 
				$display("OUT8_real = %b.%b  	OUT8_image = %b.%b",S5_OUT8r[15:10],S5_OUT8r[9:0],S5_OUT8i[15:10],S5_OUT8i[9:0]); 
				$display("OUT9_real = %b.%b  	OUT9_image = %b.%b",S5_OUT9r[15:10],S5_OUT9r[9:0],S5_OUT9i[15:10],S5_OUT9i[9:0]); 
				$display("OUT10_real = %b.%b  	OUT10_image = %b.%b",S5_OUT10r[15:10],S5_OUT10r[9:0],S5_OUT10i[15:10],S5_OUT10i[9:0]); 
				$display("OUT11_real = %b.%b  	OUT11_image = %b.%b",S5_OUT11r[15:10],S5_OUT11r[9:0],S5_OUT11i[15:10],S5_OUT11i[9:0]); 
				$display("OUT12_real = %b.%b  	OUT12_image = %b.%b",S5_OUT12r[15:10],S5_OUT12r[9:0],S5_OUT12i[15:10],S5_OUT12i[9:0]); 
				$display("OUT13_real = %b.%b  	OUT13_image = %b.%b",S5_OUT13r[15:10],S5_OUT13r[9:0],S5_OUT13i[15:10],S5_OUT13i[9:0]); 
				$display("OUT14_real = %b.%b  	OUT14_image = %b.%b",S5_OUT14r[15:10],S5_OUT14r[9:0],S5_OUT14i[15:10],S5_OUT14i[9:0]); 
				$display("OUT15_real = %b.%b  	OUT15_image = %b.%b",S5_OUT15r[15:10],S5_OUT15r[9:0],S5_OUT15i[15:10],S5_OUT15i[9:0]); 
				$display("OUT16_real = %b.%b  	OUT16_image = %b.%b",S5_OUT16r[15:10],S5_OUT16r[9:0],S5_OUT16i[15:10],S5_OUT16i[9:0]); 
				$display("OUT17_real = %b.%b  	OUT17_image = %b.%b",S5_OUT17r[15:10],S5_OUT17r[9:0],S5_OUT17i[15:10],S5_OUT17i[9:0]); 
				$display("OUT18_real = %b.%b  	OUT18_image = %b.%b",S5_OUT18r[15:10],S5_OUT18r[9:0],S5_OUT18i[15:10],S5_OUT18i[9:0]); 
				$display("OUT19_real = %b.%b  	OUT19_image = %b.%b",S5_OUT19r[15:10],S5_OUT19r[9:0],S5_OUT19i[15:10],S5_OUT19i[9:0]); 
				$display("OUT20_real = %b.%b  	OUT20_image = %b.%b",S5_OUT20r[15:10],S5_OUT20r[9:0],S5_OUT20i[15:10],S5_OUT20i[9:0]); 
				$display("OUT21_real = %b.%b  	OUT21_image = %b.%b",S5_OUT21r[15:10],S5_OUT21r[9:0],S5_OUT21i[15:10],S5_OUT21i[9:0]); 
				$display("OUT22_real = %b.%b  	OUT22_image = %b.%b",S5_OUT22r[15:10],S5_OUT22r[9:0],S5_OUT22i[15:10],S5_OUT22i[9:0]); 
				$display("OUT23_real = %b.%b  	OUT23_image = %b.%b",S5_OUT23r[15:10],S5_OUT23r[9:0],S5_OUT23i[15:10],S5_OUT23i[9:0]); 
				$display("OUT24_real = %b.%b  	OUT24_image = %b.%b",S5_OUT24r[15:10],S5_OUT24r[9:0],S5_OUT24i[15:10],S5_OUT24i[9:0]); 
				$display("OUT25_real = %b.%b  	OUT25_image = %b.%b",S5_OUT25r[15:10],S5_OUT25r[9:0],S5_OUT25i[15:10],S5_OUT25i[9:0]); 
				$display("OUT26_real = %b.%b  	OUT26_image = %b.%b",S5_OUT26r[15:10],S5_OUT26r[9:0],S5_OUT26i[15:10],S5_OUT26i[9:0]); 
				$display("OUT27_real = %b.%b  	OUT27_image = %b.%b",S5_OUT27r[15:10],S5_OUT27r[9:0],S5_OUT27i[15:10],S5_OUT27i[9:0]); 
				$display("OUT28_real = %b.%b  	OUT28_image = %b.%b",S5_OUT28r[15:10],S5_OUT28r[9:0],S5_OUT28i[15:10],S5_OUT28i[9:0]); 
				$display("OUT29_real = %b.%b  	OUT29_image = %b.%b",S5_OUT29r[15:10],S5_OUT29r[9:0],S5_OUT29i[15:10],S5_OUT29i[9:0]); 
				$display("OUT30_real = %b.%b  	OUT30_image = %b.%b",S5_OUT30r[15:10],S5_OUT30r[9:0],S5_OUT30i[15:10],S5_OUT30i[9:0]);
				$display("OUT31_real = %b.%b  	OUT31_image = %b.%b",S5_OUT31r[15:10],S5_OUT31r[9:0],S5_OUT31i[15:10],S5_OUT31i[9:0]); 
				$display("\n ##################################### \n");
			end
	end
endtask
/////////////////////////////////////

endmodule

