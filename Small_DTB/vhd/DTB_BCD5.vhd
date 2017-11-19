library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity DTB_BCD5 is
  port(BCD5 : in std_logic_vector(3 downto 0);
       binaryout : out std_logic_vector(31 downto 0));
end DTB_BCD5;

architecture rtl of DTB_BCD5 is
  signal b152 : std_logic_vector(31 downto 0);
  signal b154 : std_logic_vector(31 downto 0);
  signal b156 : std_logic_vector(31 downto 0);
  signal b20 : std_logic_vector(31 downto 0);
  signal b21 : std_logic_vector(31 downto 0);
  signal b22 : std_logic_vector(31 downto 0);
  signal b75 : std_logic_vector(3 downto 0);
  signal b41 : std_logic_vector(31 downto 0);
  signal b42 : std_logic_vector(31 downto 0);
  signal b44 : std_logic_vector(31 downto 0);
  signal b45 : std_logic_vector(31 downto 0);
  signal b46 : std_logic_vector(31 downto 0);
  signal b20_31to9_4to0 : std_logic_vector(27 downto 0);
  signal b152_31to11_6to0 : std_logic_vector(27 downto 0);
  signal b21_31to13_8to0 : std_logic_vector(27 downto 0);
  signal b154_31to14_9to0 : std_logic_vector(27 downto 0);
  signal b22_31to19_14to0 : std_logic_vector(27 downto 0);
  signal b156_31to20_15to0 : std_logic_vector(27 downto 0);
  signal b20_5 : std_logic;
  signal b20_6 : std_logic;
  signal b20_7 : std_logic;
  signal b20_8 : std_logic;
  signal b152_7 : std_logic;
  signal b152_8 : std_logic;
  signal b152_9 : std_logic;
  signal b152_10 : std_logic;
  signal b21_9 : std_logic;
  signal b21_10 : std_logic;
  signal b21_11 : std_logic;
  signal b21_12 : std_logic;
  signal b154_10 : std_logic;
  signal b154_11 : std_logic;
  signal b154_12 : std_logic;
  signal b154_13 : std_logic;
  signal b22_15 : std_logic;
  signal b22_16 : std_logic;
  signal b22_17 : std_logic;
  signal b22_18 : std_logic;
  signal b156_16 : std_logic;
  signal b156_17 : std_logic;
  signal b156_18 : std_logic;
  signal b156_19 : std_logic;
  signal b75_3_w53 : std_logic;
  signal b75_2_w48 : std_logic;
  signal b75_1_w45 : std_logic;
  signal b75_0_w46 : std_logic;

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
  b75 <= BCD5;
  binaryout <= b46;

  b152(31 downto 11) <= b152_31to11_6to0(27 downto 7);
  b152(10) <= b152_10;
  b152(9) <= b152_9;
  b152(8) <= b152_8;
  b152(7) <= b152_7;
  b152(6 downto 0) <= b152_31to11_6to0(27 downto 21);
  b154(31 downto 14) <= b154_31to14_9to0(27 downto 10);
  b154(13) <= b154_13;
  b154(12) <= b154_12;
  b154(11) <= b154_11;
  b154(10) <= b154_10;
  b154(9 downto 0) <= b154_31to14_9to0(27 downto 18);
  b156(31 downto 20) <= b156_31to20_15to0(27 downto 16);
  b156(19) <= b156_19;
  b156(18) <= b156_18;
  b156(17) <= b156_17;
  b156(16) <= b156_16;
  b156(15 downto 0) <= b156_31to20_15to0(27 downto 12);
  b20(31 downto 9) <= b20_31to9_4to0(27 downto 5);
  b20(8) <= b20_8;
  b20(7) <= b20_7;
  b20(6) <= b20_6;
  b20(5) <= b20_5;
  b20(4 downto 0) <= b20_31to9_4to0(27 downto 23);
  b21(31 downto 13) <= b21_31to13_8to0(27 downto 9);
  b21(12) <= b21_12;
  b21(11) <= b21_11;
  b21(10) <= b21_10;
  b21(9) <= b21_9;
  b21(8 downto 0) <= b21_31to13_8to0(27 downto 19);
  b22(31 downto 19) <= b22_31to19_14to0(27 downto 15);
  b22(18) <= b22_18;
  b22(17) <= b22_17;
  b22(16) <= b22_16;
  b22(15) <= b22_15;
  b22(14 downto 0) <= b22_31to19_14to0(27 downto 13);

  b75_3_w53 <= b75(3);
  b75_2_w48 <= b75(2);
  b75_1_w45 <= b75(1);
  b75_0_w46 <= b75(0);

  s25 : adder32bit
    port map(
      inputBB => b152,
      inputAA => b20,
      output32bit => b41,
      overflowww => open);

  s26 : adder32bit
    port map(
      inputBB => b154,
      inputAA => b21,
      output32bit => b42,
      overflowww => open);

  s27 : adder32bit
    port map(
      inputBB => b156,
      inputAA => b22,
      output32bit => b44,
      overflowww => open);

  s38 : GT_BUF
    port map(
      Z => b20_5,
      A => b75_0_w46);

  s39 : GT_BUF
    port map(
      Z => b20_6,
      A => b75_1_w45);

  s40 : GT_BUF
    port map(
      Z => b20_7,
      A => b75_2_w48);

  s41 : GT_BUF
    port map(
      Z => b20_8,
      A => b75_3_w53);

  s7 : GT_BUF
    port map(
      Z => b152_7,
      A => b75_0_w46);

  s8 : GT_BUF
    port map(
      Z => b152_8,
      A => b75_1_w45);

  s9 : GT_BUF
    port map(
      Z => b152_9,
      A => b75_2_w48);

  s10 : GT_BUF
    port map(
      Z => b152_10,
      A => b75_3_w53);

  s11 : GT_BUF
    port map(
      Z => b21_9,
      A => b75_0_w46);

  s12 : GT_BUF
    port map(
      Z => b21_10,
      A => b75_1_w45);

  s13 : GT_BUF
    port map(
      Z => b21_11,
      A => b75_2_w48);

  s14 : GT_BUF
    port map(
      Z => b21_12,
      A => b75_3_w53);

  s15 : GT_BUF
    port map(
      Z => b154_10,
      A => b75_0_w46);

  s16 : GT_BUF
    port map(
      Z => b154_11,
      A => b75_1_w45);

  s17 : GT_BUF
    port map(
      Z => b154_12,
      A => b75_2_w48);

  s18 : GT_BUF
    port map(
      Z => b154_13,
      A => b75_3_w53);

  s19 : GT_BUF
    port map(
      Z => b22_15,
      A => b75_0_w46);

  s20 : GT_BUF
    port map(
      Z => b22_16,
      A => b75_1_w45);

  s21 : GT_BUF
    port map(
      Z => b22_17,
      A => b75_2_w48);

  s22 : GT_BUF
    port map(
      Z => b22_18,
      A => b75_3_w53);

  s23 : GT_BUF
    port map(
      Z => b156_16,
      A => b75_0_w46);

  s24 : GT_BUF
    port map(
      Z => b156_17,
      A => b75_1_w45);

  s28 : GT_BUF
    port map(
      Z => b156_18,
      A => b75_2_w48);

  s29 : GT_BUF
    port map(
      Z => b156_19,
      A => b75_3_w53);

  s30 : GT_ZERO28Bit
    port map(
      Output => b20_31to9_4to0);

  s31 : GT_ZERO28Bit
    port map(
      Output => b152_31to11_6to0);

  s32 : GT_ZERO28Bit
    port map(
      Output => b21_31to13_8to0);

  s33 : GT_ZERO28Bit
    port map(
      Output => b154_31to14_9to0);

  s34 : GT_ZERO28Bit
    port map(
      Output => b22_31to19_14to0);

  s35 : GT_ZERO28Bit
    port map(
      Output => b156_31to20_15to0);

  s36 : adder32bit
    port map(
      inputAA => b41,
      inputBB => b42,
      output32bit => b45,
      overflowww => open);

  s37 : adder32bit
    port map(
      inputBB => b44,
      inputAA => b45,
      output32bit => b46,
      overflowww => open);

end rtl;

