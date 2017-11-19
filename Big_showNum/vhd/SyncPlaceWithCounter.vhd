library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity SyncPlaceWithCounter is
  port(BCD1 : in std_logic_vector(3 downto 0);
       BCD2 : in std_logic_vector(3 downto 0);
       BCD3 : in std_logic_vector(3 downto 0);
       BCD4 : in std_logic_vector(3 downto 0);
       BCD5 : in std_logic_vector(3 downto 0);
       BCD6 : in std_logic_vector(3 downto 0);
       counter8in : in std_logic_vector(7 downto 0);
       segPlace : out std_logic_vector(7 downto 0));
end SyncPlaceWithCounter;

architecture rtl of SyncPlaceWithCounter is
  signal b0 : std_logic_vector(3 downto 0);
  signal b1 : std_logic_vector(3 downto 0);
  signal b2 : std_logic_vector(3 downto 0);
  signal b3 : std_logic_vector(3 downto 0);
  signal b4 : std_logic_vector(3 downto 0);
  signal b5 : std_logic_vector(3 downto 0);
  signal b12 : std_logic_vector(7 downto 0);
  signal w18 : std_logic;
  signal b25 : std_logic_vector(7 downto 0);
  signal w47 : std_logic;
  signal w41 : std_logic;
  signal w42 : std_logic;
  signal w43 : std_logic;
  signal w50 : std_logic;
  signal w45 : std_logic;
  signal w35 : std_logic;
  signal w46 : std_logic;
  signal w44 : std_logic;
  signal w56 : std_logic;
  signal b12_0_w33 : std_logic;
  signal b12_7_w37 : std_logic;
  signal b12_5_w31 : std_logic;
  signal b12_4_w48 : std_logic;
  signal b12_3_w49 : std_logic;
  signal b12_2_w30 : std_logic;
  signal b25_5 : std_logic;
  signal b25_4 : std_logic;
  signal b25_3 : std_logic;
  signal b25_2 : std_logic;
  signal b25_1 : std_logic;
  signal b25_7 : std_logic;
  signal b25_0 : std_logic;
  signal b25_6 : std_logic;
  signal b12_6_w40 : std_logic;
  signal b12_1_w57 : std_logic;

  component ifBCDisZ
    port(BCDin : in std_logic_vector(3 downto 0);
         isZ : out std_logic);
  end component;

  component GT_OR2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component GT_BUF
    port(A : in std_logic;
         Z : out std_logic);
  end component;

  component GT_AND2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

begin
  b5 <= BCD1;
  b4 <= BCD2;
  b3 <= BCD3;
  b2 <= BCD4;
  b1 <= BCD5;
  b0 <= BCD6;
  b12 <= counter8in;
  segPlace <= b25;

  b25(7) <= b25_7;
  b25(6) <= b25_6;
  b25(5) <= b25_5;
  b25(4) <= b25_4;
  b25(3) <= b25_3;
  b25(2) <= b25_2;
  b25(1) <= b25_1;
  b25(0) <= b25_0;

  b12_0_w33 <= b12(0);
  b12_7_w37 <= b12(7);
  b12_5_w31 <= b12(5);
  b12_4_w48 <= b12(4);
  b12_3_w49 <= b12(3);
  b12_2_w30 <= b12(2);
  b12_6_w40 <= b12(6);
  b12_1_w57 <= b12(1);

  s0 : ifBCDisZ
    port map(
      BCDin => b0,
      isZ => w56);

  s1 : ifBCDisZ
    port map(
      BCDin => b1,
      isZ => w47);

  s2 : ifBCDisZ
    port map(
      BCDin => b2,
      isZ => w42);

  s3 : ifBCDisZ
    port map(
      BCDin => b3,
      isZ => w50);

  s4 : ifBCDisZ
    port map(
      BCDin => b4,
      isZ => w35);

  s5 : ifBCDisZ
    port map(
      BCDin => b5,
      isZ => w18);

  s7 : GT_OR2
    port map(
      Z => b25_6,
      B => b12_6_w40,
      A => w56);

  s13 : GT_BUF
    port map(
      A => b12_7_w37,
      Z => b25_7);

  s14 : GT_BUF
    port map(
      A => b12_0_w33,
      Z => b25_0);

  s15 : GT_AND2
    port map(
      B => w47,
      Z => w41,
      A => w56);

  s16 : GT_OR2
    port map(
      B => b12_5_w31,
      A => w41,
      Z => b25_5);

  s17 : GT_AND2
    port map(
      A => w41,
      B => w42,
      Z => w43);

  s18 : GT_OR2
    port map(
      B => b12_4_w48,
      A => w43,
      Z => b25_4);

  s19 : GT_AND2
    port map(
      A => w43,
      B => w50,
      Z => w45);

  s20 : GT_OR2
    port map(
      B => b12_3_w49,
      A => w45,
      Z => b25_3);

  s21 : GT_AND2
    port map(
      A => w45,
      B => w35,
      Z => w44);

  s22 : GT_OR2
    port map(
      B => b12_2_w30,
      A => w44,
      Z => b25_2);

  s23 : GT_AND2
    port map(
      B => w18,
      Z => w46,
      A => w44);

  s24 : GT_OR2
    port map(
      A => w46,
      Z => b25_1,
      B => b12_1_w57);

end rtl;

