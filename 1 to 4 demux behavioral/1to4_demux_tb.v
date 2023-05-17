module demux_tb;
	reg a_tb;
	reg [1:0]s_tb;
	wire [3:0]y_tb;
	demux d1(.a(a_tb),.s(s_tb),.y(y_tb));
	initial
	begin
		a_tb=1;
		s_tb=2'b00;
		#20
		repeat (3)
		begin
			s_tb=s_tb+1;
			#20;
		end
		#30;
		a_tb=0;
		s_tb=2'b00;
		#20
		repeat (3)
		begin
			s_tb=s_tb+1;
			#20;
		end
	end
endmodule
