`include "mem_FSM.v"

module top #(
	parameter data_width,
	parameter ad_width)
       	(clk,rst,start,fail,done);

wire clk,rst,start;
reg fail,done;
wire reset,preset,
module mem_FSM(
	.rst(rst),
	.clk(clk),
	.start(start),
	.fail(fail),
	.done(done),
	.reset(reset),
	.preset(preset),
        .en(en),.up_down(up_down),.carry(carry),.read(read),.write(write),.data(data),.is_equal(is_equal)
);


endmodule
