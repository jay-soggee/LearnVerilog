module exCombLogic (
    input       a, b, c, d, e,
    output      z
);
    assign z = ((a & b) | (c ^ d) & ~e);
    
endmodule
/*

a   ┬ and           ┐
b   ┘               ├ or -  z
c   ┬ xor   ┬ and   ┘
d   ┘       │
e          ○┘

*/