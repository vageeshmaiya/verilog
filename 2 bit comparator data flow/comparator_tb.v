module comp_tb;
  reg [1:0]a_tb,b_tb;
  wire e_tb,l_tb,g_tb;
  comp c1(.a(a_tb),.b(b_tb),.e(e_tb),.l(l_tb),.g(g_tb));
  initial
    begin
      $dumpfile("comparator.vcd");
      $dumpvars;
      a_tb=2'b00;
      b_tb=2'b00;
      #10;
      a_tb=2'b00;
      b_tb=2'b01;
      #10;
      a_tb=2'b10;
      b_tb=2'b00;
      #10;
      $finish;
    end
endmodule
