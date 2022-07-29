module lshift_4b_reg1 ( 	input d, clk, rst,
                            output reg [3:0] out
);
	always @ (posedge clk) begin
		if (!rst) begin
			out <= 0;
		end else begin
			out <= {out[2:0], d};
		end
	end
endmodule
// this makes unnecessary MUXes for syncronize each rst signals.

module lshift_4b_reg2 ( 	input d, clk, rst,
                            output reg [3:0] out
);
	always @ (posedge clk or negedge rst) begin
		if (!rst) begin
			out <= 0;
		end else begin
			out <= {out[2:0], d};
		end
	end
endmodule