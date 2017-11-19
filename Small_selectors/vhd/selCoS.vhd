library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity selCoS is
  port(in1 : in std_logic_vector(31 downto 0);
       in2 : in std_logic_vector(31 downto 0);
       Sig_selCoS : in std_logic;
       dataOut : out std_logic_vector(31 downto 0));
end selCoS;

architecture rtl of selCoS is
  signal b0 : std_logic_vector(31 downto 0);
  signal b1 : std_logic_vector(31 downto 0);
  signal b2 : std_logic_vector(31 downto 0);
  signal b4 : std_logic_vector(31 downto 0);
  signal b5 : std_logic_vector(31 downto 0);
  signal w5 : std_logic;
  signal w6 : std_logic;

  component Enable32Bit
    port(input : in std_logic_vector(31 downto 0);
         enable : in std_logic;
         output : out std_logic_vector(31 downto 0));
  end component;

  component OR2For32bit
    port(in1 : in std_logic_vector(31 downto 0);
         in2 : in std_logic_vector(31 downto 0);
         myOut : out std_logic_vector(31 downto 0));
  end component;

  component GT_NOT
    port(A : in std_logic;
         Z : out std_logic);
  end component;

begin
  b4 <= in1;
  b5 <= in2;
  w6 <= Sig_selCoS;
  dataOut <= b0;

  s0 : Enable32Bit
    port map(
      output => b1,
      input => b4,
      enable => w5);

  s1 : Enable32Bit
    port map(
      output => b2,
      input => b5,
      enable => w6);

  s2 : OR2For32bit
    port map(
      myOut => b0,
      in1 => b1,
      in2 => b2);

  s3 : GT_NOT
    port map(
      Z => w5,
      A => w6);

end rtl;

