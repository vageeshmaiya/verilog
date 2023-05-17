module demux(a,s,y);
	input a;
	input [1:0]s;
	output reg [3:0]y;
	always @(a,s)
	begin
		if (s==2'b00) begin
		y=4'bxxxx;
		y[0]=a;
		end
		else if (s==2'b01) begin
		y=4'bxxxx;
		y[1]=a;
		end
		else if (s==2'b10) begin
		y=4'bxxxx;
		y[2]=a;
		end
		else if (s==2'b11) begin
		y=4'bxxxx;
		y[3]=a;
		end
		else y=4'bxxxx;
	end
endmodule
