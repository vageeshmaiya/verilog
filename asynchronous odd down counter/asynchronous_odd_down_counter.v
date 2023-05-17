module asynch_odd_down_counter(clk,rst,count);
	input clk,rst;
	output reg [2:0]count;
	always @(posedge clk or posedge rst)
	begin
		if (rst) count<=3'b001;
		else count<=count-2;
	end
endmodule
