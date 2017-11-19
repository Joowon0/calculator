library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity BCDregister is
  port(DataOut : out std_logic_vector(3 downto 0);
       sel : in std_logic;
       DataIn : in std_logic_vector(3 downto 0);
       CLK : in std_logic;
       RST : in std_logic);
end BCDregister;

architecture rtl of BCDregister is
  signal w19 : std_logic;
  signal w27 : std_logic;
  signal w28 : std_logic;
  signal w29 : std_logic;
  signal b20 : std_logic_vector(3 downto 0);
  signal b21 : std_logic_vector(3 downto 0);
  signal w78 : std_logic;
  signal w22 : std_logic;
  signal w24 : std_logic;
  signal w20 : std_logic;
  signal w18 : std_logic;
  signal b20_0_w48 : std_logic;
  signal b20_1_w49 : std_logic;
  signal b20_2_w50 : std_logic;
  signal b20_3_w51 : std_logic;
  signal b21_0 : std_logic;
  signal b21_0_w64 : std_logic;
  signal b21_1 : std_logic;
  signal b21_1_w65 : std_logic;
  signal b21_2 : std_logic;
  signal b21_2_w66 : std_logic;
  signal b21_3 : std_logic;
  signal b21_3_w67 : std_logic;

  component GT_FDR
    port(D : in std_logic;
         CP : in std_logic;
         CD : in std_logic;
         Q : out std_logic;
         QN : out std_logic);
  end component;

  component GT_AO22
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : in std_logic;
         Z : out std_logic);
  end component;

  component GT_NOT
    port(A : in std_logic;
         Z : out std_logic);
  end component;

begin
  DataOut <= b21;
  w24 <= sel;
  b20 <= DataIn;
  w20 <= CLK;
  w78 <= RST;

  b21(3) <= b21_3;
  b21(2) <= b21_2;
  b21(1) <= b21_1;
  b21(0) <= b21_0;

  b20_0_w48 <= b20(0);
  b20_1_w49 <= b20(1);
  b20_2_w50 <= b20(2);
  b20_3_w51 <= b20(3);
  b21_0_w64 <= b21(0);
  b21_1_w65 <= b21(1);
  b21_2_w66 <= b21(2);
  b21_3_w67 <= b21(3);

  s0 : GT_FDR
    port map(
      D => w29,
      Q => b21_0,
      CP => w20,
      CD => w18,
      QN => open);

  s1 : GT_FDR
    port map(
      D => w28,
      Q => b21_1,
      CP => w20,
      CD => w18,
      QN => open);

  s2 : GT_FDR
    port map(
      D => w27,
      Q => b21_2,
      CP => w20,
      CD => w18,
      QN => open);

  s3 : GT_FDR
    port map(
      D => w19,
      Q => b21_3,
      CP => w20,
      CD => w18,
      QN => open);

  s4 : GT_AO22
    port map(
      Z => w29,
      D => b20_0_w48,
      A => b21_0_w64,
      B => w22,
      C => w24);

  s5 : GT_NOT
    port map(
      Z => w22,
      A => w24);

  s6 : GT_AO22
    port map(
      Z => w28,
      D => b20_1_w49,
      A => b21_1_w65,
      B => w22,
      C => w24);

  s7 : GT_AO22
    port map(
      Z => w27,
      D => b20_2_w50,
      A => b21_2_w66,
      B => w22,
      C => w24);

  s8 : GT_AO22
    port map(
      Z => w19,
      D => b20_3_w51,
      A => b21_3_w67,
      B => w22,
      C => w24);

  s29 : GT_NOT
    port map(
      A => w78,
      Z => w18);

end rtl;

