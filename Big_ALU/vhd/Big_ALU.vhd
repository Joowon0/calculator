library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity Big_ALU is
  port(Sig_start : in std_logic;
       Sig_write : in std_logic;
       s0 : in std_logic;
       s1 : in std_logic;
       R1 : in std_logic_vector(31 downto 0);
       R2 : in std_logic_vector(31 downto 0);
       NR2 : in std_logic_vector(31 downto 0);
       result : out std_logic_vector(31 downto 0);
       Sig_overflow : out std_logic;
       Sig_Done : out std_logic);
end Big_ALU;

architecture rtl of Big_ALU is
  signal w7 : std_logic;
  signal w5 : std_logic;
  signal w8 : std_logic;
  signal b9 : std_logic_vector(31 downto 0);
  signal b10 : std_logic_vector(31 downto 0);
  signal b11 : std_logic_vector(31 downto 0);
  signal w17 : std_logic;
  signal b17 : std_logic_vector(31 downto 0);
  signal w19 : std_logic;
  signal b21 : std_logic_vector(31 downto 0);
  signal w26 : std_logic;
  signal w28 : std_logic;
  signal w29 : std_logic;
  signal w22 : std_logic;
  signal b24 : std_logic_vector(31 downto 0);
  signal b25 : std_logic_vector(31 downto 0);
  signal b22 : std_logic_vector(31 downto 0);
  signal b23 : std_logic_vector(31 downto 0);
  signal w21 : std_logic;
  signal w23 : std_logic;
  signal w24 : std_logic;
  signal w30 : std_logic;
  signal w27 : std_logic;
  signal w31 : std_logic;
  signal w32 : std_logic;
  signal w33 : std_logic;
  signal w34 : std_logic;

  component Enable32Bit
    port(input : in std_logic_vector(31 downto 0);
         enable : in std_logic;
         output : out std_logic_vector(31 downto 0));
  end component;

  component decoder2X4
    port(in1 : in std_logic;
         in2 : in std_logic;
         out1 : out std_logic;
         out2 : out std_logic;
         out3 : out std_logic;
         out4 : out std_logic);
  end component;

  component alu_add
    port(En : in std_logic;
         start : in std_logic;
         R1 : in std_logic_vector(31 downto 0);
         R2 : in std_logic_vector(31 downto 0);
         result : out std_logic_vector(31 downto 0);
         Sig_overflow : out std_logic;
         done_cal : out std_logic);
  end component;

  component alu_sub
    port(En : in std_logic;
         start : in std_logic;
         R1 : in std_logic_vector(31 downto 0);
         NR2 : in std_logic_vector(31 downto 0);
         result : out std_logic_vector(31 downto 0);
         Sig_overflow : out std_logic;
         done_cal : out std_logic);
  end component;

  component mux4X1for32bit
    port(in1 : in std_logic_vector(31 downto 0);
         in2 : in std_logic_vector(31 downto 0);
         in3 : in std_logic_vector(31 downto 0);
         in4 : in std_logic_vector(31 downto 0);
         s0 : in std_logic;
         s1 : in std_logic;
         myOut : out std_logic_vector(31 downto 0));
  end component;

  component GT_OR4
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : in std_logic;
         Z : out std_logic);
  end component;

begin
  w17 <= Sig_start;
  w22 <= Sig_write;
  w28 <= s0;
  w29 <= s1;
  b9 <= R1;
  b10 <= R2;
  b11 <= NR2;
  result <= b17;
  Sig_overflow <= w19;
  Sig_Done <= w26;

  s4 : Enable32Bit
    port map(
      output => b17,
      input => b21,
      enable => w22);

  s5 : decoder2X4
    port map(
      out4 => w7,
      out1 => w5,
      out3 => w8,
      in1 => w28,
      in2 => w29,
      out2 => w34);

  s2 : alu_add
    port map(
      En => w5,
      R1 => b9,
      R2 => b10,
      start => w17,
      result => b24,
      Sig_overflow => w21,
      done_cal => w23);

  s3 : alu_sub
    port map(
      R1 => b9,
      NR2 => b11,
      start => w17,
      result => b25,
      Sig_overflow => w24,
      done_cal => w27,
      En => w34);

  s6 : alu_add
    port map(
      En => w8,
      R1 => b9,
      R2 => b10,
      start => w17,
      result => b22,
      Sig_overflow => w30,
      done_cal => w31);

  s7 : alu_sub
    port map(
      En => w7,
      R1 => b9,
      NR2 => b11,
      start => w17,
      result => b23,
      Sig_overflow => w32,
      done_cal => w33);

  s8 : mux4X1for32bit
    port map(
      myOut => b21,
      s0 => w28,
      s1 => w29,
      in1 => b24,
      in2 => b25,
      in3 => b22,
      in4 => b23);

  s9 : GT_OR4
    port map(
      Z => w19,
      A => w21,
      B => w24,
      C => w30,
      D => w32);

  s10 : GT_OR4
    port map(
      Z => w26,
      A => w23,
      B => w27,
      C => w31,
      D => w33);

end rtl;

