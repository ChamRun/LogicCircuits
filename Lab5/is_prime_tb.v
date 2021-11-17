`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:25:26 11/17/2021 
// Design Name: 
// Module Name:    is_prime_tb 
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
module is_prime_tb(
    );
	 
	 wire d15, d14, d13, d12, d11, d10, d9, d8, d7, d6, d5, d4, d3, d2, d1, d0; 
	 wire ans;
	 
    reg en, i3, i2, i1, i0;
     
    always begin
	 
		#1 en = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 0;
		#1 en = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 1;
		#1 en = 0; i3 = 0; i2 = 0; i1 = 1; i0 = 0;
		#1 en = 0; i3 = 0; i2 = 0; i1 = 1; i0 = 1;
		
		#1 en = 0; i3 = 0; i2 = 1; i1 = 0; i0 = 0;
		#1 en = 0; i3 = 0; i2 = 1; i1 = 0; i0 = 1;
		#1 en = 0; i3 = 0; i2 = 1; i1 = 1; i0 = 0;
		#1 en = 0; i3 = 0; i2 = 1; i1 = 1; i0 = 1;
		
		#1 en = 0; i3 = 1; i2 = 0; i1 = 0; i0 = 0;
		#1 en = 0; i3 = 1; i2 = 0; i1 = 0; i0 = 1;
		#1 en = 0; i3 = 1; i2 = 0; i1 = 1; i0 = 0;
		#1 en = 0; i3 = 1; i2 = 0; i1 = 1; i0 = 1;
		
		#1 en = 0; i3 = 1; i2 = 1; i1 = 0; i0 = 0;
		#1 en = 0; i3 = 1; i2 = 1; i1 = 0; i0 = 1;
		#1 en = 0; i3 = 1; i2 = 1; i1 = 1; i0 = 0;
		#1 en = 0; i3 = 1; i2 = 1; i1 = 1; i0 = 1;
		
		#1 en = 1; i3 = 0; i2 = 0; i1 = 0; i0 = 0;
		#1 en = 1; i3 = 0; i2 = 0; i1 = 0; i0 = 1;
		#1 en = 1; i3 = 0; i2 = 0; i1 = 1; i0 = 0;
		#1 en = 1; i3 = 0; i2 = 0; i1 = 1; i0 = 1;
		
		#1 en = 1; i3 = 0; i2 = 1; i1 = 0; i0 = 0;
		#1 en = 1; i3 = 0; i2 = 1; i1 = 0; i0 = 1;
		#1 en = 1; i3 = 0; i2 = 1; i1 = 1; i0 = 0;
		#1 en = 1; i3 = 0; i2 = 1; i1 = 1; i0 = 1;
		
		#1 en = 1; i3 = 1; i2 = 0; i1 = 0; i0 = 0;
		#1 en = 1; i3 = 1; i2 = 0; i1 = 0; i0 = 1;
		#1 en = 1; i3 = 1; i2 = 0; i1 = 1; i0 = 0;
		#1 en = 1; i3 = 1; i2 = 0; i1 = 1; i0 = 1;
		
		#1 en = 1; i3 = 1; i2 = 1; i1 = 0; i0 = 0;
		#1 en = 1; i3 = 1; i2 = 1; i1 = 0; i0 = 1;
		#1 en = 1; i3 = 1; i2 = 1; i1 = 1; i0 = 0;
		#1 en = 1; i3 = 1; i2 = 1; i1 = 1; i0 = 1;
    end
     
    initial begin
		//Initialize clock
		en = 0;
		i3 = 0;
		i2 = 0;
		i1 = 0;
		i0 = 0;
		
     
		//End simulation
		#33
		$finish;
    end
     
	 prime myGate(ans, d15, d14, d13, d12, d11, d10, d9, d8, 
										 d7, d6, d5, d4, d3, d2, d1, d0,
										 en, i3, i2, i1, i0);
	 
endmodule



module prime(ans, d15, d14, d13, d12, d11, d10, d9, d8, d7, d6, d5, d4, d3, d2, d1, d0, 
en, 
i3, 
i2, 
i1, i0);
	
	input  i3, i2, i1, i0, en;
	output d15, d14, d13, d12, d11, d10, d9, d8, 
			 d7, d6, d5, d4, d3, d2, d1, d0, ans;

	wire not_i3, not_i2, not_i1, not_i0;
	
	not g1(not_i0, i0);
	not g2(not_i1, i1);
	not g3(not_i2, i2);
	not g4(not_i3, i3);

	and g5(d0, not_i3, not_i2, not_i0, not_i1, en);
	assign d1 = not_i3 & not_i2 & not_i1 & i0 & en;
	assign d2 = not_i3 & not_i2 & i1 & not_i0 & en;
	assign d3 = not_i3 & not_i2 & i1 & i0 & en;
	assign d4 = not_i3 & i2 & not_i1 & not_i0 & en;
	assign d5 = not_i3 & i2 & not_i1 & i0 & en;
	assign d6 = not_i3 & i2 & i1 & not_i0 & en;
	assign d7 = not_i3 & i2 & i1 & i0 & en;
	
	assign d8 = i3 & not_i2 & not_i1 & not_i0 & en;
	assign d9 = i3 & not_i2 & not_i1 & i0 & en;
	assign d10 = i3 & not_i2 & i1 & not_i0 & en;
	assign d11 = i3 & not_i2 & i1 & i0 & en;
	assign d12 = i3 & i2 & not_i1 & not_i0 & en;
	assign d13 = i3 & i2 & not_i1 & i0 & en;
	assign d14 = i3 & i2 & i1 & not_i0 & en;
	assign d15 = i3 & i2 & i1 & i0 & en;
	
	assign ans = d2 | d3 | d5 | d7 | d11 | d13;

endmodule

