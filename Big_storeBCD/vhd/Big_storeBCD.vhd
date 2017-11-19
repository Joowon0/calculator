library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity Big_storeBCD is
  port(row : in std_logic_vector(3 downto 0);
       col : out std_logic_vector(2 downto 0);
       BCD0 : out std_logic_vector(3 downto 0);
       BCD1 : out std_logic_vector(3 downto 0);
       BCD2 : out std_logic_vector(3 downto 0);
       BCD3 : out std_logic_vector(3 downto 0);
       BCD4 : out std_logic_vector(3 downto 0);
       BCD5 : out std_logic_vector(3 downto 0);
       BCD6 : out std_logic_vector(3 downto 0);
       Sig_ifNeg : out std_logic;
       Sig_isFull : out std_logic;
       Sig_CE : out std_logic;
       Sig_doN : in std_logic;
       clk : in std_logic;
       rst : in std_logic);
end Big_storeBCD;

architecture rtl of Big_storeBCD is
  signal b0 : std_logic_vector(3 downto 0);
  signal b8 : std_logic_vector(2 downto 0);
  signal w9 : std_logic;
  signal b10 : std_logic_vector(3 downto 0);
  signal b11 : std_logic_vector(3 downto 0);
  signal b12 : std_logic_vector(3 downto 0);
  signal b13 : std_logic_vector(3 downto 0);
  signal b14 : std_logic_vector(3 downto 0);
  signal b15 : std_logic_vector(3 downto 0);
  signal b16 : std_logic_vector(3 downto 0);
  signal w17 : std_logic;
  signal b19 : std_logic_vector(3 downto 0);
  signal w21 : std_logic;
  signal w22 : std_logic;
  signal b20 : std_logic_vector(3 downto 0);
  signal w23 : std_logic;
  signal w28 : std_logic;
  signal w29 : std_logic;
  signal w30 : std_logic;
  signal b24 : std_logic_vector(9 downto 0);
  signal w24 : std_logic;
  signal w25 : std_logic;
  signal w26 : std_logic;

  component noOverlap
    port(row : in std_logic_vector(3 downto 0);
         rowOut : out std_logic_vector(3 downto 0));
  end component;

  component numToBCD
    port(bcd : out std_logic_vector(3 downto 0);
         Sig_ifNum : out std_logic;
         in_star : in std_logic;
         clk : in std_logic;
         rst : in std_logic;
         Sig_eraseNum : out std_logic;
         in_num : in std_logic_vector(9 downto 0));
  end component;

  component ifNeg
    port(reset : in std_logic;
         clock : in std_logic;
         inputHash : in std_logic;
         showIfNeg : out std_logic);
  end component;

  component BCD6R_Shifter
    port(BCD0 : out std_logic_vector(3 downto 0);
         BCD1 : out std_logic_vector(3 downto 0);
         BCD2 : out std_logic_vector(3 downto 0);
         BCD3 : out std_logic_vector(3 downto 0);
         BCD4 : out std_logic_vector(3 downto 0);
         BCD5 : out std_logic_vector(3 downto 0);
         BCD6 : out std_logic_vector(3 downto 0);
         slSignal : in std_logic;
         srSignal : in std_logic;
         showFull : out std_logic;
         BCDin : in std_logic_vector(3 downto 0);
         CLK : in std_logic;
         RST : in std_logic);
  end component;

  component Keypad_in
    port(reset : in std_logic;
         clock : in std_logic;
         ROW : in std_logic_vector(3 downto 0);
         COL : out std_logic_vector(2 downto 0);
         output_num : out std_logic_vector(9 downto 0);
         output_star : out std_logic;
         output_hash : out std_logic);
  end component;

  component GT_AND2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component GT_AND_NOT
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

begin
  b20 <= row;
  col <= b8;
  BCD0 <= b16;
  BCD1 <= b15;
  BCD2 <= b14;
  BCD3 <= b13;
  BCD4 <= b12;
  BCD5 <= b11;
  BCD6 <= b10;
  Sig_ifNeg <= w17;
  Sig_isFull <= w9;
  Sig_CE <= w29;
  w28 <= Sig_doN;
  w25 <= clk;
  w26 <= rst;

  s0 : noOverlap
    port map(
      rowOut => b0,
      row => b20);

  s2 : numToBCD
    port map(
      bcd => b19,
      Sig_ifNum => w21,
      Sig_eraseNum => w22,
      in_star => w23,
      in_num => b24,
      clk => w25,
      rst => w26);

  s3 : ifNeg
    port map(
      showIfNeg => w17,
      inputHash => w24,
      clock => w25,
      reset => w26);

  s4 : BCD6R_Shifter
    port map(
      showFull => w9,
      BCD6 => b10,
      BCD5 => b11,
      BCD4 => b12,
      BCD3 => b13,
      BCD2 => b14,
      BCD1 => b15,
      BCD0 => b16,
      BCDin => b19,
      slSignal => w21,
      srSignal => w22,
      CLK => w25,
      RST => w26);

  s5 : Keypad_in
    port map(
      ROW => b0,
      COL => b8,
      output_star => w30,
      output_num => b24,
      output_hash => w24,
      clock => w25,
      reset => w26);

  s6 : GT_AND2
    port map(
      B => w28,
      Z => w29,
      A => w30);

  s7 : GT_AND_NOT
    port map(
      Z => w23,
      B => w28,
      A => w30);

end rtl;

