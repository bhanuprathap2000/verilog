`timescale 1ns / 1ps

module encoder_behavioral(encoderin,encoderout,enable);
input [3:0] encoderin;
input enable;
output  [1:0] encoderout;
reg [1:0] encoderout;

always@(encoderin or enable) 
begin
if(enable)
begin
case(encoderin)

4'b0001:encoderout=2'b00;
4'b0010:encoderout=2'b01;
4'b0100:encoderout=2'b10;
4'b1000:encoderout=2'b11;

endcase
end
end
endmodule
