module even_up_counter_tb;
	reg clk_tb,rst_tb;
	wire [2:0]count_tb;
	even_up_counter c1(.clk(clk_tb),.rst(rst_tb),.count(count_tb));
	initial
	begin
		clk_tb=0;
		forever
			#10 clk_tb = ~clk_tb;
	end
	
	initial
	begin
		rst_tb = 1;
		#20;
		rst_tb = 0;
		#30;
		rst_tb = 1;
		#20;
		rst_tb = 0;
		#300 $finish;
	end
endmodule
	
