module SISO_shift_register (
    input  wire clk,     
    input  wire rst,     
    input  wire serial_in, 
    output reg  [2:0] q   
);

always @(posedge clk) begin
    if (rst)
        q <= 3'b000;          
    else
        q <= {q[1:0], serial_in}; 
end

endmodule
