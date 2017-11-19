library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity Memory16x16 is
  port(ADDR : in std_logic_vector(3 downto 0);
       DataIn : in std_logic_vector(15 downto 0);
       RW : in std_logic;
       CLK : in std_logic;
       RST : in std_logic;
       DataOut : out std_logic_vector(15 downto 0));
end Memory16x16;

architecture rtl of Memory16x16 is
  signal w10 : std_logic;
  signal w11 : std_logic;
  signal w12 : std_logic;
  signal w13 : std_logic;
  signal w14 : std_logic;
  signal w15 : std_logic;
  signal w16 : std_logic;
  signal w17 : std_logic;
  signal w18 : std_logic;
  signal w9 : std_logic;
  signal b31 : std_logic_vector(15 downto 0);
  signal w34 : std_logic;
  signal b32 : std_logic_vector(15 downto 0);
  signal w37 : std_logic;
  signal w38 : std_logic;
  signal w39 : std_logic;
  signal w40 : std_logic;
  signal w41 : std_logic;
  signal w42 : std_logic;
  signal w43 : std_logic;
  signal b55 : std_logic_vector(15 downto 0);
  signal b66 : std_logic_vector(15 downto 0);
  signal b65 : std_logic_vector(15 downto 0);
  signal b64 : std_logic_vector(15 downto 0);
  signal b63 : std_logic_vector(15 downto 0);
  signal b62 : std_logic_vector(15 downto 0);
  signal b61 : std_logic_vector(15 downto 0);
  signal b60 : std_logic_vector(15 downto 0);
  signal b59 : std_logic_vector(15 downto 0);
  signal b58 : std_logic_vector(15 downto 0);
  signal b57 : std_logic_vector(15 downto 0);
  signal b56 : std_logic_vector(15 downto 0);
  signal b67 : std_logic_vector(15 downto 0);
  signal b68 : std_logic_vector(15 downto 0);
  signal b69 : std_logic_vector(15 downto 0);
  signal b70 : std_logic_vector(15 downto 0);
  signal b72 : std_logic_vector(3 downto 0);
  signal w56 : std_logic;
  signal w55 : std_logic;
  signal b71 : std_logic_vector(15 downto 0);
  signal b31_0_w20 : std_logic;
  signal b31_1_w21 : std_logic;
  signal b31_2_w22 : std_logic;
  signal b31_3_w23 : std_logic;
  signal b31_4_w24 : std_logic;
  signal b31_5_w25 : std_logic;
  signal b31_6_w26 : std_logic;
  signal b31_7_w27 : std_logic;
  signal b31_8_w28 : std_logic;
  signal b31_9_w29 : std_logic;
  signal b31_10_w44 : std_logic;
  signal b31_11_w45 : std_logic;
  signal b31_12_w46 : std_logic;
  signal b31_13_w47 : std_logic;
  signal b31_14_w48 : std_logic;
  signal b31_15_w49 : std_logic;

  component Decoder4to16
    port(DecIn : in std_logic_vector(3 downto 0);
         DecOut : out std_logic_vector(15 downto 0));
  end component;

  component GT_AND2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component GT_NOT
    port(A : in std_logic;
         Z : out std_logic);
  end component;

  component Register16bits
    port(DataOut : out std_logic_vector(15 downto 0);
         sel : in std_logic;
         DataIn : in std_logic_vector(15 downto 0);
         CLK : in std_logic;
         RST : in std_logic);
  end component;

  component WordMUX16to1
    port(Word0 : in std_logic_vector(15 downto 0);
         Word1 : in std_logic_vector(15 downto 0);
         Word2 : in std_logic_vector(15 downto 0);
         Word3 : in std_logic_vector(15 downto 0);
         Word4 : in std_logic_vector(15 downto 0);
         Word5 : in std_logic_vector(15 downto 0);
         Word6 : in std_logic_vector(15 downto 0);
         Word7 : in std_logic_vector(15 downto 0);
         Word8 : in std_logic_vector(15 downto 0);
         Word9 : in std_logic_vector(15 downto 0);
         Word10 : in std_logic_vector(15 downto 0);
         Word11 : in std_logic_vector(15 downto 0);
         Word12 : in std_logic_vector(15 downto 0);
         Word13 : in std_logic_vector(15 downto 0);
         Word14 : in std_logic_vector(15 downto 0);
         Word15 : in std_logic_vector(15 downto 0);
         sel : in std_logic_vector(3 downto 0);
         WordOut : out std_logic_vector(15 downto 0));
  end component;

begin
  b72 <= ADDR;
  b32 <= DataIn;
  w34 <= RW;
  w56 <= CLK;
  w55 <= RST;
  DataOut <= b71;

  b31_0_w20 <= b31(0);
  b31_1_w21 <= b31(1);
  b31_2_w22 <= b31(2);
  b31_3_w23 <= b31(3);
  b31_4_w24 <= b31(4);
  b31_5_w25 <= b31(5);
  b31_6_w26 <= b31(6);
  b31_7_w27 <= b31(7);
  b31_8_w28 <= b31(8);
  b31_9_w29 <= b31(9);
  b31_10_w44 <= b31(10);
  b31_11_w45 <= b31(11);
  b31_12_w46 <= b31(12);
  b31_13_w47 <= b31(13);
  b31_14_w48 <= b31(14);
  b31_15_w49 <= b31(15);

  s10 : Decoder4to16
    port map(
      DecOut => b31,
      DecIn => b72);

  s12 : GT_AND2
    port map(
      Z => w10,
      B => b31_0_w20,
      A => w43);

  s13 : GT_AND2
    port map(
      Z => w11,
      B => b31_1_w21,
      A => w43);

  s14 : GT_AND2
    port map(
      Z => w12,
      B => b31_2_w22,
      A => w43);

  s15 : GT_AND2
    port map(
      Z => w13,
      B => b31_3_w23,
      A => w43);

  s16 : GT_AND2
    port map(
      Z => w14,
      B => b31_4_w24,
      A => w43);

  s17 : GT_AND2
    port map(
      Z => w15,
      B => b31_5_w25,
      A => w43);

  s18 : GT_AND2
    port map(
      Z => w16,
      B => b31_6_w26,
      A => w43);

  s19 : GT_AND2
    port map(
      Z => w17,
      B => b31_7_w27,
      A => w43);

  s20 : GT_AND2
    port map(
      Z => w18,
      B => b31_8_w28,
      A => w43);

  s21 : GT_AND2
    port map(
      Z => w9,
      B => b31_9_w29,
      A => w43);

  s22 : GT_NOT
    port map(
      A => w34,
      Z => w43);

  s24 : Register16bits
    port map(
      sel => w10,
      DataIn => b32,
      DataOut => b70,
      CLK => w56,
      RST => w55);

  s23 : Register16bits
    port map(
      sel => w11,
      DataIn => b32,
      DataOut => b69,
      CLK => w56,
      RST => w55);

  s25 : Register16bits
    port map(
      sel => w12,
      DataIn => b32,
      DataOut => b68,
      CLK => w56,
      RST => w55);

  s26 : Register16bits
    port map(
      sel => w13,
      DataIn => b32,
      DataOut => b67,
      CLK => w56,
      RST => w55);

  s27 : Register16bits
    port map(
      sel => w14,
      DataIn => b32,
      DataOut => b56,
      CLK => w56,
      RST => w55);

  s28 : Register16bits
    port map(
      sel => w15,
      DataIn => b32,
      DataOut => b57,
      CLK => w56,
      RST => w55);

  s29 : Register16bits
    port map(
      sel => w16,
      DataIn => b32,
      DataOut => b58,
      CLK => w56,
      RST => w55);

  s30 : Register16bits
    port map(
      sel => w17,
      DataIn => b32,
      DataOut => b59,
      CLK => w56,
      RST => w55);

  s31 : Register16bits
    port map(
      sel => w18,
      DataIn => b32,
      DataOut => b60,
      CLK => w56,
      RST => w55);

  s32 : Register16bits
    port map(
      sel => w9,
      DataIn => b32,
      DataOut => b61,
      CLK => w56,
      RST => w55);

  s33 : Register16bits
    port map(
      DataIn => b32,
      sel => w42,
      DataOut => b62,
      CLK => w56,
      RST => w55);

  s34 : Register16bits
    port map(
      DataIn => b32,
      sel => w41,
      DataOut => b63,
      CLK => w56,
      RST => w55);

  s35 : Register16bits
    port map(
      DataIn => b32,
      sel => w40,
      DataOut => b64,
      CLK => w56,
      RST => w55);

  s36 : Register16bits
    port map(
      DataIn => b32,
      sel => w39,
      DataOut => b65,
      CLK => w56,
      RST => w55);

  s37 : Register16bits
    port map(
      DataIn => b32,
      sel => w38,
      DataOut => b66,
      CLK => w56,
      RST => w55);

  s38 : Register16bits
    port map(
      DataIn => b32,
      sel => w37,
      DataOut => b55,
      CLK => w56,
      RST => w55);

  s39 : GT_AND2
    port map(
      Z => w42,
      A => w43,
      B => b31_10_w44);

  s40 : GT_AND2
    port map(
      Z => w41,
      A => w43,
      B => b31_11_w45);

  s41 : GT_AND2
    port map(
      Z => w40,
      A => w43,
      B => b31_12_w46);

  s42 : GT_AND2
    port map(
      Z => w39,
      A => w43,
      B => b31_13_w47);

  s43 : GT_AND2
    port map(
      Z => w38,
      A => w43,
      B => b31_14_w48);

  s44 : GT_AND2
    port map(
      Z => w37,
      A => w43,
      B => b31_15_w49);

  s45 : WordMUX16to1
    port map(
      Word15 => b55,
      Word14 => b66,
      Word13 => b65,
      Word12 => b64,
      Word11 => b63,
      Word10 => b62,
      Word9 => b61,
      Word8 => b60,
      Word7 => b59,
      Word6 => b58,
      Word5 => b57,
      Word4 => b56,
      Word3 => b67,
      Word2 => b68,
      Word1 => b69,
      Word0 => b70,
      sel => b72,
      WordOut => b71);

end rtl;

