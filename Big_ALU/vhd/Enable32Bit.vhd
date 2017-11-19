library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity Enable32Bit is
  port(input : in std_logic_vector(31 downto 0);
       enable : in std_logic;
       output : out std_logic_vector(31 downto 0));
end Enable32Bit;

architecture rtl of Enable32Bit is
  signal b28 : std_logic_vector(31 downto 0);
  signal w37 : std_logic;
  signal b34 : std_logic_vector(31 downto 0);
  signal b28_0_w2 : std_logic;
  signal b28_1_w4 : std_logic;
  signal b28_2_w5 : std_logic;
  signal b28_3_w6 : std_logic;
  signal b28_4_w7 : std_logic;
  signal b28_5_w8 : std_logic;
  signal b28_6_w9 : std_logic;
  signal b28_7_w10 : std_logic;
  signal b28_8_w11 : std_logic;
  signal b28_9_w12 : std_logic;
  signal b28_10_w13 : std_logic;
  signal b28_11_w14 : std_logic;
  signal b28_12_w15 : std_logic;
  signal b28_13_w16 : std_logic;
  signal b28_14_w18 : std_logic;
  signal b28_15_w19 : std_logic;
  signal b28_16_w20 : std_logic;
  signal b28_17_w21 : std_logic;
  signal b28_18_w22 : std_logic;
  signal b28_19_w24 : std_logic;
  signal b28_20_w25 : std_logic;
  signal b28_21_w26 : std_logic;
  signal b28_22_w27 : std_logic;
  signal b28_23_w28 : std_logic;
  signal b28_24_w29 : std_logic;
  signal b28_25_w30 : std_logic;
  signal b28_26_w31 : std_logic;
  signal b28_27_w32 : std_logic;
  signal b28_28_w33 : std_logic;
  signal b28_29_w34 : std_logic;
  signal b28_30_w35 : std_logic;
  signal b28_31_w36 : std_logic;
  signal b34_0 : std_logic;
  signal b34_1 : std_logic;
  signal b34_2 : std_logic;
  signal b34_3 : std_logic;
  signal b34_4 : std_logic;
  signal b34_5 : std_logic;
  signal b34_6 : std_logic;
  signal b34_7 : std_logic;
  signal b34_8 : std_logic;
  signal b34_9 : std_logic;
  signal b34_10 : std_logic;
  signal b34_11 : std_logic;
  signal b34_12 : std_logic;
  signal b34_13 : std_logic;
  signal b34_14 : std_logic;
  signal b34_15 : std_logic;
  signal b34_16 : std_logic;
  signal b34_17 : std_logic;
  signal b34_18 : std_logic;
  signal b34_19 : std_logic;
  signal b34_20 : std_logic;
  signal b34_21 : std_logic;
  signal b34_22 : std_logic;
  signal b34_23 : std_logic;
  signal b34_24 : std_logic;
  signal b34_25 : std_logic;
  signal b34_26 : std_logic;
  signal b34_27 : std_logic;
  signal b34_28 : std_logic;
  signal b34_29 : std_logic;
  signal b34_30 : std_logic;
  signal b34_31 : std_logic;

  component GT_AND2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

begin
  b28 <= input;
  w37 <= enable;
  output <= b34;

  b34(31) <= b34_31;
  b34(30) <= b34_30;
  b34(29) <= b34_29;
  b34(28) <= b34_28;
  b34(27) <= b34_27;
  b34(26) <= b34_26;
  b34(25) <= b34_25;
  b34(24) <= b34_24;
  b34(23) <= b34_23;
  b34(22) <= b34_22;
  b34(21) <= b34_21;
  b34(20) <= b34_20;
  b34(19) <= b34_19;
  b34(18) <= b34_18;
  b34(17) <= b34_17;
  b34(16) <= b34_16;
  b34(15) <= b34_15;
  b34(14) <= b34_14;
  b34(13) <= b34_13;
  b34(12) <= b34_12;
  b34(11) <= b34_11;
  b34(10) <= b34_10;
  b34(9) <= b34_9;
  b34(8) <= b34_8;
  b34(7) <= b34_7;
  b34(6) <= b34_6;
  b34(5) <= b34_5;
  b34(4) <= b34_4;
  b34(3) <= b34_3;
  b34(2) <= b34_2;
  b34(1) <= b34_1;
  b34(0) <= b34_0;

  b28_0_w2 <= b28(0);
  b28_1_w4 <= b28(1);
  b28_2_w5 <= b28(2);
  b28_3_w6 <= b28(3);
  b28_4_w7 <= b28(4);
  b28_5_w8 <= b28(5);
  b28_6_w9 <= b28(6);
  b28_7_w10 <= b28(7);
  b28_8_w11 <= b28(8);
  b28_9_w12 <= b28(9);
  b28_10_w13 <= b28(10);
  b28_11_w14 <= b28(11);
  b28_12_w15 <= b28(12);
  b28_13_w16 <= b28(13);
  b28_14_w18 <= b28(14);
  b28_15_w19 <= b28(15);
  b28_16_w20 <= b28(16);
  b28_17_w21 <= b28(17);
  b28_18_w22 <= b28(18);
  b28_19_w24 <= b28(19);
  b28_20_w25 <= b28(20);
  b28_21_w26 <= b28(21);
  b28_22_w27 <= b28(22);
  b28_23_w28 <= b28(23);
  b28_24_w29 <= b28(24);
  b28_25_w30 <= b28(25);
  b28_26_w31 <= b28(26);
  b28_27_w32 <= b28(27);
  b28_28_w33 <= b28(28);
  b28_29_w34 <= b28(29);
  b28_30_w35 <= b28(30);
  b28_31_w36 <= b28(31);

  s0 : GT_AND2
    port map(
      A => b28_0_w2,
      B => w37,
      Z => b34_0);

  s1 : GT_AND2
    port map(
      A => b28_1_w4,
      B => w37,
      Z => b34_1);

  s2 : GT_AND2
    port map(
      A => b28_2_w5,
      B => w37,
      Z => b34_2);

  s3 : GT_AND2
    port map(
      A => b28_3_w6,
      B => w37,
      Z => b34_3);

  s4 : GT_AND2
    port map(
      A => b28_4_w7,
      B => w37,
      Z => b34_4);

  s5 : GT_AND2
    port map(
      A => b28_5_w8,
      B => w37,
      Z => b34_5);

  s6 : GT_AND2
    port map(
      A => b28_6_w9,
      B => w37,
      Z => b34_6);

  s7 : GT_AND2
    port map(
      A => b28_7_w10,
      B => w37,
      Z => b34_7);

  s8 : GT_AND2
    port map(
      A => b28_8_w11,
      B => w37,
      Z => b34_8);

  s9 : GT_AND2
    port map(
      A => b28_9_w12,
      B => w37,
      Z => b34_9);

  s10 : GT_AND2
    port map(
      A => b28_10_w13,
      B => w37,
      Z => b34_10);

  s11 : GT_AND2
    port map(
      A => b28_11_w14,
      B => w37,
      Z => b34_11);

  s12 : GT_AND2
    port map(
      A => b28_12_w15,
      B => w37,
      Z => b34_12);

  s13 : GT_AND2
    port map(
      A => b28_13_w16,
      B => w37,
      Z => b34_13);

  s14 : GT_AND2
    port map(
      A => b28_14_w18,
      B => w37,
      Z => b34_14);

  s15 : GT_AND2
    port map(
      A => b28_15_w19,
      B => w37,
      Z => b34_15);

  s16 : GT_AND2
    port map(
      A => b28_16_w20,
      B => w37,
      Z => b34_16);

  s17 : GT_AND2
    port map(
      A => b28_17_w21,
      B => w37,
      Z => b34_17);

  s18 : GT_AND2
    port map(
      A => b28_18_w22,
      B => w37,
      Z => b34_18);

  s19 : GT_AND2
    port map(
      A => b28_19_w24,
      B => w37,
      Z => b34_19);

  s20 : GT_AND2
    port map(
      A => b28_20_w25,
      B => w37,
      Z => b34_20);

  s21 : GT_AND2
    port map(
      A => b28_21_w26,
      B => w37,
      Z => b34_21);

  s22 : GT_AND2
    port map(
      A => b28_22_w27,
      B => w37,
      Z => b34_22);

  s23 : GT_AND2
    port map(
      A => b28_23_w28,
      B => w37,
      Z => b34_23);

  s24 : GT_AND2
    port map(
      A => b28_24_w29,
      B => w37,
      Z => b34_24);

  s25 : GT_AND2
    port map(
      A => b28_25_w30,
      B => w37,
      Z => b34_25);

  s26 : GT_AND2
    port map(
      A => b28_26_w31,
      B => w37,
      Z => b34_26);

  s27 : GT_AND2
    port map(
      A => b28_27_w32,
      B => w37,
      Z => b34_27);

  s28 : GT_AND2
    port map(
      A => b28_28_w33,
      B => w37,
      Z => b34_28);

  s29 : GT_AND2
    port map(
      A => b28_29_w34,
      B => w37,
      Z => b34_29);

  s30 : GT_AND2
    port map(
      A => b28_30_w35,
      B => w37,
      Z => b34_30);

  s31 : GT_AND2
    port map(
      A => b28_31_w36,
      B => w37,
      Z => b34_31);

end rtl;

