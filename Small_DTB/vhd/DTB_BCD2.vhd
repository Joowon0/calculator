library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity DTB_BCD2 is
  port(BCD2 : in std_logic_vector(3 downto 0);
       binaryout : out std_logic_vector(31 downto 0));
end DTB_BCD2;

architecture rtl of DTB_BCD2 is
  signal b39 : std_logic_vector(3 downto 0);
  signal b137 : std_logic_vector(31 downto 0);
  signal b138 : std_logic_vector(31 downto 0);
  signal b16 : std_logic_vector(31 downto 0);
  signal b15 : std_logic_vector(31 downto 0);
  signal b17 : std_logic_vector(31 downto 0);
  signal b16_31to6_1to0 : std_logic_vector(27 downto 0);
  signal b137_31to9_4to0 : std_logic_vector(27 downto 0);
  signal b138_31to10_5to0 : std_logic_vector(27 downto 0);
  signal b39_3_w19 : std_logic;
  signal b39_2_w18 : std_logic;
  signal b39_1_w14 : std_logic;
  signal b39_0_w12 : std_logic;
  signal b16_2 : std_logic;
  signal b16_3 : std_logic;
  signal b16_4 : std_logic;
  signal b16_5 : std_logic;
  signal b137_5 : std_logic;
  signal b137_6 : std_logic;
  signal b137_7 : std_logic;
  signal b137_8 : std_logic;
  signal b138_6 : std_logic;
  signal b138_7 : std_logic;
  signal b138_8 : std_logic;
  signal b138_9 : std_logic;

  component GT_BUF
    port(A : in std_logic;
         Z : out std_logic);
  end component;

  component GT_ZERO28Bit
    port(Output : out std_logic_vector(27 downto 0));
  end component;

  component adder32bit
    port(inputAA : in std_logic_vector(31 downto 0);
         inputBB : in std_logic_vector(31 downto 0);
         output32bit : out std_logic_vector(31 downto 0);
         overflowww : out std_logic);
  end component;

begin
  b39 <= BCD2;
  binaryout <= b17;

  b137(31 downto 9) <= b137_31to9_4to0(27 downto 5);
  b137(8) <= b137_8;
  b137(7) <= b137_7;
  b137(6) <= b137_6;
  b137(5) <= b137_5;
  b137(4 downto 0) <= b137_31to9_4to0(27 downto 23);
  b138(31 downto 10) <= b138_31to10_5to0(27 downto 6);
  b138(9) <= b138_9;
  b138(8) <= b138_8;
  b138(7) <= b138_7;
  b138(6) <= b138_6;
  b138(5 downto 0) <= b138_31to10_5to0(27 downto 22);
  b16(31 downto 6) <= b16_31to6_1to0(27 downto 2);
  b16(5) <= b16_5;
  b16(4) <= b16_4;
  b16(3) <= b16_3;
  b16(2) <= b16_2;
  b16(1 downto 0) <= b16_31to6_1to0(27 downto 26);

  b39_3_w19 <= b39(3);
  b39_2_w18 <= b39(2);
  b39_1_w14 <= b39(1);
  b39_0_w12 <= b39(0);

  s11 : GT_BUF
    port map(
      A => b39_0_w12,
      Z => b16_2);

  s12 : GT_BUF
    port map(
      A => b39_1_w14,
      Z => b16_3);

  s13 : GT_BUF
    port map(
      A => b39_2_w18,
      Z => b16_4);

  s14 : GT_BUF
    port map(
      A => b39_3_w19,
      Z => b16_5);

  s4 : GT_ZERO28Bit
    port map(
      Output => b16_31to6_1to0);

  s5 : GT_ZERO28Bit
    port map(
      Output => b137_31to9_4to0);

  s6 : GT_ZERO28Bit
    port map(
      Output => b138_31to10_5to0);

  s7 : adder32bit
    port map(
      inputAA => b137,
      inputBB => b138,
      output32bit => b15,
      overflowww => open);

  s8 : adder32bit
    port map(
      inputBB => b15,
      inputAA => b16,
      output32bit => b17,
      overflowww => open);

  s9 : GT_BUF
    port map(
      A => b39_0_w12,
      Z => b137_5);

  s10 : GT_BUF
    port map(
      A => b39_1_w14,
      Z => b137_6);

  s15 : GT_BUF
    port map(
      A => b39_2_w18,
      Z => b137_7);

  s16 : GT_BUF
    port map(
      A => b39_3_w19,
      Z => b137_8);

  s17 : GT_BUF
    port map(
      A => b39_0_w12,
      Z => b138_6);

  s18 : GT_BUF
    port map(
      A => b39_1_w14,
      Z => b138_7);

  s19 : GT_BUF
    port map(
      A => b39_2_w18,
      Z => b138_8);

  s20 : GT_BUF
    port map(
      A => b39_3_w19,
      Z => b138_9);

end rtl;

