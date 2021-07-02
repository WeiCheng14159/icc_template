`include "def.v"

module ctrl(
  input                                 clk,
  input                                 reset,
  output reg                            dp_cnt_rst,
  input               [`INT_FLAG_W-1:0] fb_flags,
  output              [`CMD_FLAG_W-1:0] cmd_flags,
  input                                 pass
);

  reg                    [`STATE_W-1:0] curr_state, next_state;
  reg                  [`COUNTER_W-1:0] cnt;

  wire                      init_done = fb_flags[`INT_INIT];
  wire                    turn_yellow = fb_flags[`INT_G];
  wire                       turn_red = fb_flags[`INT_Y];
  wire                       turn_end = fb_flags[`INT_R];

  // State Register (S)
  always @(posedge clk, posedge reset) begin
     if(reset)
       curr_state <= {`S_ZVEC | {{(`STATE_W-1){1'b0}}, 1'b1}};
     else
       curr_state <= next_state;
  end // State Register

  // Next State Logic (C)
  always @(*) begin
     next_state = `S_ZVEC;

     case (1'b1)

       // INIT state
       curr_state[`S_INIT]: begin
          if(init_done)
            next_state[`S_G] = 1'b1;
          else
            next_state[`S_INIT] = 1'b1;
       end

       // Green state
       curr_state[`S_G]: begin
          if(turn_yellow) begin
            next_state[`S_Y] = 1'b1;
          end else begin
            next_state[`S_G] = 1'b1;
          end
       end

       // Yellow state
       curr_state[`S_Y]: begin
          if(turn_red)
            next_state[`S_R] = 1'b1;
          else
            next_state[`S_Y] = 1'b1;
       end

       // Red state
       curr_state[`S_R]: begin
          if(turn_end)
            next_state[`S_INIT] = 1'b1;
          else
            next_state[`S_R] = 1'b1;
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

    if(pass) begin
      next_state = `S_ZVEC;
      next_state[`S_INIT] = 1'b1;
    end
  end // Next State Logic (C)

  assign cmd_flags[`CMD_INIT] = curr_state[`S_INIT];
  assign cmd_flags[`CMD_G] = curr_state[`S_G];
  assign cmd_flags[`CMD_Y] = curr_state[`S_Y];
  assign cmd_flags[`CMD_R] = curr_state[`S_R];

  // Output Logic (C)
  always @(*) begin
    dp_cnt_rst = 1'b0;

    if(pass) begin
      dp_cnt_rst = 1'b1; // Reset counter if pass == 1'b1
    end

    case (1'b1)
      // INIT state
      curr_state[`S_INIT]: begin
        if(init_done) begin
          dp_cnt_rst = 1'b1;
        end
        if(pass) begin
          dp_cnt_rst = 1'b0; // Don't reset counter
        end
      end

      // Green state
      curr_state[`S_G]: begin
        if(turn_yellow) begin
          dp_cnt_rst = 1'b1;
        end
      end

      // Yellow state
      curr_state[`S_Y]: begin
        if(turn_red) begin
          dp_cnt_rst = 1'b1;
        end
      end

      // Red state
      curr_state[`S_R]: begin
        if(turn_end) begin
          dp_cnt_rst = 1'b1;
        end
      end

      //default
      default: ;
    endcase

  end // Next State Logic (C)

endmodule
