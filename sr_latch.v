`timescale 1ns / 1ps

module sr_latch(s,r,q,qbar);

//port declartions
input s,r;
output q,qbar;

//module instantions

nor n1(q,r,qbar);
nor n2(qbar,s,q);



endmodule
