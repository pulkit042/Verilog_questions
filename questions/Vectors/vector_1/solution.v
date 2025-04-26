module top_module ( 
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0  ); 
    assign outv = vec[2:0];
    assign o2 = vec[2];
    assign o1 = vec[1];
    assign o0 = vec[0];
endmodule



module top_module ( 
    input wire [2:0] vec,   // 3-bit input vector
    output wire [2:0] outv, // 3-bit output vector (copy of input)
    output wire o2,         // Individual bit outputs
    output wire o1,
    output wire o0  
);

  assign outv = vec[2:0];    // MAKE A HABIT TO WRITE THE BITS OF ALL WIRES 

 assign o2 = vec[2];  // MSB
 assign o1 = vec[1];  
 assign o0 = vec[0];  // LSB

endmodule
