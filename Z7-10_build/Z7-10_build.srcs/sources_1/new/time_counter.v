`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2026 01:15:02 AM
// Design Name: 
// Module Name: time_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module time_counter(

    input wire clock, 
    input wire reset,
    output reg [63:0] time_curr

    );
    
    always @(posedge clock) begin
        if (reset)
            time_curr <= 64'd0;
        else
            time_curr <= time_curr + 64'd1;
     end
endmodule
