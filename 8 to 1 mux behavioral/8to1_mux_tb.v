module mux_tb;
  reg [2:0]s_tb;
  reg [7:0]a_tb;
  wire y_tb;
  integer i;
  mux m1(.s(s_tb),.a(a_tb),.y(y_tb));
  initial
    begin
      $dumpfile("mux.vcd");
      $dumpvars;
      a_tb = 8'b10010001;
      s_tb = 3'b000;
      #10;
      $finish;
    end
endmodule
