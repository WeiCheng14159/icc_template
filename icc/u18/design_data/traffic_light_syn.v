/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Mon May 22 20:00:17 2023
/////////////////////////////////////////////////////////////


module ctrl ( clk, reset, dp_cnt_rst, curr_state, pass, fb_flags_3_, 
        fb_flags_2_, fb_flags_1_, fb_flags_0_ );
  output [4:0] curr_state;
  input clk, reset, pass, fb_flags_3_, fb_flags_2_, fb_flags_1_, fb_flags_0_;
  output dp_cnt_rst;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22;
  wire   [3:0] next_state;

  DFFSX1 curr_state_reg_0_ ( .D(next_state[0]), .CK(clk), .SN(n22), .Q(
        curr_state[0]), .QN(n21) );
  DFFRX1 curr_state_reg_2_ ( .D(next_state[2]), .CK(clk), .RN(n22), .Q(
        curr_state[2]), .QN(n4) );
  DFFRX1 curr_state_reg_3_ ( .D(next_state[3]), .CK(clk), .RN(n22), .Q(
        curr_state[3]), .QN(n3) );
  DFFRX1 curr_state_reg_1_ ( .D(next_state[1]), .CK(clk), .RN(n22), .Q(
        curr_state[1]), .QN(n5) );
  CLKINVX1 U3 ( .A(1'b1), .Y(curr_state[4]) );
  NOR3X1 U6 ( .A(n6), .B(n7), .C(curr_state[1]), .Y(next_state[3]) );
  MXI2X1 U7 ( .A(n8), .B(fb_flags_2_), .S0(curr_state[2]), .Y(n6) );
  NOR2X1 U8 ( .A(n7), .B(n9), .Y(next_state[2]) );
  MXI2X1 U9 ( .A(n10), .B(fb_flags_1_), .S0(curr_state[1]), .Y(n9) );
  NOR2X1 U10 ( .A(n4), .B(fb_flags_2_), .Y(n10) );
  OAI31XL U11 ( .A0(n7), .A1(n5), .A2(fb_flags_1_), .B0(n11), .Y(next_state[1]) );
  NAND2X1 U12 ( .A(n21), .B(n12), .Y(n7) );
  NAND2X1 U13 ( .A(n13), .B(n12), .Y(next_state[0]) );
  MXI2X1 U14 ( .A(n14), .B(n15), .S0(n21), .Y(n13) );
  NOR3X1 U15 ( .A(curr_state[1]), .B(n8), .C(curr_state[2]), .Y(n15) );
  NOR2X1 U16 ( .A(n3), .B(fb_flags_3_), .Y(n8) );
  CLKINVX1 U17 ( .A(fb_flags_0_), .Y(n14) );
  CLKINVX1 U18 ( .A(reset), .Y(n22) );
  NAND2X1 U19 ( .A(n11), .B(n16), .Y(dp_cnt_rst) );
  OAI21XL U20 ( .A0(pass), .A1(n17), .B0(n21), .Y(n16) );
  MXI2X1 U21 ( .A(n18), .B(n19), .S0(curr_state[1]), .Y(n17) );
  CLKINVX1 U22 ( .A(fb_flags_1_), .Y(n19) );
  MXI2X1 U23 ( .A(n20), .B(fb_flags_2_), .S0(curr_state[2]), .Y(n18) );
  NOR2BX1 U24 ( .AN(fb_flags_3_), .B(n3), .Y(n20) );
  NAND3BX1 U25 ( .AN(n21), .B(n12), .C(fb_flags_0_), .Y(n11) );
  CLKINVX1 U26 ( .A(pass), .Y(n12) );
endmodule


module dp_DW01_inc_0 ( A, SUM );
  input [14:0] A;
  output [14:0] SUM;

  wire   [14:2] carry;

  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[14]), .B(A[14]), .Y(SUM[14]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module dp ( clk, reset, cnt_rst, state, int_flags, R, G, Y );
  input [4:0] state;
  output [4:0] int_flags;
  input clk, reset, cnt_rst;
  output R, G, Y;
  wire   N7, N15, N22, N29, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52,
         N53, N54, N55, N56, N57, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n430, n440, n450, n460, n470, n480, n490, n3, n6, n70, n8, n9, n10,
         n11, n12, n13, n14, n150, n16, n17, n18, n19, n20, n21, n220, n23,
         n24, n25, n26, n27, n28, n290, n30, n31, n32, n33, n500, n510, n520,
         n530, n540, n550, n560, n570;
  wire   [14:0] cnt;

  dp_DW01_inc_0 add_89 ( .A(cnt), .SUM({N57, N56, N55, N54, N53, N52, N51, N50, 
        N49, N48, N47, N46, N45, N44, N43}) );
  DFFX1 G_r_reg ( .D(n34), .CK(clk), .QN(n3) );
  DFFQX1 int_flags_reg_0_ ( .D(N7), .CK(clk), .Q(int_flags[0]) );
  DFFQX1 int_flags_reg_3_ ( .D(N15), .CK(clk), .Q(int_flags[3]) );
  DFFQX1 int_flags_reg_2_ ( .D(N29), .CK(clk), .Q(int_flags[2]) );
  DFFQX1 int_flags_reg_1_ ( .D(N22), .CK(clk), .Q(int_flags[1]) );
  DFFRXL cnt_reg_14_ ( .D(n35), .CK(clk), .RN(n570), .Q(cnt[14]), .QN(n30) );
  DFFRXL cnt_reg_0_ ( .D(n490), .CK(clk), .RN(n570), .Q(cnt[0]), .QN(n530) );
  DFFRXL cnt_reg_1_ ( .D(n480), .CK(clk), .RN(n570), .Q(cnt[1]), .QN(n540) );
  DFFRXL cnt_reg_2_ ( .D(n470), .CK(clk), .RN(n570), .Q(cnt[2]), .QN(n550) );
  DFFRXL cnt_reg_3_ ( .D(n460), .CK(clk), .RN(n570), .Q(cnt[3]), .QN(n560) );
  DFFRXL cnt_reg_4_ ( .D(n450), .CK(clk), .RN(n570), .Q(cnt[4]), .QN(n510) );
  DFFRXL cnt_reg_5_ ( .D(n440), .CK(clk), .RN(n570), .Q(cnt[5]), .QN(n520) );
  DFFRX1 cnt_reg_6_ ( .D(n430), .CK(clk), .RN(n570), .Q(cnt[6]), .QN(n500) );
  DFFRX1 cnt_reg_7_ ( .D(n42), .CK(clk), .RN(n570), .Q(cnt[7]), .QN(n33) );
  DFFRX1 cnt_reg_8_ ( .D(n41), .CK(clk), .RN(n570), .Q(cnt[8]), .QN(n32) );
  DFFRX1 cnt_reg_9_ ( .D(n40), .CK(clk), .RN(n570), .Q(cnt[9]), .QN(n31) );
  DFFRX1 cnt_reg_10_ ( .D(n39), .CK(clk), .RN(n570), .Q(cnt[10]), .QN(n26) );
  DFFRX1 cnt_reg_11_ ( .D(n38), .CK(clk), .RN(n570), .Q(cnt[11]), .QN(n27) );
  DFFRX1 cnt_reg_12_ ( .D(n37), .CK(clk), .RN(n570), .Q(cnt[12]), .QN(n28) );
  DFFRX1 cnt_reg_13_ ( .D(n36), .CK(clk), .RN(n570), .Q(cnt[13]), .QN(n290) );
  CLKINVX1 U3 ( .A(1'b1), .Y(int_flags[4]) );
  BUFX2 U5 ( .A(state[2]), .Y(Y) );
  BUFX2 U6 ( .A(state[3]), .Y(R) );
  OAI2BB2XL U7 ( .B0(n6), .B1(n530), .A0N(N43), .A1N(n70), .Y(n490) );
  OAI2BB2XL U8 ( .B0(n6), .B1(n540), .A0N(N44), .A1N(n70), .Y(n480) );
  OAI2BB2XL U9 ( .B0(n6), .B1(n550), .A0N(N45), .A1N(n70), .Y(n470) );
  OAI2BB2XL U10 ( .B0(n6), .B1(n560), .A0N(N46), .A1N(n70), .Y(n460) );
  OAI2BB2XL U11 ( .B0(n6), .B1(n510), .A0N(N47), .A1N(n70), .Y(n450) );
  OAI2BB2XL U12 ( .B0(n6), .B1(n520), .A0N(N48), .A1N(n70), .Y(n440) );
  OAI2BB2XL U13 ( .B0(n6), .B1(n500), .A0N(N49), .A1N(n70), .Y(n430) );
  OAI2BB2XL U14 ( .B0(n6), .B1(n33), .A0N(N50), .A1N(n70), .Y(n42) );
  OAI2BB2XL U15 ( .B0(n6), .B1(n32), .A0N(N51), .A1N(n70), .Y(n41) );
  OAI2BB2XL U16 ( .B0(n6), .B1(n31), .A0N(N52), .A1N(n70), .Y(n40) );
  OAI2BB2XL U17 ( .B0(n6), .B1(n26), .A0N(N53), .A1N(n70), .Y(n39) );
  OAI2BB2XL U18 ( .B0(n6), .B1(n27), .A0N(N54), .A1N(n70), .Y(n38) );
  OAI2BB2XL U19 ( .B0(n6), .B1(n28), .A0N(N55), .A1N(n70), .Y(n37) );
  OAI2BB2XL U20 ( .B0(n6), .B1(n290), .A0N(N56), .A1N(n70), .Y(n36) );
  OAI2BB2XL U21 ( .B0(n6), .B1(n30), .A0N(N57), .A1N(n70), .Y(n35) );
  CLKINVX1 U22 ( .A(n8), .Y(n70) );
  NAND2X1 U23 ( .A(n9), .B(n8), .Y(n6) );
  OAI31XL U24 ( .A0(n10), .A1(state[1]), .A2(state[0]), .B0(n9), .Y(n8) );
  NAND3BX1 U25 ( .AN(state[4]), .B(n11), .C(n12), .Y(n10) );
  CLKINVX1 U26 ( .A(cnt_rst), .Y(n9) );
  MXI2X1 U27 ( .A(n13), .B(n3), .S0(n14), .Y(n34) );
  NOR2X1 U28 ( .A(reset), .B(state[1]), .Y(n14) );
  NAND4X1 U29 ( .A(n31), .B(n150), .C(n16), .D(n570), .Y(n13) );
  CLKINVX1 U30 ( .A(reset), .Y(n570) );
  XOR2X1 U31 ( .A(n17), .B(n33), .Y(n16) );
  NAND2BX1 U32 ( .AN(n530), .B(n18), .Y(n17) );
  NOR3X1 U33 ( .A(n19), .B(reset), .C(n20), .Y(N7) );
  NOR3X1 U34 ( .A(n12), .B(reset), .C(n21), .Y(N29) );
  CLKINVX1 U35 ( .A(state[2]), .Y(n12) );
  NOR3BXL U36 ( .AN(state[1]), .B(reset), .C(n21), .Y(N22) );
  AND3X1 U37 ( .A(n150), .B(n220), .C(n31), .Y(n21) );
  NOR3X1 U38 ( .A(n11), .B(reset), .C(n20), .Y(N15) );
  OA21XL U39 ( .A0(n31), .A1(n220), .B0(n150), .Y(n20) );
  AND4X1 U40 ( .A(n26), .B(n27), .C(n23), .D(n28), .Y(n150) );
  AND2X1 U41 ( .A(n30), .B(n290), .Y(n23) );
  CLKINVX1 U42 ( .A(n24), .Y(n220) );
  NOR3BXL U43 ( .AN(n18), .B(n32), .C(n33), .Y(n24) );
  NOR4X1 U44 ( .A(n550), .B(n540), .C(n560), .D(n25), .Y(n18) );
  OR3X1 U45 ( .A(n520), .B(n500), .C(n510), .Y(n25) );
  CLKINVX1 U46 ( .A(state[3]), .Y(n11) );
  NAND2X1 U47 ( .A(n19), .B(n3), .Y(G) );
  CLKINVX1 U48 ( .A(state[0]), .Y(n19) );
endmodule


module traffic_light ( clk, rst, pass, R, G, Y );
  input clk, rst, pass;
  output R, G, Y;
  wire   dp_cnt_rst, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2;
  wire   [3:0] int_flags;
  wire   [4:0] state;
  wire   [3:0] fb_flags;

  ctrl ul_ctrl ( .clk(clk), .reset(rst), .dp_cnt_rst(dp_cnt_rst), .curr_state(
        {SYNOPSYS_UNCONNECTED_1, state[3:0]}), .pass(pass), .fb_flags_3_(
        fb_flags[3]), .fb_flags_2_(fb_flags[2]), .fb_flags_1_(fb_flags[1]), 
        .fb_flags_0_(fb_flags[0]) );
  dp ul_dp ( .clk(clk), .reset(rst), .cnt_rst(dp_cnt_rst), .state({1'b0, 
        state[3:0]}), .int_flags({SYNOPSYS_UNCONNECTED_2, int_flags}), .R(R), 
        .G(G), .Y(Y) );
  AND2X1 U6 ( .A(state[3]), .B(int_flags[3]), .Y(fb_flags[3]) );
  AND2X1 U7 ( .A(state[2]), .B(int_flags[2]), .Y(fb_flags[2]) );
  AND2X1 U8 ( .A(state[1]), .B(int_flags[1]), .Y(fb_flags[1]) );
  AND2X1 U9 ( .A(state[0]), .B(int_flags[0]), .Y(fb_flags[0]) );
endmodule

