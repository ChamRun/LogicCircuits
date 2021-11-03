// Verilog Test Fixture Template

  `timescale 1 ns / 1 ps

  module TEST_gate;
          
   initial begin
      $display("\n\nMy String\n\n");
   end

  endmodule
  
  
  module my_xnor(a,b,c,d, x);
	
	input a, b, c, d;
	output x;
	
	wire e, f, g, h;
	wire not_a, not_b, not_c;
	
	not g1(not_a, a);
	not g2(not_b, b);
	not g3(not_c, c);
	
	and g4(e, not_a, not_b, not_c);
	and g5(f, not_a, b, c);
	and g6(g, a, not_b, c);
	and g7(h, a, b, not_c);
	
	or g8(x, e, f, g, h);
	
  endmodule
	
	
	