`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:46:57 11/24/2021 
// Design Name: 
// Module Name:    tb_comparator8 
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
module tb_comparator8(
    );


	 reg [7:0] A, B;  
	 wire lt, eq, gt;
	 wire e0, e1, e2;
	 wire g0, g1, g2;
	 wire l0, l1, l2;
	 
	 integer i;
	 integer j; 
	
	
	 Comparator3_1 gate0(A[7:5], B[7:5], l0, e0, g0);  
	 Comparator3_1 gate1(A[4:2], B[4:2], l1, e1, g1);  
	 Comparator3_1 gate2(A[2:0], B[2:0], l2, e2, g2);
	

	 assign eq = e0 & e1 & e2;
	 
	 wire tmp0, tmp1, tmp2;
	 assign tmp0 = g0;
	 assign tmp1 = e0 & g1;
	 assign tmp2 = e0 & e1 & g2;
	 assign gt = tmp0 | tmp1 | tmp2;  
	 
	 wire tmp3, tmp4, tmp5;
	 assign tmp3 = l0;
	 assign tmp4 = e0 & l1;
	 assign tmp5 = e0 & e1 & l2;
	 assign lt = tmp3 | tmp4 | tmp5;  
	 
	 
	 initial begin  
			for (i = 0; i < 64; i = i + 1)  
			begin
				for (j = 0; j < 64; j = j + 1)  
				begin   
					  A = i;  
					  B = j;  
					  #3;  
				end   		
			end
	 end   
	 
endmodule   
