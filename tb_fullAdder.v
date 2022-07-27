module fullAdderTB;
    reg a, b, c;
    wire s, co;
    integer i;

    fullAdder fa0 ( .a  (a),
                    .b  (b),
                    .c  (c),
                    .s  (s),
                    .co (co)
    );

    initial begin
        a <= 0;
        b <= 0;

        for (i = 0; i < 7; i = i + 1) begin
            {a, b, c} = i;
            #10;
        end
    end
    
endmodule