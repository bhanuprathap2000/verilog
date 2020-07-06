`timescale 1ns / 1ps


module mux_dataflow(a,b,sel,y);
input a,b,sel;
output y;
assign y=(sel)?a:b;
endmodule
