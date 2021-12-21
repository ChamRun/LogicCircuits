`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:55 12/15/2021 
// Design Name: 
// Module Name:    Lab_TB 
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

module Lab_TB(
    );

    reg a, b, clk;
    wire y, z, r, s;

	 
	Lab lab0(y, z, r, s, a, b, clk);
	 
    initial begin
        
        clk = 0; a = 0 ; b = 0;
        #40;
        clk = 1;
        #40;
        
        clk = 0; b = 1;
        #40;
        clk = 1; a = 1;
        #40;
        clk = 0;
        #40;
        clk = 1; a = 0;
        #40;
        clk = 0;
        #40;

        clk = 1; b = 0;
        #40;
        clk = 0; a = 1;
        #40;

        clk = 1;
        #40;
        clk = 0;
        #40;

        clk = 1; b = 1;
        #40;

        clk = 0; a = 0 ; b = 0;
        #40;
        clk = 1;
        #40;
        clk = 0;
        #40;
        clk = 1; b = 1;
        #40;

        clk = 0; a = 1;
        #40;
        clk = 1;
        #40;


    end


endmodule

