module top_module (
    input a, b, c, d, e,      // 5 individual inputs
    output [24:0] out         // 25-bit output
);

// Logic:
// For each input (a, b, c, d, e):
// - Replicate it 5 times to form a 5-bit vector
// - XNOR (~ ^) it with the combined vector {a, b, c, d, e}
// - Store each 5-bit result into the output at different positions

assign out[24:20] = ~{5{a}} ^ {a,b,c,d,e}; // XNOR of 5x 'a' with {a,b,c,d,e}
assign out[19:15] = ~{5{b}} ^ {a,b,c,d,e}; // XNOR of 5x 'b' with {a,b,c,d,e}
assign out[14:10] = ~{5{c}} ^ {a,b,c,d,e}; // XNOR of 5x 'c' with {a,b,c,d,e}
assign out[9:5]   = ~{5{d}} ^ {a,b,c,d,e}; // XNOR of 5x 'd' with {a,b,c,d,e}
assign out[4:0]   = ~{5{e}} ^ {a,b,c,d,e}; // XNOR of 5x 'e' with {a,b,c,d,e}

endmodule
