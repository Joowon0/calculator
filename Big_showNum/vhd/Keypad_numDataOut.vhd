library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity Keypad_numDataOut is
  port(in_num : in std_logic_vector(10 downto 0);
       segData : out std_logic_vector(6 downto 0));
end Keypad_numDataOut;

architecture rtl of Keypad_numDataOut is
  signal b20 : std_logic_vector(10 downto 0);
  signal w19 : std_logic;
  signal w31 : std_logic;
  signal b21 : std_logic_vector(6 downto 0);
  signal b20_1_w21 : std_logic;
  signal b20_2_w28 : std_logic;
  signal b20_3_w29 : std_logic;
  signal b20_5_w23 : std_logic;
  signal b20_4_w22 : std_logic;
  signal b20_6_w24 : std_logic;
  signal b20_7_w25 : std_logic;
  signal b20_8_w26 : std_logic;
  signal b20_9_w27 : std_logic;
  signal b20_10_w30 : std_logic;
  signal b20_0_w20 : std_logic;
  signal b21_2 : std_logic;
  signal b21_3 : std_logic;
  signal b21_4 : std_logic;
  signal b21_5 : std_logic;
  signal b21_1 : std_logic;
  signal b21_0 : std_logic;
  signal b21_6 : std_logic;

  component GT_OR8
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : in std_logic;
         E : in std_logic;
         F : in std_logic;
         G : in std_logic;
         H : in std_logic;
         Z : out std_logic);
  end component;

  component GT_OR4
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : in std_logic;
         Z : out std_logic);
  end component;

  component GT_ZERO
    port(Z : out std_logic);
  end component;

  component GT_OR2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

begin
  b20 <= in_num;
  segData <= b21;

  b21(6) <= b21_6;
  b21(5) <= b21_5;
  b21(4) <= b21_4;
  b21(3) <= b21_3;
  b21(2) <= b21_2;
  b21(1) <= b21_1;
  b21(0) <= b21_0;

  b20_1_w21 <= b20(1);
  b20_2_w28 <= b20(2);
  b20_3_w29 <= b20(3);
  b20_5_w23 <= b20(5);
  b20_4_w22 <= b20(4);
  b20_6_w24 <= b20(6);
  b20_7_w25 <= b20(7);
  b20_8_w26 <= b20(8);
  b20_9_w27 <= b20(9);
  b20_10_w30 <= b20(10);
  b20_0_w20 <= b20(0);

  s14 : GT_OR8
    port map(
      A => b20_2_w28,
      B => b20_3_w29,
      C => b20_5_w23,
      D => b20_6_w24,
      E => b20_7_w25,
      F => b20_8_w26,
      G => b20_9_w27,
      H => b20_0_w20,
      Z => b21_0);

  s15 : GT_OR8
    port map(
      A => b20_1_w21,
      B => b20_2_w28,
      C => b20_3_w29,
      D => b20_4_w22,
      E => b20_7_w25,
      F => b20_8_w26,
      G => b20_9_w27,
      H => b20_0_w20,
      Z => b21_1);

  s16 : GT_OR8
    port map(
      A => b20_2_w28,
      B => b20_3_w29,
      C => b20_5_w23,
      D => b20_6_w24,
      E => b20_8_w26,
      F => b20_9_w27,
      H => w19,
      G => b20_0_w20,
      Z => b21_3);

  s17 : GT_OR8
    port map(
      A => b20_1_w21,
      B => b20_3_w29,
      D => b20_5_w23,
      C => b20_4_w22,
      E => b20_6_w24,
      F => b20_7_w25,
      G => b20_8_w26,
      H => b20_9_w27,
      Z => w31);

  s19 : GT_OR4
    port map(
      A => b20_2_w28,
      B => b20_6_w24,
      C => b20_8_w26,
      D => b20_0_w20,
      Z => b21_4);

  s20 : GT_OR8
    port map(
      B => b20_5_w23,
      A => b20_4_w22,
      C => b20_6_w24,
      D => b20_8_w26,
      E => b20_9_w27,
      G => w19,
      H => w19,
      F => b20_0_w20,
      Z => b21_5);

  s21 : GT_OR8
    port map(
      A => b20_2_w28,
      C => b20_3_w29,
      E => b20_5_w23,
      D => b20_4_w22,
      F => b20_6_w24,
      G => b20_8_w26,
      H => b20_9_w27,
      B => b20_10_w30,
      Z => b21_6);

  s23 : GT_ZERO
    port map(
      Z => w19);

  s18 : GT_OR2
    port map(
      B => b20_0_w20,
      A => w31,
      Z => b21_2);

end rtl;

