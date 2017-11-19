library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity PFA is
  port(A : in std_logic;
       B : in std_logic;
       C : in std_logic;
       P : out std_logic;
       G : out std_logic;
       S : out std_logic);
end PFA;

architecture rtl of PFA is
  signal w4 : std_logic;
  signal w5 : std_logic;
  signal w6 : std_logic;
  signal w3 : std_logic;
  signal w7 : std_logic;
  signal w8 : std_logic;

  component GT_XOR2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component GT_AND2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

begin
  w6 <= A;
  w5 <= B;
  w4 <= C;
  P <= w3;
  G <= w8;
  S <= w7;

  s0 : GT_XOR2
    port map(
      A => w5,
      B => w6,
      Z => w3);

  s2 : GT_AND2
    port map(
      A => w5,
      B => w6,
      Z => w8);

  s1 : GT_XOR2
    port map(
      B => w4,
      A => w3,
      Z => w7);

end rtl;

