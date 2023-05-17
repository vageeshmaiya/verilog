module mealy_non_overlapping_seq_detector(clk,rst,din,dout);
	input clk,rst,din;
	output dout;
	reg [1:0]ct_st,nt_st;
	parameter s0=0;
	parameter s1=1;
	parameter s2=2;
	parameter s3=3;
	
	always @(posedge clk)
	begin
		if (rst) ct_st<=s0;
		else ct_st<=nt_st;
	end
	
	always @(ct_st or din)
	begin
		case (ct_st)
		s0: begin
			if (din==1'b0) nt_st=s1;
			else nt_st=s0;
		    end
		s1: begin
			if (din==1'b0) nt_st=s1;
			else nt_st=s2;
		    end
		s2: begin
			if (din==1'b0) nt_st=s1;
			else nt_st=s3;
		    end
		s3: begin
			if (din==1'b0) nt_st=s0;
			else nt_st=s0;
		    end
		default: nt_st=s0;
		endcase
	end

	assign dout = (ct_st==s3) && (din==0)?1:0;
endmodule


