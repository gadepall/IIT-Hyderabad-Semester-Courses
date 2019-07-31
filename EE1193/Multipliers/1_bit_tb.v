module mul_tb;
	reg a,b,c,d;
	wire e,f;
	reg clk,reset;
	mul m1(e,f,a,b,c,d);


	initial begin
		clk = 0;
		c = 1;
		d = 1;
		reset <= 0 ;
	end
   
	always #10 clk = ~clk;

	initial begin
		 a = 1'b0 ;b = 1'b0;
		 #20  a = 1'b0 ;b = 1'b1;
		 #20  a = 1'b1 ;b = 1'b0;
		 #20  a = 1'b1 ;b = 1'b1;
		 #100  $finish;
	end

	initial begin
		$dumpfile ("1_bit.vcd");
		$dumpvars;
		$monitor(" At time %t,  %b  %b     %b %b %b  %b", $time, f,e,a,b,c,d);
	end

endmodule