`timescale 1ns / 1ps

module adderwithflags(X,Y,Z,sign,carry,zero,parity,overflow);
input [15:0]X,Y;
output [15:0]Z;
output sign,carry,zero,parity,overflow;
assign {carry,Z}=X+Y;//RESULT WILL BE 17 BIT 16 BIT SUM AND 1 BIT CARRY
assign sign=Z[15];//since numbers are stored in 2's complement form msb for sign
assign zero=~|Z;//bit wise nor if all zero then bitwise or is o then not it is 1
assign parity=~^Z;
assign overflow=(X[15] & Y[15] & ~|Z[15] | ~X[15] & ~Y[15] & Z[15]);
//to check overflow we will use if msb of x,y are 1 and msb of z is 0 or oppoite of this condition.
endmodule
