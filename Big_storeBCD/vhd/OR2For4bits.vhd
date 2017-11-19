library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity OR2For4bits is
  port(input0 : in std_logic_vector(3 downto 0);
       input1 : in std_logic_vector(3 downto 0);
       output : out std_logic_vector(3 downto 0));
end OR2For4bits;

architecture rtl of OR2For4bits is
  signal b4 : std_logic_vector(3 downto 0);
  signal b3 : std_logic_vector(3 downto 0);
  signal b15 : std_logic_vector(3 downto 0);
  signal b3_0_w3 : std_logic;
  signal b4_0_w4 : std_logic;
  signal b4_1_w7 : std_logic;
  signal b4_2_w10 : std_logic;
  signal b3_3_w12 : std_logic;
  signal b15_0 : std_logic;
  signal b15_1 : std_logic;
  signal b15_2 : std_logic;
  signal b15_3 : std_logic;
  signal b3_2_w9 : std_logic;
  signal b3_1_w6 : std_logic;
  signal b4_3_w13 : std_logic;

  component GT_OR2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

begin
  b3 <= input0;
  b4 <= input1;
  output <= b15;

  b15(3) <= b15_3;
  b15(2) <= b15_2;
  b15(1) <= b15_1;
  b15(0) <= b15_0;

  b3_0_w3 <= b3(0);
  b4_0_w4 <= b4(0);
  b4_1_w7 <= b4(1);
  b4_2_w10 <= b4(2);
  b3_3_w12 <= b3(3);
  b3_2_w9 <= b3(2);
  b3_1_w6 <= b3(1);
  b4_3_w13 <= b4(3);

  s0 : GT_OR2
    port map(
      A => b3_0_w3,
      B => b4_0_w4,
      Z => b15_0);

  s1 : GT_OR2
    port map(
      B => b4_1_w7,
      Z => b15_1,
      A => b3_1_w6);

  s2 : GT_OR2
    port map(
      B => b4_2_w10,
      Z => b15_2,
      A => b3_2_w9);

  s3 : GT_OR2
    port map(
      A => b3_3_w12,
      Z => b15_3,
      B => b4_3_w13);

end rtl;

