module tb_det1011;
    reg         clk, in, rst;
    wire        out;

    always #10 clk = ~clk;

    det1011 u0 ( .clk(clk), .rst(rst), .in(in), .out(out) );
    initial begin
        clk <= 0;
        rst <= 0;
        in <= 0;
        repeat (5) @ (posedge clk);
        rst <= 1;
        @ (posedge clk) in <= 1;
        @ (posedge clk) in <= 0;
        @ (posedge clk) in <= 1;
        @ (posedge clk) in <= 1;
        @ (posedge clk) in <= 0;
        @ (posedge clk) in <= 0;
        @ (posedge clk) in <= 1;
        @ (posedge clk) in <= 1;
        @ (posedge clk) in <= 0;
        @ (posedge clk) in <= 1;
        @ (posedge clk) in <= 1;
        @ (posedge clk) in <= 0;
    end
endmodule