`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2026 08:17:54 PM
// Design Name: 
// Module Name: FIFO_tb
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


module FIFO_tb();
    reg clk, rst;
    reg [7:0] data_in;
    wire [7:0] data_out;
    
    
    FIFO_Top  uut(clk, rst, data_in, data_out);
    
    always begin 
    # 5 clk = ~ clk;
    end
    initial 
    begin 
    {clk, rst, data_in} = 0; 
    #10;
    rst = 1;
    #10;
    rst = 0;
    #10;
    data_in = 1;
    #10;
    data_in = 2;
    #10;
    data_in = 3;
    #10;
    data_in = 4;
    #10;
    data_in = 5;
    #10;
    data_in = 6;
    #10;
    data_in = 7;
    #10;
    data_in = 8;
    #10;
    data_in = 9;
    #10;
    data_in = 10;
    
    #60;
    $stop;
    end
endmodule
