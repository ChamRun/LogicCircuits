`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:22:36 11/17/2021 
// Design Name: 
// Module Name:    encoder 
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
module encoder_tb();

    reg d3, d2, d1, d0;
	 
    wire q1, q0; 
	 
    always begin
		#1 d3 = 0; d2 = 0; d1 = 0; d0 = 0;
		#1 d3 = 0; d2 = 0; d1 = 0; d0 = 1;
		#1 d3 = 0; d2 = 0; d1 = 1; d0 = 0;
		#1 d3 = 0; d2 = 0; d1 = 1; d0 = 1;
		
		#1 d3 = 0; d2 = 1; d1 = 0; d0 = 0;
		#1 d3 = 0; d2 = 1; d1 = 0; d0 = 1;
		#1 d3 = 0; d2 = 1; d1 = 1; d0 = 0;
		#1 d3 = 0; d2 = 1; d1 = 1; d0 = 1;
		
		
		#1 d3 = 1; d2 = 0; d1 = 0; d0 = 0;
		#1 d3 = 1; d2 = 0; d1 = 0; d0 = 1;
		#1 d3 = 1; d2 = 0; d1 = 1; d0 = 0;
		#1 d3 = 1; d2 = 0; d1 = 1; d0 = 1;
		
		#1 d3 = 1; d2 = 1; d1 = 0; d0 = 0;
		#1 d3 = 1; d2 = 1; d1 = 0; d0 = 1;
		#1 d3 = 1; d2 = 1; d1 = 1; d0 = 0;
		#1 d3 = 1; d2 = 1; d1 = 1; d0 = 1;
		
    end
	 
	 
     
    initial begin
		d3 = 0;
		d2 = 0;
		d1 = 0;
		d0 = 0;
     
		//End simulation
		#17
		$finish;
    end
     
	 priority_encoder_four_two myGate(q1, q0, d3, d2, d1, d0);
	 
endmodule



module priority_encoder_four_two(q1, q0, d3, d2, d1, d0);
	input d3, d2, d1, d0;
	output q1, q0;
	
	wire not_d2;
	not g0(not_d2, d2);
	
	wire a;
	and g1(a, d1, not_d2);
	or g2(q0, a, d3),
		g3(q1, d2, d3);

endmodule
