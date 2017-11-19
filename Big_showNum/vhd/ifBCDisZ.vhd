library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity ifBCDisZ is
  port(BCDin : in std_logic_vector(3 downto 0);
       isZ : out std_logic);
end ifBCDisZ;

architecture rtl of ifBCDisZ is
  signal w1 : std_logic;
  signal b5 : std_logic_vector(3 downto 0);
  signal b5_3_w2 : std_logic;
  signal b5_2_w3 : std_logic;
  signal b5_1_w4 : std_logic;
  signal b5_0_w5 : std_logic;

  component GT_NOR4
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : in std_logic;
         Z : out std_logic);
  end component;

begin
  b5 <= BCDin;
  isZ <= w1;

  b5_3_w2 <= b5(3);
  b5_2_w3 <= b5(2);
  b5_1_w4 <= b5(1);
  b5_0_w5 <= b5(0);

  s0 : GT_NOR4
    port map(
      Z => w1,
      D => b5_3_w2,
      C => b5_2_w3,
      B => b5_1_w4,
      A => b5_0_w5);

end rtl;

