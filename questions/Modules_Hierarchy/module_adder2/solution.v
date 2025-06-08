// Top-level module: 32-bit adder built using two 16-bit adders
module top_module (
    input [31:0] a,        // 32-bit input A
    input [31:0] b,        // 32-bit input B
    output [31:0] sum      // 32-bit output SUM
);

  wire [15:0] sum1, sum2; // Intermediate wires for lower and upper 16-bit sums

    // Carry wires
    wire out1, out2;
    wire in1;

    assign in1 = 1'b0;  // Set initial carry input to 0 for the lower 16-bit adder

    // Instantiate first 16-bit adder for lower 16 bits
    add16 inst1 (
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(in1),
        .sum(sum1),
        .cout(out1)
    );

    // Instantiate second 16-bit adder for upper 16 bits with carry from lower adder
    add16 inst2 (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(out1),
        .sum(sum2),
        .cout(out2)
    );

  assign sum = {sum2, sum1};   // Combine upper and lower 16-bit sums to form full 32-bit sum
endmodule


// 1-bit Full Adder module
module add1 (
    input a,         // Input bit a
    input b,         // Input bit b
    input cin,       // Carry-in
    output sum,      // Sum output
    output cout      // Carry-out
);

    // Full adder logic
    assign sum  = a ^ b ^ cin;                          // Sum logic : XOR of inputs
  assign cout = (a & b) | (b & cin) | (a & cin);       // Carry logic : Majority function

endmodule
