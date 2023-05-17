module decoder_tb;
	reg a_tb,b_tb;
	wire [3:0]y_tb;
	decoder d1(.a(a_tb),.b(b_tb),.y(y_tb));
	initial
	begin
		{a_tb,b_tb} = 2'b00;
		#20;
		repeat (3)
		begin
			{a_tb,b_tb}={a_tb,b_tb}+1;
			#20;
		end
	end
endmodule
