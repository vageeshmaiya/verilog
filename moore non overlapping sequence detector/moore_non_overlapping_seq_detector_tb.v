module moore_non_overlapping_tb;
	reg clk_tb,rst_tb,d_in_tb;
	wire d_out_tb;
	moore_non_overlapping s1(.clk(clk_tb),.rst(rst_tb),.d_in(d_in_tb),.d_out(d_out_tb));
	
	initial
	begin
		clk_tb=0;
		forever
			#10 clk_tb=~clk_tb;
	end
	
	initial
	begin
		rst_tb=1;
		#20;
		rst_tb=0;
		d_in_tb=1;
		#20;
		d_in_tb=0;
		#20;
		d_in_tb=0;
		#20;
		d_in_tb=1;
		#20
		d_in_tb=0;
		#20;
		d_in_tb=1;
		#20;
		d_in_tb=1;
		#20;
		d_in_tb=1;
		#20;
		d_in_tb=0;
		#20;
		d_in_tb=1;
		#20;
		d_in_tb=1;
		#20;
		d_in_tb=0;
		#20;
		d_in_tb=0;
		#20;
		d_in_tb=1;
		#20;
		d_in_tb=1;
		#20;
		d_in_tb=0;
		#20;
		d_in_tb=1;
		#40;
		$finish;
	end
endmodule
















