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
		  
	and g3(et, e, c[0], c[1], c[2]),
		 g4(lt, l, c[0], c[1], c[2]),
		 g5(gt, g, c[0], c[1], c[2]);
		  
	wire [2:0] aNot;
	
	not g6(aNot[0], a[0]),
		 g7(aNot[1], a[1]),
		 g8(aNot[2], a[2]);
		  
	wire [2:0] x;
	
	and g9(x[0], aNot[2], b[2]),
		 g10(x[1], aNot[1], b[1], c[2]),
		 g11(x[2], aNot[0], b[0], c[2], c[1]);		 
	
	or g12(lt, x[0], x[1], x[2]);
	
	
	
	wire [2:0] bNot;
	
	not g13(bNot[0], b[0]),
		 g14(bNot[1], b[1]),
		 g15(bNot[2], b[2]);
		  
	wire [2:0] y;
	
	and g16(y[0], bNot[2], a[2]),
		 g17(y[1], bNot[1], a[1], c[2]),
		 g18(y[2], bNot[0], a[0], c[2], c[1]);		 
	
	or g19(gt, y[0], y[1], y[2]);
	
	
endmodule
