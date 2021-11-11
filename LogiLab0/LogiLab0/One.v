module myModule_tb(); 
    wire out;
    reg a_clock;
	 reg b_clock;
     
    always begin
		#1 a_clock =! a_clock;
		#1 b_clock =! b_clock;
    end
     
    initial begin
		//Initialize clock
		a_clock = 0;
		b_clock = 0;
     
		//End simulation
		#4
		$finish;
    end
     
    and_gate my_gate(out, a_clock, b_clock);
endmodule

module and_gate(c,a,b);

	input a,b;
	output c;
	assign c = a | b;

endmodule