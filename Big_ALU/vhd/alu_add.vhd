library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity alu_add is
  port(En : in std_logic;
       start : in std_logic;
       R1 : in std_logic_vector(31 downto 0);
       R2 : in std_logic_vector(31 downto 0);
       result : out std_logic_vector(31 downto 0);
       Sig_overflow : out std_logic;
       done_cal : out std_logic);
end alu_add;

architecture rtl of alu_add is
  signal b8 : std_logic_vector(31 downto 0);
  signal b9 : std_logic_vector(31 downto 0);
  signal b11 : std_logic_vector(31 downto 0);
  signal b12 : std_logic_vector(31 downto 0);
  signal w5 : std_logic;
  signal w6 : std_logic;
  signal w7 : std_logic;
  signal b10 : std_logic_vector(31 downto 0);
  signal w8 : std_logic;

  component adder32bit
    port(inputAA : in std_logic_vector(31 downto 0);
         inputBB : in std_logic_vector(31 downto 0);
         output32bit : out std_logic_vector(31 downto 0);
         overflowww : out std_logic);
  end component;

  component Enable32Bit
    port(input : in std_logic_vector(31 downto 0);
         enable : in std_logic;
         output : out std_logic_vector(31 downto 0));
  end component;

  component GT_AND2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

begin
  w5 <= En;
  w6 <= start;
  b8 <= R1;
  b9 <= R2;
  result <= b10;
  Sig_overflow <= w7;
  done_cal <= w8;

  s0 : adder32bit
    port map(
      inputAA => b11,
      inputBB => b12,
      overflowww => w7,
      output32bit => b10);

  s1 : Enable32Bit
    port map(
      input => b8,
      output => b11,
      enable => w8);

  s2 : Enable32Bit
    port map(
      input => b9,
      output => b12,
      enable => w8);

  s3 : GT_AND2
    port map(
      A => w5,
      B => w6,
      Z => w8);

end rtl;

