module ha (
    input   a, b,
    output  s, c
);
    assign s = a ^ b;
    assign c = a & b;
endmodule

module generateExemple #(
    parameter N = 4
) (
    input   [N-1:0] a, b,
    output  [N-1:0] s, c
);
    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin
            ha u0 (a[i], b[i], s[i], c[i]);
        end
    endgenerate
    
endmodule