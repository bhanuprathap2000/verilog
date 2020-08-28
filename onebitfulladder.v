`timescale 1ns / 1ps

module onebitfulladder(A,B,Cin,S,Cout);

input A,B,Cin;
output S,Cout;

assign S= A ^ B ^ Cin;
assign Cout= (A & B) | (B & Cin) | (Cin & A);


endmodule