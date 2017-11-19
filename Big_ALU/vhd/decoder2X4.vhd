library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity decoder2X4 is
  port(in1 : in std_logic;
       in2 : in std_logic;
       out1 : out std_logic;
       out2 : out std_logic;
       out3 : out std_logic;
       out4 : out std_logic);
end decoder2X4;

architecture rtl of decoder2X4 is
  signal w1 : std_logic;
  signal w2 : std_logic;
  signal w3 : std_logic;
  signal w4 : std_logic;
  signal w5 : std_logic;
  signal w6 : std_logic;
  signal w7 : std_logic;

  component GT_AND_NOT
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component GT_AND2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component GT_NOT
    port(A : in std_logic;
         Z : out std_logic);
  end component;

begin
  w2 <= in1;
  w3 <= in2;
  out1 <= w4;
  out2 <= w5;
  out3 <= w6;
  out4 <= w7;

  s0 : GT_AND_NOT
    port map(
      B => w2,
      A => w3,
      Z => w5);

  s1 : GT_AND_NOT
    port map(
      A => w2,
      B => w3,
      Z => w6);

  s2 : GT_AND_NOT
    port map(
      A => w1,
      B => w3,
      Z => w4);

  s3 : GT_AND2
    port map(
      A => w2,
      B => w3,
      Z => w7);

  s4 : GT_NOT
    port map(
      Z => w1,
      A => w2);

end rtl;

