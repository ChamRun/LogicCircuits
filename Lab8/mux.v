`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: https://github.com/ChamRun/
// Engineer: 
// 
// Create Date:    20:23:59 12/05/2021 
// Design Name: 
// Module Name:    mux 
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
module MUX(
    output [3:0] y,
	input [3:0] w3,
	input [3:0] w2,
	input [3:0] w1,
	input [3:0] w0,
	input [1:0]	s
    );


    assign y =  (s[1] & s[1]) ? w3:
                (s[0] & s[1]) ? w2:
                (s[1] & s[0]) ? w1:
                (s[0] & s[0]) ? w0:
                                w0;
	 
endmodule
