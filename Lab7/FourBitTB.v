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
	 reg sel, Cin;
	 wire Sum, Cout;
	 
	 FullAdder adder1(Sum, Cout, a[0], (b[0] ^ sel), Cin);
	 
	 integer i, j ,k;
	 
	initial 
		begin
		
		for (i = 0; i < 4; i = i + 1)
		begin
            {sel, Cin} = i;
				
				for (j = 0; j < 16; j = j + 1)
				begin
					a = j;
					
					for (k = 0; k < 16; k = k + 1)
					begin
						b = k;
						#10;
					end	
				end
      end
	end
	

endmodule
