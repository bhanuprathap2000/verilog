`timescale 1ns / 1ps

module muxdatflowstyle(y,a,s);

input [1:0] a;
input s;
output y;
assign #2 y= a[s];


endmodule
