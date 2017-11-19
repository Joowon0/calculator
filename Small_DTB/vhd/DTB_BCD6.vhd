library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity DTB_BCD6 is
  port(BCD6 : in std_logic_vector(3 downto 0);
       binaryout : out std_logic_vector(31 downto 0));
end DTB_BCD6;

architecture rtl of DTB_BCD6 is
  signal b94 : std_logic_vector(3 downto 0);
  signal b111 : std_logic_vector(31 downto 0);
  signal b112 : std_logic_vector(31 downto 0);
  signal b113 : std_logic_vector(31 downto 0);
  signal b114 : std_logic_vector(31 downto 0);
  signal b119 : std_logic_vector(31 downto 0);
  signal b120 : std_logic_vector(31 downto 0);
  signal b25 : std_logic_vector(31 downto 0);
  signal b64 : std_logic_vector(31 downto 0);
  signal b59 : std_logic_vector(31 downto 0);
  signal b65 : std_logic_vector(31 downto 0);
  signal b61 : std_logic_vector(31 downto 0);
  signal b62 : std_logic_vector(31 downto 0);
  signal b63 : std_logic_vector(31 downto 0);
  signal b58 : std_logic_vector(31 downto 0);
  signal b60 : std_logic_vector(31 downto 0);
  signal b64_6 : std_logic;
  signal b64_7 : std_logic;
  signal b64_8 : std_logic;
  signal b64_9 : std_logic;
  signal b59_22 : std_logic;
  signal b94_3_w47 : std_logic;
  signal b94_2_w40 : std_logic;
  signal b94_1_w34 : std_logic;
  signal b94_0_w27 : std_logic;
  signal b65_9 : std_logic;
  signal b65_10 : std_logic;
  signal b65_11 : std_logic;
  signal b65_12 : std_logic;
  signal b61_14 : std_logic;
  signal b61_15 : std_logic;
  signal b61_16 : std_logic;
  signal b61_17 : std_logic;
  signal b62_16 : std_logic;
  signal b62_17 : std_logic;
  signal b62_18 : std_logic;
  signal b62_19 : std_logic;
  signal b63_17 : std_logic;
  signal b63_18 : std_logic;
  signal b63_19 : std_logic;
  signal b63_20 : std_logic;
  signal b58_18 : std_logic;
  signal b58_19 : std_logic;
  signal b58_20 : std_logic;
  signal b58_21 : std_logic;
  signal b59_19 : std_logic;
  signal b59_21 : std_logic;
  signal b59_20 : std_logic;
  signal b60_0 : std_logic;
  signal b65_31to13_8to0 : std_logic_vector(27 downto 0);
  signal b61_31to18_13to0 : std_logic_vector(27 downto 0);
  signal b62_31to20_15to0 : std_logic_vector(27 downto 0);
  signal b63_31to21_16to0 : std_logic_vector(27 downto 0);
  signal b58_31to22_17to0 : std_logic_vector(27 downto 0);
  signal b59_31to23_18to0 : std_logic_vector(27 downto 0);
  signal b60_31to4 : std_logic_vector(27 downto 0);
  signal b64_31to10_5to0 : std_logic_vector(27 downto 0);

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
  b94 <= BCD6;
  binaryout <= b25;

  b64(31 downto 10) <= b64_31to10_5to0(27 downto 6);
  b64(9) <= b64_9;
  b64(8) <= b64_8;
  b64(7) <= b64_7;
  b64(6) <= b64_6;
  b64(5 downto 0) <= b64_31to10_5to0(27 downto 22);
  b59(31 downto 23) <= b59_31to23_18to0(27 downto 19);
  b59(22) <= b59_22;
  b59(21) <= b59_21;
  b59(20) <= b59_20;
  b59(19) <= b59_19;
  b59(18 downto 0) <= b59_31to23_18to0(27 downto 9);
  b65(31 downto 13) <= b65_31to13_8to0(27 downto 9);
  b65(12) <= b65_12;
  b65(11) <= b65_11;
  b65(10) <= b65_10;
  b65(9) <= b65_9;
  b65(8 downto 0) <= b65_31to13_8to0(27 downto 19);
  b61(31 downto 18) <= b61_31to18_13to0(27 downto 14);
  b61(17) <= b61_17;
  b61(16) <= b61_16;
  b61(15) <= b61_15;
  b61(14) <= b61_14;
  b61(13 downto 0) <= b61_31to18_13to0(27 downto 14);
  b62(31 downto 20) <= b62_31to20_15to0(27 downto 16);
  b62(19) <= b62_19;
  b62(18) <= b62_18;
  b62(17) <= b62_17;
  b62(16) <= b62_16;
  b62(15 downto 0) <= b62_31to20_15to0(27 downto 12);
  b63(31 downto 21) <= b63_31to21_16to0(27 downto 17);
  b63(20) <= b63_20;
  b63(19) <= b63_19;
  b63(18) <= b63_18;
  b63(17) <= b63_17;
  b63(16 downto 0) <= b63_31to21_16to0(27 downto 11);
  b58(31 downto 22) <= b58_31to22_17to0(27 downto 18);
  b58(21) <= b58_21;
  b58(20) <= b58_20;
  b58(19) <= b58_19;
  b58(18) <= b58_18;
  b58(17 downto 0) <= b58_31to22_17to0(27 downto 10);
  b60(31 downto 4) <= b60_31to4(27 downto 0);
  b60(3) <= b60_0;
  b60(2) <= b60_0;
  b60(1) <= b60_0;
  b60(0) <= b60_0;

  b94_3_w47 <= b94(3);
  b94_2_w40 <= b94(2);
  b94_1_w34 <= b94(1);
  b94_0_w27 <= b94(0);

  s28 : adder32bit
    port map(
      output32bit => b114,
      inputAA => b64,
      inputBB => b65,
      overflowww => open);

  s29 : adder32bit
    port map(
      output32bit => b113,
      inputAA => b61,
      inputBB => b62,
      overflowww => open);

  s30 : adder32bit
    port map(
      output32bit => b112,
      inputBB => b58,
      inputAA => b63,
      overflowww => open);

  s31 : adder32bit
    port map(
      output32bit => b111,
      inputAA => b59,
      inputBB => b60,
      overflowww => open);

  s42 : GT_BUF
    port map(
      Z => b64_6,
      A => b94_0_w27);

  s43 : GT_BUF
    port map(
      Z => b64_7,
      A => b94_1_w34);

  s44 : GT_BUF
    port map(
      Z => b64_8,
      A => b94_2_w40);

  s45 : GT_BUF
    port map(
      Z => b64_9,
      A => b94_3_w47);

  s52 : adder32bit
    port map(
      inputBB => b113,
      inputAA => b114,
      output32bit => b120,
      overflowww => open);

  s53 : adder32bit
    port map(
      inputBB => b111,
      inputAA => b112,
      output32bit => b119,
      overflowww => open);

  s56 : adder32bit
    port map(
      inputBB => b119,
      inputAA => b120,
      output32bit => b25,
      overflowww => open);

  s12 : GT_ZERO28Bit
    port map(
      Output => b64_31to10_5to0);

  s13 : GT_BUF
    port map(
      A => b94_0_w27,
      Z => b65_9);

  s14 : GT_BUF
    port map(
      A => b94_1_w34,
      Z => b65_10);

  s15 : GT_BUF
    port map(
      A => b94_2_w40,
      Z => b65_11);

  s16 : GT_BUF
    port map(
      A => b94_3_w47,
      Z => b65_12);

  s17 : GT_BUF
    port map(
      A => b94_0_w27,
      Z => b61_14);

  s18 : GT_BUF
    port map(
      A => b94_1_w34,
      Z => b61_15);

  s19 : GT_BUF
    port map(
      A => b94_2_w40,
      Z => b61_16);

  s20 : GT_BUF
    port map(
      A => b94_3_w47,
      Z => b61_17);

  s21 : GT_BUF
    port map(
      A => b94_0_w27,
      Z => b62_16);

  s22 : GT_BUF
    port map(
      A => b94_1_w34,
      Z => b62_17);

  s23 : GT_BUF
    port map(
      A => b94_2_w40,
      Z => b62_18);

  s24 : GT_BUF
    port map(
      A => b94_3_w47,
      Z => b62_19);

  s25 : GT_BUF
    port map(
      A => b94_0_w27,
      Z => b63_17);

  s26 : GT_BUF
    port map(
      A => b94_1_w34,
      Z => b63_18);

  s27 : GT_BUF
    port map(
      A => b94_2_w40,
      Z => b63_19);

  s32 : GT_BUF
    port map(
      A => b94_3_w47,
      Z => b63_20);

  s33 : GT_BUF
    port map(
      A => b94_0_w27,
      Z => b58_18);

  s34 : GT_BUF
    port map(
      A => b94_1_w34,
      Z => b58_19);

  s35 : GT_BUF
    port map(
      A => b94_2_w40,
      Z => b58_20);

  s36 : GT_BUF
    port map(
      A => b94_3_w47,
      Z => b58_21);

  s37 : GT_BUF
    port map(
      A => b94_0_w27,
      Z => b59_19);

  s38 : GT_BUF
    port map(
      A => b94_1_w34,
      Z => b59_20);

  s39 : GT_BUF
    port map(
      A => b94_2_w40,
      Z => b59_21);

  s40 : GT_BUF
    port map(
      Z => b59_22,
      A => b94_3_w47);

  s41 : GT_ZERO
    port map(
      Z => b60_0);

  s46 : GT_ZERO28Bit
    port map(
      Output => b65_31to13_8to0);

  s47 : GT_ZERO28Bit
    port map(
      Output => b61_31to18_13to0);

  s48 : GT_ZERO28Bit
    port map(
      Output => b62_31to20_15to0);

  s49 : GT_ZERO28Bit
    port map(
      Output => b63_31to21_16to0);

  s50 : GT_ZERO28Bit
    port map(
      Output => b58_31to22_17to0);

  s51 : GT_ZERO28Bit
    port map(
      Output => b59_31to23_18to0);

  s54 : GT_ZERO28Bit
    port map(
      Output => b60_31to4);

end rtl;

