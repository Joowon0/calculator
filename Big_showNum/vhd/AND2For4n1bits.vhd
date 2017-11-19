library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity AND2For4n1bits is
  port(input4bits : in std_logic_vector(3 downto 0);
       enable : in std_logic;
       output : out std_logic_vector(3 downto 0));
end AND2For4n1bits;

architecture rtl of AND2For4n1bits is
  signal b0 : std_logic_vector(3 downto 0);
  signal w5 : std_logic;
  signal b6 : std_logic_vector(3 downto 0);
  signal b0_0_w1 : std_logic;
  signal b0_1_w2 : std_logic;
  signal b0_2_w3 : std_logic;
  signal b0_3_w4 : std_logic;
  signal b6_0 : std_logic;
  signal b6_1 : std_logic;
  signal b6_2 : std_logic;
  signal b6_3 : std_logic;

  component GT_AND2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

begin
  b0 <= input4bits;
  w5 <= enable;
  output <= b6;

  b6(3) <= b6_3;
  b6(2) <= b6_2;
  b6(1) <= b6_1;
  b6(0) <= b6_0;

  b0_0_w1 <= b0(0);
  b0_1_w2 <= b0(1);
  b0_2_w3 <= b0(2);
  b0_3_w4 <= b0(3);

  s0 : GT_AND2
    port map(
      A => b0_0_w1,
      B => w5,
      Z => b6_0);

  s1 : GT_AND2
    port map(
      A => b0_1_w2,
      B => w5,
      Z => b6_1);

  s2 : GT_AND2
    port map(
      A => b0_2_w3,
      B => w5,
      Z => b6_2);

  s3 : GT_AND2
    port map(
      A => b0_3_w4,
      B => w5,
      Z => b6_3);

end rtl;

