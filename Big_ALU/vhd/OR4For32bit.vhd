library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity OR4For32bit is
  port(in1 : in std_logic_vector(31 downto 0);
       in2 : in std_logic_vector(31 downto 0);
       in3 : in std_logic_vector(31 downto 0);
       in4 : in std_logic_vector(31 downto 0);
       myOut : out std_logic_vector(31 downto 0));
end OR4For32bit;

architecture rtl of OR4For32bit is
  signal b3 : std_logic_vector(31 downto 0);
  signal b4 : std_logic_vector(31 downto 0);
  signal b5 : std_logic_vector(31 downto 0);
  signal b6 : std_logic_vector(31 downto 0);
  signal b7 : std_logic_vector(31 downto 0);
  signal b7_31 : std_logic;
  signal b7_30 : std_logic;
  signal b6_31_w7 : std_logic;
  signal b5_31_w8 : std_logic;
  signal b4_31_w9 : std_logic;
  signal b3_31_w10 : std_logic;
  signal b7_29 : std_logic;
  signal b7_28 : std_logic;
  signal b7_27 : std_logic;
  signal b7_26 : std_logic;
  signal b7_24 : std_logic;
  signal b7_23 : std_logic;
  signal b7_22 : std_logic;
  signal b7_21 : std_logic;
  signal b7_20 : std_logic;
  signal b7_19 : std_logic;
  signal b7_18 : std_logic;
  signal b7_17 : std_logic;
  signal b7_16 : std_logic;
  signal b7_15 : std_logic;
  signal b7_13 : std_logic;
  signal b7_12 : std_logic;
  signal b7_11 : std_logic;
  signal b7_10 : std_logic;
  signal b7_9 : std_logic;
  signal b7_8 : std_logic;
  signal b7_7 : std_logic;
  signal b7_6 : std_logic;
  signal b7_5 : std_logic;
  signal b7_4 : std_logic;
  signal b7_3 : std_logic;
  signal b7_2 : std_logic;
  signal b7_1 : std_logic;
  signal b7_0 : std_logic;
  signal b6_0_w41 : std_logic;
  signal b5_0_w42 : std_logic;
  signal b4_0_w43 : std_logic;
  signal b3_0_w44 : std_logic;
  signal b3_1_w45 : std_logic;
  signal b4_1_w46 : std_logic;
  signal b5_1_w47 : std_logic;
  signal b6_1_w48 : std_logic;
  signal b6_2_w49 : std_logic;
  signal b5_2_w50 : std_logic;
  signal b4_2_w51 : std_logic;
  signal b3_2_w52 : std_logic;
  signal b6_3_w53 : std_logic;
  signal b5_3_w54 : std_logic;
  signal b4_3_w55 : std_logic;
  signal b3_3_w56 : std_logic;
  signal b6_4_w57 : std_logic;
  signal b5_4_w58 : std_logic;
  signal b4_4_w59 : std_logic;
  signal b3_4_w60 : std_logic;
  signal b6_5_w61 : std_logic;
  signal b5_5_w62 : std_logic;
  signal b4_5_w63 : std_logic;
  signal b3_5_w64 : std_logic;
  signal b3_6_w65 : std_logic;
  signal b4_6_w66 : std_logic;
  signal b5_6_w67 : std_logic;
  signal b6_6_w68 : std_logic;
  signal b6_7_w69 : std_logic;
  signal b5_7_w70 : std_logic;
  signal b4_7_w71 : std_logic;
  signal b3_7_w72 : std_logic;
  signal b6_8_w73 : std_logic;
  signal b5_8_w74 : std_logic;
  signal b4_8_w75 : std_logic;
  signal b3_8_w76 : std_logic;
  signal b6_9_w77 : std_logic;
  signal b5_9_w78 : std_logic;
  signal b4_9_w79 : std_logic;
  signal b3_9_w80 : std_logic;
  signal b6_10_w81 : std_logic;
  signal b5_10_w82 : std_logic;
  signal b4_10_w83 : std_logic;
  signal b3_10_w84 : std_logic;
  signal b6_11_w85 : std_logic;
  signal b5_11_w86 : std_logic;
  signal b4_11_w87 : std_logic;
  signal b3_11_w88 : std_logic;
  signal b3_12_w89 : std_logic;
  signal b4_12_w90 : std_logic;
  signal b5_12_w91 : std_logic;
  signal b6_12_w92 : std_logic;
  signal b3_13_w93 : std_logic;
  signal b4_13_w94 : std_logic;
  signal b5_13_w95 : std_logic;
  signal b6_13_w96 : std_logic;
  signal b6_14_w97 : std_logic;
  signal b5_14_w98 : std_logic;
  signal b4_14_w99 : std_logic;
  signal b3_14_w100 : std_logic;
  signal b6_15_w101 : std_logic;
  signal b5_15_w102 : std_logic;
  signal b4_15_w103 : std_logic;
  signal b3_15_w104 : std_logic;
  signal b6_16_w105 : std_logic;
  signal b5_16_w106 : std_logic;
  signal b4_16_w107 : std_logic;
  signal b3_16_w108 : std_logic;
  signal b6_17_w109 : std_logic;
  signal b5_17_w110 : std_logic;
  signal b4_17_w111 : std_logic;
  signal b3_17_w112 : std_logic;
  signal b6_18_w113 : std_logic;
  signal b5_18_w114 : std_logic;
  signal b4_18_w115 : std_logic;
  signal b3_18_w116 : std_logic;
  signal b6_19_w117 : std_logic;
  signal b5_19_w118 : std_logic;
  signal b4_19_w119 : std_logic;
  signal b3_19_w120 : std_logic;
  signal b6_20_w121 : std_logic;
  signal b5_20_w122 : std_logic;
  signal b4_20_w123 : std_logic;
  signal b3_20_w124 : std_logic;
  signal b6_21_w125 : std_logic;
  signal b5_21_w126 : std_logic;
  signal b4_21_w127 : std_logic;
  signal b3_21_w128 : std_logic;
  signal b6_22_w129 : std_logic;
  signal b5_22_w130 : std_logic;
  signal b4_22_w131 : std_logic;
  signal b3_22_w132 : std_logic;
  signal b6_23_w133 : std_logic;
  signal b5_24_w134 : std_logic;
  signal b4_24_w135 : std_logic;
  signal b3_24_w136 : std_logic;
  signal b6_24_w137 : std_logic;
  signal b5_24_w138 : std_logic;
  signal b4_24_w139 : std_logic;
  signal b3_24_w140 : std_logic;
  signal b7_25 : std_logic;
  signal b6_25_w142 : std_logic;
  signal b5_25_w143 : std_logic;
  signal b4_25_w144 : std_logic;
  signal b3_25_w145 : std_logic;
  signal b6_26_w146 : std_logic;
  signal b5_26_w147 : std_logic;
  signal b4_26_w148 : std_logic;
  signal b3_26_w149 : std_logic;
  signal b6_27_w150 : std_logic;
  signal b5_27_w151 : std_logic;
  signal b4_27_w152 : std_logic;
  signal b3_27_w153 : std_logic;
  signal b6_28_w154 : std_logic;
  signal b5_28_w155 : std_logic;
  signal b4_28_w156 : std_logic;
  signal b3_28_w157 : std_logic;
  signal b6_29_w158 : std_logic;
  signal b5_29_w159 : std_logic;
  signal b4_29_w160 : std_logic;
  signal b3_29_w161 : std_logic;
  signal b6_30_w162 : std_logic;
  signal b5_30_w163 : std_logic;
  signal b4_30_w164 : std_logic;
  signal b3_30_w165 : std_logic;
  signal b7_14 : std_logic;

  component GT_OR4
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : in std_logic;
         Z : out std_logic);
  end component;

begin
  b6 <= in1;
  b5 <= in2;
  b4 <= in3;
  b3 <= in4;
  myOut <= b7;

  b7(31) <= b7_31;
  b7(30) <= b7_30;
  b7(29) <= b7_29;
  b7(28) <= b7_28;
  b7(27) <= b7_27;
  b7(26) <= b7_26;
  b7(25) <= b7_25;
  b7(24) <= b7_24;
  b7(23) <= b7_23;
  b7(22) <= b7_22;
  b7(21) <= b7_21;
  b7(20) <= b7_20;
  b7(19) <= b7_19;
  b7(18) <= b7_18;
  b7(17) <= b7_17;
  b7(16) <= b7_16;
  b7(15) <= b7_15;
  b7(14) <= b7_14;
  b7(13) <= b7_13;
  b7(12) <= b7_12;
  b7(11) <= b7_11;
  b7(10) <= b7_10;
  b7(9) <= b7_9;
  b7(8) <= b7_8;
  b7(7) <= b7_7;
  b7(6) <= b7_6;
  b7(5) <= b7_5;
  b7(4) <= b7_4;
  b7(3) <= b7_3;
  b7(2) <= b7_2;
  b7(1) <= b7_1;
  b7(0) <= b7_0;

  b6_31_w7 <= b6(31);
  b5_31_w8 <= b5(31);
  b4_31_w9 <= b4(31);
  b3_31_w10 <= b3(31);
  b6_0_w41 <= b6(0);
  b5_0_w42 <= b5(0);
  b4_0_w43 <= b4(0);
  b3_0_w44 <= b3(0);
  b3_1_w45 <= b3(1);
  b4_1_w46 <= b4(1);
  b5_1_w47 <= b5(1);
  b6_1_w48 <= b6(1);
  b6_2_w49 <= b6(2);
  b5_2_w50 <= b5(2);
  b4_2_w51 <= b4(2);
  b3_2_w52 <= b3(2);
  b6_3_w53 <= b6(3);
  b5_3_w54 <= b5(3);
  b4_3_w55 <= b4(3);
  b3_3_w56 <= b3(3);
  b6_4_w57 <= b6(4);
  b5_4_w58 <= b5(4);
  b4_4_w59 <= b4(4);
  b3_4_w60 <= b3(4);
  b6_5_w61 <= b6(5);
  b5_5_w62 <= b5(5);
  b4_5_w63 <= b4(5);
  b3_5_w64 <= b3(5);
  b3_6_w65 <= b3(6);
  b4_6_w66 <= b4(6);
  b5_6_w67 <= b5(6);
  b6_6_w68 <= b6(6);
  b6_7_w69 <= b6(7);
  b5_7_w70 <= b5(7);
  b4_7_w71 <= b4(7);
  b3_7_w72 <= b3(7);
  b6_8_w73 <= b6(8);
  b5_8_w74 <= b5(8);
  b4_8_w75 <= b4(8);
  b3_8_w76 <= b3(8);
  b6_9_w77 <= b6(9);
  b5_9_w78 <= b5(9);
  b4_9_w79 <= b4(9);
  b3_9_w80 <= b3(9);
  b6_10_w81 <= b6(10);
  b5_10_w82 <= b5(10);
  b4_10_w83 <= b4(10);
  b3_10_w84 <= b3(10);
  b6_11_w85 <= b6(11);
  b5_11_w86 <= b5(11);
  b4_11_w87 <= b4(11);
  b3_11_w88 <= b3(11);
  b3_12_w89 <= b3(12);
  b4_12_w90 <= b4(12);
  b5_12_w91 <= b5(12);
  b6_12_w92 <= b6(12);
  b3_13_w93 <= b3(13);
  b4_13_w94 <= b4(13);
  b5_13_w95 <= b5(13);
  b6_13_w96 <= b6(13);
  b6_14_w97 <= b6(14);
  b5_14_w98 <= b5(14);
  b4_14_w99 <= b4(14);
  b3_14_w100 <= b3(14);
  b6_15_w101 <= b6(15);
  b5_15_w102 <= b5(15);
  b4_15_w103 <= b4(15);
  b3_15_w104 <= b3(15);
  b6_16_w105 <= b6(16);
  b5_16_w106 <= b5(16);
  b4_16_w107 <= b4(16);
  b3_16_w108 <= b3(16);
  b6_17_w109 <= b6(17);
  b5_17_w110 <= b5(17);
  b4_17_w111 <= b4(17);
  b3_17_w112 <= b3(17);
  b6_18_w113 <= b6(18);
  b5_18_w114 <= b5(18);
  b4_18_w115 <= b4(18);
  b3_18_w116 <= b3(18);
  b6_19_w117 <= b6(19);
  b5_19_w118 <= b5(19);
  b4_19_w119 <= b4(19);
  b3_19_w120 <= b3(19);
  b6_20_w121 <= b6(20);
  b5_20_w122 <= b5(20);
  b4_20_w123 <= b4(20);
  b3_20_w124 <= b3(20);
  b6_21_w125 <= b6(21);
  b5_21_w126 <= b5(21);
  b4_21_w127 <= b4(21);
  b3_21_w128 <= b3(21);
  b6_22_w129 <= b6(22);
  b5_22_w130 <= b5(22);
  b4_22_w131 <= b4(22);
  b3_22_w132 <= b3(22);
  b6_23_w133 <= b6(23);
  b5_24_w134 <= b5(24);
  b4_24_w135 <= b4(24);
  b3_24_w136 <= b3(24);
  b6_24_w137 <= b6(24);
  b5_24_w138 <= b5(24);
  b4_24_w139 <= b4(24);
  b3_24_w140 <= b3(24);
  b6_25_w142 <= b6(25);
  b5_25_w143 <= b5(25);
  b4_25_w144 <= b4(25);
  b3_25_w145 <= b3(25);
  b6_26_w146 <= b6(26);
  b5_26_w147 <= b5(26);
  b4_26_w148 <= b4(26);
  b3_26_w149 <= b3(26);
  b6_27_w150 <= b6(27);
  b5_27_w151 <= b5(27);
  b4_27_w152 <= b4(27);
  b3_27_w153 <= b3(27);
  b6_28_w154 <= b6(28);
  b5_28_w155 <= b5(28);
  b4_28_w156 <= b4(28);
  b3_28_w157 <= b3(28);
  b6_29_w158 <= b6(29);
  b5_29_w159 <= b5(29);
  b4_29_w160 <= b4(29);
  b3_29_w161 <= b3(29);
  b6_30_w162 <= b6(30);
  b5_30_w163 <= b5(30);
  b4_30_w164 <= b4(30);
  b3_30_w165 <= b3(30);

  s0 : GT_OR4
    port map(
      Z => b7_0,
      A => b6_0_w41,
      B => b5_0_w42,
      C => b4_0_w43,
      D => b3_0_w44);

  s1 : GT_OR4
    port map(
      Z => b7_1,
      D => b3_1_w45,
      C => b4_1_w46,
      B => b5_1_w47,
      A => b6_1_w48);

  s2 : GT_OR4
    port map(
      Z => b7_2,
      A => b6_2_w49,
      B => b5_2_w50,
      C => b4_2_w51,
      D => b3_2_w52);

  s3 : GT_OR4
    port map(
      Z => b7_3,
      A => b6_3_w53,
      B => b5_3_w54,
      C => b4_3_w55,
      D => b3_3_w56);

  s4 : GT_OR4
    port map(
      Z => b7_4,
      A => b6_4_w57,
      B => b5_4_w58,
      C => b4_4_w59,
      D => b3_4_w60);

  s5 : GT_OR4
    port map(
      Z => b7_5,
      A => b6_5_w61,
      B => b5_5_w62,
      C => b4_5_w63,
      D => b3_5_w64);

  s6 : GT_OR4
    port map(
      Z => b7_6,
      D => b3_6_w65,
      C => b4_6_w66,
      B => b5_6_w67,
      A => b6_6_w68);

  s7 : GT_OR4
    port map(
      Z => b7_7,
      A => b6_7_w69,
      B => b5_7_w70,
      C => b4_7_w71,
      D => b3_7_w72);

  s8 : GT_OR4
    port map(
      Z => b7_8,
      A => b6_8_w73,
      B => b5_8_w74,
      C => b4_8_w75,
      D => b3_8_w76);

  s9 : GT_OR4
    port map(
      Z => b7_9,
      A => b6_9_w77,
      B => b5_9_w78,
      C => b4_9_w79,
      D => b3_9_w80);

  s10 : GT_OR4
    port map(
      Z => b7_10,
      A => b6_10_w81,
      B => b5_10_w82,
      C => b4_10_w83,
      D => b3_10_w84);

  s11 : GT_OR4
    port map(
      Z => b7_11,
      A => b6_11_w85,
      B => b5_11_w86,
      C => b4_11_w87,
      D => b3_11_w88);

  s12 : GT_OR4
    port map(
      Z => b7_12,
      D => b3_12_w89,
      C => b4_12_w90,
      B => b5_12_w91,
      A => b6_12_w92);

  s13 : GT_OR4
    port map(
      Z => b7_13,
      D => b3_13_w93,
      C => b4_13_w94,
      B => b5_13_w95,
      A => b6_13_w96);

  s14 : GT_OR4
    port map(
      A => b6_14_w97,
      B => b5_14_w98,
      C => b4_14_w99,
      D => b3_14_w100,
      Z => b7_14);

  s15 : GT_OR4
    port map(
      Z => b7_15,
      A => b6_15_w101,
      B => b5_15_w102,
      C => b4_15_w103,
      D => b3_15_w104);

  s16 : GT_OR4
    port map(
      Z => b7_16,
      A => b6_16_w105,
      B => b5_16_w106,
      C => b4_16_w107,
      D => b3_16_w108);

  s17 : GT_OR4
    port map(
      Z => b7_17,
      A => b6_17_w109,
      B => b5_17_w110,
      C => b4_17_w111,
      D => b3_17_w112);

  s18 : GT_OR4
    port map(
      Z => b7_18,
      A => b6_18_w113,
      B => b5_18_w114,
      C => b4_18_w115,
      D => b3_18_w116);

  s19 : GT_OR4
    port map(
      Z => b7_19,
      A => b6_19_w117,
      B => b5_19_w118,
      C => b4_19_w119,
      D => b3_19_w120);

  s20 : GT_OR4
    port map(
      Z => b7_20,
      A => b6_20_w121,
      B => b5_20_w122,
      C => b4_20_w123,
      D => b3_20_w124);

  s21 : GT_OR4
    port map(
      Z => b7_21,
      A => b6_21_w125,
      B => b5_21_w126,
      C => b4_21_w127,
      D => b3_21_w128);

  s22 : GT_OR4
    port map(
      Z => b7_22,
      A => b6_22_w129,
      B => b5_22_w130,
      C => b4_22_w131,
      D => b3_22_w132);

  s23 : GT_OR4
    port map(
      Z => b7_23,
      A => b6_23_w133,
      B => b5_24_w134,
      C => b4_24_w135,
      D => b3_24_w136);

  s24 : GT_OR4
    port map(
      Z => b7_24,
      A => b6_24_w137,
      B => b5_24_w138,
      C => b4_24_w139,
      D => b3_24_w140);

  s25 : GT_OR4
    port map(
      Z => b7_25,
      A => b6_25_w142,
      B => b5_25_w143,
      C => b4_25_w144,
      D => b3_25_w145);

  s26 : GT_OR4
    port map(
      Z => b7_26,
      A => b6_26_w146,
      B => b5_26_w147,
      C => b4_26_w148,
      D => b3_26_w149);

  s27 : GT_OR4
    port map(
      Z => b7_27,
      A => b6_27_w150,
      B => b5_27_w151,
      C => b4_27_w152,
      D => b3_27_w153);

  s28 : GT_OR4
    port map(
      Z => b7_28,
      A => b6_28_w154,
      B => b5_28_w155,
      C => b4_28_w156,
      D => b3_28_w157);

  s29 : GT_OR4
    port map(
      Z => b7_29,
      A => b6_29_w158,
      B => b5_29_w159,
      C => b4_29_w160,
      D => b3_29_w161);

  s30 : GT_OR4
    port map(
      Z => b7_30,
      A => b6_30_w162,
      B => b5_30_w163,
      C => b4_30_w164,
      D => b3_30_w165);

  s31 : GT_OR4
    port map(
      Z => b7_31,
      A => b6_31_w7,
      B => b5_31_w8,
      C => b4_31_w9,
      D => b3_31_w10);

end rtl;

