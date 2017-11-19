library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity selReg is
  port(dataIn : in std_logic_vector(31 downto 0);
       Sig_selR : in std_logic;
       out1 : out std_logic_vector(31 downto 0);
       out2 : out std_logic_vector(31 downto 0));
end selReg;

architecture rtl of selReg is
  signal w1 : std_logic;
  signal w2 : std_logic;
  signal b2 : std_logic_vector(31 downto 0);
  signal b3 : std_logic_vector(31 downto 0);
  signal b4 : std_logic_vector(31 downto 0);

  component Enable32Bit
    port(input : in std_logic_vector(31 downto 0);
         enable : in std_logic;
         output : out std_logic_vector(31 downto 0));
  end component;

  component GT_NOT
    port(A : in std_logic;
         Z : out std_logic);
  end component;

begin
  b2 <= dataIn;
  w2 <= Sig_selR;
  out1 <= b3;
  out2 <= b4;

  s0 : Enable32Bit
    port map(
      enable => w1,
      input => b2,
      output => b3);

  s1 : Enable32Bit
    port map(
      enable => w2,
      input => b2,
      output => b4);

  s2 : GT_NOT
    port map(
      Z => w1,
      A => w2);

end rtl;

