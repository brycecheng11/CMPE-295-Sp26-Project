`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2026 04:59:40 PM
// Design Name: 
// Module Name: term_calculation
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


module term_calculation(
    input    [0:0]  clock, 
    input   [31:0]  error,
    input   [31:0]  integral, 
    input   [31:0]  derivative, 
    
    input   [31:0]  k_p,
    input   [31:0]  k_i,
    input   [31:0]  k_d,

//    output  [31:0]  p_term, 
//    output  [31:0]  i_term,
//    output  [31:0]  d_term
    output  [31:0]  output_velocity, 
    output   [0:0]  new_velocity_available
    );
    
    reg     [31:0]  p_term; 
    reg     [31:0]  i_term; 
    reg     [31:0]  d_term; 
    reg     [31:0]  interim; 
    reg     [31:0]  velocity; 
    reg      [0:0]  new_velocity; 
    
    assign output_velocity = velocity; 
    assign new_velocity_available = new_velocity; 
    
    initial begin 
        p_term = 0; 
        i_term = 0; 
        d_term = 0; 
        interim = 0; 
        velocity = 0; 
        new_velocity = 0; 
    end
    
    always @ (posedge clock) begin 
        p_term = k_p * error; 
        i_term = k_i * integral; 
        d_term = k_d * derivative; 
        interim = p_term + i_term + d_term; 
        if (velocity != interim) begin 
            velocity = interim; 
            new_velocity = 1'b1; 
        end 
        else begin 
            new_velocity = 1'b0; 
        end
    end
    
endmodule
