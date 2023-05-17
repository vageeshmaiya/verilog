module enc_tb;
  reg a_tb,b_tb,c_tb,d_tb;
  wire e0_tb,e1_tb;
  enc s1(.a(a_tb),.b(b_tb),.c(c_tb),.d(d_tb),.e0(e0_tb),.e1(e1_tb));
  initial
    begin
      $dumpfile("encoder.vcd");
      $dumpvars;
      a_tb=1'b0;b_tb=1'b0;c_tb=1'b0;d_tb=1'b1;
      #10;
      a_tb=1'b0;b_tb=1'b0;c_tb=1'b1;d_tb=1'b0;
      #10;
      a_tb=1'b0;b_tb=1'b1;c_tb=1'b0;d_tb=1'b0;
      #10;
      a_tb=1'b1;b_tb=1'b0;c_tb=1'b0;d_tb=1'b0;
      #10;
      $finish;
    end
endmodule
