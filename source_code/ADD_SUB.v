module ADD_SUB(in1,in2,sel,out);
input wire [15:0] in1,in2;
input sel;
output [15:0] out;

assign out = (sel) ? in1-in2: in1+in2;
endmodule
