module oddBitCounter (
    input   clk, nrst,
    output  reg[1:0] cnt
);
    
    always @(posedge clk or negedge nrst) begin
        if (!nrst) 
            cnt <= 2'b00;
        else
            cnt <= cnt + 1;
    end
    
endmodule