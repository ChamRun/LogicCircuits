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


module decoder2x4_tb();
    wire d0, d1, d2, d3;
	 
    reg en;
	 reg i0;
	 reg i1;
     
    always begin
		/*#1 a_clock =! a_clock;
		#1 b_clock =! b_clock;
		#1 c_clock =! c_clock;
		*/
		#1 en = 0; i1 = 0; i0 = 0;
		#1 en = 0; i1 = 0; i0 = 1;
		#1 en = 0; i1 = 1; i0 = 0;
		#1 en = 0; i1 = 1; i0 = 1;
		
		#1 en = 1; i1 = 0; i0 = 0;
		#1 en = 1; i1 = 0; i0 = 1;
		#1 en = 1; i1 = 1; i0 = 0;
		#1 en = 1; i1 = 1; i0 = 1;
    end
     
    initial begin
		//Initialize clock
		en = 0;
		i0 = 0;
		i1 = 0;
     
		//End simulation
		#9
		$finish;
    end
     
	 decoder_two_x_four myGate(d0, d1, d2, d3, i0, i1, en);
	 
endmodule



module decoder_two_x_four(d0, d1, d2, d3, i0, i1, en);
	input i0, i1, en;
	output d0, d1, d2, d3;

	wire not_i0, not_i1;
	
	not g1(not_i0, i0);
	not g2(not_i1, i1);
	
	//and g3(d0, not_i0, not_i1, en);

	assign d0 = not_i0 & not_i1 & en;
	assign d1 = i0 & not_i1 & en;
	assign d2 = not_i0 & i1 & en;
	assign d3 = i0 & i1 & en;

endmodule
