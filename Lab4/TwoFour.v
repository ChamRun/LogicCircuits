`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:26:04 11/11/2021 
// Design Name: 
// Module Name:    TwoFour 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////


module myModule_tb();
    wire out;
    reg a_clock;
	 reg b_clock;
	 reg c_clock;
     
    always begin
		#1 a_clock =! a_clock;
		#1 b_clock =! b_clock;
		#1 c_clock =! c_clock;
    end
     
    initial begin
		//Initialize clock
		a_clock = 0;
		b_clock = 0;
		c_clock = 0;
     
		//End simulation
		#8
		$finish;
    end
     
    
	 //xor_two_input my_gate(out, a_clock, b_clock);
	 //xnor_three_input my_gate(out, a_clock, b_clock, c_clock);
	 xnor_sop_three_input my_gate(out, a_clock, b_clock, c_clock);
	 
endmodule



module xnor_sop_three_input(d, a, b, c);

	input a, b, c;
	output d;
	
	wire na, nb, bc;
	not g1(na, a);
	not g2(nb, b);
	not g3(nc, c);
	
	assign d = !((na & nb & nc) | (na & b & c) | (a & nb & c) | (a & b & nc));

endmodule


module xnor_three_input(d, a, b, c);

	input a, b, c;
	output d;
	xnor g(d, a, b, c);

endmodule



module xor_three_input(d, a, b, c);

	input a, b, c;
	output d;
	xor g(d, a, b, c);

endmodule


module xor_two_input(c,a,b);

	input a,b;
	output c;
	xor g(c, a, b);

endmodule


module and_gate(c,a,b);

	input a,b;
	output c;
	assign c = a & b;

endmodule