library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity WordSelector is
  port(WordIn : in std_logic_vector(15 downto 0);
       sel : in std_logic;
       WordOut : out std_logic_vector(15 downto 0));
end WordSelector;

architecture rtl of WordSelector is
  signal b2 : std_logic_vector(15 downto 0);
  signal b35 : std_logic_vector(15 downto 0);
  signal w35 : std_logic;
  signal b2_0_w3 : std_logic;
  signal b2_1_w5 : std_logic;
  signal b2_2_w7 : std_logic;
  signal b2_3_w9 : std_logic;
  signal b2_4_w11 : std_logic;
  signal b2_5_w13 : std_logic;
  signal b2_6_w15 : std_logic;
  signal b2_7_w17 : std_logic;
  signal b2_8_w20 : std_logic;
  signal b2_9_w22 : std_logic;
  signal b2_10_w24 : std_logic;
  signal b2_11_w26 : std_logic;
  signal b2_12_w28 : std_logic;
  signal b2_13_w30 : std_logic;
  signal b2_14_w32 : std_logic;
  signal b2_15_w34 : std_logic;
  signal b35_0 : std_logic;
  signal b35_1 : std_logic;
  signal b35_2 : std_logic;
  signal b35_3 : std_logic;
  signal b35_4 : std_logic;
  signal b35_5 : std_logic;
  signal b35_6 : std_logic;
  signal b35_7 : std_logic;
  signal b35_8 : std_logic;
  signal b35_9 : std_logic;
  signal b35_10 : std_logic;
  signal b35_11 : std_logic;
  signal b35_12 : std_logic;
  signal b35_13 : std_logic;
  signal b35_14 : std_logic;
  signal b35_15 : std_logic;

  component GT_AND2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

begin
  b2 <= WordIn;
  w35 <= sel;
  WordOut <= b35;

  b35(15) <= b35_15;
  b35(14) <= b35_14;
  b35(13) <= b35_13;
  b35(12) <= b35_12;
  b35(11) <= b35_11;
  b35(10) <= b35_10;
  b35(9) <= b35_9;
  b35(8) <= b35_8;
  b35(7) <= b35_7;
  b35(6) <= b35_6;
  b35(5) <= b35_5;
  b35(4) <= b35_4;
  b35(3) <= b35_3;
  b35(2) <= b35_2;
  b35(1) <= b35_1;
  b35(0) <= b35_0;

  b2_0_w3 <= b2(0);
  b2_1_w5 <= b2(1);
  b2_2_w7 <= b2(2);
  b2_3_w9 <= b2(3);
  b2_4_w11 <= b2(4);
  b2_5_w13 <= b2(5);
  b2_6_w15 <= b2(6);
  b2_7_w17 <= b2(7);
  b2_8_w20 <= b2(8);
  b2_9_w22 <= b2(9);
  b2_10_w24 <= b2(10);
  b2_11_w26 <= b2(11);
  b2_12_w28 <= b2(12);
  b2_13_w30 <= b2(13);
  b2_14_w32 <= b2(14);
  b2_15_w34 <= b2(15);

  s1 : GT_AND2
    port map(
      A => b2_0_w3,
      Z => b35_0,
      B => w35);

  s2 : GT_AND2
    port map(
      A => b2_1_w5,
      Z => b35_1,
      B => w35);

  s3 : GT_AND2
    port map(
      A => b2_2_w7,
      Z => b35_2,
      B => w35);

  s4 : GT_AND2
    port map(
      A => b2_3_w9,
      Z => b35_3,
      B => w35);

  s5 : GT_AND2
    port map(
      A => b2_4_w11,
      Z => b35_4,
      B => w35);

  s6 : GT_AND2
    port map(
      A => b2_5_w13,
      Z => b35_5,
      B => w35);

  s7 : GT_AND2
    port map(
      A => b2_6_w15,
      Z => b35_6,
      B => w35);

  s8 : GT_AND2
    port map(
      A => b2_7_w17,
      Z => b35_7,
      B => w35);

  s9 : GT_AND2
    port map(
      A => b2_8_w20,
      Z => b35_8,
      B => w35);

  s10 : GT_AND2
    port map(
      A => b2_9_w22,
      Z => b35_9,
      B => w35);

  s11 : GT_AND2
    port map(
      A => b2_10_w24,
      Z => b35_10,
      B => w35);

  s12 : GT_AND2
    port map(
      A => b2_11_w26,
      Z => b35_11,
      B => w35);

  s13 : GT_AND2
    port map(
      A => b2_12_w28,
      Z => b35_12,
      B => w35);

  s14 : GT_AND2
    port map(
      A => b2_13_w30,
      Z => b35_13,
      B => w35);

  s15 : GT_AND2
    port map(
      A => b2_14_w32,
      Z => b35_14,
      B => w35);

  s16 : GT_AND2
    port map(
      A => b2_15_w34,
      Z => b35_15,
      B => w35);

end rtl;

