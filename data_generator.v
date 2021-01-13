module data_generator
#(parameter N = 8)
(
	input data,
       	output [N-1:0] data_in	
);
assign data_in = {N-1{data}};
endmodule
