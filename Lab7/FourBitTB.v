`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:34:05 11/28/2021 
// Design Name: 
// Module Name:    FourBitTB 
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
module FourBitTB(
    );
	 
	 	 
	 reg[3:0] a, b;
	 reg Sel;
	 
	 wire[3:0] Sum;
	 wire C1, C2, C3, C4;
	 
	 FullAdder adder1(Sum[0], C1, a[0], (b[0] ^ Sel), Sel);
	 FullAdder adder2(Sum[1], C2, a[1], (b[1] ^ Sel), C1);
	 FullAdder adder3(Sum[2], C3, a[2], (b[2] ^ Sel), C2);
	 FullAdder adder4(Sum[3], C4, a[3], (b[3] ^ Sel), C3);
	 
	 integer i, j ,k;
	 
	 
		initial 
		begin
		
		for (i = 0; i < 2; i = i + 1)
			begin
				Sel = i;
				
				for (j = 0; j < 16; j = j + 1)
				begin
					a = j;
					
					for (k = 0; k < j; k = k + 1)
					begin
						b = k;
						#4;
					end	
				end
			end
		end
	

endmodule
