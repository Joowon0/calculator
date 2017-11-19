library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity SyncDataWithCounter is
  port(BCD0 : in std_logic_vector(3 downto 0);
       BCD1 : in std_logic_vector(3 downto 0);
       BCD2 : in std_logic_vector(3 downto 0);
       BCD3 : in std_logic_vector(3 downto 0);
       BCD4 : in std_logic_vector(3 downto 0);
       BCD5 : in std_logic_vector(3 downto 0);
       BCD6 : in std_logic_vector(3 downto 0);
       negSign : in std_logic;
       counter8in : in std_logic_vector(7 downto 0);
       numDataOut : out std_logic_vector(10 downto 0));
end SyncDataWithCounter;

architecture rtl of SyncDataWithCounter is
  signal b0 : std_logic_vector(7 downto 0);
  signal b1 : std_logic_vector(3 downto 0);
  signal b2 : std_logic_vector(3 downto 0);
  signal b4 : std_logic_vector(3 downto 0);
  signal b5 : std_logic_vector(3 downto 0);
  signal b6 : std_logic_vector(3 downto 0);
  signal b7 : std_logic_vector(3 downto 0);
  signal b8 : std_logic_vector(3 downto 0);
  signal b9 : std_logic_vector(3 downto 0);
  signal w11 : std_logic;
  signal b12 : std_logic_vector(3 downto 0);
  signal b13 : std_logic_vector(3 downto 0);
  signal b14 : std_logic_vector(3 downto 0);
  signal b15 : std_logic_vector(3 downto 0);
  signal b16 : std_logic_vector(3 downto 0);
  signal b17 : std_logic_vector(3 downto 0);
  signal b18 : std_logic_vector(3 downto 0);
  signal b30 : std_logic_vector(10 downto 0);
  signal w28 : std_logic;
  signal b0_0_w19 : std_logic;
  signal b0_1_w20 : std_logic;
  signal b0_6_w22 : std_logic;
  signal b0_5_w23 : std_logic;
  signal b0_4_w24 : std_logic;
  signal b0_3_w25 : std_logic;
  signal b0_2_w26 : std_logic;
  signal b0_7_w30 : std_logic;
  signal b30_0 : std_logic;
  signal b30_10 : std_logic;
  signal b30_9to1 : std_logic_vector(8 downto 0);

  component AND2For4n1bits
    port(input4bits : in std_logic_vector(3 downto 0);
         enable : in std_logic;
         output : out std_logic_vector(3 downto 0));
  end component;

  component GT_AND2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component OR7For4Bits
    port(input0 : in std_logic_vector(3 downto 0);
         input1 : in std_logic_vector(3 downto 0);
         input2 : in std_logic_vector(3 downto 0);
         input3 : in std_logic_vector(3 downto 0);
         input4 : in std_logic_vector(3 downto 0);
         input5 : in std_logic_vector(3 downto 0);
         input6 : in std_logic_vector(3 downto 0);
         output : out std_logic_vector(3 downto 0));
  end component;

  component GT_AND_NOT
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component BCDtoNum
    port(BCD : in std_logic_vector(3 downto 0);
         numOut0 : out std_logic;
         numOut : out std_logic_vector(9 downto 1));
  end component;

begin
  b18 <= BCD0;
  b17 <= BCD1;
  b16 <= BCD2;
  b15 <= BCD3;
  b14 <= BCD4;
  b13 <= BCD5;
  b12 <= BCD6;
  w11 <= negSign;
  b0 <= counter8in;
  numDataOut <= b30;

  b30(10) <= b30_10;
  b30(9 downto 1) <= b30_9to1(8 downto 0);
  b30(0) <= b30_0;

  b0_0_w19 <= b0(0);
  b0_1_w20 <= b0(1);
  b0_6_w22 <= b0(6);
  b0_5_w23 <= b0(5);
  b0_4_w24 <= b0(4);
  b0_3_w25 <= b0(3);
  b0_2_w26 <= b0(2);
  b0_7_w30 <= b0(7);

  s7 : AND2For4n1bits
    port map(
      output => b1,
      input4bits => b18,
      enable => b0_0_w19);

  s8 : AND2For4n1bits
    port map(
      output => b8,
      input4bits => b17,
      enable => b0_1_w20);

  s9 : AND2For4n1bits
    port map(
      output => b7,
      input4bits => b16,
      enable => b0_2_w26);

  s10 : AND2For4n1bits
    port map(
      output => b6,
      input4bits => b15,
      enable => b0_3_w25);

  s11 : AND2For4n1bits
    port map(
      output => b4,
      input4bits => b14,
      enable => b0_4_w24);

  s12 : AND2For4n1bits
    port map(
      output => b5,
      input4bits => b13,
      enable => b0_5_w23);

  s13 : AND2For4n1bits
    port map(
      output => b2,
      input4bits => b12,
      enable => b0_6_w22);

  s14 : GT_AND2
    port map(
      A => w11,
      B => b0_7_w30,
      Z => b30_10);

  s15 : OR7For4Bits
    port map(
      input0 => b1,
      input6 => b2,
      input4 => b4,
      input5 => b5,
      input3 => b6,
      input2 => b7,
      input1 => b8,
      output => b9);

  s16 : GT_AND_NOT
    port map(
      B => b0_7_w30,
      Z => b30_0,
      A => w28);

  s17 : BCDtoNum
    port map(
      BCD => b9,
      numOut0 => w28,
      numOut => b30_9to1);

end rtl;

