`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2026 04:59:40 PM
// Design Name: 
// Module Name: initial_math
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


module initial_math(
    input   signed  [31:0]  angle,
    input            [0:0]  new_angle_available,
    input   signed  [31:0]  target_angle, 
    input            [0:0]  new_target_angle_available,
//    input    [0:0]  new_target_velocity_available,
//    input   [31:0]  target_velocity,
//    input   [31:0]  velocity_in,
    
    input           [63:0]  dt,
    input   signed  [31:0]  error_in,
    input   signed  [31:0]  integral_in,
    
    output  signed  [31:0]  error_out,
    output  signed  [31:0]  integral_out, 
    output  signed  [31:0]  derivative_out
    );
    
    reg     signed  [31:0]  error;
    reg     signed  [31:0]  integral; 
    reg     signed  [31:0]  derivative;
    
    assign error_out = error; 
    assign integral_out = integral; 
    assign derivative_out = derivative; 
    
    always @ (posedge new_angle_available) begin 
//        error = target_velocity - velocity_in; 
        error = target_angle - angle; 
        integral = integral_in + error * dt; 
        if (new_target_angle_available == 1) begin 
            integral = 0;
        end 
        derivative = (error - error_in) / dt; 
    end
    
    
    
endmodule
