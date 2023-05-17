module moore_overlapping(clk,rst,d_in,d_out);
	input clk,rst,d_in;
	output d_out;
	parameter s0=0;
	parameter s1=1;
	parameter s2=2;
	parameter s3=3;
	parameter s4=4;
	reg [2:0]ct_st;
	reg [2:0]nt_st;

	always @(posedge clk)
	begin
		if(rst) ct_st<=s0;
		else ct_st<=nt_st;
	end
	
	always @(ct_st or d_in)
	begin
		case (ct_st)
		s0: begin
			if (d_in==1'b0) nt_st=s1;
			else nt_st=s0;
		    end
		s1: begin
			if(d_in==1'b0) nt_st=s1;
			else nt_st=s2;
		    end
		s2: begin
			if(d_in==1'b0) nt_st=s1;
			else nt_st=s3;
		    end
		s3: begin
			if(d_in==1'b0) nt_st=s4;
			else nt_st=s0;
		    end
		s4: begin
			if(d_in==1'b0) nt_st=s1;
			else nt_st=s2;
		    end
		default: nt_st=s0;
		endcase
	end
	assign d_out = ct_st==s4;
endmodule
