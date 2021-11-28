`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:21:57 11/28/2021 
// Design Name: 
// Module Name:    FullAdder 
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
module FullAdder(s, co, x, y, ci);
	 
	 output s, co;
	 input x, y, ci;
	 
	 assign s = x ^ y ^ ci;
	 assign co = (x & ci) | (y & ci) | (x & y);
	 
endmodule
