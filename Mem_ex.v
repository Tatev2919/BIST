module Mem_ex
 #(parameter d_width=8,
   parameter a_height=10 
)
 (
	input clk,  
 	input [d_width-1:0] din,
	input wr, 
	input read, 
	input [a_height-1:0] addr, 
	output reg [d_width-1:0] out   
);
localparam depth = (1 << a_height);
reg [d_width-1:0] mem [depth-1:0];
always @(posedge clk) begin
	if (wr) begin 
		mem [addr] <= din;
	end
	else if (read) begin   
		out <= mem [addr];
	end
end

endmodule
