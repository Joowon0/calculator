library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity CarryLookAHead is
  port(C0 : in std_logic;
       A : in std_logic_vector(3 downto 0);
       B : in std_logic_vector(3 downto 0);
       Cout : out std_logic;
       S : out std_logic_vector(3 downto 0));
end CarryLookAHead;

architecture rtl of CarryLookAHead is
  signal w0 : std_logic;
  signal w6 : std_logic;
  signal w10 : std_logic;
  signal w18 : std_logic;
  signal w19 : std_logic;
  signal w20 : std_logic;
  signal w21 : std_logic;
  signal w25 : std_logic;
  signal w17 : std_logic;
  signal w28 : std_logic;
  signal w23 : std_logic;
  signal w29 : std_logic;
  signal w27 : std_logic;
  signal w26 : std_logic;
  signal w32 : std_logic;
  signal w24 : std_logic;
  signal w33 : std_logic;
  signal w34 : std_logic;
  signal w49 : std_logic;
  signal w51 : std_logic;
  signal b27 : std_logic_vector(3 downto 0);
  signal b32 : std_logic_vector(3 downto 0);
  signal w41 : std_logic;
  signal w42 : std_logic;
  signal w47 : std_logic;
  signal w50 : std_logic;
  signal w48 : std_logic;
  signal b39 : std_logic_vector(3 downto 0);
  signal b27_0_w30 : std_logic;
  signal b27_1_w31 : std_logic;
  signal b27_2_w35 : std_logic;
  signal b27_3_w36 : std_logic;
  signal b32_0_w37 : std_logic;
  signal b32_1_w38 : std_logic;
  signal b32_2_w39 : std_logic;
  signal b32_3_w40 : std_logic;
  signal b39_0 : std_logic;
  signal b39_1 : std_logic;
  signal b39_2 : std_logic;
  signal b39_3 : std_logic;

  component GT_AND2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component GT_OR2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component PFA
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         P : out std_logic;
         G : out std_logic;
         S : out std_logic);
  end component;

  component GT_OR3
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         Z : out std_logic);
  end component;

  component GT_AND3
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         Z : out std_logic);
  end component;

  component GT_AND4
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : in std_logic;
         Z : out std_logic);
  end component;

  component GT_OR4
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : in std_logic;
         Z : out std_logic);
  end component;

begin
  w49 <= C0;
  b27 <= A;
  b32 <= B;
  Cout <= w50;
  S <= b39;

  b39(3) <= b39_3;
  b39(2) <= b39_2;
  b39(1) <= b39_1;
  b39(0) <= b39_0;

  b27_0_w30 <= b27(0);
  b27_1_w31 <= b27(1);
  b27_2_w35 <= b27(2);
  b27_3_w36 <= b27(3);
  b32_0_w37 <= b32(0);
  b32_1_w38 <= b32(1);
  b32_2_w39 <= b32(2);
  b32_3_w40 <= b32(3);

  s0 : GT_AND2
    port map(
      Z => w0,
      A => w25,
      B => w49);

  s1 : GT_OR2
    port map(
      A => w0,
      B => w26,
      Z => w51);

  s2 : PFA
    port map(
      P => w25,
      G => w26,
      C => w49,
      A => b27_0_w30,
      B => b32_0_w37,
      S => b39_0);

  s3 : PFA
    port map(
      G => w28,
      P => w27,
      C => w51,
      A => b27_1_w31,
      B => b32_1_w38,
      S => b39_1);

  s4 : GT_AND2
    port map(
      Z => w6,
      A => w27,
      B => w26);

  s6 : GT_OR3
    port map(
      B => w6,
      C => w10,
      Z => w18,
      A => w28);

  s7 : GT_AND3
    port map(
      Z => w10,
      A => w25,
      B => w27,
      C => w49);

  s8 : PFA
    port map(
      C => w18,
      G => w17,
      P => w29,
      A => b27_2_w35,
      B => b32_2_w39,
      S => b39_2);

  s9 : GT_AND2
    port map(
      Z => w19,
      B => w28,
      A => w29);

  s10 : GT_AND3
    port map(
      Z => w20,
      A => w29,
      B => w27,
      C => w26);

  s11 : GT_AND4
    port map(
      Z => w21,
      C => w25,
      A => w29,
      B => w27,
      D => w49);

  s13 : PFA
    port map(
      P => w23,
      G => w24,
      A => b27_3_w36,
      B => b32_3_w40,
      C => w42,
      S => b39_3);

  s14 : GT_AND4
    port map(
      D => w25,
      A => w23,
      B => w29,
      C => w27,
      Z => w47);

  s15 : GT_AND2
    port map(
      B => w17,
      A => w23,
      Z => w32);

  s16 : GT_AND3
    port map(
      C => w28,
      A => w23,
      B => w29,
      Z => w33);

  s17 : GT_AND4
    port map(
      A => w23,
      B => w29,
      C => w27,
      D => w26,
      Z => w34);

  s18 : GT_OR4
    port map(
      A => w32,
      B => w24,
      C => w33,
      D => w34,
      Z => w48);

  s12 : GT_OR4
    port map(
      A => w19,
      B => w20,
      D => w21,
      C => w17,
      Z => w42);

  s19 : GT_AND2
    port map(
      Z => w41,
      A => w42,
      B => w47);

  s20 : GT_OR2
    port map(
      A => w41,
      Z => w50,
      B => w48);

end rtl;

