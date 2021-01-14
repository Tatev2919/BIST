module data_generator #
	(parameter N = 8)
	(data,data_in);
input wire data;
output [N-1:0] data_in;

assign data_in = {N{data}};

endmodule
