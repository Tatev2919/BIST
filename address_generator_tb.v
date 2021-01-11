module address_generator_tb;
	reg clk,reset,preset,en,up_down;
	wire carry;
	wire [7:0] address;

	initial begin 
		$dumpfile("v.vcd");
		$dumpvars();
	end
	address_generator a_g1 (
		.clk(clk),
		.reset(reset),
		.preset(preset),
		.en(en),
		.up_down(up_down),
		.address(address),
		.carry(carry));
	initial begin 
		clk = 0;
		reset = 1;
		#25;
		reset = 0;
		#20;
		preset = 1;
		#25;
		preset = 0;
		#15;
		en = 1;
		up_down = 1;
		#500;
		up_down = 0;
		#5000;
		$finish;
	end	
	initial begin 
		forever #20 clk = ~clk;
	end
endmodule
