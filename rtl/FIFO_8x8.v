`timescale 1ns / 1ps

module FIFO_8x8(
    input clk, rst, wrt_en, rd_en,
    output empty,
    output full,
    input [7:0] data_in,
    output reg [7:0] data_out
);

    reg [2:0] wrt_ptr;
    reg [2:0] rd_ptr;

    reg [7:0] mem [0:7];

    reg [3:0] count;

    integer i;

    assign empty = (count == 0);
    assign full  = (count == 8);

    always @(posedge clk) begin

        if (rst) begin
            wrt_ptr <= 3'd0;
            rd_ptr  <= 3'd0;
            count   <= 4'd0;
            data_out <= 8'd0;

            for (i = 0; i < 8; i = i + 1)
                mem[i] <= 8'd0;
        end

        else begin

            // WRITE
            if (wrt_en && !full) begin
                mem[wrt_ptr] <= data_in;
                wrt_ptr <= wrt_ptr + 1'b1;
            end

            // READ
            if (rd_en && !empty) begin
                data_out <= mem[rd_ptr];
                rd_ptr <= rd_ptr + 1'b1;
            end

            // COUNT
            case ({wrt_en && !full, rd_en && !empty})

                2'b10: count <= count + 1'b1; // write only

                2'b01: count <= count - 1'b1; // read only

                2'b11: count <= count;        // read + write

                2'b00: count <= count;        // nothing

            endcase

        end
    end

endmodule