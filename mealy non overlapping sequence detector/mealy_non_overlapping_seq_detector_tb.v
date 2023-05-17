module mealy_non_overlapping_seq_detector_tb;
	reg clk_tb,rst_tb,din_tb;
	wire dout_tb;
	mealy_non_overlapping_seq_detector n1(.clk(clk_tb),.rst(rst_tb),.din(din_tb),.dout(dout_tb));
	
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
		din_tb=1;
		#20;
		din_tb=0;
		#20;
		din_tb=0;
		#20;
		din_tb=1;
		#20;
		din_tb=0;
		#20;
		din_tb=1;
		#20;
		din_tb=1;
		#20;
		din_tb=0;
		#20;
		din_tb=0;
		#20;
		din_tb=1;
		#20;
		din_tb=1;
		#20;
		din_tb=1;
		#20;
		$finish;
	end
endmodule








