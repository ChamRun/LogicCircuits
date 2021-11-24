`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:12:47 11/24/2021 
// Design Name: 
// Module Name:    ComparatorGate 
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
module ComparatorGate(
	input [2:0] a ,
	input [2:0] b ,
	input l ,
	input e ,
	input g ,
	output lt ,
	output et ,
	output gt
	);
	
	wire [2:0] c;
	
	xnor g0(c[0], a[0], b[0]),
		  g1(c[1], a[1], b[1]),
		  g2(c[2], a[2], b[2]);
		  
	wire [2:0] aNot;
	
	not g3(aNot[0], a[0]),
		 g3(aNot[1], a[1]),
		 g3(aNot[2], a[2]);
		  
			
	
	or g4(lt, );


endmodule
