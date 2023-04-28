`include "def.v"

`define send_interrupt(flag_i, thres_i)\
  always @(posedge clk) begin          \
    if(reset) begin                    \
      int_flags[flag_i] <= 1'b0;       \
    end else begin                     \
      if(state[flag_i])                \
        int_flags[flag_i] <= (cnt <= thres_i) ? 1'b0 : 1'b1; \
      else                             \
        int_flags[flag_i] <= 1'b0;     \
    end                                \
  end                                  \

module dp (
    input                     clk,
    input                     reset,
    input                     cnt_rst,
    input      [`STATE_W-1:0] state,
    output reg [`STATE_W-1:0] int_flags,
    output                    R,
    output                    G,
    output                    Y
);

  // Pseudo output register
  reg Grst_r;
  reg R_r;
  reg G_r;
  reg Y_r;

  assign G = state[`S_INIT] | G_r;
  assign Y = state[`S_Y];
  assign R = state[`S_R];

  reg  [`CNT_W-1:0] cnt;
  wire [`CNT_W-1:0] cnt_zero = {`CNT_W{1'b0}};

  // Interrupts
  `send_interrupt(`S_INIT, 1021)
  `send_interrupt(`S_R, 1021)
  `send_interrupt(`S_G, 509)
  `send_interrupt(`S_Y, 509)

  // Grst_r
  always @(posedge clk) begin
    if (reset) begin
      Grst_r <= 1'b0;
    end else if (state[`S_INIT]) begin
      Grst_r <= (cnt < 1023) ? 1'b1 : 1'b0;
    end
  end

  // G_r
  always @(posedge clk) begin
    if (reset) begin
      G_r <= 1'b0;
    end else if (state[`S_G]) begin
      G_r <= ((cnt >= 127 & cnt <= 254) | (cnt >= 383 & cnt <= 510)) ? 1'b1 : 1'b0;
    end
  end

  // R_r
  always @(posedge clk) begin
    if (reset) begin
      R_r <= 1'b0;
    end else if (state[`S_R]) begin
      R_r <= (cnt <= 1024) ? 1'b1 : 1'b0;
    end
  end

  // Y_r
  always @(posedge clk) begin
    if (reset) begin
      Y_r <= 1'b0;
    end else if (state[`S_Y]) begin
      Y_r <= (cnt <= 512) ? 1'b1 : 1'b0;
    end
  end

  // cnt
  wire do_cnt = |state;
  always @(posedge clk, posedge reset) begin
    if (reset) begin
      cnt <= cnt_zero;
    end else if (cnt_rst) begin
      cnt <= cnt_zero;
    end else if (do_cnt) begin
      cnt <= cnt + 1;
    end
  end

endmodule
