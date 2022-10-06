module dff (
    input   clk, nrst, d,
    output  reg q
);
    always @(posedge clk, negedge nrst) begin
        if (nrst == 0)
            q <= 0;
        else 
            q <= d;
    end
endmodule