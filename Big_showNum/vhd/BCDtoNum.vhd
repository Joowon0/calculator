library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity BCDtoNum is
  port(BCD : in std_logic_vector(3 downto 0);
       numOut0 : out std_logic;
       numOut : out std_logic_vector(9 downto 1));
end BCDtoNum;

architecture rtl of BCDtoNum is
  signal w1 : std_logic;
  signal b25 : std_logic_vector(3 downto 0);
  signal w6 : std_logic;
  signal w16 : std_logic;
  signal w17 : std_logic;
  signal w18 : std_logic;
  signal w19 : std_logic;
  signal w13 : std_logic;
  signal w14 : std_logic;
  signal w15 : std_logic;
  signal b24 : std_logic_vector(8 downto 0);
  signal w31 : std_logic;
  signal b25_2_w3 : std_logic;
  signal b25_3_w4 : std_logic;
  signal b25_0_w7 : std_logic;
  signal b25_1_w8 : std_logic;
  signal b24_0 : std_logic;
  signal b24_1 : std_logic;
  signal b24_2 : std_logic;
  signal b24_3 : std_logic;
  signal b24_8 : std_logic;
  signal b24_7 : std_logic;
  signal b24_6 : std_logic;
  signal b24_5 : std_logic;
  signal b24_4 : std_logic;

  component GT_AND_NOT
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component GT_AND2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component GT_NOT
    port(A : in std_logic;
         Z : out std_logic);
  end component;

begin
  b25 <= BCD;
  numOut0 <= w31;
  numOut <= b24;

  b24(8) <= b24_8;
  b24(7) <= b24_7;
  b24(6) <= b24_6;
  b24(5) <= b24_5;
  b24(4) <= b24_4;
  b24(3) <= b24_3;
  b24(2) <= b24_2;
  b24(1) <= b24_1;
  b24(0) <= b24_0;

  b25_2_w3 <= b25(2);
  b25_3_w4 <= b25(3);
  b25_0_w7 <= b25(0);
  b25_1_w8 <= b25(1);

  s0 : GT_AND_NOT
    port map(
      A => w1,
      B => b25_2_w3,
      Z => w16);

  s1 : GT_AND2
    port map(
      A => w1,
      B => b25_2_w3,
      Z => w17);

  s2 : GT_NOT
    port map(
      Z => w1,
      A => b25_3_w4);

  s3 : GT_AND_NOT
    port map(
      B => b25_2_w3,
      A => b25_3_w4,
      Z => w18);

  s4 : GT_AND2
    port map(
      A => w16,
      B => w19,
      Z => w31);

  s5 : GT_AND2
    port map(
      A => w16,
      B => w13,
      Z => b24_0);

  s6 : GT_AND2
    port map(
      A => w16,
      B => w14,
      Z => b24_1);

  s7 : GT_AND2
    port map(
      A => w16,
      B => w15,
      Z => b24_2);

  s8 : GT_AND2
    port map(
      A => w17,
      B => w19,
      Z => b24_3);

  s9 : GT_AND2
    port map(
      A => w17,
      B => w13,
      Z => b24_4);

  s10 : GT_AND2
    port map(
      A => w17,
      B => w14,
      Z => b24_5);

  s11 : GT_AND2
    port map(
      A => w17,
      B => w15,
      Z => b24_6);

  s12 : GT_AND2
    port map(
      A => w18,
      B => w19,
      Z => b24_7);

  s13 : GT_AND2
    port map(
      A => w18,
      B => w13,
      Z => b24_8);

  s14 : GT_NOT
    port map(
      Z => w6,
      A => b25_1_w8);

  s15 : GT_AND_NOT
    port map(
      A => w6,
      B => b25_0_w7,
      Z => w19);

  s16 : GT_AND2
    port map(
      A => w6,
      B => b25_0_w7,
      Z => w13);

  s17 : GT_AND_NOT
    port map(
      B => b25_0_w7,
      A => b25_1_w8,
      Z => w14);

  s18 : GT_AND2
    port map(
      B => b25_0_w7,
      A => b25_1_w8,
      Z => w15);

end rtl;

