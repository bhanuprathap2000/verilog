`timescale 1ns / 1ps

module dflipflop_behavioral(d,reset,clk,q,qbar);
input d,reset,clk;
output reg q;
output qbar;

assign qbar=~q;

always@(posedge clk or posedge reset)

	begin
		if (reset==1)
				q=1'b0;
		else
				q=d;	 
	end
endmodule
