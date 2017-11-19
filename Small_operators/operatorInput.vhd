library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity operatorInput is
  port(clk : in std_logic;
       rst : in std_logic;
       bttnIn_A : in std_logic;
       bttnIn_B : in std_logic;
       bttnIn_C : in std_logic;
       bttnIn_D : in std_logic;
       erase : in std_logic;
       operator_S0 : out std_logic;
       operator_S1 : out std_logic;
       operator_isIn : out std_logic);
end operatorInput;

architecture rtl of operatorInput is
  signal w0 : std_logic;
  signal w1 : std_logic;
  signal w2 : std_logic;
  signal w3 : std_logic;
  signal w4 : std_logic;
  signal w5 : std_logic;
  signal w14 : std_logic;
  signal w15 : std_logic;
  signal w12 : std_logic;
  signal w16 : std_logic;
  signal w17 : std_logic;
  signal w18 : std_logic;
  signal w21 : std_logic;
  signal w20 : std_logic;
  signal w19 : std_logic;
  signal w24 : std_logic;
  signal w28 : std_logic;
  signal w35 : std_logic;
  signal w37 : std_logic;
  signal w38 : std_logic;
  signal w29 : std_logic;
  signal w31 : std_logic;
  signal w26 : std_logic;
  signal w27 : std_logic;
  signal w33 : std_logic;
  signal w30 : std_logic;
  signal w32 : std_logic;
  signal w34 : std_logic;

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

  component GT_AND2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component GT_NOR4
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : in std_logic;
         Z : out std_logic);
  end component;

  component GT_AND3
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         Z : out std_logic);
  end component;

  component GT_NOT
    port(A : in std_logic;
         Z : out std_logic);
  end component;

  component GT_XOR2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

begin
  w33 <= clk;
  w35 <= rst;
  w14 <= bttnIn_A;
  w15 <= bttnIn_B;
  w16 <= bttnIn_C;
  w12 <= bttnIn_D;
  w31 <= erase;
  operator_S0 <= w38;
  operator_S1 <= w37;
  operator_isIn <= w30;

  s0 : GT_FDR
    port map(
      CP => w33,
      Q => w30,
      D => w32,
      CD => w34,
      QN => open);

  s1 : GT_FDR
    port map(
      D => w2,
      Q => w38,
      CP => w33,
      CD => w34,
      QN => open);

  s2 : GT_FDR
    port map(
      D => w3,
      Q => w37,
      CP => w33,
      CD => w34,
      QN => open);

  s3 : GT_OR2
    port map(
      A => w0,
      Z => w2,
      B => w4);

  s4 : GT_OR2
    port map(
      A => w1,
      Z => w3,
      B => w5);

  s5 : GT_AND2
    port map(
      Z => w0,
      A => w38,
      B => w29);

  s6 : GT_AND2
    port map(
      Z => w1,
      A => w37,
      B => w29);

  s7 : GT_NOR4
    port map(
      A => w14,
      B => w15,
      D => w12,
      C => w16,
      Z => w29);

  s8 : GT_AND3
    port map(
      Z => w4,
      B => w18,
      C => w20,
      A => w19);

  s9 : GT_AND3
    port map(
      Z => w5,
      B => w17,
      C => w21,
      A => w19);

  s10 : GT_NOT
    port map(
      A => w14,
      Z => w19);

  s11 : GT_NOT
    port map(
      A => w15,
      Z => w18);

  s12 : GT_NOT
    port map(
      A => w16,
      Z => w17);

  s13 : GT_XOR2
    port map(
      B => w12,
      A => w16,
      Z => w20);

  s14 : GT_XOR2
    port map(
      A => w15,
      B => w12,
      Z => w21);

  s17 : GT_NOT
    port map(
      Z => w24,
      A => w31);

  s18 : GT_AND3
    port map(
      B => w24,
      C => w29,
      Z => w27,
      A => w30);

  s21 : GT_AND2
    port map(
      A => w24,
      B => w28,
      Z => w26);

  s22 : GT_NOT
    port map(
      Z => w28,
      A => w29);

  s23 : GT_NOT
    port map(
      A => w35,
      Z => w34);

  s24 : GT_OR2
    port map(
      B => w26,
      A => w27,
      Z => w32);

end rtl;

