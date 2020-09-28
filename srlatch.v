`timescale 1ns / 1ps

module srlatch(s,r,enable,q,qbar);
input s,r,enable;
output q,qbar;
wire wire1,wire2;

nor nor1(q,wire1,qbar);
nor nor2(qbar,wire2,q);
and and1(wire1,r,enable);
and and2(wire2,s,enable);



endmodule
