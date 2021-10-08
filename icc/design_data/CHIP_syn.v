/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Mon Sep 13 19:09:44 2021
/////////////////////////////////////////////////////////////


module CHIP ( clk, reset, pass, R, G, Y );
  input clk, reset, pass;
  output R, G, Y;
  wire   i_clk, i_reset, i_pass, i_R, i_G, i_Y, n_Logic0_, top_ul_dp_N29,
         top_ul_dp_N22, top_ul_dp_N15, top_ul_dp_N7, top_ul_dp_G_r, n71, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173;
  wire   [1:0] top_state;
  wire   [3:0] top_int_flags;
  wire   [3:0] top_ul_ctrl_next_state;
  wire   [14:0] top_ul_dp_cnt;

  XMD ipad_CLK ( .I(clk), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), .O(
        i_clk) );
  XMD ipad_RESET ( .I(reset), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), 
        .O(i_reset) );
  XMD ipad_pass ( .I(pass), .PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_), 
        .O(i_pass) );
  YA2GSD opad_R ( .I(i_R), .E(n73), .E2(n73), .E4(n73), .E8(n73), .SR(n73), 
        .O(R) );
  YA2GSD opad_G ( .I(i_G), .E(n73), .E2(n73), .E4(n73), .E8(n73), .SR(n73), 
        .O(G) );
  YA2GSD opad_Y ( .I(i_Y), .E(n73), .E2(n73), .E4(n73), .E8(n73), .SR(n73), 
        .O(Y) );
  QDFFS top_ul_dp_int_flags_reg_0_ ( .D(top_ul_dp_N7), .CK(i_clk), .Q(
        top_int_flags[0]) );
  QDFFS top_ul_dp_int_flags_reg_1_ ( .D(top_ul_dp_N22), .CK(i_clk), .Q(
        top_int_flags[1]) );
  QDFFS top_ul_dp_int_flags_reg_2_ ( .D(top_ul_dp_N29), .CK(i_clk), .Q(
        top_int_flags[2]) );
  QDFFS top_ul_dp_int_flags_reg_3_ ( .D(top_ul_dp_N15), .CK(i_clk), .Q(
        top_int_flags[3]) );
  QDFFRBS top_ul_ctrl_curr_state_reg_1_ ( .D(top_ul_ctrl_next_state[1]), .CK(
        i_clk), .RB(n71), .Q(top_state[1]) );
  QDFFRBS top_ul_dp_cnt_reg_0_ ( .D(n88), .CK(i_clk), .RB(n71), .Q(
        top_ul_dp_cnt[0]) );
  QDFFRBS top_ul_dp_cnt_reg_1_ ( .D(n87), .CK(i_clk), .RB(n71), .Q(
        top_ul_dp_cnt[1]) );
  QDFFRBS top_ul_dp_cnt_reg_2_ ( .D(n86), .CK(i_clk), .RB(n71), .Q(
        top_ul_dp_cnt[2]) );
  QDFFRBS top_ul_dp_cnt_reg_3_ ( .D(n85), .CK(i_clk), .RB(n71), .Q(
        top_ul_dp_cnt[3]) );
  QDFFRBS top_ul_dp_cnt_reg_4_ ( .D(n84), .CK(i_clk), .RB(n71), .Q(
        top_ul_dp_cnt[4]) );
  QDFFRBS top_ul_dp_cnt_reg_5_ ( .D(n83), .CK(i_clk), .RB(n71), .Q(
        top_ul_dp_cnt[5]) );
  QDFFRBS top_ul_dp_cnt_reg_6_ ( .D(n82), .CK(i_clk), .RB(n71), .Q(
        top_ul_dp_cnt[6]) );
  QDFFRBS top_ul_dp_cnt_reg_7_ ( .D(n81), .CK(i_clk), .RB(n71), .Q(
        top_ul_dp_cnt[7]) );
  QDFFRBS top_ul_dp_cnt_reg_8_ ( .D(n80), .CK(i_clk), .RB(n71), .Q(
        top_ul_dp_cnt[8]) );
  QDFFRBS top_ul_dp_cnt_reg_9_ ( .D(n79), .CK(i_clk), .RB(n71), .Q(
        top_ul_dp_cnt[9]) );
  QDFFRBS top_ul_dp_cnt_reg_10_ ( .D(n78), .CK(i_clk), .RB(n71), .Q(
        top_ul_dp_cnt[10]) );
  QDFFRBS top_ul_dp_cnt_reg_11_ ( .D(n77), .CK(i_clk), .RB(n71), .Q(
        top_ul_dp_cnt[11]) );
  QDFFRBS top_ul_dp_cnt_reg_12_ ( .D(n76), .CK(i_clk), .RB(n71), .Q(
        top_ul_dp_cnt[12]) );
  QDFFRBS top_ul_dp_cnt_reg_13_ ( .D(n75), .CK(i_clk), .RB(n71), .Q(
        top_ul_dp_cnt[13]) );
  QDFFRBS top_ul_dp_cnt_reg_14_ ( .D(n74), .CK(i_clk), .RB(n71), .Q(
        top_ul_dp_cnt[14]) );
  DFFSBN top_ul_ctrl_curr_state_reg_0_ ( .D(top_ul_ctrl_next_state[0]), .CK(
        i_clk), .SB(n71), .Q(top_state[0]), .QB(n172) );
  DFCLRBN top_ul_dp_G_r_reg ( .RB(n71), .D(n173), .LD(top_state[1]), .CK(i_clk), .Q(top_ul_dp_G_r) );
  QDFFRBS top_ul_ctrl_curr_state_reg_2_ ( .D(top_ul_ctrl_next_state[2]), .CK(
        i_clk), .RB(n71), .Q(i_Y) );
  QDFFRBS top_ul_ctrl_curr_state_reg_3_ ( .D(top_ul_ctrl_next_state[3]), .CK(
        i_clk), .RB(n71), .Q(i_R) );
  ND3S U99 ( .I1(n101), .I2(n170), .I3(n166), .O(n103) );
  TIE0 U100 ( .O(n_Logic0_) );
  TIE1 U101 ( .O(n73) );
  INV1S U102 ( .I(i_reset), .O(n71) );
  INV1S U103 ( .I(i_pass), .O(n116) );
  ND2S U104 ( .I1(top_state[1]), .I2(top_int_flags[1]), .O(n121) );
  OAI22S U105 ( .A1(n116), .A2(top_state[0]), .B1(n121), .B2(top_state[0]), 
        .O(n93) );
  ND2S U106 ( .I1(top_state[0]), .I2(top_int_flags[0]), .O(n118) );
  INV1S U107 ( .I(top_state[1]), .O(n119) );
  ND2S U108 ( .I1(n119), .I2(n172), .O(n126) );
  ND2S U109 ( .I1(i_Y), .I2(top_int_flags[2]), .O(n124) );
  OAI22S U110 ( .A1(i_pass), .A2(n118), .B1(n126), .B2(n124), .O(n91) );
  NR2 U111 ( .I1(i_Y), .I2(n126), .O(n89) );
  INV1S U112 ( .I(i_R), .O(n125) );
  ND2S U113 ( .I1(n89), .I2(n125), .O(n92) );
  ND2S U114 ( .I1(n89), .I2(top_int_flags[3]), .O(n90) );
  ND2S U115 ( .I1(n92), .I2(n90), .O(n115) );
  NR3 U116 ( .I1(n93), .I2(n91), .I3(n115), .O(n165) );
  INV1S U117 ( .I(top_ul_dp_cnt[12]), .O(n166) );
  INV1S U118 ( .I(top_ul_dp_cnt[10]), .O(n157) );
  ND2S U119 ( .I1(top_ul_dp_cnt[6]), .I2(top_ul_dp_cnt[5]), .O(n104) );
  ND2S U120 ( .I1(top_ul_dp_cnt[1]), .I2(top_ul_dp_cnt[0]), .O(n135) );
  INV1S U121 ( .I(top_ul_dp_cnt[2]), .O(n132) );
  NR2 U122 ( .I1(n135), .I2(n132), .O(n137) );
  ND3S U123 ( .I1(top_ul_dp_cnt[4]), .I2(top_ul_dp_cnt[3]), .I3(n137), .O(n141) );
  NR2 U124 ( .I1(n104), .I2(n141), .O(n144) );
  ND2S U125 ( .I1(n144), .I2(top_ul_dp_cnt[7]), .O(n150) );
  INV1S U126 ( .I(top_ul_dp_cnt[8]), .O(n147) );
  NR2 U127 ( .I1(n150), .I2(n147), .O(n151) );
  ND2S U128 ( .I1(n151), .I2(top_ul_dp_cnt[9]), .O(n154) );
  NR2 U129 ( .I1(n157), .I2(n154), .O(n160) );
  ND2S U130 ( .I1(n160), .I2(top_ul_dp_cnt[11]), .O(n163) );
  NR2 U131 ( .I1(n166), .I2(n163), .O(n94) );
  ND3S U132 ( .I1(n165), .I2(top_ul_dp_cnt[13]), .I3(n94), .O(n96) );
  NR2 U133 ( .I1(n93), .I2(n92), .O(n128) );
  INV1S U134 ( .I(n94), .O(n168) );
  OAI22S U135 ( .A1(n165), .A2(n128), .B1(n168), .B2(n128), .O(n171) );
  INV1S U136 ( .I(top_ul_dp_cnt[13]), .O(n170) );
  ND2S U137 ( .I1(n165), .I2(n170), .O(n169) );
  ND2S U138 ( .I1(n171), .I2(n169), .O(n95) );
  MOAI1S U139 ( .A1(top_ul_dp_cnt[14]), .A2(n96), .B1(top_ul_dp_cnt[14]), .B2(
        n95), .O(n74) );
  OR3B2S U140 ( .I1(n141), .B1(n165), .B2(top_ul_dp_cnt[5]), .O(n98) );
  OAI22S U141 ( .A1(n165), .A2(n128), .B1(n141), .B2(n128), .O(n143) );
  INV1S U142 ( .I(top_ul_dp_cnt[5]), .O(n142) );
  ND2S U143 ( .I1(n165), .I2(n142), .O(n140) );
  ND2S U144 ( .I1(n143), .I2(n140), .O(n97) );
  MOAI1S U145 ( .A1(top_ul_dp_cnt[6]), .A2(n98), .B1(top_ul_dp_cnt[6]), .B2(
        n97), .O(n82) );
  ND3S U146 ( .I1(n165), .I2(top_ul_dp_cnt[3]), .I3(n137), .O(n100) );
  INV1S U147 ( .I(n165), .O(n159) );
  NR2 U148 ( .I1(n159), .I2(top_ul_dp_cnt[3]), .O(n136) );
  INV1S U149 ( .I(n128), .O(n158) );
  OA12S U150 ( .B1(n137), .B2(n159), .A1(n158), .O(n139) );
  OR2B1S U151 ( .I1(n136), .B1(n139), .O(n99) );
  MOAI1S U152 ( .A1(top_ul_dp_cnt[4]), .A2(n100), .B1(top_ul_dp_cnt[4]), .B2(
        n99), .O(n84) );
  NR2 U153 ( .I1(top_ul_dp_cnt[11]), .I2(top_ul_dp_cnt[14]), .O(n101) );
  NR2 U154 ( .I1(top_ul_dp_cnt[10]), .I2(n103), .O(n109) );
  OAI112HS U155 ( .C1(n144), .C2(top_ul_dp_cnt[7]), .A1(n109), .B1(n150), .O(
        n102) );
  NR2 U156 ( .I1(top_ul_dp_cnt[9]), .I2(n102), .O(n173) );
  OR2S U157 ( .I1(top_state[0]), .I2(top_ul_dp_G_r), .O(i_G) );
  NR2 U158 ( .I1(n103), .I2(top_ul_dp_cnt[9]), .O(n107) );
  AN2S U159 ( .I1(top_ul_dp_cnt[4]), .I2(top_ul_dp_cnt[3]), .O(n105) );
  AN4B1S U160 ( .I1(n105), .I2(top_ul_dp_cnt[7]), .I3(top_ul_dp_cnt[8]), .B1(
        n104), .O(n106) );
  ND3S U161 ( .I1(top_ul_dp_cnt[1]), .I2(top_ul_dp_cnt[2]), .I3(n106), .O(n111) );
  ND3S U162 ( .I1(n107), .I2(n157), .I3(n111), .O(n108) );
  ND2S U163 ( .I1(n71), .I2(n108), .O(n114) );
  NR2 U164 ( .I1(n119), .I2(n114), .O(top_ul_dp_N22) );
  INV1S U165 ( .I(top_ul_dp_cnt[9]), .O(n110) );
  OAI12HS U166 ( .B1(n111), .B2(n110), .A1(n109), .O(n112) );
  ND2S U167 ( .I1(n112), .I2(n71), .O(n113) );
  NR2 U168 ( .I1(n172), .I2(n113), .O(top_ul_dp_N7) );
  NR2 U169 ( .I1(n125), .I2(n113), .O(top_ul_dp_N15) );
  INV1S U170 ( .I(i_Y), .O(n122) );
  NR2 U171 ( .I1(n122), .I2(n114), .O(top_ul_dp_N29) );
  INV1S U172 ( .I(n115), .O(n117) );
  OAI112HS U173 ( .C1(top_int_flags[0]), .C2(n172), .A1(n117), .B1(n116), .O(
        top_ul_ctrl_next_state[0]) );
  OA13S U174 ( .B1(top_state[0]), .B2(top_int_flags[1]), .B3(n119), .A1(n118), 
        .O(n120) );
  NR2 U175 ( .I1(i_pass), .I2(n120), .O(top_ul_ctrl_next_state[1]) );
  OA13S U176 ( .B1(top_state[1]), .B2(top_int_flags[2]), .B3(n122), .A1(n121), 
        .O(n123) );
  NR3 U177 ( .I1(top_state[0]), .I2(i_pass), .I3(n123), .O(
        top_ul_ctrl_next_state[2]) );
  OA13S U178 ( .B1(i_Y), .B2(top_int_flags[3]), .B3(n125), .A1(n124), .O(n127)
         );
  NR3 U179 ( .I1(i_pass), .I2(n127), .I3(n126), .O(top_ul_ctrl_next_state[3])
         );
  MOAI1S U180 ( .A1(top_ul_dp_cnt[0]), .A2(n159), .B1(top_ul_dp_cnt[0]), .B2(
        n128), .O(n88) );
  NR2 U181 ( .I1(top_ul_dp_cnt[1]), .I2(n159), .O(n131) );
  OR2S U182 ( .I1(n159), .I2(top_ul_dp_cnt[0]), .O(n129) );
  ND2S U183 ( .I1(n158), .I2(n129), .O(n130) );
  AO22S U184 ( .A1(top_ul_dp_cnt[0]), .A2(n131), .B1(top_ul_dp_cnt[1]), .B2(
        n130), .O(n87) );
  ND2S U185 ( .I1(n132), .I2(n165), .O(n134) );
  NR2 U186 ( .I1(n131), .I2(n130), .O(n133) );
  OAI22S U187 ( .A1(n135), .A2(n134), .B1(n133), .B2(n132), .O(n86) );
  INV1S U188 ( .I(top_ul_dp_cnt[3]), .O(n138) );
  MOAI1S U189 ( .A1(n139), .A2(n138), .B1(n137), .B2(n136), .O(n85) );
  OAI22S U190 ( .A1(n143), .A2(n142), .B1(n141), .B2(n140), .O(n83) );
  OAI12HS U191 ( .B1(n144), .B2(n159), .A1(n158), .O(n145) );
  NR2 U192 ( .I1(top_ul_dp_cnt[7]), .I2(n159), .O(n146) );
  AO22S U193 ( .A1(n145), .A2(top_ul_dp_cnt[7]), .B1(n144), .B2(n146), .O(n81)
         );
  ND2S U194 ( .I1(n147), .I2(n165), .O(n149) );
  NR2 U195 ( .I1(n146), .I2(n145), .O(n148) );
  OAI22S U196 ( .A1(n150), .A2(n149), .B1(n148), .B2(n147), .O(n80) );
  OAI12HS U197 ( .B1(n151), .B2(n159), .A1(n158), .O(n152) );
  NR2 U198 ( .I1(top_ul_dp_cnt[9]), .I2(n159), .O(n153) );
  AO22S U199 ( .A1(n152), .A2(top_ul_dp_cnt[9]), .B1(n151), .B2(n153), .O(n79)
         );
  NR2 U200 ( .I1(n153), .I2(n152), .O(n156) );
  NR2 U201 ( .I1(n159), .I2(n154), .O(n155) );
  MOAI1S U202 ( .A1(n157), .A2(n156), .B1(n157), .B2(n155), .O(n78) );
  OAI12HS U203 ( .B1(n160), .B2(n159), .A1(n158), .O(n161) );
  NR2 U204 ( .I1(top_ul_dp_cnt[11]), .I2(n159), .O(n162) );
  AO22S U205 ( .A1(n161), .A2(top_ul_dp_cnt[11]), .B1(n160), .B2(n162), .O(n77) );
  NR2 U206 ( .I1(n162), .I2(n161), .O(n167) );
  NR2 U207 ( .I1(top_ul_dp_cnt[12]), .I2(n163), .O(n164) );
  MOAI1S U208 ( .A1(n167), .A2(n166), .B1(n165), .B2(n164), .O(n76) );
  OAI22S U209 ( .A1(n171), .A2(n170), .B1(n169), .B2(n168), .O(n75) );
endmodule

