module tb_cycleDec;
reg clk, rst, m;
wire [0:2] p;

    always #5 clk = ~clk;

    cycleDec cycleDecoder(.clk(clk), .nrst(rst), .m(m), .lfsr(p));

    initial begin
        clk <= 1;
        rst <= 0;
        m <= 0;
        #15 rst <= 1;
        m <= 1;
        #10 m <= 1;
        #10 m <= 0;
        #10 m <= 1;
        #10 m <= 0;
        #10 m <= 0;
        #10 m <= 0;
        #10 m <= 0;
    end
endmodule