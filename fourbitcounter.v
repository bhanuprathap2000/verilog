`timescale 1ns / 1ps
module fourbitcounter(count,clock,enable,rst);
//port declartions
input clock,enable,rst;

output reg [3:0] count;

//4bitcounter

always@(posedge clock or posedge rst)

begin
if (rst)
count=4'b0000;

else if(enable)
count=count+4'b0001;


end


endmodule
