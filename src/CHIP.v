module CHIP (
    input  clk,
    input  reset,
    input  pass,
    output R,
    output G,
    output Y
);

  wire i_clk;
  wire i_reset;
  wire i_pass;
  wire i_R;
  wire i_G;
  wire i_Y;
  wire n_Logic0_, n_Logic1_;

  traffic_light top (
      .clk(i_clk),
      .rst(i_reset),
      .pass(i_pass),
      .R(i_R),
      .G(i_G),
      .Y(i_Y)
  );

  XMD ipad_CLK (
      .I  (clk),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_clk)
  );
  XMD ipad_RESET (
      .I  (reset),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_reset)
  );

  XMD ipad_pass (
      .I  (pass),
      .PU (n_Logic0_),
      .PD (n_Logic0_),
      .SMT(n_Logic0_),
      .O  (i_pass)
  );

  YA2GSD opad_R (
      .I (i_R),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (R)
  );
  YA2GSD opad_G (
      .I (i_G),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (G)
  );
  YA2GSD opad_Y (
      .I (i_Y),
      .E (n_Logic1_),
      .E2(n_Logic1_),
      .E4(n_Logic1_),
      .E8(n_Logic1_),
      .SR(n_Logic1_),
      .O (Y)
  );

  TIE0 U1 (.O(n_Logic0_));
  TIE1 U2 (.O(n_Logic1_));

endmodule
