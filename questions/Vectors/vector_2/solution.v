module top_module( 
    input [31:0] in,   // 32-bit input
    output [31:0] out  // 32-bit output
);

// Swap the positions of the 4 bytes:
// - Move byte 0 (bits 7:0) to byte 3 (bits 31:24)
// - Move byte 1 (bits 15:8) to byte 2 (bits 23:16)
// - Move byte 2 (bits 23:16) to byte 1 (bits 15:8)
// - Move byte 3 (bits 31:24) to byte 0 (bits 7:0)

assign out[31:24] = in[7:0];    
assign out[23:16] = in[15:8];   
assign out[15:8]  = in[23:16];  
assign out[7:0]   = in[31:24];  
endmodule
