`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:49:20 11/24/2021 
// Design Name: 
// Module Name:    Comparator3-1 
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
module tb_comparator3;  

 reg [2:0] A, B;  
 wire lt, eq, gt;  
 integer i;
 integer j; 
 
 Comparator3_1 dut(A, B, lt, eq, gt);  
 
 
 initial begin  
      for (i = 0; i < 8; i = i + 1)  
      begin
			for (j = 0; j < 8; j = j + 1)  
			begin   
				  A = i;  
				  B = j;  
				  #20;  
			end   		
      end
 end   
endmodule   

module Comparator3_1(input [2:0] A, B,
							output A_less_B, A_equal_B, A_greater_B);

wire tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8;  

	 xnor u0(tmp0, A[2], B[2]);  
	 xnor u1(tmp1, A[1], B[1]);  
	 xnor u2(tmp2, A[0], B[0]);  
	 and  u3(A_equal_B, tmp0, tmp1, tmp2);  

	 assign tmp3 = (~A[2]) & B[2];
	 assign tmp4 = (~A[1]) & B[1] & tmp0;
	 assign tmp5 = (~A[0]) & B[0] & tmp0 & tmp1;	 
	 assign A_less_B = tmp3 | tmp4 | tmp5;  
	 
	 assign tmp6 = (~B[2]) & A[2];
	 assign tmp7 = (~B[1]) & A[1] & tmp0;
	 assign tmp8 = (~B[0]) & A[0] & tmp0 & tmp1;
	 assign A_greater_B = tmp6 | tmp7 | tmp8;  


endmodule
