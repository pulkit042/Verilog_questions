// In this solution I will be uisng 'by name' approach. Kindly for practice use both the approaches.
// For clarity in both approaches kindly go through the theory I provided in the question.

module top_module (
    input a,    // First input
    input b,    // Second input
    output out  // Output from mod_a instance
);

// Instantiate mod_a:
// - Connect 'a' to 'in1' of mod_a
// - Connect 'b' to 'in2' of mod_a
// - Connect 'out' from mod_a to top_module's output
mod_a instance1 (
    .in1(a),    // Connect 'a' to 'in1'
    .in2(b),    // Connect 'b' to 'in2'
    .out(out)   // Connect 'out' to top_module's 'out'
);

endmodule
