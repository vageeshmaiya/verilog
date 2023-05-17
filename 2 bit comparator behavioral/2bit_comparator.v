module comparator(a,b,l,g,e);
	input [1:0]a,b;
	output reg e,l,g;
	always @(a,b)
	begin
		if (a==b) {e,l,g}=3'b100;
		else if (a<b) {e,l,g}=3'b010;
		else if (a>b) {e,l,g}=3'b001;
		else {e,l,g}=3'b000;
	end
endmodule 
