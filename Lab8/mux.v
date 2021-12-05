`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
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
module mux(
	input [3:0] w3,
	input [3:0] w2,
	input [3:0] w1,
	input [3:0] w0,
	input [1:0]	s,
	output [3:0] y
    );



    if (s == 0) begin
        assign y = w0;
    end
    else if (s == 1) begin
        assign y = w1;
    end
    else if (s == 2) begin
        assign y = w2;
    end
    else if (s == 3) begin
        assign y = w3;
    end

endmodule
