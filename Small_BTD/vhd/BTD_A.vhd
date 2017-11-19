library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity BTD_A is
  port(i0 : in std_logic;
       i1 : in std_logic;
       i2 : in std_logic;
       i3 : in std_logic;
       o0 : out std_logic;
       o1 : out std_logic;
       o2 : out std_logic;
       o3 : out std_logic);
end BTD_A;

architecture rtl of BTD_A is
  signal w17 : std_logic;
  signal w28 : std_logic;
  signal w29 : std_logic;
  signal w30 : std_logic;
  signal w20 : std_logic;
  signal w26 : std_logic;
  signal w34 : std_logic;
  signal w36 : std_logic;
  signal w32 : std_logic;
  signal w33 : std_logic;
  signal w31 : std_logic;
  signal w35 : std_logic;
  signal w37 : std_logic;
  signal w41 : std_logic;
  signal w25 : std_logic;
  signal w27 : std_logic;
  signal w23 : std_logic;
  signal w39 : std_logic;
  signal w38 : std_logic;
  signal w40 : std_logic;
  signal w42 : std_logic;
  signal w24 : std_logic;
  signal w43 : std_logic;
  signal w44 : std_logic;
  signal w45 : std_logic;
  signal w46 : std_logic;

  component GT_OR2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component GT_OR4
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : in std_logic;
         Z : out std_logic);
  end component;

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

  component GT_OR5
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : in std_logic;
         E : in std_logic;
         Z : out std_logic);
  end component;

  component GT_NOT
    port(A : in std_logic;
         Z : out std_logic);
  end component;

begin
  w35 <= i0;
  w37 <= i1;
  w30 <= i2;
  w29 <= i3;
  o0 <= w43;
  o1 <= w44;
  o2 <= w45;
  o3 <= w46;

  s1 : GT_OR2
    port map(
      B => w25,
      A => w27,
      Z => w45);

  s2 : GT_OR4
    port map(
      C => w23,
      D => w39,
      B => w40,
      A => w24,
      Z => w44);

  s3 : GT_OR4
    port map(
      C => w38,
      D => w40,
      B => w42,
      A => w24,
      Z => w43);

  s4 : GT_AND_NOT
    port map(
      B => w29,
      A => w30,
      Z => w26);

  s5 : GT_AND_NOT
    port map(
      Z => w31,
      A => w35,
      B => w37);

  s6 : GT_AND_NOT
    port map(
      Z => w32,
      B => w35,
      A => w37);

  s7 : GT_AND2
    port map(
      A => w26,
      B => w31,
      Z => w41);

  s8 : GT_AND2
    port map(
      A => w26,
      B => w32,
      Z => w42);

  s9 : GT_AND2
    port map(
      Z => w33,
      B => w35,
      A => w37);

  s10 : GT_AND2
    port map(
      A => w26,
      B => w33,
      Z => w23);

  s11 : GT_OR5
    port map(
      A => w41,
      E => w25,
      C => w23,
      B => w42,
      D => w24,
      Z => w46);

  s12 : GT_AND_NOT
    port map(
      A => w29,
      B => w30,
      Z => w20);

  s13 : GT_AND_NOT
    port map(
      A => w17,
      Z => w34,
      B => w37);

  s15 : GT_NOT
    port map(
      Z => w17,
      A => w35);

  s16 : GT_AND2
    port map(
      A => w20,
      B => w34,
      Z => w24);

  s17 : GT_AND2
    port map(
      A => w20,
      B => w31,
      Z => w25);

  s18 : GT_AND2
    port map(
      A => w26,
      B => w34,
      Z => w27);

  s19 : GT_AND_NOT
    port map(
      A => w28,
      B => w30,
      Z => w36);

  s20 : GT_NOT
    port map(
      Z => w28,
      A => w29);

  s21 : GT_AND2
    port map(
      A => w36,
      B => w31,
      Z => w38);

  s22 : GT_AND2
    port map(
      A => w36,
      B => w32,
      Z => w39);

  s23 : GT_AND2
    port map(
      A => w36,
      B => w33,
      Z => w40);

end rtl;

