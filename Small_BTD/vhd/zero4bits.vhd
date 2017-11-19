library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity zero4bits is
  port(out4bits : out std_logic_vector(3 downto 0));
end zero4bits;

architecture rtl of zero4bits is
  signal w0 : std_logic;
  signal b1 : std_logic_vector(3 downto 0);
  signal b1_0 : std_logic;
  signal b1_1 : std_logic;
  signal b1_2 : std_logic;
  signal b1_3 : std_logic;

  component GT_ZERO
    port(Z : out std_logic);
  end component;

  component GT_BUF
    port(A : in std_logic;
         Z : out std_logic);
  end component;

begin
  out4bits <= b1;

  b1(3) <= b1_3;
  b1(2) <= b1_2;
  b1(1) <= b1_1;
  b1(0) <= b1_0;

  s0 : GT_ZERO
    port map(
      Z => w0);

  s1 : GT_BUF
    port map(
      A => w0,
      Z => b1_0);

  s2 : GT_BUF
    port map(
      A => w0,
      Z => b1_1);

  s3 : GT_BUF
    port map(
      A => w0,
      Z => b1_2);

  s4 : GT_BUF
    port map(
      A => w0,
      Z => b1_3);

end rtl;

