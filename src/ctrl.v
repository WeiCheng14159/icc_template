`include "def.v"

module ctrl (
    input                     clk,
    input                     reset,
    output reg                dp_cnt_rst,
    input      [`STATE_W-1:0] fb_flags,
    output reg [`STATE_W-1:0] curr_state,
    input                     pass
);

  reg  [`STATE_W-1:0] next_state;
  reg  [  `CNT_W-1:0] cnt;

  wire                init_done = fb_flags[`S_INIT];
  wire                turn_yellow = fb_flags[`S_G];
  wire                turn_red = fb_flags[`S_Y];
  wire                turn_end = fb_flags[`S_R];

  // State Register (S)
  always @(posedge clk, posedge reset) begin
    if (reset) curr_state <= {`S_ZVEC | {{(`STATE_W - 1) {1'b0}}, 1'b1}};
    else curr_state <= next_state;
  end  // State Register

  // Next State Logic (C)
  always @(*) begin
    next_state = `S_ZVEC;

    case (1'b1)

      // INIT state
      curr_state[`S_INIT]: begin
        if (init_done) next_state[`S_G] = 1'b1;
        else next_state[`S_INIT] = 1'b1;
      end

      // Green state
      curr_state[`S_G]: begin
        if (turn_yellow) begin
          next_state[`S_Y] = 1'b1;
        end else begin
          next_state[`S_G] = 1'b1;
        end
      end

      // Yellow state
      curr_state[`S_Y]: begin
        if (turn_red) next_state[`S_R] = 1'b1;
        else next_state[`S_Y] = 1'b1;
      end

      // Red state
      curr_state[`S_R]: begin
        if (turn_end) next_state[`S_INIT] = 1'b1;
        else next_state[`S_R] = 1'b1;
      end

      // End state
      curr_state[`S_END]: begin
        next_state[`S_END] = 1'b1;
      end

      // default
      default: begin
        next_state[`S_INIT] = 1'b1;
      end
    endcase

    if (pass) begin
      next_state = `S_ZVEC;
      next_state[`S_INIT] = 1'b1;
    end
  end  // Next State Logic (C)

  // Output Logic (C)
  always @(*) begin
    dp_cnt_rst = 1'b0;

    if (pass) begin
      dp_cnt_rst = 1'b1;  // Reset counter if pass == 1'b1
    end

    case (1'b1)
      // INIT state
      curr_state[`S_INIT]: begin
        if (init_done) begin
          dp_cnt_rst = 1'b1;
        end
        if (pass) begin
          dp_cnt_rst = 1'b0;  // Don't reset counter
        end
      end

      // Green state
      curr_state[`S_G]: begin
        if (turn_yellow) begin
          dp_cnt_rst = 1'b1;
        end
      end

      // Yellow state
      curr_state[`S_Y]: begin
        if (turn_red) begin
          dp_cnt_rst = 1'b1;
        end
      end

      // Red state
      curr_state[`S_R]: begin
        if (turn_end) begin
          dp_cnt_rst = 1'b1;
        end
      end

      //default
      default: ;
    endcase

  end  // Next State Logic (C)

endmodule
