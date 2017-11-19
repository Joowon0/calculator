library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity DTB_BCD0 is
  port(BCD0 : in std_logic_vector(3 downto 0);
       binaryout : out std_logic_vector(31 downto 0));
end DTB_BCD0;

architecture rtl of DTB_BCD0 is
  signal b4 : std_logic_vector(3 downto 0);
  signal b9 : std_logic_vector(31 downto 0);
  signal b9_0 : std_logic;
  signal b4_0_w5 : std_logic;
  signal b4_1_w6 : std_logic;
  signal b4_2_w7 : std_logic;
  signal b4_3_w8 : std_logic;
  signal b9_1 : std_logic;
  signal b9_2 : std_logic;
  signal b9_3 : std_logic;
  signal b9_31to4 : std_logic_vector(27 downto 0);

  component GT_BUF
    port(A : in std_logic;
         Z : out std_logic);
  end component;

  component GT_ZERO28Bit
    port(Output : out std_logic_vector(27 downto 0));
  end component;

begin
  b4 <= BCD0;
  binaryout <= b9;

  b9(31 downto 4) <= b9_31to4(27 downto 0);
  b9(3) <= b9_3;
  b9(2) <= b9_2;
  b9(1) <= b9_1;
  b9(0) <= b9_0;

  b4_0_w5 <= b4(0);
  b4_1_w6 <= b4(1);
  b4_2_w7 <= b4(2);
  b4_3_w8 <= b4(3);

  s1 : GT_BUF
    port map(
      Z => b9_0,
      A => b4_0_w5);

  s2 : GT_BUF
    port map(
      A => b4_1_w6,
      Z => b9_1);

  s3 : GT_BUF
    port map(
      A => b4_2_w7,
      Z => b9_2);

  s4 : GT_BUF
    port map(
      A => b4_3_w8,
      Z => b9_3);

  s5 : GT_ZERO28Bit
    port map(
      Output => b9_31to4);

end rtl;

