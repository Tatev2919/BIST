module address_generator
#(parameter ad_w = 8)	
(
	input clk,
	input reset,
	input preset,
	input en,
	input up_down,
	output carry,
	output [ad_w-1:0] address
);
reg [ad_w-1:0] add;
assign address =  add;
assign carry = (up_down&&en)?(add==((1<<ad_w)-1)):(add==0);

always @(posedge clk) begin 
	if(reset) begin 
		add <= 0;	
	end
	if(preset) begin 
		add <= -1; 
	end
	else begin 
		if(en) begin 
			if(up_down) begin 
				add <= add + 1;
			end
			else begin 
				add <= add - 1;
			end
		end
	end
end
endmodule
