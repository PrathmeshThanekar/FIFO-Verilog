module FIFO_Top(
    input clk,
    input rst,
    input [7:0] data_in,
    output [7:0] data_out
);

wire [7:0] data_out_mod_a;
wire [7:0] data_out_fifo;

wire full;
wire empty;

wire wrt_en;
wire rd_en;

Mod_A m_a(
    .clk(clk),
    .rst(rst),
    .full(full),
    .data_in(data_in),
    .data_out(data_out_mod_a),
    .wrt_en(wrt_en)
);

FIFO_8x8 fifo(
    .clk(clk),
    .rst(rst),
    .wrt_en(wrt_en),
    .rd_en(rd_en),
    .empty(empty),
    .full(full),
    .data_in(data_out_mod_a),
    .data_out(data_out_fifo)
);

Mod_B m_b(
    .clk(clk),
    .rst(rst),
    .empty(empty),
    .data_in(data_out_fifo),
    .data_out(data_out),
    .rd_en(rd_en)
);

endmodule