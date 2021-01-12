module data_generator
#(parameter N = 8)
(
	input data,
       	output reg [N-1:0] data_in	
);
	always @(*) begin 
		data_in = {N-1{data}};
	end	
endmodule
