library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity adder32bit is
  port(inputAA : in std_logic_vector(31 downto 0);
       inputBB : in std_logic_vector(31 downto 0);
       output32bit : out std_logic_vector(31 downto 0);
       overflowww : out std_logic);
end adder32bit;

architecture rtl of adder32bit is
  signal b7 : std_logic_vector(31 downto 0);
  signal b16 : std_logic_vector(31 downto 0);
  signal b25 : std_logic_vector(31 downto 0);
  signal w35 : std_logic;
  signal w38 : std_logic;
  signal w39 : std_logic;
  signal w40 : std_logic;
  signal w41 : std_logic;
  signal w42 : std_logic;
  signal w43 : std_logic;
  signal w44 : std_logic;
  signal w36 : std_logic;
  signal w37 : std_logic;
  signal b7_3to0_b8 : std_logic_vector(3 downto 0);
  signal b7_7to4_b9 : std_logic_vector(3 downto 0);
  signal b7_11to8_b10 : std_logic_vector(3 downto 0);
  signal b7_15to12_b11 : std_logic_vector(3 downto 0);
  signal b7_19to16_b12 : std_logic_vector(3 downto 0);
  signal b7_23to20_b13 : std_logic_vector(3 downto 0);
  signal b7_27to24_b14 : std_logic_vector(3 downto 0);
  signal b7_31to28_b15 : std_logic_vector(3 downto 0);
  signal b16_3to0_b17 : std_logic_vector(3 downto 0);
  signal b16_7to4_b18 : std_logic_vector(3 downto 0);
  signal b16_11to8_b19 : std_logic_vector(3 downto 0);
  signal b16_15to12_b20 : std_logic_vector(3 downto 0);
  signal b16_19to16_b21 : std_logic_vector(3 downto 0);
  signal b16_23to20_b22 : std_logic_vector(3 downto 0);
  signal b16_27to24_b23 : std_logic_vector(3 downto 0);
  signal b16_31to28_b24 : std_logic_vector(3 downto 0);
  signal b25_3to0 : std_logic_vector(3 downto 0);
  signal b25_7to4 : std_logic_vector(3 downto 0);
  signal b25_11to8 : std_logic_vector(3 downto 0);
  signal b25_15to12 : std_logic_vector(3 downto 0);
  signal b25_19to16 : std_logic_vector(3 downto 0);
  signal b25_23to20 : std_logic_vector(3 downto 0);
  signal b25_27to24 : std_logic_vector(3 downto 0);
  signal b25_31to28 : std_logic_vector(3 downto 0);

  component CarryLookAHead
    port(C0 : in std_logic;
         A : in std_logic_vector(3 downto 0);
         B : in std_logic_vector(3 downto 0);
         Cout : out std_logic;
         S : out std_logic_vector(3 downto 0));
  end component;

  component GT_ZERO
    port(Z : out std_logic);
  end component;

  component GT_XOR2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

begin
  b7 <= inputAA;
  b16 <= inputBB;
  output32bit <= b25;
  overflowww <= w44;

  b25(31 downto 28) <= b25_31to28(3 downto 0);
  b25(27 downto 24) <= b25_27to24(3 downto 0);
  b25(23 downto 20) <= b25_23to20(3 downto 0);
  b25(19 downto 16) <= b25_19to16(3 downto 0);
  b25(15 downto 12) <= b25_15to12(3 downto 0);
  b25(11 downto 8) <= b25_11to8(3 downto 0);
  b25(7 downto 4) <= b25_7to4(3 downto 0);
  b25(3 downto 0) <= b25_3to0(3 downto 0);

  b7_3to0_b8(3 downto 0) <= b7(3 downto 0);
  b7_7to4_b9(3 downto 0) <= b7(7 downto 4);
  b7_11to8_b10(3 downto 0) <= b7(11 downto 8);
  b7_15to12_b11(3 downto 0) <= b7(15 downto 12);
  b7_19to16_b12(3 downto 0) <= b7(19 downto 16);
  b7_23to20_b13(3 downto 0) <= b7(23 downto 20);
  b7_27to24_b14(3 downto 0) <= b7(27 downto 24);
  b7_31to28_b15(3 downto 0) <= b7(31 downto 28);
  b16_3to0_b17(3 downto 0) <= b16(3 downto 0);
  b16_7to4_b18(3 downto 0) <= b16(7 downto 4);
  b16_11to8_b19(3 downto 0) <= b16(11 downto 8);
  b16_15to12_b20(3 downto 0) <= b16(15 downto 12);
  b16_19to16_b21(3 downto 0) <= b16(19 downto 16);
  b16_23to20_b22(3 downto 0) <= b16(23 downto 20);
  b16_27to24_b23(3 downto 0) <= b16(27 downto 24);
  b16_31to28_b24(3 downto 0) <= b16(31 downto 28);

  s0 : CarryLookAHead
    port map(
      A => b7_3to0_b8,
      B => b16_3to0_b17,
      C0 => w35,
      S => b25_3to0,
      Cout => w43);

  s1 : CarryLookAHead
    port map(
      A => b7_7to4_b9,
      B => b16_7to4_b18,
      S => b25_7to4,
      Cout => w42,
      C0 => w43);

  s2 : CarryLookAHead
    port map(
      A => b7_11to8_b10,
      B => b16_11to8_b19,
      S => b25_11to8,
      Cout => w41,
      C0 => w42);

  s3 : CarryLookAHead
    port map(
      A => b7_15to12_b11,
      B => b16_15to12_b20,
      S => b25_15to12,
      Cout => w40,
      C0 => w41);

  s4 : CarryLookAHead
    port map(
      A => b7_19to16_b12,
      B => b16_19to16_b21,
      S => b25_19to16,
      Cout => w39,
      C0 => w40);

  s5 : CarryLookAHead
    port map(
      A => b7_23to20_b13,
      B => b16_23to20_b22,
      S => b25_23to20,
      Cout => w38,
      C0 => w39);

  s6 : CarryLookAHead
    port map(
      A => b7_27to24_b14,
      B => b16_27to24_b23,
      S => b25_27to24,
      C0 => w38,
      Cout => w37);

  s7 : CarryLookAHead
    port map(
      A => b7_31to28_b15,
      B => b16_31to28_b24,
      S => b25_31to28,
      Cout => w36,
      C0 => w37);

  s8 : GT_ZERO
    port map(
      Z => w35);

  s9 : GT_XOR2
    port map(
      Z => w44,
      B => w36,
      A => w37);

end rtl;

