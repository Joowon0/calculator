library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity ShiftCounter8 is
  port(CLK : in std_logic;
       RST : in std_logic;
       ShiftCounter8OutPos : out std_logic_vector(7 downto 0);
       ShiftCounter8OutNeg : out std_logic_vector(7 downto 0));
end ShiftCounter8;

architecture rtl of ShiftCounter8 is
  signal w5 : std_logic;
  signal w12 : std_logic;
  signal w11 : std_logic;
  signal b17 : std_logic_vector(7 downto 0);
  signal w22 : std_logic;
  signal w24 : std_logic;
  signal w27 : std_logic;
  signal w18 : std_logic;
  signal b23 : std_logic_vector(7 downto 0);
  signal b17_7 : std_logic;
  signal b17_7_w17 : std_logic;
  signal b17_6 : std_logic;
  signal b17_6_w14 : std_logic;
  signal b17_5 : std_logic;
  signal b17_5_w15 : std_logic;
  signal b17_4 : std_logic;
  signal b17_4_w16 : std_logic;
  signal b17_3 : std_logic;
  signal b17_3_w21 : std_logic;
  signal b17_2 : std_logic;
  signal b17_2_w20 : std_logic;
  signal b17_1 : std_logic;
  signal b17_1_w19 : std_logic;
  signal b17_0 : std_logic;
  signal b17_0_w26 : std_logic;
  signal b23_7 : std_logic;
  signal b23_6 : std_logic;
  signal b23_5 : std_logic;
  signal b23_4 : std_logic;
  signal b23_3 : std_logic;
  signal b23_0 : std_logic;
  signal b23_1 : std_logic;
  signal b23_2 : std_logic;

  component GT_FDR
    port(D : in std_logic;
         CP : in std_logic;
         CD : in std_logic;
         Q : out std_logic;
         QN : out std_logic);
  end component;

  component GT_OR2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component GT_NOR2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component GT_NOT
    port(A : in std_logic;
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
  w24 <= CLK;
  w11 <= RST;
  ShiftCounter8OutPos <= b17;
  ShiftCounter8OutNeg <= b23;

  b17(7) <= b17_7;
  b17(6) <= b17_6;
  b17(5) <= b17_5;
  b17(4) <= b17_4;
  b17(3) <= b17_3;
  b17(2) <= b17_2;
  b17(1) <= b17_1;
  b17(0) <= b17_0;
  b23(7) <= b23_7;
  b23(6) <= b23_6;
  b23(5) <= b23_5;
  b23(4) <= b23_4;
  b23(3) <= b23_3;
  b23(2) <= b23_2;
  b23(1) <= b23_1;
  b23(0) <= b23_0;

  b17_7_w17 <= b17(7);
  b17_6_w14 <= b17(6);
  b17_5_w15 <= b17(5);
  b17_4_w16 <= b17(4);
  b17_3_w21 <= b17(3);
  b17_2_w20 <= b17(2);
  b17_1_w19 <= b17(1);
  b17_0_w26 <= b17(0);

  s0 : GT_FDR
    port map(
      D => w5,
      Q => b17_7,
      CD => w22,
      CP => w24,
      QN => b23_7);

  s1 : GT_FDR
    port map(
      D => b17_7_w17,
      Q => b17_6,
      CD => w22,
      CP => w24,
      QN => b23_6);

  s2 : GT_FDR
    port map(
      D => b17_6_w14,
      Q => b17_5,
      CD => w22,
      CP => w24,
      QN => b23_5);

  s4 : GT_OR2
    port map(
      Z => w5,
      A => w18,
      B => b17_0_w26);

  s7 : GT_FDR
    port map(
      D => b17_5_w15,
      Q => b17_4,
      CD => w22,
      CP => w24,
      QN => b23_4);

  s10 : GT_NOR2
    port map(
      A => w12,
      B => w27,
      Z => w18);

  s11 : GT_FDR
    port map(
      D => b17_4_w16,
      Q => b17_3,
      CD => w22,
      CP => w24,
      QN => b23_3);

  s12 : GT_FDR
    port map(
      D => b17_3_w21,
      Q => b17_2,
      CD => w22,
      CP => w24,
      QN => b23_2);

  s13 : GT_FDR
    port map(
      D => b17_2_w20,
      CD => w22,
      CP => w24,
      Q => b17_1,
      QN => b23_1);

  s6 : GT_NOT
    port map(
      A => w11,
      Z => w22);

  s14 : GT_FDR
    port map(
      CD => w22,
      CP => w24,
      D => b17_1_w19,
      Q => b17_0,
      QN => b23_0);

  s15 : GT_OR4
    port map(
      Z => w12,
      A => b17_7_w17,
      B => b17_6_w14,
      C => b17_5_w15,
      D => b17_4_w16);

  s16 : GT_OR4
    port map(
      A => b17_3_w21,
      B => b17_2_w20,
      Z => w27,
      C => b17_1_w19,
      D => b17_0_w26);

end rtl;

