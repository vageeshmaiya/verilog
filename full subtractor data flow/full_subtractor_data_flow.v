module fs(a,b,c,borrow,diff);
  input a,b,c;
  output diff,borrow;
  assign diff = a^b^c;
  assign borrow = ((~a)&b)|((~a)&c)|(c&b);
endmodule
