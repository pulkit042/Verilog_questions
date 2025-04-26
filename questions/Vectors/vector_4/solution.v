module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
  assign out_and = (in[0] & in[1] & in[2] & in[3]) ;   // Output 1 with AND logic of all 4 bits of INPUT
  assign out_or = (in[0] | in[1] | in[2] | in[3]) ;   //  Output 2 with OR logic of all 4 bits of INPUT
  assign out_xor = (in[0] ^ in[1] ^ in[2] ^ in[3]) ;  //  Output 3 with XOR logic of all 4 bits of INPUT
endmodule
