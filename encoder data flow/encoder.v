module enc(a,b,c,d,e0,e1);
  input a,b,c,d;
  output e0,e1;
  assign e0 = b|a;
  assign e1 = a|c;
endmodule
