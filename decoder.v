`timescale 1ns / 1ps

module decoder(decoderin,enable,decoderout);

input [1:0] decoderin;
input enable;
output reg [3:0] decoderout;
always@(decoderin or enable)
begin
if (enable)
begin
case(decoderin)
2'b00:decoderout=4'b0001;
2'b01:decoderout=4'b0010;
2'b10:decoderout=4'b0100;
2'b11:decoderout=4'b1000;
endcase
end

end

endmodule
