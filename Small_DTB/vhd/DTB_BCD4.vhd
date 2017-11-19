library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity DTB_BCD4 is
  port(BCD4 : in std_logic_vector(3 downto 0);
       binaryout : out std_logic_vector(31 downto 0));
end DTB_BCD4;

architecture rtl of DTB_BCD4 is
  signal b72 : std_logic_vector(3 downto 0);
  signal b109 : std_logic_vector(31 downto 0);
  signal b110 : std_logic_vector(31 downto 0);
  signal b147 : std_logic_vector(31 downto 0);
  signal b148 : std_logic_vector(31 downto 0);
  signal b149 : std_logic_vector(31 downto 0);
  signal b150 : std_logic_vector(31 downto 0);
  signal b146 : std_logic_vector(31 downto 0);
  signal b37 : std_logic_vector(31 downto 0);
  signal b40 : std_logic_vector(31 downto 0);
  signal b41 : std_logic_vector(31 downto 0);
  signal b42 : std_logic_vector(31 downto 0);
  signal b150_31to17_12to0 : std_logic_vector(27 downto 0);
  signal b149_31to14_9to0 : std_logic_vector(27 downto 0);
  signal b148_31to13_8to0 : std_logic_vector(27 downto 0);
  signal b147_31to12_7to0 : std_logic_vector(27 downto 0);
  signal b146_31to8_3to0 : std_logic_vector(27 downto 0);
  signal b146_4 : std_logic;
  signal b146_5 : std_logic;
  signal b146_6 : std_logic;
  signal b146_7 : std_logic;
  signal b72_3_w32 : std_logic;
  signal b72_2_w28 : std_logic;
  signal b72_1_w24 : std_logic;
  signal b72_0_w21 : std_logic;
  signal b147_8 : std_logic;
  signal b147_9 : std_logic;
  signal b147_10 : std_logic;
  signal b147_11 : std_logic;
  signal b148_9 : std_logic;
  signal b148_10 : std_logic;
  signal b148_11 : std_logic;
  signal b148_12 : std_logic;
  signal b149_11 : std_logic;
  signal b149_10 : std_logic;
  signal b149_12 : std_logic;
  signal b149_13 : std_logic;
  signal b150_13 : std_logic;
  signal b150_14 : std_logic;
  signal b150_15 : std_logic;
  signal b150_16 : std_logic;
  signal b37_31to4 : std_logic_vector(27 downto 0);
  signal b37_0 : std_logic;

  component adder32bit
    port(inputAA : in std_logic_vector(31 downto 0);
         inputBB : in std_logic_vector(31 downto 0);
         output32bit : out std_logic_vector(31 downto 0);
         overflowww : out std_logic);
  end component;

  component GT_BUF
    port(A : in std_logic;
         Z : out std_logic);
  end component;

  component GT_ZERO28Bit
    port(Output : out std_logic_vector(27 downto 0));
  end component;

  component GT_ZERO
    port(Z : out std_logic);
  end component;

begin
  b72 <= BCD4;
  binaryout <= b42;

  b147(31 downto 12) <= b147_31to12_7to0(27 downto 8);
  b147(11) <= b147_11;
  b147(10) <= b147_10;
  b147(9) <= b147_9;
  b147(8) <= b147_8;
  b147(7 downto 0) <= b147_31to12_7to0(27 downto 20);
  b148(31 downto 13) <= b148_31to13_8to0(27 downto 9);
  b148(12) <= b148_12;
  b148(11) <= b148_11;
  b148(10) <= b148_10;
  b148(9) <= b148_9;
  b148(8 downto 0) <= b148_31to13_8to0(27 downto 19);
  b149(31 downto 14) <= b149_31to14_9to0(27 downto 10);
  b149(13) <= b149_13;
  b149(12) <= b149_12;
  b149(11) <= b149_11;
  b149(10) <= b149_10;
  b149(9 downto 0) <= b149_31to14_9to0(27 downto 18);
  b150(31 downto 17) <= b150_31to17_12to0(27 downto 13);
  b150(16) <= b150_16;
  b150(15) <= b150_15;
  b150(14) <= b150_14;
  b150(13) <= b150_13;
  b150(12 downto 0) <= b150_31to17_12to0(27 downto 15);
  b146(31 downto 8) <= b146_31to8_3to0(27 downto 4);
  b146(7) <= b146_7;
  b146(6) <= b146_6;
  b146(5) <= b146_5;
  b146(4) <= b146_4;
  b146(3 downto 0) <= b146_31to8_3to0(27 downto 24);
  b37(31 downto 4) <= b37_31to4(27 downto 0);
  b37(3) <= b37_0;
  b37(2) <= b37_0;
  b37(1) <= b37_0;
  b37(0) <= b37_0;

  b72_3_w32 <= b72(3);
  b72_2_w28 <= b72(2);
  b72_1_w24 <= b72(1);
  b72_0_w21 <= b72(0);

  s23 : adder32bit
    port map(
      output32bit => b109,
      inputAA => b148,
      inputBB => b149,
      overflowww => open);

  s24 : adder32bit
    port map(
      inputAA => b150,
      inputBB => b37,
      output32bit => b40,
      overflowww => open);

  s22 : adder32bit
    port map(
      output32bit => b110,
      inputBB => b147,
      inputAA => b146,
      overflowww => open);

  s34 : GT_BUF
    port map(
      Z => b146_4,
      A => b72_0_w21);

  s35 : GT_BUF
    port map(
      Z => b146_5,
      A => b72_1_w24);

  s36 : GT_BUF
    port map(
      Z => b146_6,
      A => b72_2_w28);

  s37 : GT_BUF
    port map(
      Z => b146_7,
      A => b72_3_w32);

  s49 : adder32bit
    port map(
      inputBB => b109,
      inputAA => b110,
      output32bit => b41,
      overflowww => open);

  s8 : GT_BUF
    port map(
      A => b72_0_w21,
      Z => b147_8);

  s9 : GT_BUF
    port map(
      A => b72_1_w24,
      Z => b147_9);

  s10 : GT_BUF
    port map(
      A => b72_2_w28,
      Z => b147_10);

  s11 : GT_BUF
    port map(
      A => b72_3_w32,
      Z => b147_11);

  s12 : GT_BUF
    port map(
      A => b72_0_w21,
      Z => b148_9);

  s13 : GT_BUF
    port map(
      A => b72_1_w24,
      Z => b148_10);

  s14 : GT_BUF
    port map(
      A => b72_2_w28,
      Z => b148_11);

  s15 : GT_BUF
    port map(
      A => b72_3_w32,
      Z => b148_12);

  s16 : GT_BUF
    port map(
      A => b72_0_w21,
      Z => b149_10);

  s17 : GT_BUF
    port map(
      A => b72_1_w24,
      Z => b149_11);

  s18 : GT_BUF
    port map(
      A => b72_2_w28,
      Z => b149_12);

  s19 : GT_BUF
    port map(
      A => b72_3_w32,
      Z => b149_13);

  s20 : GT_BUF
    port map(
      A => b72_0_w21,
      Z => b150_13);

  s21 : GT_BUF
    port map(
      A => b72_1_w24,
      Z => b150_14);

  s25 : GT_BUF
    port map(
      A => b72_2_w28,
      Z => b150_15);

  s26 : GT_BUF
    port map(
      A => b72_3_w32,
      Z => b150_16);

  s27 : GT_ZERO28Bit
    port map(
      Output => b146_31to8_3to0);

  s28 : GT_ZERO28Bit
    port map(
      Output => b147_31to12_7to0);

  s29 : GT_ZERO28Bit
    port map(
      Output => b148_31to13_8to0);

  s30 : GT_ZERO28Bit
    port map(
      Output => b149_31to14_9to0);

  s31 : GT_ZERO28Bit
    port map(
      Output => b150_31to17_12to0);

  s32 : GT_ZERO28Bit
    port map(
      Output => b37_31to4);

  s33 : GT_ZERO
    port map(
      Z => b37_0);

  s38 : adder32bit
    port map(
      inputBB => b40,
      inputAA => b41,
      output32bit => b42,
      overflowww => open);

end rtl;

