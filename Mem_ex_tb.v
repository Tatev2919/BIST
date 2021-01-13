module Mem_ex_tb;
	reg clk,read,write;
	reg [3:0] address,din;
	wire [3:0] out;
	integer i;
	Mem_ex #(4,4) me(
		.clk(clk),
		.read(read),
		.wr(write),
		.din(din),
		.address(address),
		.out(out)
	);
	initial begin 
		$dumpfile("mem.vcd");
		$dumpvars();
	end
	initial begin 
		clk = 0;
		repeat(2) begin 
			for (i = 0; i < 16; i = i+1) begin 
				address = i;
				din = 0;
				write = 1;
				read = 0;
				if(i ==16) begin
					i = 0;
				end 
			end
		end
			
		repeat(2) begin 
			for (i = 15; i >= 0; i = i-1) begin 
				address = i;
				din = 0;
				write = 0;
				read = 1;
				if(i == 0) begin
					i = 15;
				end 
			end
		end
		
	end
	
	always begin 
		#20 clk = ~clk; 
	end

endmodule
