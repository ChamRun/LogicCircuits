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

	 
	SRFF srff0(q, qp, s, r);


    initial begin
        {s, r} = 1;
		  #100;
		  {s, r} = 0;
		  #100;
		  {s, r} = 2;
		  #100;
		  {s, r} = 0;
		  #100;
		  {s, r} = 2;
		  #100;
		  {s, r} = 1;
		  #100;
		  {s, r} = 0;
		  #100;
		  
    end




endmodule
