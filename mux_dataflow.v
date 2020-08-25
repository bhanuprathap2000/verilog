`timescale 1ns / 1ps

module mux_dataflow(sel,a,b,y);
input sel,a,b;
output y;
assign y=(sel)?a:b;
endmodule
