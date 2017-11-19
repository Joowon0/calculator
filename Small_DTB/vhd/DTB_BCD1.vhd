library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity DTB_BCD1 is
  port(BCD1 : in std_logic_vector(3 downto 0);
       binaryout : out std_logic_vector(31 downto 0));
end DTB_BCD1;

architecture rtl of DTB_BCD1 is
  signal b12 : std_logic_vector(3 downto 0);
  signal b135 : std_logic_vector(31 downto 0);
  signal b13 : std_logic_vector(31 downto 0);
  signal b17 : std_logic_vector(31 downto 0);
  signal b135_31to7_2to0 : std_logic_vector(27 downto 0);
  signal b13_31to5_0 : std_logic_vector(27 downto 0);
  signal b13_1 : std_logic;
  signal b13_2 : std_logic;
  signal b13_3 : std_logic;
  signal b13_4 : std_logic;
  signal b135_3 : std_logic;
  signal b135_4 : std_logic;
  signal b135_5 : std_logic;
  signal b135_6 : std_logic;
  signal b12_3_w20 : std_logic;
  signal b12_2_w19 : std_logic;
  signal b12_1_w18 : std_logic;
  signal b12_0_w17 : std_logic;

  component adder32bit
    port(inputAA : in std_logic_vector(31 downto 0);
         inputBB : in std_logic_vector(31 downto 0);
         output32bit : out std_logic_vector(31 downto 0);
         overflowww : out std_logic);
  end component;

  component GT_ZERO28Bit
    port(Output : out std_logic_vector(27 downto 0));
  end component;

  component GT_BUF
    port(A : in std_logic;
         Z : out std_logic);
  end component;

begin
  b12 <= BCD1;
  binaryout <= b17;

  b135(31 downto 7) <= b135_31to7_2to0(27 downto 3);
  b135(6) <= b135_6;
  b135(5) <= b135_5;
  b135(4) <= b135_4;
  b135(3) <= b135_3;
  b135(2 downto 0) <= b135_31to7_2to0(27 downto 25);
  b13(31 downto 5) <= b13_31to5_0(27 downto 1);
  b13(4) <= b13_4;
  b13(3) <= b13_3;
  b13(2) <= b13_2;
  b13(1) <= b13_1;
  b13(0) <= b13_31to5_0(27);

  b12_3_w20 <= b12(3);
  b12_2_w19 <= b12(2);
  b12_1_w18 <= b12(1);
  b12_0_w17 <= b12(0);

  s9 : adder32bit
    port map(
      inputBB => b135,
      inputAA => b13,
      output32bit => b17,
      overflowww => open);

  s10 : GT_ZERO28Bit
    port map(
      Output => b13_31to5_0);

  s11 : GT_ZERO28Bit
    port map(
      Output => b135_31to7_2to0);

  s6 : GT_BUF
    port map(
      Z => b13_2,
      A => b12_1_w18);

  s7 : GT_BUF
    port map(
      Z => b13_3,
      A => b12_2_w19);

  s8 : GT_BUF
    port map(
      Z => b13_4,
      A => b12_3_w20);

  s5 : GT_BUF
    port map(
      Z => b13_1,
      A => b12_0_w17);

  s12 : GT_BUF
    port map(
      Z => b135_4,
      A => b12_1_w18);

  s13 : GT_BUF
    port map(
      Z => b135_5,
      A => b12_2_w19);

  s14 : GT_BUF
    port map(
      Z => b135_6,
      A => b12_3_w20);

  s15 : GT_BUF
    port map(
      Z => b135_3,
      A => b12_0_w17);

end rtl;

