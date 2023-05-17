module decoder(a,b,y);
	input a,b;
	output reg [3:0]y;
	always @(a,b)
	begin
		if ({a,b}==2'b00) y=4'b1000;
		else if ({a,b}==2'b01) y=4'b0100;
		else if ({a,b}==2'b10) y=4'b0010;
		else if ({a,b}==2'b11) y=4'b0001;
		else y=4'b0000;
	end
endmodule
