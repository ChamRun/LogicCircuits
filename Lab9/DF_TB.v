`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:04:06 12/13/2021 
// Design Name: 
// Module Name:    DF_TB 
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
module DF_TB(
    );

    reg d, c;
    wire q, qp;

	 
	DFF dff0(q, qp, d, c);

    integer i, j;
	 
    initial begin
        for (j=0; j<2; j = j + 1) begin
            for (i=0; i<4; i = i + 1) begin
                {d, c} = i;
                #100;
            end	  
        end
        
    end



endmodule
