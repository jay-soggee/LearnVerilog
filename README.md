# Learn Verilog/SystemVerilog/HDL!


```verilog
assign z = ((a & b) | (c ^ d) & ~e);


a   ──┬─ and ─────────┐
b   ──┘               ├─ or ──  z
c   ──┬─ xor ─┬─ and ─┘
d   ──┘       │
e   ─────────○┘
```
