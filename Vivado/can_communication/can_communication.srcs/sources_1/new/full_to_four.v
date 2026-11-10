`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2026 03:28:14 PM
// Design Name: 
// Module Name: full_to_four
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


module full_to_four(
    input clock,
    input [3:0] sw,
    input ps_ready,
    input pl_ready,
    input [31:0] pterm,
    input [31:0] iterm,
    input [31:0] dterm,
    input [31:0] velocity,
    output [3:0] led
    );
    
    reg     [31:0]  value; 
    
    assign led = {value[12], value[8], value[4], value[0]}; 
    
    always @(posedge clock) begin 
        case (sw)
            4'b0000: value <= 32'd0; 
            4'b0001: value <= {24'd0, 3'b000, ps_ready, 3'b000, pl_ready};
            4'b0010: value <= pterm; 
            4'b0011: value <= iterm;
            4'b0100: value <= dterm; 
            4'b0101: value <= velocity;  
            
            default: value <= 32'hFFFFFFFF; 
        endcase
    end 
    
endmodule
