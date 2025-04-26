module top_module( 
    input [2:0] a,  // 3-bit input 'a'
    input [2:0] b,  // 3-bit input 'b'

    output [2:0] out_or_bitwise,    // Bitwise OR result
    output       out_or_logical,    // Logical OR result
    output [5:0] out_not            // Bitwise NOT of a and b
);

assign out_or_bitwise = a | b;
assign out_or_logical = a || b;

// Bitwise NOT:
// - Inverts each bit of 'b' and stores in the upper half of out_not
// - Inverts each bit of 'a' and stores in the lower half of out_not
assign out_not[5:3] = ~b;  // NOT of b
assign out_not[2:0] = ~a;  // NOT of a

endmodule
