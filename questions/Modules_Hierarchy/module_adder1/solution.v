// Top-level module: Adds two 32-bit inputs using two 16-bit adders (add16)
module top_module(
  input [31:0] a,   // 32-bit input A
  input [31:0] b,  // 32-bit input B
  output [31:0] sum  // 32-bit output sum = a + b
);
wire cout1, cout2;  // Internal carry wires between the two 16-bit adders
  
  add16 add1(      // Lower 16-bit addition (bits 0–15)
      .a(a[15:0]), 
      .b(b[15:0]), 
      .cin(1'b0),       // No initial carry-in, so cin = 0
      .sum(sum[15:0]), 
      .cout(cout1) );     // Carry-out is passed to next stage
  
  add16 add2(       // Upper 16-bit addition (bits 16–31)
      .a(a[31:16]), 
      .b(b[31:16]), 
      .cin(cout1),       // Uses carry-out from first adder as carry-in
      .sum(sum[31:16]), 
      .cout(cout2) );
  
endmodule
