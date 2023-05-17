module jk_ff(j,k,clk,rst,q,qb);
	input j,k,clk,rst;
	output reg q;
	output qb;
	always @(posedge clk)
	begin
		if(rst) q<=0;
		else if ({j,k}==2'b00) q<=q;
		else if ({j,k}==2'b01) q<=0;
		else if ({j,k}==2'b10) q<=1;
		else q<=~q;
	end
	assign qb=~q;
endmodule


