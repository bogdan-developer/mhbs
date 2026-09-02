`default_nettype none
`timescale 1ns / 1ps

module tt_um_bogdan (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

  // Instantiate the Clash-generated topEntity
  topEntity clash_design (
      .r_input(ui_in),
      .in_out_put(uio_in),
      .result(uo_out)
  );

  // Bidirectional pins disabled as outputs
  assign uio_out = 0;
  assign uio_oe  = 0;

endmodule