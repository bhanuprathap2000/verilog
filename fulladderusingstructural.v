`timescale 1ns / 1ps

module fulladderusingstructural(A,B,CIN,SUM,COUT);
input A,B,CIN;
output SUM,COUT;
wire c1,c2,c3;

xor xor1(c1,A,B);
xor xor2(SUM,c1,CIN);
and and1(c2,A,B);
and and2(c3,CIN,c2);
or or1(COUT,c2,c3);
endmodule
