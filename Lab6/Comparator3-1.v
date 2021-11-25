`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:18 11/24/2021 
// Design Name: 
// Module Name:    TB_ComparatorGate 
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
module TB_ComparatorGate();

reg [8:0] A;
reg [8:0] B;
reg l;
reg e;
reg g;
wire lt;
wire et;
wire gt;

	 Comparator3_1 g0(A[7:5], B[7:5], l0, e0, g0);  


	ComparatorGate test_comparator(.a(A), .b(B), .l(l), .e(e), .g(g), .lt(lt), .et(et), .gt(gt));


	initial
		begin
		
		//////////////////
		A = 3'b001;
		B = 3'b001;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 10 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 10 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 20 ;
		//////////////////
		A = 3'b010;
		B = 3'b001;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 10 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 10 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 20;
		//////////////////
		A = 3'b001;
		B = 3'b010;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 10 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 10 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 20;
		$finish;
		//////////////////
	end

endmodule

