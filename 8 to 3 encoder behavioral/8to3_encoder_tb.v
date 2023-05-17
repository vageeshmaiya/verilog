module encoder_tb;
	reg [7:0]a_tb;
	wire [2:0]y_tb;
	encoder e1(.a(a_tb),.y(y_tb));
	initial
	begin
		a_tb=8'b00000001;
		#20;
		repeat (7)
		begin
			a_tb = a_tb*2;
			//$display ("a_tb = %b",a_tb);
			#20;
		end
		a_tb=8'b00000000;
		#20;
		$finish;
	end
endmodule