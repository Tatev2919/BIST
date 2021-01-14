module Mem_ex
 #(parameter d_width=8,
   parameter a_height=10 )
  (clk, din,wr,read,addr,out);

input  wire clk,wr,read;
input  wire [a_height-1:0] addr;
input  wire [d_width-1:0] din;
output      [d_width-1:0] out;

localparam depth = (1 << a_height);
reg [d_width-1:0] mem [depth-1:0];

assign out = read ? mem[addr]:{d_width{1'bZ}}; 

always @(posedge clk) 
	if (wr)  
		mem [addr] <= din;
	
endmodule
