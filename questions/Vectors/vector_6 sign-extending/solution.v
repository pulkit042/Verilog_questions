module top_module (
    input [7:0] in,      // 8-bit input
    output [31:0] out    // 32-bit output
);

// Sign extension:
// - Replicate the sign bit (in[7]) 24 times to fill the upper bits
// - Concatenate with the original 8-bit input
  
assign out = { {24{in[7]}}, in };

endmodule
