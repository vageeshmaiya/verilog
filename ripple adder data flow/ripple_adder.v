module ra(a,b,cin,s,cout);
  input [3:0]a,b;
  input cin;
  output [3:0]s;
  output cout;
  wire c0,c1,c2;
  assign s[0] = a[0]^b[0]^cin;
  assign c0 = (a[0]&b[0])|(b[0]&cin)|(cin&a[0]);
  assign s[1] = a[1]^b[1]^c0;
  assign c1 = (a[1]&b[1])|(b[1]&c0)|(c0&a[1]);
  assign s[2] = a[2]^b[2]^c1;
  assign c2 = (a[2]&b[2])|(b[2]&c1)|(c1&a[2]);
  assign s[3] = a[3]^b[3]^c2;
  assign cout = (a[3]&b[3])|(b[3]&c2)|(c2&a[3]);
endmodule
