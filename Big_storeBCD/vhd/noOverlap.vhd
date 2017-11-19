library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity noOverlap is
  port(row : in std_logic_vector(3 downto 0);
       rowOut : out std_logic_vector(3 downto 0));
end noOverlap;

architecture rtl of noOverlap is
  signal w7 : std_logic;
  signal w8 : std_logic;
  signal w9 : std_logic;
  signal w10 : std_logic;
  signal w11 : std_logic;
  signal w12 : std_logic;
  signal w14 : std_logic;
  signal w13 : std_logic;
  signal w19 : std_logic;
  signal b18 : std_logic_vector(3 downto 0);
  signal b17 : std_logic_vector(3 downto 0);
  signal b18_3 : std_logic;
  signal b18_2 : std_logic;
  signal b18_1 : std_logic;
  signal b18_0 : std_logic;
  signal b17_0_w24 : std_logic;
  signal b17_1_w25 : std_logic;
  signal b17_2_w26 : std_logic;
  signal b17_3_w18 : std_logic;

  component GT_AND2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component GT_OR3
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         Z : out std_logic);
  end component;

  component GT_NOR2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

begin
  b17 <= row;
  rowOut <= b18;

  b18(3) <= b18_3;
  b18(2) <= b18_2;
  b18(1) <= b18_1;
  b18(0) <= b18_0;

  b17_0_w24 <= b17(0);
  b17_1_w25 <= b17(1);
  b17_2_w26 <= b17(2);
  b17_3_w18 <= b17(3);

  s0 : GT_AND2
    port map(
      Z => w7,
      A => b17_0_w24,
      B => b17_1_w25);

  s1 : GT_AND2
    port map(
      Z => w8,
      A => b17_0_w24,
      B => b17_2_w26);

  s2 : GT_AND2
    port map(
      Z => w9,
      A => b17_0_w24,
      B => b17_3_w18);

  s3 : GT_AND2
    port map(
      Z => w10,
      A => b17_1_w25,
      B => b17_2_w26);

  s4 : GT_AND2
    port map(
      Z => w11,
      A => b17_1_w25,
      B => b17_3_w18);

  s5 : GT_AND2
    port map(
      Z => w12,
      A => b17_2_w26,
      B => b17_3_w18);

  s6 : GT_OR3
    port map(
      A => w7,
      B => w8,
      C => w9,
      Z => w13);

  s7 : GT_OR3
    port map(
      A => w10,
      B => w11,
      C => w12,
      Z => w14);

  s8 : GT_NOR2
    port map(
      B => w14,
      A => w13,
      Z => w19);

  s9 : GT_AND2
    port map(
      B => w19,
      Z => b18_0,
      A => b17_0_w24);

  s10 : GT_AND2
    port map(
      B => w19,
      Z => b18_1,
      A => b17_1_w25);

  s11 : GT_AND2
    port map(
      B => w19,
      Z => b18_2,
      A => b17_2_w26);

  s12 : GT_AND2
    port map(
      B => w19,
      Z => b18_3,
      A => b17_3_w18);

end rtl;

