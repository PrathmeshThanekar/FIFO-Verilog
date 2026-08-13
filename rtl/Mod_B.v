module Mod_B(
    input clk,
    input rst,
    input empty,
    input [7:0] data_in,
    output reg [7:0] data_out,
    output reg rd_en
);



always @(posedge clk) begin

    if (rst) begin
        rd_en       <= 1'b0;
        data_out    <= 8'd0;
        
    end

    else begin

        // Default: no read request
        rd_en <= 1'b0;

        // Data from previous FIFO read is now available
        if (empty) begin
            rd_en <= 0;
        end

        // Request another FIFO read
        else if (!empty) begin
            rd_en <= 1'b1;
            data_out <= data_in;
        end
    end

end

endmodule