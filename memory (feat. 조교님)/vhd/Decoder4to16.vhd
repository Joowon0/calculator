library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity Decoder4to16 is
  port(DecIn : in std_logic_vector(3 downto 0);
       DecOut : out std_logic_vector(15 downto 0));
end Decoder4to16;

architecture rtl of Decoder4to16 is
  signal b8 : std_logic_vector(3 downto 0);
  signal w8 : std_logic;
  signal w12 : std_logic;
  signal w9 : std_logic;
  signal w14 : std_logic;
  signal b10 : std_logic_vector(15 downto 0);
  signal b8_3_w13 : std_logic;
  signal b8_2_w11 : std_logic;
  signal b8_1_w10 : std_logic;
  signal b8_0_w15 : std_logic;
  signal b10_0 : std_logic;
  signal b10_15 : std_logic;
  signal b10_14 : std_logic;
  signal b10_13 : std_logic;
  signal b10_12 : std_logic;
  signal b10_11 : std_logic;
  signal b10_10 : std_logic;
  signal b10_9 : std_logic;
  signal b10_8 : std_logic;
  signal b10_7 : std_logic;
  signal b10_6 : std_logic;
  signal b10_5 : std_logic;
  signal b10_4 : std_logic;
  signal b10_3 : std_logic;
  signal b10_2 : std_logic;
  signal b10_1 : std_logic;

  component GT_NOT
    port(A : in std_logic;
         Z : out std_logic);
  end component;

  component GT_AND4
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : in std_logic;
         Z : out std_logic);
  end component;

begin
  b8 <= DecIn;
  DecOut <= b10;

  b10(15) <= b10_15;
  b10(14) <= b10_14;
  b10(13) <= b10_13;
  b10(12) <= b10_12;
  b10(11) <= b10_11;
  b10(10) <= b10_10;
  b10(9) <= b10_9;
  b10(8) <= b10_8;
  b10(7) <= b10_7;
  b10(6) <= b10_6;
  b10(5) <= b10_5;
  b10(4) <= b10_4;
  b10(3) <= b10_3;
  b10(2) <= b10_2;
  b10(1) <= b10_1;
  b10(0) <= b10_0;

  b8_3_w13 <= b8(3);
  b8_2_w11 <= b8(2);
  b8_1_w10 <= b8(1);
  b8_0_w15 <= b8(0);

  s1 : GT_NOT
    port map(
      Z => w12,
      A => b8_2_w11);

  s2 : GT_NOT
    port map(
      Z => w8,
      A => b8_3_w13);

  s0 : GT_NOT
    port map(
      Z => w9,
      A => b8_1_w10);

  s11 : GT_NOT
    port map(
      Z => w14,
      A => b8_0_w15);

  s4 : GT_AND4
    port map(
      A => w8,
      B => w12,
      C => w9,
      D => w14,
      Z => b10_0);

  s5 : GT_AND4
    port map(
      A => w8,
      B => w12,
      C => w9,
      D => b8_0_w15,
      Z => b10_1);

  s6 : GT_AND4
    port map(
      A => w8,
      B => w12,
      D => w14,
      C => b8_1_w10,
      Z => b10_2);

  s7 : GT_AND4
    port map(
      A => w8,
      B => w12,
      C => b8_1_w10,
      D => b8_0_w15,
      Z => b10_3);

  s8 : GT_AND4
    port map(
      A => w8,
      C => w9,
      D => w14,
      B => b8_2_w11,
      Z => b10_4);

  s9 : GT_AND4
    port map(
      A => w8,
      C => w9,
      B => b8_2_w11,
      D => b8_0_w15,
      Z => b10_5);

  s10 : GT_AND4
    port map(
      A => w8,
      D => w14,
      B => b8_2_w11,
      C => b8_1_w10,
      Z => b10_6);

  s12 : GT_AND4
    port map(
      A => w8,
      B => b8_2_w11,
      C => b8_1_w10,
      D => b8_0_w15,
      Z => b10_7);

  s13 : GT_AND4
    port map(
      B => w12,
      C => w9,
      A => b8_3_w13,
      D => w14,
      Z => b10_8);

  s14 : GT_AND4
    port map(
      B => w12,
      C => w9,
      A => b8_3_w13,
      D => b8_0_w15,
      Z => b10_9);

  s15 : GT_AND4
    port map(
      B => w12,
      A => b8_3_w13,
      D => w14,
      C => b8_1_w10,
      Z => b10_10);

  s16 : GT_AND4
    port map(
      B => w12,
      A => b8_3_w13,
      C => b8_1_w10,
      D => b8_0_w15,
      Z => b10_11);

  s17 : GT_AND4
    port map(
      C => w9,
      A => b8_3_w13,
      D => w14,
      B => b8_2_w11,
      Z => b10_12);

  s18 : GT_AND4
    port map(
      C => w9,
      A => b8_3_w13,
      B => b8_2_w11,
      D => b8_0_w15,
      Z => b10_13);

  s19 : GT_AND4
    port map(
      A => b8_3_w13,
      D => w14,
      B => b8_2_w11,
      C => b8_1_w10,
      Z => b10_14);

  s20 : GT_AND4
    port map(
      A => b8_3_w13,
      B => b8_2_w11,
      C => b8_1_w10,
      D => b8_0_w15,
      Z => b10_15);

end rtl;

