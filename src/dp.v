`include "def.v"

module dp(
  input                                 clk,
  input                                 reset,
  input                                 cnt_rst,
  input               [`CMD_FLAG_W-1:0] cmd_flags,
  output reg          [`INT_FLAG_W-1:0] int_flags,
  output                                R,
  output                                G,
  output                                Y
);

  // Pseudo output register
  reg                       Grst_r;
  reg                       R_r;
  reg                       G_r;
  reg                       Y_r;
  
  // Connect pseudo output to real output
  // assign G = Grst_r | G_r;
  // assign Y = Y_r;
  // assign R = R_r;

  assign G = cmd_flags[`CMD_INIT] | G_r;
  assign Y = cmd_flags[`CMD_Y];
  assign R = cmd_flags[`CMD_R];

  reg      [`COUNTER_W-1:0] cnt;
  wire     [`COUNTER_W-1:0] cnt_zero = {`COUNTER_W{1'b0}};

  // G_rst
  always @(posedge clk, posedge reset) begin
    if(reset) begin 
      int_flags[`INT_INIT] <= 1'b0;
    end else if (cmd_flags[`CMD_INIT]) begin
      int_flags[`INT_INIT] <= (cnt < 1022) ? 1'b0 : 1'b1;
    end else
      int_flags[`INT_INIT] <= 1'b0;
  end

  // Grst_r
  always @(posedge clk, posedge reset) begin
    if(reset) begin 
      Grst_r <= 1'b0;
    end else if (cmd_flags[`CMD_INIT]) begin
      Grst_r <= (cnt < 1023) ? 1'b1 : 1'b0;
    end
  end

  // G
  always @(posedge clk, posedge reset) begin
    if(reset) begin 
      int_flags[`INT_G] <= 1'b0;
    end else if (cmd_flags[`CMD_G]) begin
      int_flags[`INT_G] <= (cnt < 510) ? 1'b0 : 1'b1;
    end else
      int_flags[`INT_G] <= 1'b0;
  end

  // G_r
  always @(posedge clk, posedge reset) begin
    if(reset) begin 
      G_r <= 1'b0;
    end else if (cmd_flags[`CMD_G]) begin
      G_r <= ( (cnt >= 127 & cnt <= 254) | (cnt >= 383 & cnt <= 510)) ? 1'b1 : 1'b0;
    end
  end

  // R
  always @(posedge clk, posedge reset) begin
    if(reset) begin 
      int_flags[`INT_R] <= 1'b0;
    end else if (cmd_flags[`CMD_R]) begin
      int_flags[`INT_R] <= (cnt <= 1021) ? 1'b0 : 1'b1;
    end else
      int_flags[`INT_R] <= 1'b0;
  end

  // R_r
  always @(posedge clk, posedge reset) begin
    if(reset) begin 
      R_r <= 1'b0;
    end else if (cmd_flags[`CMD_R]) begin
      R_r <= (cnt <= 1024) ? 1'b1 : 1'b0;
    end
  end

  // Y 
  always @(posedge clk, posedge reset) begin
    if(reset) begin 
      int_flags[`INT_Y] <= 1'b0;
    end else if (cmd_flags[`CMD_Y]) begin
      int_flags[`INT_Y] <= (cnt <= 509) ? 1'b0 : 1'b1;
    end else
      int_flags[`INT_Y] <= 1'b0;
  end

  // Y_r
  always @(posedge clk, posedge reset) begin
    if(reset) begin 
      Y_r <= 1'b0;
    end else if (cmd_flags[`CMD_Y]) begin
      Y_r <= (cnt <= 512) ? 1'b1 : 1'b0;
    end
  end

  // cnt
  wire do_cnt = |cmd_flags;
  always @(posedge clk, posedge reset) begin
    if(reset) begin 
      cnt <= cnt_zero;
    end else if(cnt_rst) begin
      cnt <= cnt_zero;
    end else if (do_cnt) begin
      cnt <= cnt + 1;
    end
  end

endmodule
