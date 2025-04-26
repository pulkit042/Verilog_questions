module top_module (
    input [4:0] a, b, c, d, e, f,   // Six 5-bit input signals
    output [7:0] w, x, y, z         // Four 8-bit output signals
);

// Pack all inputs together, then split into w, x, y, z:
// a, b, c, d, e, f are concatenated in order
// 2 extra bits '11' are added at the end to fill up 32 bits
  
assign {w, x, y, z} = {a, b, c, d, e, f, 2'b11};

endmodule
