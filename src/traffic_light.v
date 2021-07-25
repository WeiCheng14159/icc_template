`include "def.v"

module traffic_light (
  input  clk,
  input  rst,
  input  pass,
  output R,
  output G,
  output Y
);

  wire                [`STATE_W-1:0] fb_flags;
  wire                [`STATE_W-1:0] state;
  wire                [`STATE_W-1:0] int_flags;

  assign                             fb_flags = int_flags & state;
  wire                               dp_cnt_rst;

  ctrl ul_ctrl(
    .clk(clk),
    .reset(rst),
    .dp_cnt_rst(dp_cnt_rst),
    .fb_flags(fb_flags),
    .curr_state(state),
    .pass(pass)
  );

  dp ul_dp(
    .clk(clk),
    .reset(rst),
    .cnt_rst(dp_cnt_rst),
    .state(state),
    .int_flags(int_flags),
    .R(R),
    .G(G),
    .Y(Y)
  );

endmodule
