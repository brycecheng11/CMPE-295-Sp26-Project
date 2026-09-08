`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2026 02:50:08 PM
// Design Name: 
// Module Name: pid_math
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


module pid_math(
    input    [0:0]  clock, 
    input   [31:0]  angle,
    input    [0:0]  new_angle_available,
    input    [0:0]  new_target_velocity_available,
    input   [31:0]  target_velocity,
    input   [31:0]  integral_in,
    input   [31:0]  velocity_in,
    input   [31:0]  k_p,
    input   [31:0]  k_i,
    input   [31:0]  k_d,
    input   [31:0]  error_in,
    input   [31:0]  time_in,
    output   [0:0]  new_velocity_available,
    output  [31:0]  error_out,
    output  [31:0]  time_out,
    outpu   [31:0]  integral_out, 
    output  [31:0]  velocity_out
    );
    
    
    // internal registers 
    reg     [31:0]  error; 
    reg     [31:0]  curr_clock; 
    reg     [31:0]  dt; 
    reg     [31:0]  integral; 
    reg     [31:0]  derivative; 
    reg     [31:0]  p_term; 
    reg     [31:0]  i_term; 
    reg     [31:0]  d_term; 
    
    // initialization of registers 
    initial begin 
        error = 0; 
        dt = 0; 
        integral = 0;
        derivative = 0; 
        p_term = 0; 
        i_term = 0; 
        d_term = 0; 
    end 
    
    always @ (posedge new_angle_available) begin 
        // internal calculations 
        error = target_velocity - velocity_in; 
        dt <= $stime - time_in; 
        integral <= error * dt; 
        derivative <= (error - error_in) / dt; 
        p_term = k_p * error; 
        i_term = k_i * integral; 
        d_term = k_d * derivative; 
        error_out = error; 
        time_out = $stime; 
        velocity_out = p_term + i_term + d_term; 
        new_velocity_available = 1; 
        new_velocity_available = 0; 
    end
    
    
    
endmodule
