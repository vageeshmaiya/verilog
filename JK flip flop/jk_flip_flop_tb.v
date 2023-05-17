module jk_ff_tb;
	reg j_tb,k_tb,clk_tb,rst_tb;
	wire q_tb,qb_tb;
	integer i;
	jk_ff f1(.j(j_tb),.k(k_tb),.clk(clk_tb),.rst(rst_tb),.q(q_tb),.qb(qb_tb));
	initial 
	begin
		clk_tb=0;
		rst_tb=1'b1;
		#30;
		rst_tb=1'b0;
		for(i=0;i<=3;i=i+1) begin
		{j_tb,k_tb} = i;
		#20;
		end
		{j_tb,k_tb} = 2'b10;
		#20;
		{j_tb,k_tb} = 2'b00;
		#20;
		{j_tb,k_tb} = 2'b11;
		#30;
		$finish;
	end
	always
		#10 clk_tb=~clk_tb;
endmodule
