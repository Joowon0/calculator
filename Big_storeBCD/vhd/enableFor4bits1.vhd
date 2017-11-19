library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity enableFor4bits1 is
  port(fourbits : in std_logic_vector(3 downto 0);
       enable : in std_logic;
       output : out std_logic_vector(3 downto 0));
end enableFor4bits1;

architecture rtl of enableFor4bits1 is
  signal b0 : std_logic_vector(3 downto 0);
  signal w1 : std_logic;
  signal b10 : std_logic_vector(3 downto 0);
  signal b0_0_w7 : std_logic;
  signal b0_1_w8 : std_logic;
  signal b0_2_w9 : std_logic;
  signal b0_3_w6 : std_logic;
  signal b10_0 : std_logic;
  signal b10_1 : std_logic;
  signal b10_2 : std_logic;
  signal b10_3 : std_logic;

  component GT_AND2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

begin
  b0 <= fourbits;
  w1 <= enable;
  output <= b10;

  b10(3) <= b10_3;
  b10(2) <= b10_2;
  b10(1) <= b10_1;
  b10(0) <= b10_0;

  b0_0_w7 <= b0(0);
  b0_1_w8 <= b0(1);
  b0_2_w9 <= b0(2);
  b0_3_w6 <= b0(3);

  s0 : GT_AND2
    port map(
      B => w1,
      A => b0_0_w7,
      Z => b10_0);

  s1 : GT_AND2
    port map(
      B => w1,
      A => b0_1_w8,
      Z => b10_1);

  s2 : GT_AND2
    port map(
      B => w1,
      A => b0_2_w9,
      Z => b10_2);

  s3 : GT_AND2
    port map(
      B => w1,
      A => b0_3_w6,
      Z => b10_3);

end rtl;

