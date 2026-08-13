`timescale 1ns / 1ps

module Mod_A(
    input clk, rst, full,
    input [7:0] data_in,
    output reg [7:0] data_out,
    output reg wrt_en
);

always @(posedge clk) begin
    if (rst) begin
        wrt_en   <= 1'b0;
        data_out <= 8'd0;
    end
    else if (!full) begin
        wrt_en   <= 1'b1;
        data_out <= data_in;
    end
    else begin
        wrt_en <= 1'b0;
    end
end

endmodule