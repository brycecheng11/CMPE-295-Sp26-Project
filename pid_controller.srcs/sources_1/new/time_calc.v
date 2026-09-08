`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2026 01:54:45 AM
// Design Name: 
// Module Name: time_calc
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


module time_calc(
    input    [0:0]  clock,
    input    [0:0]  new_angle_available,
    input    [0:0]  time_curr,
    input   [63:0]  time_prev,
    
    output   [0:0]  new_angle_pass_on,
    output  [63:0]  dt_out, 
    output  [63:0]  new_time_out
    );
    
    reg     [63:0]  dt;
    reg     [63:0]  new_time; 
    
    assign new_angle_pass_on = new_angle_available; 
    assign dt_out = dt; 
    assign new_time_out = new_time;
    
    always @ (posedge new_angle_available) begin 
        dt = time_curr - time_prev; 
        new_time = time_curr; 
    end
    
    
endmodule
