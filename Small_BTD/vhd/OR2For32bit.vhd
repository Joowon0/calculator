library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity OR2For32bit is
  port(in1 : in std_logic_vector(31 downto 0);
       in2 : in std_logic_vector(31 downto 0);
       myOut : out std_logic_vector(31 downto 0));
end OR2For32bit;

architecture rtl of OR2For32bit is
  signal b5 : std_logic_vector(31 downto 0);
  signal b7 : std_logic_vector(31 downto 0);
  signal b4 : std_logic_vector(31 downto 0);
  signal b7_31 : std_logic;
  signal b7_30 : std_logic;
  signal b5_31_w8 : std_logic;
  signal b4_31_w9 : std_logic;
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
  signal b5_0_w42 : std_logic;
  signal b4_1_w46 : std_logic;
  signal b5_1_w47 : std_logic;
  signal b5_2_w50 : std_logic;
  signal b4_2_w51 : std_logic;
  signal b5_3_w54 : std_logic;
  signal b4_3_w55 : std_logic;
  signal b5_4_w58 : std_logic;
  signal b4_4_w59 : std_logic;
  signal b5_5_w62 : std_logic;
  signal b4_5_w63 : std_logic;
  signal b4_6_w66 : std_logic;
  signal b5_6_w67 : std_logic;
  signal b5_7_w70 : std_logic;
  signal b4_7_w71 : std_logic;
  signal b5_8_w74 : std_logic;
  signal b4_8_w75 : std_logic;
  signal b5_9_w78 : std_logic;
  signal b4_9_w79 : std_logic;
  signal b5_10_w82 : std_logic;
  signal b4_10_w83 : std_logic;
  signal b5_11_w86 : std_logic;
  signal b4_11_w87 : std_logic;
  signal b4_12_w90 : std_logic;
  signal b5_12_w91 : std_logic;
  signal b4_13_w94 : std_logic;
  signal b5_13_w95 : std_logic;
  signal b5_14_w98 : std_logic;
  signal b4_14_w99 : std_logic;
  signal b5_15_w102 : std_logic;
  signal b4_15_w103 : std_logic;
  signal b5_16_w106 : std_logic;
  signal b4_16_w107 : std_logic;
  signal b5_17_w110 : std_logic;
  signal b4_17_w111 : std_logic;
  signal b5_18_w114 : std_logic;
  signal b4_18_w115 : std_logic;
  signal b5_19_w118 : std_logic;
  signal b4_19_w119 : std_logic;
  signal b5_20_w122 : std_logic;
  signal b4_20_w123 : std_logic;
  signal b5_21_w126 : std_logic;
  signal b4_21_w127 : std_logic;
  signal b5_22_w130 : std_logic;
  signal b4_22_w131 : std_logic;
  signal b5_24_w134 : std_logic;
  signal b4_24_w135 : std_logic;
  signal b5_24_w138 : std_logic;
  signal b4_24_w139 : std_logic;
  signal b7_25 : std_logic;
  signal b5_25_w143 : std_logic;
  signal b4_25_w144 : std_logic;
  signal b5_26_w147 : std_logic;
  signal b4_26_w148 : std_logic;
  signal b5_27_w151 : std_logic;
  signal b4_27_w152 : std_logic;
  signal b5_28_w155 : std_logic;
  signal b4_28_w156 : std_logic;
  signal b5_29_w159 : std_logic;
  signal b4_29_w160 : std_logic;
  signal b5_30_w163 : std_logic;
  signal b4_30_w164 : std_logic;
  signal b7_14 : std_logic;
  signal b4_0_w167 : std_logic;

  component GT_OR2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

begin
  b5 <= in1;
  b4 <= in2;
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

  b5_31_w8 <= b5(31);
  b4_31_w9 <= b4(31);
  b5_0_w42 <= b5(0);
  b4_1_w46 <= b4(1);
  b5_1_w47 <= b5(1);
  b5_2_w50 <= b5(2);
  b4_2_w51 <= b4(2);
  b5_3_w54 <= b5(3);
  b4_3_w55 <= b4(3);
  b5_4_w58 <= b5(4);
  b4_4_w59 <= b4(4);
  b5_5_w62 <= b5(5);
  b4_5_w63 <= b4(5);
  b4_6_w66 <= b4(6);
  b5_6_w67 <= b5(6);
  b5_7_w70 <= b5(7);
  b4_7_w71 <= b4(7);
  b5_8_w74 <= b5(8);
  b4_8_w75 <= b4(8);
  b5_9_w78 <= b5(9);
  b4_9_w79 <= b4(9);
  b5_10_w82 <= b5(10);
  b4_10_w83 <= b4(10);
  b5_11_w86 <= b5(11);
  b4_11_w87 <= b4(11);
  b4_12_w90 <= b4(12);
  b5_12_w91 <= b5(12);
  b4_13_w94 <= b4(13);
  b5_13_w95 <= b5(13);
  b5_14_w98 <= b5(14);
  b4_14_w99 <= b4(14);
  b5_15_w102 <= b5(15);
  b4_15_w103 <= b4(15);
  b5_16_w106 <= b5(16);
  b4_16_w107 <= b4(16);
  b5_17_w110 <= b5(17);
  b4_17_w111 <= b4(17);
  b5_18_w114 <= b5(18);
  b4_18_w115 <= b4(18);
  b5_19_w118 <= b5(19);
  b4_19_w119 <= b4(19);
  b5_20_w122 <= b5(20);
  b4_20_w123 <= b4(20);
  b5_21_w126 <= b5(21);
  b4_21_w127 <= b4(21);
  b5_22_w130 <= b5(22);
  b4_22_w131 <= b4(22);
  b5_24_w134 <= b5(24);
  b4_24_w135 <= b4(24);
  b5_24_w138 <= b5(24);
  b4_24_w139 <= b4(24);
  b5_25_w143 <= b5(25);
  b4_25_w144 <= b4(25);
  b5_26_w147 <= b5(26);
  b4_26_w148 <= b4(26);
  b5_27_w151 <= b5(27);
  b4_27_w152 <= b4(27);
  b5_28_w155 <= b5(28);
  b4_28_w156 <= b4(28);
  b5_29_w159 <= b5(29);
  b4_29_w160 <= b4(29);
  b5_30_w163 <= b5(30);
  b4_30_w164 <= b4(30);
  b4_0_w167 <= b4(0);

  s0 : GT_OR2
    port map(
      Z => b7_0,
      A => b5_0_w42,
      B => b4_0_w167);

  s1 : GT_OR2
    port map(
      Z => b7_1,
      B => b4_1_w46,
      A => b5_1_w47);

  s2 : GT_OR2
    port map(
      Z => b7_2,
      A => b5_2_w50,
      B => b4_2_w51);

  s3 : GT_OR2
    port map(
      Z => b7_3,
      A => b5_3_w54,
      B => b4_3_w55);

  s4 : GT_OR2
    port map(
      Z => b7_4,
      A => b5_4_w58,
      B => b4_4_w59);

  s5 : GT_OR2
    port map(
      Z => b7_5,
      A => b5_5_w62,
      B => b4_5_w63);

  s6 : GT_OR2
    port map(
      Z => b7_6,
      B => b4_6_w66,
      A => b5_6_w67);

  s7 : GT_OR2
    port map(
      Z => b7_7,
      A => b5_7_w70,
      B => b4_7_w71);

  s8 : GT_OR2
    port map(
      Z => b7_8,
      A => b5_8_w74,
      B => b4_8_w75);

  s9 : GT_OR2
    port map(
      Z => b7_9,
      A => b5_9_w78,
      B => b4_9_w79);

  s10 : GT_OR2
    port map(
      Z => b7_10,
      A => b5_10_w82,
      B => b4_10_w83);

  s11 : GT_OR2
    port map(
      Z => b7_11,
      A => b5_11_w86,
      B => b4_11_w87);

  s12 : GT_OR2
    port map(
      Z => b7_12,
      B => b4_12_w90,
      A => b5_12_w91);

  s13 : GT_OR2
    port map(
      Z => b7_13,
      B => b4_13_w94,
      A => b5_13_w95);

  s14 : GT_OR2
    port map(
      A => b5_14_w98,
      B => b4_14_w99,
      Z => b7_14);

  s15 : GT_OR2
    port map(
      Z => b7_15,
      A => b5_15_w102,
      B => b4_15_w103);

  s16 : GT_OR2
    port map(
      Z => b7_16,
      A => b5_16_w106,
      B => b4_16_w107);

  s17 : GT_OR2
    port map(
      Z => b7_17,
      A => b5_17_w110,
      B => b4_17_w111);

  s18 : GT_OR2
    port map(
      Z => b7_18,
      A => b5_18_w114,
      B => b4_18_w115);

  s19 : GT_OR2
    port map(
      Z => b7_19,
      A => b5_19_w118,
      B => b4_19_w119);

  s20 : GT_OR2
    port map(
      Z => b7_20,
      A => b5_20_w122,
      B => b4_20_w123);

  s21 : GT_OR2
    port map(
      Z => b7_21,
      A => b5_21_w126,
      B => b4_21_w127);

  s22 : GT_OR2
    port map(
      Z => b7_22,
      A => b5_22_w130,
      B => b4_22_w131);

  s23 : GT_OR2
    port map(
      Z => b7_23,
      A => b5_24_w134,
      B => b4_24_w135);

  s24 : GT_OR2
    port map(
      Z => b7_24,
      A => b5_24_w138,
      B => b4_24_w139);

  s25 : GT_OR2
    port map(
      Z => b7_25,
      A => b5_25_w143,
      B => b4_25_w144);

  s26 : GT_OR2
    port map(
      Z => b7_26,
      A => b5_26_w147,
      B => b4_26_w148);

  s27 : GT_OR2
    port map(
      Z => b7_27,
      A => b5_27_w151,
      B => b4_27_w152);

  s28 : GT_OR2
    port map(
      Z => b7_28,
      A => b5_28_w155,
      B => b4_28_w156);

  s29 : GT_OR2
    port map(
      Z => b7_29,
      A => b5_29_w159,
      B => b4_29_w160);

  s30 : GT_OR2
    port map(
      Z => b7_30,
      A => b5_30_w163,
      B => b4_30_w164);

  s31 : GT_OR2
    port map(
      Z => b7_31,
      A => b5_31_w8,
      B => b4_31_w9);

end rtl;

