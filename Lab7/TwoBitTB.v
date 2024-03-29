`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:47:11 11/28/2021 
// Design Name: 
// Module Name:    TwoBitTB 
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
module TwoBitTB(
    );
	 
	 reg a, b, sel;
	 wire Sum, Cout;
	 
	 FullAdder adder0(Sum, Cout, a, (b ^ sel), sel);
	 
	 integer i;
	 
	 initial 
		begin
		
		for (i = 0; i < 8; i = i + 1) begin
            {a, b, sel} = i;
            #60;
		end
		
	 end


endmodule
