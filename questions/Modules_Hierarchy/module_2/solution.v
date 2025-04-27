module top_module ( 
    input a,    // Input signal 'a'
    input b,    // Input signal 'b'
    input c,    // Input signal 'c'
    input d,    // Input signal 'd'
    output out1, // First output from mod_a
    output out2  // Second output from mod_a
);

// Instantiate mod_a module:
// - Connect 'a', 'b', 'c', 'd' to inputs 'in1', 'in2', 'in3', 'in4' of mod_a
// - Connect outputs 'out1' and 'out2' from mod_a to top_module outputs
  
mod_a inst1 (
    .in1(a),     // 'a' → 'in1'
    .in2(b),     // 'b' → 'in2'
    .in3(c),     // 'c' → 'in3'
    .in4(d),     // 'd' → 'in4'
    .out1(out1), // 'out1' → 'out1'
    .out2(out2)  // 'out2' → 'out2'
);

endmodule
