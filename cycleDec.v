// cyclic (7, 4) code with polynomial 1+X^1+X^3
// input m is reversed message sequence
// output u is result of decoding

module cycleDec #(parameter [3:0] P = 4'b1101)(
    input   clk,
            rst,
            m,
    output  reg [2:0] u
);
    reg fb;
    integer j;
    always @ (posedge clk or negedge rst) begin
        if (rst == 0)
            u <= 3'b000;
        else begin
            // feedback = u[2] xor m
            if (u[2] != m)
                fb <= 1;
            else
                fb <= 0;
            for (j = 3; j > 1; j = j - 1) begin
                if (P[j] == 1)
                    if (u[j - 1] != fb)
                        u[j] = 1;
                    else
                        u[j] = 0;
                else
                    u[j] = u[j - 1];
            end
            u[0] <= fb;
        end 

    end
    
endmodule