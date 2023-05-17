module comparator_tb;
	reg [1:0]a_tb,b_tb;
	wire e_tb,l_tb,g_tb;
	integer i,j;
	comparator c1(.a(a_tb),.b(b_tb),.e(e_tb),.l(l_tb),.g(g_tb));
	initial
	begin
		for(i=0;i<=3;i=i+1) begin
			a_tb=i;
			for(j=0;j<=3;j=j+1) begin
				b_tb=j;
				#20;
			end
		end
		#20
		$finish;
	end
endmodule