`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:46:59 12/05/2021 
// Design Name: 
// Module Name:    tb 
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
module tb();
        
    reg [1:0] A;
    reg [1:0] B;
    reg [1:0] S;

    wire [3:0] Multiply;
    wire [3:0] Add;
    wire [3:0] NAND;
    wire [3:0] NOT_A;
    wire [3:0] y;

    integer i;

    ArithmeticUnit  test0 (A, B, Multiply, Add);
    LogicUnit       test1 (A, B, NAND, NOT_A);
    MUX             test2 (y, Multiply, Add, NAND, NOT_A, S);



        initial 
            begin
            for (i = 0; i < 64; i = i + 1) begin
                {A, B, S} = i;
					 #15;
            end
        end



endmodule
