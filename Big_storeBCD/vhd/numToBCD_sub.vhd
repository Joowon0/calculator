library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity numToBCD_sub is
  port(status : in std_logic;
       zero_ele : in std_logic;
       one_ele : in std_logic;
       status_after : out std_logic);
end numToBCD_sub;

architecture rtl of numToBCD_sub is
  signal w0 : std_logic;
  signal w3 : std_logic;
  signal w4 : std_logic;
  signal w5 : std_logic;
  signal w6 : std_logic;
  signal w7 : std_logic;
  signal w8 : std_logic;
  signal w9 : std_logic;

  component GT_NOT
    port(A : in std_logic;
         Z : out std_logic);
  end component;

  component GT_AND2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component GT_OR2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

begin
  w4 <= status;
  w0 <= zero_ele;
  w5 <= one_ele;
  status_after <= w9;

  s1 : GT_NOT
    port map(
      A => w0,
      Z => w8);

  s2 : GT_NOT
    port map(
      Z => w3,
      A => w5);

  s3 : GT_AND2
    port map(
      B => w3,
      A => w4,
      Z => w6);

  s4 : GT_OR2
    port map(
      B => w5,
      A => w6,
      Z => w7);

  s5 : GT_AND2
    port map(
      A => w7,
      B => w8,
      Z => w9);

end rtl;

