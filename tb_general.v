module tb_general;
reg clk, rst;
wire [0:1] out;

    always #5 clk = ~clk;

    oddBitCounter obc(.clk(clk), .nrst(rst), .cnt(out));

    initial begin
        clk <= 1;
        rst <= 0;
        #15 rst <= 1;
    end
endmodule