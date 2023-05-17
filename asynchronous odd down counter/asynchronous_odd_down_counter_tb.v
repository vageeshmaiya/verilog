module asynch_odd_down_counter_tb;
	reg clk_tb,rst_tb;
	wire [2:0]count_tb;
	asynch_odd_down_counter o1(.clk(clk_tb),.rst(rst_tb),.count(count_tb));

	task get_rst;
		input rst_i;
		output rst_o;
		begin
			rst_o=~rst_i;
		end
	endtask

	initial
	begin
		clk_tb=0;
		rst_tb=1;
		#20;
		get_rst(rst_tb,rst_tb);
		#40;
		get_rst(rst_tb,rst_tb);
		#20;
		get_rst(rst_tb,rst_tb);
		#300 $finish;
	end

	always
		#10 clk_tb=~clk_tb;
endmodule
		
