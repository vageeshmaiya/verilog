module ra_tb;
  reg [3:0]a_tb,b_tb;
  reg cin_tb;
  wire [3:0]s_tb;
  wire cout_tb;
  ra add1(.a(a_tb),.b(b_tb),.cin(cin_tb),.s(s_tb),.cout(cout_tb));
  initial
    begin
      $dumpfile("ripple_adder.vcd");
      $dumpvars;
      a_tb=4'b0000;
      b_tb=4'b1111;
      cin_tb=1'b1;
      #10;
      $finish;
    end
endmodule
