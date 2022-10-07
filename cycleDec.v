// cyclic (7, 4) code with polynomial 1+X^1+X^3
// input m is reversed message sequence
// output u is result of the modulo calculation

module cycleDec (
    input   clk,
            nrst,
            m,
    output  reg lfsr1,
                lfsr2,
                lfsr3
);
    wire fb = (m != lfsr3);

    always @(posedge clk or negedge nrst) begin
        if (!nrst)
            lfsr1 <= 1'b0;
        else begin
            lfsr1 <= fb;
        end
    end

    always @(posedge clk or negedge nrst) begin
        if (!nrst)
            lfsr2 <= 1'b0;
        else begin
            lfsr2 <= (fb != lfsr1);
        end
    end

    always @(posedge clk or negedge nrst) begin
        if (!nrst)
            lfsr3 <= 1'b0;
        else begin
            lfsr3 <= lfsr2;
        end
    end
    
endmodule