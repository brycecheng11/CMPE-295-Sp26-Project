`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2026 02:02:55 AM
// Design Name: 
// Module Name: prev_value_flip_flop
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


module prev_value_flip_flop(
    input            [0:0]  clock, 
    input   signed  [31:0]  error_in, 
    input   signed  [31:0]  integral_in, 
    input           [63:0]  time_in, 
    
    output  signed  [31:0]  error_out, 
    output  signed  [31:0]  integral_out, 
    output  signed  [63:0]  time_out

    );
    
    reg     signed  [31:0]  error;
    reg     signed  [31:0]  integral;
    reg     signed  [63:0]  time_interim; 
    
    assign error_out = error;
    assign integral_out = integral; 
    assign time_out = time_interim; 
    
    always @ (posedge clock) begin 
        error = error_in; 
        integral = integral_in; 
        time_interim = time_in; 
    end 
    
    
endmodule
