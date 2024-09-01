module clk_div (
	input clk_i,	
	output clk_o
);

	reg [26 : 0] counter;
	
	always @(posedge clk_i) begin
		counter <= counter + 27'b1;
	end
	
	assign clk_o = counter[26];

endmodule
