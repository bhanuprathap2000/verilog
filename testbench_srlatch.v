`timescale 1ns / 1ps



module testbench_srlatch;

	// Inputs
	reg s;
	reg r;
	reg enable;

	// Outputs
	wire q;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	srlatch uut (s,r,enable,q,qbar);

	initial 
	begin
	    s=0;
		 r=0;
		 enable=1;
		 #5 s=0;r=1;
		 #5 s=1;r=0;

	end
      
endmodule

