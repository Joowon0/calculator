library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity DTB_BCD3 is
  port(BCD3 : in std_logic_vector(3 downto 0);
       binaryout : out std_logic_vector(31 downto 0));
end DTB_BCD3;

architecture rtl of DTB_BCD3 is
  signal b101 : std_logic_vector(31 downto 0);
  signal b99 : std_logic_vector(31 downto 0);
  signal b139 : std_logic_vector(31 downto 0);
  signal b140 : std_logic_vector(31 downto 0);
  signal b141 : std_logic_vector(31 downto 0);
  signal b142 : std_logic_vector(31 downto 0);
  signal b143 : std_logic_vector(31 downto 0);
  signal b144 : std_logic_vector(31 downto 0);
  signal b19 : std_logic_vector(31 downto 0);
  signal b20 : std_logic_vector(31 downto 0);
  signal b21 : std_logic_vector(31 downto 0);
  signal b22 : std_logic_vector(3 downto 0);
  signal b139_3 : std_logic;
  signal b22_3_w37 : std_logic;
  signal b22_2_w34 : std_logic;
  signal b22_1_w29 : std_logic;
  signal b22_0_w23 : std_logic;
  signal b139_4 : std_logic;
  signal b139_5 : std_logic;
  signal b139_6 : std_logic;
  signal b140_5 : std_logic;
  signal b140_6 : std_logic;
  signal b140_7 : std_logic;
  signal b140_8 : std_logic;
  signal b141_6 : std_logic;
  signal b141_7 : std_logic;
  signal b141_8 : std_logic;
  signal b141_9 : std_logic;
  signal b142_7 : std_logic;
  signal b142_8 : std_logic;
  signal b142_9 : std_logic;
  signal b142_10 : std_logic;
  signal b143_8 : std_logic;
  signal b143_9 : std_logic;
  signal b143_10 : std_logic;
  signal b143_11 : std_logic;
  signal b144_9 : std_logic;
  signal b144_10 : std_logic;
  signal b144_11 : std_logic;
  signal b144_12 : std_logic;
  signal b139_31to7_2to0 : std_logic_vector(27 downto 0);
  signal b140_31to9_4to0 : std_logic_vector(27 downto 0);
  signal b141_31to10_5to0 : std_logic_vector(27 downto 0);
  signal b142_31to11_6to0 : std_logic_vector(27 downto 0);
  signal b143_31to12_7to0 : std_logic_vector(27 downto 0);
  signal b144_31to13_8to0 : std_logic_vector(27 downto 0);

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

begin
  b22 <= BCD3;
  binaryout <= b21;

  b139(31 downto 7) <= b139_31to7_2to0(27 downto 3);
  b139(6) <= b139_6;
  b139(5) <= b139_5;
  b139(4) <= b139_4;
  b139(3) <= b139_3;
  b139(2 downto 0) <= b139_31to7_2to0(27 downto 25);
  b140(31 downto 9) <= b140_31to9_4to0(27 downto 5);
  b140(8) <= b140_8;
  b140(7) <= b140_7;
  b140(6) <= b140_6;
  b140(5) <= b140_5;
  b140(4 downto 0) <= b140_31to9_4to0(27 downto 23);
  b141(31 downto 10) <= b141_31to10_5to0(27 downto 6);
  b141(9) <= b141_9;
  b141(8) <= b141_8;
  b141(7) <= b141_7;
  b141(6) <= b141_6;
  b141(5 downto 0) <= b141_31to10_5to0(27 downto 22);
  b142(31 downto 11) <= b142_31to11_6to0(27 downto 7);
  b142(10) <= b142_10;
  b142(9) <= b142_9;
  b142(8) <= b142_8;
  b142(7) <= b142_7;
  b142(6 downto 0) <= b142_31to11_6to0(27 downto 21);
  b143(31 downto 12) <= b143_31to12_7to0(27 downto 8);
  b143(11) <= b143_11;
  b143(10) <= b143_10;
  b143(9) <= b143_9;
  b143(8) <= b143_8;
  b143(7 downto 0) <= b143_31to12_7to0(27 downto 20);
  b144(31 downto 13) <= b144_31to13_8to0(27 downto 9);
  b144(12) <= b144_12;
  b144(11) <= b144_11;
  b144(10) <= b144_10;
  b144(9) <= b144_9;
  b144(8 downto 0) <= b144_31to13_8to0(27 downto 19);

  b22_3_w37 <= b22(3);
  b22_2_w34 <= b22(2);
  b22_1_w29 <= b22(1);
  b22_0_w23 <= b22(0);

  s16 : adder32bit
    port map(
      output32bit => b99,
      inputAA => b141,
      inputBB => b142,
      overflowww => open);

  s17 : adder32bit
    port map(
      output32bit => b101,
      inputAA => b143,
      inputBB => b144,
      overflowww => open);

  s48 : adder32bit
    port map(
      inputBB => b101,
      inputAA => b99,
      output32bit => b19,
      overflowww => open);

  s18 : GT_BUF
    port map(
      Z => b139_3,
      A => b22_0_w23);

  s19 : GT_BUF
    port map(
      A => b22_1_w29,
      Z => b139_4);

  s20 : GT_BUF
    port map(
      A => b22_2_w34,
      Z => b139_5);

  s21 : GT_BUF
    port map(
      A => b22_3_w37,
      Z => b139_6);

  s7 : adder32bit
    port map(
      inputAA => b139,
      inputBB => b140,
      output32bit => b20,
      overflowww => open);

  s8 : adder32bit
    port map(
      inputBB => b19,
      inputAA => b20,
      output32bit => b21,
      overflowww => open);

  s9 : GT_ZERO28Bit
    port map(
      Output => b139_31to7_2to0);

  s10 : GT_ZERO28Bit
    port map(
      Output => b140_31to9_4to0);

  s11 : GT_ZERO28Bit
    port map(
      Output => b141_31to10_5to0);

  s12 : GT_ZERO28Bit
    port map(
      Output => b142_31to11_6to0);

  s13 : GT_ZERO28Bit
    port map(
      Output => b143_31to12_7to0);

  s14 : GT_ZERO28Bit
    port map(
      Output => b144_31to13_8to0);

  s15 : GT_BUF
    port map(
      A => b22_0_w23,
      Z => b140_5);

  s22 : GT_BUF
    port map(
      A => b22_1_w29,
      Z => b140_6);

  s23 : GT_BUF
    port map(
      A => b22_2_w34,
      Z => b140_7);

  s24 : GT_BUF
    port map(
      A => b22_3_w37,
      Z => b140_8);

  s25 : GT_BUF
    port map(
      A => b22_0_w23,
      Z => b141_6);

  s26 : GT_BUF
    port map(
      A => b22_1_w29,
      Z => b141_7);

  s27 : GT_BUF
    port map(
      A => b22_2_w34,
      Z => b141_8);

  s28 : GT_BUF
    port map(
      A => b22_3_w37,
      Z => b141_9);

  s29 : GT_BUF
    port map(
      A => b22_0_w23,
      Z => b142_7);

  s30 : GT_BUF
    port map(
      A => b22_1_w29,
      Z => b142_8);

  s31 : GT_BUF
    port map(
      A => b22_2_w34,
      Z => b142_9);

  s32 : GT_BUF
    port map(
      A => b22_3_w37,
      Z => b142_10);

  s33 : GT_BUF
    port map(
      A => b22_0_w23,
      Z => b143_8);

  s34 : GT_BUF
    port map(
      A => b22_1_w29,
      Z => b143_9);

  s35 : GT_BUF
    port map(
      A => b22_2_w34,
      Z => b143_10);

  s36 : GT_BUF
    port map(
      A => b22_3_w37,
      Z => b143_11);

  s37 : GT_BUF
    port map(
      A => b22_0_w23,
      Z => b144_9);

  s38 : GT_BUF
    port map(
      A => b22_1_w29,
      Z => b144_10);

  s39 : GT_BUF
    port map(
      A => b22_2_w34,
      Z => b144_11);

  s40 : GT_BUF
    port map(
      A => b22_3_w37,
      Z => b144_12);

end rtl;

