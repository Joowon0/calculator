library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity OR7For4Bits is
  port(input0 : in std_logic_vector(3 downto 0);
       input1 : in std_logic_vector(3 downto 0);
       input2 : in std_logic_vector(3 downto 0);
       input3 : in std_logic_vector(3 downto 0);
       input4 : in std_logic_vector(3 downto 0);
       input5 : in std_logic_vector(3 downto 0);
       input6 : in std_logic_vector(3 downto 0);
       output : out std_logic_vector(3 downto 0));
end OR7For4Bits;

architecture rtl of OR7For4Bits is
  signal w2 : std_logic;
  signal w14 : std_logic;
  signal b23 : std_logic_vector(3 downto 0);
  signal w10 : std_logic;
  signal w11 : std_logic;
  signal w12 : std_logic;
  signal w13 : std_logic;
  signal w15 : std_logic;
  signal w16 : std_logic;
  signal b16 : std_logic_vector(3 downto 0);
  signal b17 : std_logic_vector(3 downto 0);
  signal b19 : std_logic_vector(3 downto 0);
  signal b41 : std_logic_vector(3 downto 0);
  signal b42 : std_logic_vector(3 downto 0);
  signal b20 : std_logic_vector(3 downto 0);
  signal b18 : std_logic_vector(3 downto 0);
  signal b23_0_w9 : std_logic;
  signal b41_0_w17 : std_logic;
  signal b42_0_w18 : std_logic;
  signal b20_0_w19 : std_logic;
  signal b19_0_w20 : std_logic;
  signal b18_0_w21 : std_logic;
  signal b17_0_w22 : std_logic;
  signal b23_1_w26 : std_logic;
  signal b23_2_w27 : std_logic;
  signal b23_3_w25 : std_logic;
  signal b16_0 : std_logic;
  signal b16_3 : std_logic;
  signal b16_2 : std_logic;
  signal b16_1 : std_logic;
  signal b17_1_w32 : std_logic;
  signal b18_1_w33 : std_logic;
  signal b19_1_w34 : std_logic;
  signal b20_1_w35 : std_logic;
  signal b42_1_w36 : std_logic;
  signal b41_1_w37 : std_logic;
  signal b17_2_w38 : std_logic;
  signal b18_2_w39 : std_logic;
  signal b19_2_w40 : std_logic;
  signal b20_2_w41 : std_logic;
  signal b42_2_w42 : std_logic;
  signal b41_2_w43 : std_logic;
  signal b17_3_w44 : std_logic;
  signal b18_3_w45 : std_logic;
  signal b19_3_w46 : std_logic;
  signal b20_3_w47 : std_logic;
  signal b42_3_w48 : std_logic;
  signal b41_3_w49 : std_logic;

  component GT_OR3
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         Z : out std_logic);
  end component;

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

begin
  b23 <= input0;
  b41 <= input1;
  b42 <= input2;
  b20 <= input3;
  b19 <= input4;
  b18 <= input5;
  b17 <= input6;
  output <= b16;

  b16(3) <= b16_3;
  b16(2) <= b16_2;
  b16(1) <= b16_1;
  b16(0) <= b16_0;

  b23_0_w9 <= b23(0);
  b41_0_w17 <= b41(0);
  b42_0_w18 <= b42(0);
  b20_0_w19 <= b20(0);
  b19_0_w20 <= b19(0);
  b18_0_w21 <= b18(0);
  b17_0_w22 <= b17(0);
  b23_1_w26 <= b23(1);
  b23_2_w27 <= b23(2);
  b23_3_w25 <= b23(3);
  b17_1_w32 <= b17(1);
  b18_1_w33 <= b18(1);
  b19_1_w34 <= b19(1);
  b20_1_w35 <= b20(1);
  b42_1_w36 <= b42(1);
  b41_1_w37 <= b41(1);
  b17_2_w38 <= b17(2);
  b18_2_w39 <= b18(2);
  b19_2_w40 <= b19(2);
  b20_2_w41 <= b20(2);
  b42_2_w42 <= b42(2);
  b41_2_w43 <= b41(2);
  b17_3_w44 <= b17(3);
  b18_3_w45 <= b18(3);
  b19_3_w46 <= b19(3);
  b20_3_w47 <= b20(3);
  b42_3_w48 <= b42(3);
  b41_3_w49 <= b41(3);

  s0 : GT_OR3
    port map(
      Z => w2,
      A => b23_0_w9,
      B => b41_0_w17,
      C => b42_0_w18);

  s2 : GT_OR2
    port map(
      A => w2,
      B => w14,
      Z => b16_0);

  s12 : GT_OR4
    port map(
      Z => w14,
      A => b20_0_w19,
      B => b19_0_w20,
      C => b18_0_w21,
      D => b17_0_w22);

  s3 : GT_OR3
    port map(
      Z => w10,
      A => b23_1_w26,
      C => b42_1_w36,
      B => b41_1_w37);

  s4 : GT_OR2
    port map(
      A => w10,
      B => w11,
      Z => b16_1);

  s5 : GT_OR4
    port map(
      Z => w11,
      D => b17_1_w32,
      C => b18_1_w33,
      B => b19_1_w34,
      A => b20_1_w35);

  s6 : GT_OR3
    port map(
      Z => w12,
      A => b23_2_w27,
      C => b42_2_w42,
      B => b41_2_w43);

  s7 : GT_OR2
    port map(
      A => w12,
      B => w13,
      Z => b16_2);

  s8 : GT_OR4
    port map(
      Z => w13,
      D => b17_2_w38,
      C => b18_2_w39,
      B => b19_2_w40,
      A => b20_2_w41);

  s9 : GT_OR3
    port map(
      Z => w15,
      A => b23_3_w25,
      C => b42_3_w48,
      B => b41_3_w49);

  s10 : GT_OR2
    port map(
      A => w15,
      B => w16,
      Z => b16_3);

  s11 : GT_OR4
    port map(
      Z => w16,
      D => b17_3_w44,
      C => b18_3_w45,
      B => b19_3_w46,
      A => b20_3_w47);

end rtl;

