module top_module ( 
   
    input p1a, p1b, p1c, p1d, p1e, p1f,   //RHS inputs
    output p1y,          // RHS Output
    
    input p2a, p2b, p2c, p2d, // LHS inputs
    output p2y           // LHS Output
);

// Internal wires to hold intermediate results
wire and_result1, and_result2;   // For second part (p2y)
wire and_result3, and_result4;   // For first part (p1y)

// Logic for second part (p2y)
assign and_result1 = p2a & p2b;   // AND of p2a and p2b
assign and_result2 = p2c & p2d;   // AND of p2c and p2d

assign p2y = and_result1 | and_result2;   // OR the two results to produce output p2y

// Logic for first part (p1y)
assign and_result3 = p1a & p1b & p1c; // AND of p1a, p1b, and p1c
assign and_result4 = p1d & p1e & p1f; // AND of p1d, p1e, and p1f

assign p1y = and_result3 | and_result4;   // OR the two results to produce output p1y

endmodule
