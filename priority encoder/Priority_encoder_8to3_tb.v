module encoder_tb;
	reg [7:0]a_tb;
	reg e_tb;
	wire [2:0]y_tb;
	encoder e1(.a(a_tb),.e(e_tb),.y(y_tb));
	initial
	begin
		e_tb=1'b0; a_tb=$random; #20;
		e_tb=1'b1; a_tb=$random; #20;
		e_tb=1'b1; a_tb=$random; #20;
		e_tb=1'b1; a_tb=$random; #20;
		$finish;
	end
endmodule

