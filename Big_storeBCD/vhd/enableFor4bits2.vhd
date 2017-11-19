library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity enableFor4bits2 is
  port(fourbits : in std_logic_vector(3 downto 0);
       enable1 : in std_logic;
       output : out std_logic_vector(3 downto 0);
       enable2 : in std_logic);
end enableFor4bits2;

architecture rtl of enableFor4bits2 is
  signal b5 : std_logic_vector(3 downto 0);
  signal b2 : std_logic_vector(3 downto 0);
  signal w5 : std_logic;
  signal w4 : std_logic;
  signal b5_0_w7 : std_logic;
  signal b5_1_w6 : std_logic;
  signal b5_2_w8 : std_logic;
  signal b5_3_w9 : std_logic;
  signal b2_0 : std_logic;
  signal b2_1 : std_logic;
  signal b2_2 : std_logic;
  signal b2_3 : std_logic;

  component GT_AND3
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         Z : out std_logic);
  end component;

begin
  b5 <= fourbits;
  w5 <= enable1;
  output <= b2;
  w4 <= enable2;

  b2(3) <= b2_3;
  b2(2) <= b2_2;
  b2(1) <= b2_1;
  b2(0) <= b2_0;

  b5_0_w7 <= b5(0);
  b5_1_w6 <= b5(1);
  b5_2_w8 <= b5(2);
  b5_3_w9 <= b5(3);

  s0 : GT_AND3
    port map(
      A => b5_0_w7,
      B => w5,
      C => w4,
      Z => b2_0);

  s1 : GT_AND3
    port map(
      B => w5,
      C => w4,
      A => b5_1_w6,
      Z => b2_1);

  s2 : GT_AND3
    port map(
      B => w5,
      C => w4,
      A => b5_2_w8,
      Z => b2_2);

  s3 : GT_AND3
    port map(
      B => w5,
      C => w4,
      A => b5_3_w9,
      Z => b2_3);

end rtl;

