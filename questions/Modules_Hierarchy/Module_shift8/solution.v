module top_module ( 
    input clk, 
    input [7:0] d,  // 8-bit data input
    input [1:0] sel, // Select signal
    output [7:0] q   // 8-bit output
);
    wire [7:0] q1, q2, q3;  // Intermediate signals for pipeline stages
  
  my_dff8 my_dff1(.clk(clk), .d(d), .q(q1));       // Stage 1
  my_dff8 my_dff2(.clk(clk), .d(q1), .q(q2));     // Stage 2
  my_dff8 my_dff3(.clk(clk), .d(q2), .q(q3));    // Stage 3
    
  always @(*) begin  // Multiplexer logic to select output based on sel
        case(sel)
            2'd0: q=d;
            2'd1: q=q1;
            2'd2: q=q2;
            2'd3: q=q3;
        endcase    
    end
