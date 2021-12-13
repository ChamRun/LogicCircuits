`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:30:12 12/13/2021 
// Design Name: 
// Module Name:    SRFF_TB 
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
module SRFF_TB(
    );

    reg s, r;
    wire q, qp;

    integer i, j;
	 
	SRFF srff0(q, qp, s, r);


    initial begin
        for (j=0; j<2; j = j+1) begin
            for (i=0; i<3; i = i+1) begin
            {s, r} = i;
				#100;
        end
        end
        
    end




endmodule
