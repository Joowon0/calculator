library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity Register32bits is
  port(DataOut : out std_logic_vector(31 downto 0);
       sel : in std_logic;
       DataIn : in std_logic_vector(31 downto 0);
       clk : in std_logic;
       rst : in std_logic;
       DataOutN : out std_logic_vector(31 downto 0));
end Register32bits;

architecture rtl of Register32bits is
  signal w19 : std_logic;
  signal w27 : std_logic;
  signal w28 : std_logic;
  signal w29 : std_logic;
  signal w17 : std_logic;
  signal w21 : std_logic;
  signal w30 : std_logic;
  signal w31 : std_logic;
  signal w36 : std_logic;
  signal w37 : std_logic;
  signal w38 : std_logic;
  signal w39 : std_logic;
  signal w44 : std_logic;
  signal w45 : std_logic;
  signal b104 : std_logic_vector(31 downto 0);
  signal b105 : std_logic_vector(31 downto 0);
  signal w80 : std_logic;
  signal w81 : std_logic;
  signal w87 : std_logic;
  signal w88 : std_logic;
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
  signal w129 : std_logic;
  signal w130 : std_logic;
  signal w131 : std_logic;
  signal w135 : std_logic;
  signal w134 : std_logic;
  signal w138 : std_logic;
  signal w139 : std_logic;
  signal b134 : std_logic_vector(31 downto 0);
  signal b104_0_w48 : std_logic;
  signal b104_1_w49 : std_logic;
  signal b104_2_w50 : std_logic;
  signal b104_3_w51 : std_logic;
  signal b104_4_w52 : std_logic;
  signal b104_5_w53 : std_logic;
  signal b104_6_w54 : std_logic;
  signal b104_7_w55 : std_logic;
  signal b104_8_w56 : std_logic;
  signal b104_9_w57 : std_logic;
  signal b104_10_w58 : std_logic;
  signal b104_11_w59 : std_logic;
  signal b104_12_w60 : std_logic;
  signal b104_13_w61 : std_logic;
  signal b105_13 : std_logic;
  signal b105_13_w77 : std_logic;
  signal b105_14 : std_logic;
  signal b105_14_w85 : std_logic;
  signal b105_15 : std_logic;
  signal b105_15_w86 : std_logic;
  signal b104_14_w82 : std_logic;
  signal b104_15_w83 : std_logic;
  signal b104_17_w102 : std_logic;
  signal b104_18_w103 : std_logic;
  signal b104_19_w104 : std_logic;
  signal b104_20_w105 : std_logic;
  signal b104_21_w106 : std_logic;
  signal b104_22_w107 : std_logic;
  signal b104_23_w108 : std_logic;
  signal b104_24_w109 : std_logic;
  signal b104_25_w110 : std_logic;
  signal b104_26_w111 : std_logic;
  signal b104_27_w112 : std_logic;
  signal b104_28_w113 : std_logic;
  signal b104_29_w114 : std_logic;
  signal b105_16 : std_logic;
  signal b105_16_w115 : std_logic;
  signal b105_17 : std_logic;
  signal b105_17_w116 : std_logic;
  signal b105_18 : std_logic;
  signal b105_18_w117 : std_logic;
  signal b105_19 : std_logic;
  signal b105_19_w118 : std_logic;
  signal b105_20 : std_logic;
  signal b105_20_w119 : std_logic;
  signal b105_21 : std_logic;
  signal b105_21_w120 : std_logic;
  signal b105_22 : std_logic;
  signal b105_22_w121 : std_logic;
  signal b105_23 : std_logic;
  signal b105_23_w122 : std_logic;
  signal b105_24 : std_logic;
  signal b105_24_w123 : std_logic;
  signal b105_25 : std_logic;
  signal b105_25_w124 : std_logic;
  signal b105_26 : std_logic;
  signal b105_26_w125 : std_logic;
  signal b105_27 : std_logic;
  signal b105_27_w126 : std_logic;
  signal b105_28 : std_logic;
  signal b105_28_w127 : std_logic;
  signal b105_29 : std_logic;
  signal b105_29_w128 : std_logic;
  signal b105_30 : std_logic;
  signal b105_30_w132 : std_logic;
  signal b105_31 : std_logic;
  signal b105_31_w133 : std_logic;
  signal b104_30_w136 : std_logic;
  signal b104_31_w137 : std_logic;
  signal b104_16_w101 : std_logic;
  signal b105_0 : std_logic;
  signal b105_0_w64 : std_logic;
  signal b105_1 : std_logic;
  signal b105_1_w65 : std_logic;
  signal b105_2 : std_logic;
  signal b105_2_w66 : std_logic;
  signal b105_3 : std_logic;
  signal b105_3_w67 : std_logic;
  signal b105_4 : std_logic;
  signal b105_4_w68 : std_logic;
  signal b105_5 : std_logic;
  signal b105_5_w69 : std_logic;
  signal b105_6 : std_logic;
  signal b105_6_w70 : std_logic;
  signal b105_7 : std_logic;
  signal b105_7_w71 : std_logic;
  signal b105_8 : std_logic;
  signal b105_8_w72 : std_logic;
  signal b105_9 : std_logic;
  signal b105_9_w73 : std_logic;
  signal b105_10 : std_logic;
  signal b105_10_w74 : std_logic;
  signal b105_11 : std_logic;
  signal b105_11_w75 : std_logic;
  signal b105_12 : std_logic;
  signal b105_12_w76 : std_logic;
  signal b134_0 : std_logic;
  signal b134_1 : std_logic;
  signal b134_2 : std_logic;
  signal b134_3 : std_logic;
  signal b134_4 : std_logic;
  signal b134_5 : std_logic;
  signal b134_6 : std_logic;
  signal b134_7 : std_logic;
  signal b134_8 : std_logic;
  signal b134_9 : std_logic;
  signal b134_10 : std_logic;
  signal b134_11 : std_logic;
  signal b134_12 : std_logic;
  signal b134_13 : std_logic;
  signal b134_14 : std_logic;
  signal b134_15 : std_logic;
  signal b134_16 : std_logic;
  signal b134_17 : std_logic;
  signal b134_18 : std_logic;
  signal b134_19 : std_logic;
  signal b134_20 : std_logic;
  signal b134_21 : std_logic;
  signal b134_22 : std_logic;
  signal b134_23 : std_logic;
  signal b134_24 : std_logic;
  signal b134_25 : std_logic;
  signal b134_26 : std_logic;
  signal b134_27 : std_logic;
  signal b134_28 : std_logic;
  signal b134_29 : std_logic;
  signal b134_30 : std_logic;
  signal b134_31 : std_logic;

  component GT_FDR
    port(D : in std_logic;
         CP : in std_logic;
         CD : in std_logic;
         Q : out std_logic;
         QN : out std_logic);
  end component;

  component GT_AO22
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : in std_logic;
         Z : out std_logic);
  end component;

  component GT_NOT
    port(A : in std_logic;
         Z : out std_logic);
  end component;

begin
  DataOut <= b105;
  w139 <= sel;
  b104 <= DataIn;
  w134 <= clk;
  w129 <= rst;
  DataOutN <= b134;

  b105(31) <= b105_31;
  b105(30) <= b105_30;
  b105(29) <= b105_29;
  b105(28) <= b105_28;
  b105(27) <= b105_27;
  b105(26) <= b105_26;
  b105(25) <= b105_25;
  b105(24) <= b105_24;
  b105(23) <= b105_23;
  b105(22) <= b105_22;
  b105(21) <= b105_21;
  b105(20) <= b105_20;
  b105(19) <= b105_19;
  b105(18) <= b105_18;
  b105(17) <= b105_17;
  b105(16) <= b105_16;
  b105(15) <= b105_15;
  b105(14) <= b105_14;
  b105(13) <= b105_13;
  b105(12) <= b105_12;
  b105(11) <= b105_11;
  b105(10) <= b105_10;
  b105(9) <= b105_9;
  b105(8) <= b105_8;
  b105(7) <= b105_7;
  b105(6) <= b105_6;
  b105(5) <= b105_5;
  b105(4) <= b105_4;
  b105(3) <= b105_3;
  b105(2) <= b105_2;
  b105(1) <= b105_1;
  b105(0) <= b105_0;
  b134(31) <= b134_31;
  b134(30) <= b134_30;
  b134(29) <= b134_29;
  b134(28) <= b134_28;
  b134(27) <= b134_27;
  b134(26) <= b134_26;
  b134(25) <= b134_25;
  b134(24) <= b134_24;
  b134(23) <= b134_23;
  b134(22) <= b134_22;
  b134(21) <= b134_21;
  b134(20) <= b134_20;
  b134(19) <= b134_19;
  b134(18) <= b134_18;
  b134(17) <= b134_17;
  b134(16) <= b134_16;
  b134(15) <= b134_15;
  b134(14) <= b134_14;
  b134(13) <= b134_13;
  b134(12) <= b134_12;
  b134(11) <= b134_11;
  b134(10) <= b134_10;
  b134(9) <= b134_9;
  b134(8) <= b134_8;
  b134(7) <= b134_7;
  b134(6) <= b134_6;
  b134(5) <= b134_5;
  b134(4) <= b134_4;
  b134(3) <= b134_3;
  b134(2) <= b134_2;
  b134(1) <= b134_1;
  b134(0) <= b134_0;

  b104_0_w48 <= b104(0);
  b104_1_w49 <= b104(1);
  b104_2_w50 <= b104(2);
  b104_3_w51 <= b104(3);
  b104_4_w52 <= b104(4);
  b104_5_w53 <= b104(5);
  b104_6_w54 <= b104(6);
  b104_7_w55 <= b104(7);
  b104_8_w56 <= b104(8);
  b104_9_w57 <= b104(9);
  b104_10_w58 <= b104(10);
  b104_11_w59 <= b104(11);
  b104_12_w60 <= b104(12);
  b104_13_w61 <= b104(13);
  b105_13_w77 <= b105(13);
  b105_14_w85 <= b105(14);
  b105_15_w86 <= b105(15);
  b104_14_w82 <= b104(14);
  b104_15_w83 <= b104(15);
  b104_17_w102 <= b104(17);
  b104_18_w103 <= b104(18);
  b104_19_w104 <= b104(19);
  b104_20_w105 <= b104(20);
  b104_21_w106 <= b104(21);
  b104_22_w107 <= b104(22);
  b104_23_w108 <= b104(23);
  b104_24_w109 <= b104(24);
  b104_25_w110 <= b104(25);
  b104_26_w111 <= b104(26);
  b104_27_w112 <= b104(27);
  b104_28_w113 <= b104(28);
  b104_29_w114 <= b104(29);
  b105_16_w115 <= b105(16);
  b105_17_w116 <= b105(17);
  b105_18_w117 <= b105(18);
  b105_19_w118 <= b105(19);
  b105_20_w119 <= b105(20);
  b105_21_w120 <= b105(21);
  b105_22_w121 <= b105(22);
  b105_23_w122 <= b105(23);
  b105_24_w123 <= b105(24);
  b105_25_w124 <= b105(25);
  b105_26_w125 <= b105(26);
  b105_27_w126 <= b105(27);
  b105_28_w127 <= b105(28);
  b105_29_w128 <= b105(29);
  b105_30_w132 <= b105(30);
  b105_31_w133 <= b105(31);
  b104_30_w136 <= b104(30);
  b104_31_w137 <= b104(31);
  b104_16_w101 <= b104(16);
  b105_0_w64 <= b105(0);
  b105_1_w65 <= b105(1);
  b105_2_w66 <= b105(2);
  b105_3_w67 <= b105(3);
  b105_4_w68 <= b105(4);
  b105_5_w69 <= b105(5);
  b105_6_w70 <= b105(6);
  b105_7_w71 <= b105(7);
  b105_8_w72 <= b105(8);
  b105_9_w73 <= b105(9);
  b105_10_w74 <= b105(10);
  b105_11_w75 <= b105(11);
  b105_12_w76 <= b105(12);

  s0 : GT_FDR
    port map(
      D => w29,
      CD => w135,
      CP => w134,
      Q => b105_0,
      QN => b134_0);

  s1 : GT_FDR
    port map(
      D => w28,
      CD => w135,
      CP => w134,
      Q => b105_1,
      QN => b134_1);

  s2 : GT_FDR
    port map(
      D => w27,
      CD => w135,
      CP => w134,
      Q => b105_2,
      QN => b134_2);

  s3 : GT_FDR
    port map(
      D => w19,
      CD => w135,
      CP => w134,
      Q => b105_3,
      QN => b134_3);

  s4 : GT_AO22
    port map(
      Z => w29,
      D => b104_0_w48,
      A => b105_0_w64,
      B => w138,
      C => w139);

  s5 : GT_NOT
    port map(
      Z => w138,
      A => w139);

  s6 : GT_AO22
    port map(
      Z => w28,
      D => b104_1_w49,
      A => b105_1_w65,
      B => w138,
      C => w139);

  s7 : GT_AO22
    port map(
      Z => w27,
      D => b104_2_w50,
      A => b105_2_w66,
      B => w138,
      C => w139);

  s8 : GT_AO22
    port map(
      Z => w19,
      D => b104_3_w51,
      A => b105_3_w67,
      B => w138,
      C => w139);

  s9 : GT_FDR
    port map(
      D => w31,
      CD => w135,
      CP => w134,
      Q => b105_4,
      QN => b134_4);

  s10 : GT_FDR
    port map(
      D => w30,
      CD => w135,
      CP => w134,
      Q => b105_5,
      QN => b134_5);

  s11 : GT_FDR
    port map(
      D => w21,
      CD => w135,
      CP => w134,
      Q => b105_6,
      QN => b134_6);

  s12 : GT_FDR
    port map(
      D => w17,
      CD => w135,
      CP => w134,
      Q => b105_7,
      QN => b134_7);

  s13 : GT_AO22
    port map(
      Z => w31,
      D => b104_4_w52,
      A => b105_4_w68,
      B => w138,
      C => w139);

  s14 : GT_AO22
    port map(
      Z => w30,
      D => b104_5_w53,
      A => b105_5_w69,
      B => w138,
      C => w139);

  s15 : GT_AO22
    port map(
      Z => w21,
      D => b104_6_w54,
      A => b105_6_w70,
      B => w138,
      C => w139);

  s16 : GT_AO22
    port map(
      Z => w17,
      D => b104_7_w55,
      A => b105_7_w71,
      B => w138,
      C => w139);

  s17 : GT_FDR
    port map(
      D => w39,
      CD => w135,
      CP => w134,
      Q => b105_8,
      QN => b134_8);

  s18 : GT_FDR
    port map(
      D => w38,
      CD => w135,
      CP => w134,
      Q => b105_9,
      QN => b134_9);

  s19 : GT_FDR
    port map(
      D => w37,
      CD => w135,
      CP => w134,
      Q => b105_10,
      QN => b134_10);

  s20 : GT_FDR
    port map(
      D => w36,
      CD => w135,
      CP => w134,
      Q => b105_11,
      QN => b134_11);

  s21 : GT_AO22
    port map(
      Z => w39,
      D => b104_8_w56,
      A => b105_8_w72,
      B => w138,
      C => w139);

  s22 : GT_AO22
    port map(
      Z => w38,
      D => b104_9_w57,
      A => b105_9_w73,
      B => w138,
      C => w139);

  s23 : GT_AO22
    port map(
      Z => w37,
      D => b104_10_w58,
      A => b105_10_w74,
      B => w138,
      C => w139);

  s24 : GT_AO22
    port map(
      Z => w36,
      D => b104_11_w59,
      A => b105_11_w75,
      B => w138,
      C => w139);

  s25 : GT_FDR
    port map(
      D => w45,
      CD => w135,
      CP => w134,
      Q => b105_12,
      QN => b134_12);

  s26 : GT_FDR
    port map(
      D => w44,
      Q => b105_13,
      CD => w135,
      CP => w134,
      QN => b134_13);

  s27 : GT_AO22
    port map(
      Z => w45,
      D => b104_12_w60,
      A => b105_12_w76,
      B => w138,
      C => w139);

  s28 : GT_AO22
    port map(
      Z => w44,
      D => b104_13_w61,
      A => b105_13_w77,
      B => w138,
      C => w139);

  s30 : GT_FDR
    port map(
      D => w81,
      Q => b105_14,
      CD => w135,
      CP => w134,
      QN => b134_14);

  s31 : GT_FDR
    port map(
      D => w80,
      Q => b105_15,
      CD => w135,
      CP => w134,
      QN => b134_15);

  s32 : GT_AO22
    port map(
      Z => w81,
      A => b105_14_w85,
      D => b104_14_w82,
      B => w138,
      C => w139);

  s33 : GT_AO22
    port map(
      Z => w80,
      A => b105_15_w86,
      D => b104_15_w83,
      B => w138,
      C => w139);

  s34 : GT_FDR
    port map(
      D => w90,
      Q => b105_16,
      CD => w135,
      CP => w134,
      QN => b134_16);

  s35 : GT_FDR
    port map(
      D => w89,
      Q => b105_17,
      CD => w135,
      CP => w134,
      QN => b134_17);

  s36 : GT_FDR
    port map(
      D => w88,
      Q => b105_18,
      CD => w135,
      CP => w134,
      QN => b134_18);

  s37 : GT_FDR
    port map(
      D => w87,
      Q => b105_19,
      CD => w135,
      CP => w134,
      QN => b134_19);

  s40 : GT_AO22
    port map(
      Z => w89,
      D => b104_17_w102,
      A => b105_17_w116,
      B => w138,
      C => w139);

  s41 : GT_AO22
    port map(
      Z => w88,
      D => b104_18_w103,
      A => b105_18_w117,
      B => w138,
      C => w139);

  s42 : GT_AO22
    port map(
      Z => w87,
      D => b104_19_w104,
      A => b105_19_w118,
      B => w138,
      C => w139);

  s43 : GT_FDR
    port map(
      D => w94,
      Q => b105_20,
      CD => w135,
      CP => w134,
      QN => b134_20);

  s44 : GT_FDR
    port map(
      D => w93,
      Q => b105_21,
      CD => w135,
      CP => w134,
      QN => b134_21);

  s45 : GT_FDR
    port map(
      D => w92,
      Q => b105_22,
      CD => w135,
      CP => w134,
      QN => b134_22);

  s46 : GT_FDR
    port map(
      D => w91,
      Q => b105_23,
      CD => w135,
      CP => w134,
      QN => b134_23);

  s47 : GT_AO22
    port map(
      Z => w94,
      D => b104_20_w105,
      A => b105_20_w119,
      B => w138,
      C => w139);

  s48 : GT_AO22
    port map(
      Z => w93,
      D => b104_21_w106,
      A => b105_21_w120,
      B => w138,
      C => w139);

  s49 : GT_AO22
    port map(
      Z => w92,
      D => b104_22_w107,
      A => b105_22_w121,
      B => w138,
      C => w139);

  s50 : GT_AO22
    port map(
      Z => w91,
      D => b104_23_w108,
      A => b105_23_w122,
      B => w138,
      C => w139);

  s51 : GT_FDR
    port map(
      D => w98,
      Q => b105_24,
      CD => w135,
      CP => w134,
      QN => b134_24);

  s52 : GT_FDR
    port map(
      D => w97,
      Q => b105_25,
      CD => w135,
      CP => w134,
      QN => b134_25);

  s53 : GT_FDR
    port map(
      D => w96,
      Q => b105_26,
      CD => w135,
      CP => w134,
      QN => b134_26);

  s54 : GT_FDR
    port map(
      D => w95,
      Q => b105_27,
      CD => w135,
      CP => w134,
      QN => b134_27);

  s55 : GT_AO22
    port map(
      Z => w98,
      D => b104_24_w109,
      A => b105_24_w123,
      B => w138,
      C => w139);

  s56 : GT_AO22
    port map(
      Z => w97,
      D => b104_25_w110,
      A => b105_25_w124,
      B => w138,
      C => w139);

  s57 : GT_AO22
    port map(
      Z => w96,
      D => b104_26_w111,
      A => b105_26_w125,
      B => w138,
      C => w139);

  s58 : GT_AO22
    port map(
      Z => w95,
      D => b104_27_w112,
      A => b105_27_w126,
      B => w138,
      C => w139);

  s59 : GT_FDR
    port map(
      D => w100,
      Q => b105_28,
      CD => w135,
      CP => w134,
      QN => b134_28);

  s60 : GT_FDR
    port map(
      D => w99,
      Q => b105_29,
      CD => w135,
      CP => w134,
      QN => b134_29);

  s61 : GT_AO22
    port map(
      Z => w100,
      D => b104_28_w113,
      A => b105_28_w127,
      B => w138,
      C => w139);

  s62 : GT_AO22
    port map(
      Z => w99,
      D => b104_29_w114,
      A => b105_29_w128,
      B => w138,
      C => w139);

  s63 : GT_NOT
    port map(
      A => w129,
      Z => w135);

  s64 : GT_FDR
    port map(
      D => w131,
      Q => b105_30,
      CD => w135,
      CP => w134,
      QN => b134_30);

  s65 : GT_FDR
    port map(
      D => w130,
      Q => b105_31,
      CD => w135,
      CP => w134,
      QN => b134_31);

  s66 : GT_AO22
    port map(
      Z => w131,
      A => b105_30_w132,
      D => b104_30_w136,
      B => w138,
      C => w139);

  s67 : GT_AO22
    port map(
      Z => w130,
      A => b105_31_w133,
      D => b104_31_w137,
      B => w138,
      C => w139);

  s38 : GT_AO22
    port map(
      Z => w90,
      A => b105_16_w115,
      D => b104_16_w101,
      B => w138,
      C => w139);

end rtl;

