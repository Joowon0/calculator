library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity BTD_pos is
  port(binaryIn : in std_logic_vector(31 downto 0);
       BCDout0 : out std_logic_vector(3 downto 0);
       BCDout1 : out std_logic_vector(3 downto 0);
       BCDout2 : out std_logic_vector(3 downto 0);
       BCDout3 : out std_logic_vector(3 downto 0);
       BCDout4 : out std_logic_vector(3 downto 0);
       BCDout5 : out std_logic_vector(3 downto 0);
       BCDout6 : out std_logic_vector(3 downto 0));
end BTD_pos;

architecture rtl of BTD_pos is
  signal w12 : std_logic;
  signal w13 : std_logic;
  signal w14 : std_logic;
  signal w15 : std_logic;
  signal w16 : std_logic;
  signal w17 : std_logic;
  signal w18 : std_logic;
  signal w21 : std_logic;
  signal w22 : std_logic;
  signal w23 : std_logic;
  signal w24 : std_logic;
  signal w25 : std_logic;
  signal w26 : std_logic;
  signal w28 : std_logic;
  signal w29 : std_logic;
  signal w32 : std_logic;
  signal w33 : std_logic;
  signal w34 : std_logic;
  signal b44 : std_logic_vector(31 downto 0);
  signal b39 : std_logic_vector(3 downto 0);
  signal b40 : std_logic_vector(3 downto 0);
  signal b41 : std_logic_vector(3 downto 0);
  signal b45 : std_logic_vector(3 downto 0);
  signal b46 : std_logic_vector(3 downto 0);
  signal b47 : std_logic_vector(3 downto 0);
  signal b344 : std_logic_vector(3 downto 0);
  signal w63 : std_logic;
  signal w64 : std_logic;
  signal w65 : std_logic;
  signal w66 : std_logic;
  signal w67 : std_logic;
  signal w68 : std_logic;
  signal w69 : std_logic;
  signal w70 : std_logic;
  signal w71 : std_logic;
  signal w72 : std_logic;
  signal w75 : std_logic;
  signal w76 : std_logic;
  signal w77 : std_logic;
  signal w78 : std_logic;
  signal w79 : std_logic;
  signal w80 : std_logic;
  signal w81 : std_logic;
  signal w89 : std_logic;
  signal w90 : std_logic;
  signal w91 : std_logic;
  signal w92 : std_logic;
  signal w93 : std_logic;
  signal w94 : std_logic;
  signal w95 : std_logic;
  signal w96 : std_logic;
  signal w97 : std_logic;
  signal w98 : std_logic;
  signal w99 : std_logic;
  signal w100 : std_logic;
  signal w101 : std_logic;
  signal w102 : std_logic;
  signal w103 : std_logic;
  signal w104 : std_logic;
  signal w105 : std_logic;
  signal w106 : std_logic;
  signal w107 : std_logic;
  signal w108 : std_logic;
  signal w109 : std_logic;
  signal w110 : std_logic;
  signal w111 : std_logic;
  signal w112 : std_logic;
  signal w113 : std_logic;
  signal w114 : std_logic;
  signal w115 : std_logic;
  signal w116 : std_logic;
  signal w117 : std_logic;
  signal w118 : std_logic;
  signal w119 : std_logic;
  signal w120 : std_logic;
  signal w121 : std_logic;
  signal w122 : std_logic;
  signal w123 : std_logic;
  signal w124 : std_logic;
  signal w127 : std_logic;
  signal w128 : std_logic;
  signal w129 : std_logic;
  signal w130 : std_logic;
  signal w131 : std_logic;
  signal w132 : std_logic;
  signal w133 : std_logic;
  signal w134 : std_logic;
  signal w135 : std_logic;
  signal w136 : std_logic;
  signal w137 : std_logic;
  signal w138 : std_logic;
  signal w139 : std_logic;
  signal w140 : std_logic;
  signal w141 : std_logic;
  signal w142 : std_logic;
  signal w143 : std_logic;
  signal w144 : std_logic;
  signal w145 : std_logic;
  signal w146 : std_logic;
  signal w147 : std_logic;
  signal w148 : std_logic;
  signal w149 : std_logic;
  signal w150 : std_logic;
  signal w151 : std_logic;
  signal w152 : std_logic;
  signal w153 : std_logic;
  signal w154 : std_logic;
  signal w155 : std_logic;
  signal w156 : std_logic;
  signal w157 : std_logic;
  signal w158 : std_logic;
  signal w163 : std_logic;
  signal w164 : std_logic;
  signal w165 : std_logic;
  signal w166 : std_logic;
  signal w167 : std_logic;
  signal w168 : std_logic;
  signal w169 : std_logic;
  signal w170 : std_logic;
  signal w171 : std_logic;
  signal w172 : std_logic;
  signal w173 : std_logic;
  signal w174 : std_logic;
  signal w175 : std_logic;
  signal w176 : std_logic;
  signal w177 : std_logic;
  signal w178 : std_logic;
  signal w187 : std_logic;
  signal w188 : std_logic;
  signal w189 : std_logic;
  signal w190 : std_logic;
  signal w191 : std_logic;
  signal w192 : std_logic;
  signal w193 : std_logic;
  signal w194 : std_logic;
  signal w195 : std_logic;
  signal w196 : std_logic;
  signal w197 : std_logic;
  signal w198 : std_logic;
  signal w199 : std_logic;
  signal w200 : std_logic;
  signal w201 : std_logic;
  signal w202 : std_logic;
  signal w203 : std_logic;
  signal w204 : std_logic;
  signal w205 : std_logic;
  signal w206 : std_logic;
  signal w208 : std_logic;
  signal w209 : std_logic;
  signal w210 : std_logic;
  signal w211 : std_logic;
  signal w212 : std_logic;
  signal w213 : std_logic;
  signal w214 : std_logic;
  signal w215 : std_logic;
  signal w216 : std_logic;
  signal w217 : std_logic;
  signal w218 : std_logic;
  signal w219 : std_logic;
  signal w220 : std_logic;
  signal w221 : std_logic;
  signal w222 : std_logic;
  signal w223 : std_logic;
  signal w224 : std_logic;
  signal w225 : std_logic;
  signal w226 : std_logic;
  signal w227 : std_logic;
  signal w228 : std_logic;
  signal w229 : std_logic;
  signal w230 : std_logic;
  signal w231 : std_logic;
  signal w232 : std_logic;
  signal w233 : std_logic;
  signal w234 : std_logic;
  signal w235 : std_logic;
  signal w236 : std_logic;
  signal w237 : std_logic;
  signal w238 : std_logic;
  signal w239 : std_logic;
  signal w240 : std_logic;
  signal w241 : std_logic;
  signal w242 : std_logic;
  signal w243 : std_logic;
  signal w244 : std_logic;
  signal w245 : std_logic;
  signal w246 : std_logic;
  signal w247 : std_logic;
  signal w248 : std_logic;
  signal w249 : std_logic;
  signal w250 : std_logic;
  signal w251 : std_logic;
  signal w252 : std_logic;
  signal w253 : std_logic;
  signal w254 : std_logic;
  signal w255 : std_logic;
  signal w256 : std_logic;
  signal w257 : std_logic;
  signal w258 : std_logic;
  signal w259 : std_logic;
  signal w260 : std_logic;
  signal w261 : std_logic;
  signal w262 : std_logic;
  signal w263 : std_logic;
  signal w264 : std_logic;
  signal w265 : std_logic;
  signal w266 : std_logic;
  signal w267 : std_logic;
  signal w268 : std_logic;
  signal w269 : std_logic;
  signal w270 : std_logic;
  signal w271 : std_logic;
  signal w272 : std_logic;
  signal w273 : std_logic;
  signal w274 : std_logic;
  signal w275 : std_logic;
  signal w276 : std_logic;
  signal w277 : std_logic;
  signal w278 : std_logic;
  signal w279 : std_logic;
  signal w280 : std_logic;
  signal w281 : std_logic;
  signal w282 : std_logic;
  signal w283 : std_logic;
  signal w284 : std_logic;
  signal w285 : std_logic;
  signal w286 : std_logic;
  signal w287 : std_logic;
  signal w288 : std_logic;
  signal w289 : std_logic;
  signal w290 : std_logic;
  signal w291 : std_logic;
  signal w292 : std_logic;
  signal w293 : std_logic;
  signal w294 : std_logic;
  signal w295 : std_logic;
  signal w297 : std_logic;
  signal w298 : std_logic;
  signal w299 : std_logic;
  signal w300 : std_logic;
  signal w301 : std_logic;
  signal w302 : std_logic;
  signal w303 : std_logic;
  signal w304 : std_logic;
  signal w305 : std_logic;
  signal w306 : std_logic;
  signal w307 : std_logic;
  signal w308 : std_logic;
  signal w309 : std_logic;
  signal w310 : std_logic;
  signal w311 : std_logic;
  signal w312 : std_logic;
  signal w313 : std_logic;
  signal w314 : std_logic;
  signal w315 : std_logic;
  signal w316 : std_logic;
  signal w317 : std_logic;
  signal w318 : std_logic;
  signal w319 : std_logic;
  signal w320 : std_logic;
  signal w322 : std_logic;
  signal w323 : std_logic;
  signal w321 : std_logic;
  signal w324 : std_logic;
  signal w325 : std_logic;
  signal w326 : std_logic;
  signal w327 : std_logic;
  signal w328 : std_logic;
  signal w329 : std_logic;
  signal w330 : std_logic;
  signal w331 : std_logic;
  signal w332 : std_logic;
  signal w333 : std_logic;
  signal w334 : std_logic;
  signal w335 : std_logic;
  signal w336 : std_logic;
  signal w337 : std_logic;
  signal w338 : std_logic;
  signal w339 : std_logic;
  signal w340 : std_logic;
  signal w341 : std_logic;
  signal w342 : std_logic;
  signal w343 : std_logic;
  signal w344 : std_logic;
  signal w345 : std_logic;
  signal w346 : std_logic;
  signal w347 : std_logic;
  signal w351 : std_logic;
  signal w356 : std_logic;
  signal w358 : std_logic;
  signal w359 : std_logic;
  signal w360 : std_logic;
  signal w361 : std_logic;
  signal w357 : std_logic;
  signal w362 : std_logic;
  signal b44_0_w39 : std_logic;
  signal b39_0 : std_logic;
  signal b39_1 : std_logic;
  signal b39_2 : std_logic;
  signal b39_3 : std_logic;
  signal b40_0 : std_logic;
  signal b40_1 : std_logic;
  signal b40_2 : std_logic;
  signal b40_3 : std_logic;
  signal b41_0 : std_logic;
  signal b41_2 : std_logic;
  signal b41_1 : std_logic;
  signal b45_0 : std_logic;
  signal b41_3 : std_logic;
  signal b45_1 : std_logic;
  signal b45_2 : std_logic;
  signal b45_3 : std_logic;
  signal b46_0 : std_logic;
  signal b46_1 : std_logic;
  signal b46_2 : std_logic;
  signal b46_3 : std_logic;
  signal b47_0 : std_logic;
  signal b47_1 : std_logic;
  signal b47_2 : std_logic;
  signal b47_3 : std_logic;
  signal b344_0 : std_logic;
  signal b44_14_w73 : std_logic;
  signal b44_15_w74 : std_logic;
  signal b44_16_w82 : std_logic;
  signal b44_17_w83 : std_logic;
  signal b44_18_w84 : std_logic;
  signal b44_19_w85 : std_logic;
  signal b44_13_w86 : std_logic;
  signal b44_12_w87 : std_logic;
  signal b44_11_w88 : std_logic;
  signal b44_9_w126 : std_logic;
  signal b44_10_w125 : std_logic;
  signal b44_2_w181 : std_logic;
  signal b44_3_w179 : std_logic;
  signal b44_4_w180 : std_logic;
  signal b44_5_w183 : std_logic;
  signal b44_6_w184 : std_logic;
  signal b44_7_w185 : std_logic;
  signal b44_8_w186 : std_logic;
  signal b344_1 : std_logic;
  signal b344_3 : std_logic;
  signal b44_20_w352 : std_logic;
  signal b44_21_w353 : std_logic;
  signal b44_22_w354 : std_logic;
  signal b44_23_w355 : std_logic;
  signal b344_2 : std_logic;
  signal b44_1_w363 : std_logic;

  component BTD_A
    port(i0 : in std_logic;
         i1 : in std_logic;
         i2 : in std_logic;
         i3 : in std_logic;
         o0 : out std_logic;
         o1 : out std_logic;
         o2 : out std_logic;
         o3 : out std_logic);
  end component;

  component GT_BUF
    port(A : in std_logic;
         Z : out std_logic);
  end component;

  component GT_ZERO
    port(Z : out std_logic);
  end component;

begin
  b44 <= binaryIn;
  BCDout0 <= b39;
  BCDout1 <= b40;
  BCDout2 <= b41;
  BCDout3 <= b45;
  BCDout4 <= b46;
  BCDout5 <= b47;
  BCDout6 <= b344;

  b39(3) <= b39_3;
  b39(2) <= b39_2;
  b39(1) <= b39_1;
  b39(0) <= b39_0;
  b40(3) <= b40_3;
  b40(2) <= b40_2;
  b40(1) <= b40_1;
  b40(0) <= b40_0;
  b41(3) <= b41_3;
  b41(2) <= b41_2;
  b41(1) <= b41_1;
  b41(0) <= b41_0;
  b45(3) <= b45_3;
  b45(2) <= b45_2;
  b45(1) <= b45_1;
  b45(0) <= b45_0;
  b46(3) <= b46_3;
  b46(2) <= b46_2;
  b46(1) <= b46_1;
  b46(0) <= b46_0;
  b47(3) <= b47_3;
  b47(2) <= b47_2;
  b47(1) <= b47_1;
  b47(0) <= b47_0;
  b344(3) <= b344_3;
  b344(2) <= b344_2;
  b344(1) <= b344_1;
  b344(0) <= b344_0;

  b44_0_w39 <= b44(0);
  b44_14_w73 <= b44(14);
  b44_15_w74 <= b44(15);
  b44_16_w82 <= b44(16);
  b44_17_w83 <= b44(17);
  b44_18_w84 <= b44(18);
  b44_19_w85 <= b44(19);
  b44_13_w86 <= b44(13);
  b44_12_w87 <= b44(12);
  b44_11_w88 <= b44(11);
  b44_9_w126 <= b44(9);
  b44_10_w125 <= b44(10);
  b44_2_w181 <= b44(2);
  b44_3_w179 <= b44(3);
  b44_4_w180 <= b44(4);
  b44_5_w183 <= b44(5);
  b44_6_w184 <= b44(6);
  b44_7_w185 <= b44(7);
  b44_8_w186 <= b44(8);
  b44_20_w352 <= b44(20);
  b44_21_w353 <= b44(21);
  b44_22_w354 <= b44(22);
  b44_23_w355 <= b44(23);
  b44_1_w363 <= b44(1);

  s0 : BTD_A
    port map(
      i3 => w16,
      i2 => w17,
      i1 => w18,
      o0 => w75,
      o1 => w76,
      o2 => w77,
      o3 => w78,
      i0 => b44_16_w82);

  s1 : BTD_A
    port map(
      i3 => w12,
      i2 => w13,
      i1 => w14,
      i0 => w15,
      o3 => w64,
      o0 => w79,
      o1 => w80,
      o2 => w81);

  s2 : BTD_A
    port map(
      o3 => w15,
      o2 => w16,
      o1 => w17,
      o0 => w18,
      i1 => w21,
      i2 => w22,
      i3 => w23,
      i0 => b44_17_w83);

  s3 : BTD_A
    port map(
      o2 => w12,
      o1 => w13,
      o0 => w14,
      i0 => w24,
      i1 => w25,
      i2 => w26,
      o3 => w63,
      i3 => w356);

  s4 : BTD_A
    port map(
      o0 => w21,
      o1 => w22,
      o2 => w23,
      o3 => w24,
      i2 => w28,
      i1 => w29,
      i0 => b44_18_w84,
      i3 => w362);

  s5 : BTD_A
    port map(
      o3 => w25,
      o1 => w28,
      o0 => w29,
      i1 => w32,
      i2 => w33,
      i3 => w34,
      i0 => b44_19_w85,
      o2 => w362);

  s8 : GT_BUF
    port map(
      A => b44_0_w39,
      Z => b39_0);

  s6 : BTD_A
    port map(
      o3 => w26,
      o0 => w32,
      o1 => w33,
      o2 => w34,
      i0 => b44_20_w352,
      i1 => b44_21_w353,
      i2 => b44_22_w354,
      i3 => b44_23_w355);

  s9 : BTD_A
    port map(
      o3 => w69,
      o2 => w70,
      o1 => w71,
      o0 => w72,
      i0 => b44_15_w74,
      i1 => w75,
      i2 => w76,
      i3 => w77);

  s10 : BTD_A
    port map(
      i3 => w70,
      i2 => w71,
      i1 => w72,
      i0 => b44_14_w73,
      o0 => w89,
      o1 => w90,
      o2 => w91,
      o3 => w92);

  s11 : BTD_A
    port map(
      i0 => b44_13_w86,
      i1 => w89,
      i2 => w90,
      i3 => w91,
      o3 => w109,
      o2 => w110,
      o1 => w111,
      o0 => w112);

  s12 : BTD_A
    port map(
      i0 => b44_12_w87,
      i3 => w110,
      i2 => w111,
      i1 => w112,
      o0 => w113,
      o1 => w114,
      o2 => w115,
      o3 => w116);

  s13 : BTD_A
    port map(
      i0 => b44_11_w88,
      i1 => w113,
      i2 => w114,
      i3 => w115,
      o0 => w127,
      o1 => w128,
      o2 => w129,
      o3 => w130);

  s14 : BTD_A
    port map(
      i0 => b44_10_w125,
      i1 => w127,
      i2 => w128,
      i3 => w129,
      o3 => w155,
      o2 => w156,
      o1 => w157,
      o0 => w158);

  s15 : BTD_A
    port map(
      i0 => b44_9_w126,
      i3 => w156,
      i2 => w157,
      i1 => w158,
      o0 => w163,
      o1 => w164,
      o2 => w165,
      o3 => w166);

  s16 : BTD_A
    port map(
      i1 => w163,
      i2 => w164,
      i3 => w165,
      i0 => b44_8_w186,
      o0 => w187,
      o1 => w188,
      o2 => w189,
      o3 => w190);

  s17 : BTD_A
    port map(
      o3 => w65,
      o2 => w66,
      o1 => w67,
      o0 => w68,
      i0 => w78,
      i1 => w79,
      i2 => w80,
      i3 => w81);

  s18 : BTD_A
    port map(
      i3 => w66,
      i2 => w67,
      i1 => w68,
      i0 => w69,
      o0 => w93,
      o1 => w94,
      o2 => w95,
      o3 => w96);

  s19 : BTD_A
    port map(
      i2 => w63,
      i1 => w64,
      i0 => w65,
      o0 => w97,
      o1 => w98,
      o2 => w99,
      o3 => w100,
      i3 => w357);

  s20 : BTD_A
    port map(
      i0 => w92,
      i1 => w93,
      i2 => w94,
      i3 => w95,
      o3 => w105,
      o2 => w106,
      o1 => w107,
      o0 => w108);

  s21 : BTD_A
    port map(
      i0 => w96,
      i1 => w97,
      i2 => w98,
      i3 => w99,
      o3 => w101,
      o2 => w102,
      o1 => w103,
      o0 => w104);

  s22 : BTD_A
    port map(
      i3 => w106,
      i2 => w107,
      i1 => w108,
      i0 => w109,
      o0 => w117,
      o1 => w118,
      o2 => w119,
      o3 => w120);

  s23 : BTD_A
    port map(
      i3 => w102,
      i2 => w103,
      i1 => w104,
      i0 => w105,
      o0 => w121,
      o1 => w122,
      o2 => w123,
      o3 => w124);

  s24 : BTD_A
    port map(
      i0 => w116,
      i1 => w117,
      i2 => w118,
      i3 => w119,
      o0 => w131,
      o1 => w132,
      o2 => w133,
      o3 => w134);

  s25 : BTD_A
    port map(
      i0 => w120,
      i1 => w121,
      i2 => w122,
      i3 => w123,
      o0 => w135,
      o1 => w136,
      o2 => w137,
      o3 => w138);

  s26 : BTD_A
    port map(
      i2 => w100,
      i1 => w101,
      i0 => w124,
      o0 => w139,
      o1 => w140,
      o2 => w141,
      o3 => w142,
      i3 => w358);

  s27 : BTD_A
    port map(
      i0 => w130,
      i1 => w131,
      i2 => w132,
      i3 => w133,
      o3 => w151,
      o2 => w152,
      o1 => w153,
      o0 => w154);

  s28 : BTD_A
    port map(
      i0 => w134,
      i1 => w135,
      i2 => w136,
      i3 => w137,
      o3 => w147,
      o2 => w148,
      o1 => w149,
      o0 => w150);

  s29 : BTD_A
    port map(
      i0 => w138,
      i1 => w139,
      i2 => w140,
      i3 => w141,
      o3 => w143,
      o2 => w144,
      o1 => w145,
      o0 => w146);

  s30 : BTD_A
    port map(
      i3 => w152,
      i2 => w153,
      i1 => w154,
      i0 => w155,
      o0 => w167,
      o1 => w168,
      o2 => w169,
      o3 => w170);

  s31 : BTD_A
    port map(
      i3 => w148,
      i2 => w149,
      i1 => w150,
      i0 => w151,
      o0 => w171,
      o1 => w172,
      o2 => w173,
      o3 => w174);

  s32 : BTD_A
    port map(
      i3 => w144,
      i2 => w145,
      i1 => w146,
      i0 => w147,
      o0 => w175,
      o1 => w176,
      o2 => w177,
      o3 => w178);

  s33 : BTD_A
    port map(
      i0 => w166,
      i1 => w167,
      i2 => w168,
      i3 => w169,
      o0 => w191,
      o1 => w192,
      o2 => w193,
      o3 => w194);

  s34 : BTD_A
    port map(
      i0 => w170,
      i1 => w171,
      i2 => w172,
      i3 => w173,
      o0 => w195,
      o1 => w196,
      o2 => w197,
      o3 => w198);

  s35 : BTD_A
    port map(
      i0 => w174,
      i1 => w175,
      i2 => w176,
      i3 => w177,
      o0 => w199,
      o1 => w200,
      o2 => w201,
      o3 => w202);

  s36 : BTD_A
    port map(
      i2 => w142,
      i1 => w143,
      i0 => w178,
      o0 => w203,
      o1 => w204,
      o2 => w205,
      o3 => w206,
      i3 => w359);

  s37 : BTD_A
    port map(
      i0 => b44_7_w185,
      i1 => w187,
      i2 => w188,
      i3 => w189,
      o3 => w224,
      o2 => w225,
      o1 => w226,
      o0 => w227);

  s38 : BTD_A
    port map(
      i0 => w190,
      i1 => w191,
      i2 => w192,
      i3 => w193,
      o3 => w220,
      o2 => w221,
      o1 => w222,
      o0 => w223);

  s39 : BTD_A
    port map(
      i0 => w194,
      i1 => w195,
      i2 => w196,
      i3 => w197,
      o3 => w216,
      o2 => w217,
      o1 => w218,
      o0 => w219);

  s40 : BTD_A
    port map(
      i0 => w198,
      i1 => w199,
      i2 => w200,
      i3 => w201,
      o3 => w212,
      o2 => w213,
      o1 => w214,
      o0 => w215);

  s41 : BTD_A
    port map(
      i0 => w202,
      i1 => w203,
      i2 => w204,
      i3 => w205,
      o3 => w208,
      o2 => w209,
      o1 => w210,
      o0 => w211);

  s42 : BTD_A
    port map(
      i0 => b44_6_w184,
      i3 => w225,
      i2 => w226,
      i1 => w227,
      o0 => w228,
      o1 => w229,
      o2 => w230,
      o3 => w231);

  s43 : BTD_A
    port map(
      i3 => w221,
      i2 => w222,
      i1 => w223,
      i0 => w224,
      o0 => w232,
      o1 => w233,
      o2 => w234,
      o3 => w235);

  s44 : BTD_A
    port map(
      i3 => w217,
      i2 => w218,
      i1 => w219,
      i0 => w220,
      o0 => w236,
      o1 => w237,
      o2 => w238,
      o3 => w239);

  s45 : BTD_A
    port map(
      i3 => w213,
      i2 => w214,
      i1 => w215,
      i0 => w216,
      o0 => w240,
      o1 => w241,
      o2 => w242,
      o3 => w243);

  s46 : BTD_A
    port map(
      i3 => w209,
      i2 => w210,
      i1 => w211,
      i0 => w212,
      o0 => w244,
      o1 => w245,
      o2 => w246,
      o3 => w247);

  s47 : BTD_A
    port map(
      i0 => b44_5_w183,
      i1 => w228,
      i2 => w229,
      i3 => w230,
      o3 => w267,
      o2 => w268,
      o1 => w269,
      o0 => w270);

  s48 : BTD_A
    port map(
      i0 => w231,
      i1 => w232,
      i2 => w233,
      i3 => w234,
      o3 => w263,
      o2 => w264,
      o1 => w265,
      o0 => w266);

  s49 : BTD_A
    port map(
      i0 => w235,
      i1 => w236,
      i2 => w237,
      i3 => w238,
      o3 => w259,
      o2 => w260,
      o1 => w261,
      o0 => w262);

  s50 : BTD_A
    port map(
      i0 => w239,
      i1 => w240,
      i2 => w241,
      i3 => w242,
      o3 => w255,
      o2 => w256,
      o1 => w257,
      o0 => w258);

  s51 : BTD_A
    port map(
      i0 => w243,
      i1 => w244,
      i2 => w245,
      i3 => w246,
      o3 => w251,
      o2 => w252,
      o1 => w253,
      o0 => w254);

  s52 : BTD_A
    port map(
      i2 => w206,
      i1 => w208,
      i0 => w247,
      o2 => w248,
      o1 => w249,
      o0 => w250,
      o3 => w295,
      i3 => w360);

  s53 : BTD_A
    port map(
      i0 => b44_4_w180,
      i3 => w268,
      i2 => w269,
      i1 => w270,
      o0 => w271,
      o1 => w272,
      o2 => w273,
      o3 => w274);

  s54 : BTD_A
    port map(
      i3 => w264,
      i2 => w265,
      i1 => w266,
      i0 => w267,
      o0 => w275,
      o1 => w276,
      o2 => w277,
      o3 => w278);

  s55 : BTD_A
    port map(
      i3 => w260,
      i2 => w261,
      i1 => w262,
      i0 => w263,
      o0 => w279,
      o1 => w280,
      o2 => w281,
      o3 => w282);

  s56 : BTD_A
    port map(
      i3 => w256,
      i2 => w257,
      i1 => w258,
      i0 => w259,
      o0 => w283,
      o1 => w284,
      o2 => w285,
      o3 => w286);

  s57 : BTD_A
    port map(
      i3 => w252,
      i2 => w253,
      i1 => w254,
      i0 => w255,
      o0 => w287,
      o1 => w288,
      o2 => w289,
      o3 => w290);

  s58 : BTD_A
    port map(
      i3 => w248,
      i2 => w249,
      i1 => w250,
      i0 => w251,
      o0 => w291,
      o1 => w292,
      o2 => w293,
      o3 => w294);

  s59 : BTD_A
    port map(
      i0 => b44_3_w179,
      i1 => w271,
      i2 => w272,
      i3 => w273,
      o3 => w317,
      o2 => w318,
      o1 => w319,
      o0 => w320);

  s60 : BTD_A
    port map(
      i0 => w274,
      i1 => w275,
      i2 => w276,
      i3 => w277,
      o3 => w313,
      o2 => w314,
      o1 => w315,
      o0 => w316);

  s61 : BTD_A
    port map(
      i0 => w278,
      i1 => w279,
      i2 => w280,
      i3 => w281,
      o3 => w309,
      o2 => w310,
      o1 => w311,
      o0 => w312);

  s62 : BTD_A
    port map(
      i0 => w282,
      i1 => w283,
      i2 => w284,
      i3 => w285,
      o3 => w305,
      o2 => w306,
      o1 => w307,
      o0 => w308);

  s63 : BTD_A
    port map(
      i0 => w286,
      i1 => w287,
      i2 => w288,
      i3 => w289,
      o3 => w301,
      o2 => w302,
      o1 => w303,
      o0 => w304);

  s64 : BTD_A
    port map(
      i0 => w290,
      i1 => w291,
      i2 => w292,
      i3 => w293,
      o3 => w297,
      o2 => w298,
      o1 => w299,
      o0 => w300);

  s65 : BTD_A
    port map(
      i0 => b44_2_w181,
      i3 => w318,
      i2 => w319,
      i1 => w320,
      o1 => w322,
      o2 => w323,
      o0 => w321,
      o3 => w324);

  s66 : BTD_A
    port map(
      i3 => w314,
      i2 => w315,
      i1 => w316,
      i0 => w317,
      o0 => w325,
      o1 => w326,
      o2 => w327,
      o3 => w328);

  s67 : BTD_A
    port map(
      i3 => w310,
      i2 => w311,
      i1 => w312,
      i0 => w313,
      o0 => w329,
      o1 => w330,
      o2 => w331,
      o3 => w332);

  s68 : BTD_A
    port map(
      i3 => w306,
      i2 => w307,
      i1 => w308,
      i0 => w309,
      o0 => w333,
      o1 => w334,
      o2 => w335,
      o3 => w336);

  s69 : BTD_A
    port map(
      i3 => w302,
      i2 => w303,
      i1 => w304,
      i0 => w305,
      o0 => w337,
      o1 => w338,
      o2 => w339,
      o3 => w340);

  s70 : BTD_A
    port map(
      i3 => w298,
      i2 => w299,
      i1 => w300,
      i0 => w301,
      o0 => w341,
      o1 => w342,
      o2 => w343,
      o3 => w344);

  s71 : BTD_A
    port map(
      o0 => b39_1,
      o1 => b39_2,
      o2 => b39_3,
      o3 => b40_0,
      i2 => w322,
      i3 => w323,
      i1 => w321,
      i0 => b44_1_w363);

  s72 : BTD_A
    port map(
      o0 => b40_1,
      o1 => b40_2,
      o2 => b40_3,
      o3 => b41_0,
      i0 => w324,
      i1 => w325,
      i2 => w326,
      i3 => w327);

  s73 : BTD_A
    port map(
      o1 => b41_2,
      o0 => b41_1,
      o3 => b45_0,
      o2 => b41_3,
      i0 => w328,
      i1 => w329,
      i2 => w330,
      i3 => w331);

  s74 : BTD_A
    port map(
      o0 => b45_1,
      o1 => b45_2,
      o2 => b45_3,
      o3 => b46_0,
      i0 => w332,
      i1 => w333,
      i2 => w334,
      i3 => w335);

  s75 : BTD_A
    port map(
      o0 => b46_1,
      o1 => b46_2,
      o2 => b46_3,
      o3 => b47_0,
      i0 => w336,
      i1 => w337,
      i2 => w338,
      i3 => w339);

  s76 : BTD_A
    port map(
      o0 => b47_1,
      o1 => b47_2,
      o2 => b47_3,
      o3 => b344_0,
      i0 => w340,
      i1 => w341,
      i2 => w342,
      i3 => w343);

  s77 : BTD_A
    port map(
      i1 => w294,
      i2 => w295,
      i0 => w297,
      o0 => w345,
      o1 => w346,
      o2 => w347,
      i3 => w361,
      o3 => open);

  s78 : BTD_A
    port map(
      i0 => w344,
      i1 => w345,
      i2 => w346,
      i3 => w347,
      o0 => b344_1,
      o2 => b344_3,
      o1 => b344_2,
      o3 => open);

  s79 : GT_ZERO
    port map(
      Z => w351);

  s80 : GT_BUF
    port map(
      A => w351,
      Z => w356);

  s81 : GT_BUF
    port map(
      A => w351,
      Z => w357);

  s82 : GT_BUF
    port map(
      A => w351,
      Z => w358);

  s83 : GT_BUF
    port map(
      A => w351,
      Z => w359);

  s84 : GT_BUF
    port map(
      A => w351,
      Z => w360);

  s85 : GT_BUF
    port map(
      A => w351,
      Z => w361);

end rtl;

