module exTFF (
    input       clk,
                rst,
                d,
    output  reg q
);
    always @ (posedge clk or negedge rst) begin
        if (rst == 0)
            q <= 0;
        else
            if (d == 1)
                q <= ~q;
            else
                q <= q;
    end

endmodule

module exCombLogic (
    input       a, b, c, d, e,
    output  reg o
);
    always @ (a or b or c or d) begin
        o <= ((a & b) | (c ^ d) & ~e);
    end
     
endmodule