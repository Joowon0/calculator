library ieee;
use ieee.std_logic_1164.all;

entity Keypad_in is
  port(reset : in std_logic;
       clock : in std_logic;
       ROW : in std_logic_vector(3 downto 0);
       COL : out std_logic_vector(2 downto 0);
       output_num : out std_logic_vector(9 downto 0);
       output_star : out std_logic;
       output_hash : out std_logic);
end Keypad_in;

architecture rtl of Keypad_in is
  signal w11 : std_logic;
  signal w12 : std_logic;
  signal b9 : std_logic_vector(3 downto 0);
  signal b10 : std_logic_vector(2 downto 0);
  signal b4 : std_logic_vector(9 downto 0);
  signal w9 : std_logic;
  signal w10 : std_logic;
  signal b4_0 : std_logic;
  signal b4_1 : std_logic;
  signal b4_4 : std_logic;
  signal b4_7 : std_logic;
  signal b4_9 : std_logic;
  signal b4_6 : std_logic;
  signal b4_3 : std_logic;
  signal b4_8 : std_logic;
  signal b4_5 : std_logic;
  signal b4_2 : std_logic;

  component KeypadCounter
    port(reset : in std_logic;
         clock : in std_logic;
         COL : out std_logic_vector(2 downto 0));
  end component;

  component KeypadCU001
    port(reset : in std_logic;
         clock : in std_logic;
         COL : in std_logic_vector(2 downto 0);
         ROW : in std_logic_vector(3 downto 0);
         OUT_1 : out std_logic;
         OUT_4 : out std_logic;
         OUT_7 : out std_logic;
         OUT_Star : out std_logic);
  end component;

  component KeypadCU010
    port(reset : in std_logic;
         clock : in std_logic;
         COL : in std_logic_vector(2 downto 0);
         ROW : in std_logic_vector(3 downto 0);
         OUT_2 : out std_logic;
         OUT_5 : out std_logic;
         OUT_8 : out std_logic;
         OUT_0 : out std_logic);
  end component;

  component KeypadCU100
    port(reset : in std_logic;
         clock : in std_logic;
         COL : in std_logic_vector(2 downto 0);
         ROW : in std_logic_vector(3 downto 0);
         OUT_3 : out std_logic;
         OUT_6 : out std_logic;
         OUT_9 : out std_logic;
         OUT_Hash : out std_logic);
  end component;

begin
  w11 <= reset;
  w12 <= clock;
  b9 <= ROW;
  COL <= b10;
  output_num <= b4;
  output_star <= w9;
  output_hash <= w10;

  b4(9) <= b4_9;
  b4(8) <= b4_8;
  b4(7) <= b4_7;
  b4(6) <= b4_6;
  b4(5) <= b4_5;
  b4(4) <= b4_4;
  b4(3) <= b4_3;
  b4(2) <= b4_2;
  b4(1) <= b4_1;
  b4(0) <= b4_0;

  s1 : KeypadCounter
    port map(
      reset => w11,
      clock => w12,
      COL => b10);

  s2 : KeypadCU001
    port map(
      reset => w11,
      clock => w12,
      ROW => b9,
      COL => b10,
      OUT_1 => b4_1,
      OUT_4 => b4_4,
      OUT_7 => b4_7,
      OUT_Star => w9);

  s3 : KeypadCU010
    port map(
      reset => w11,
      clock => w12,
      ROW => b9,
      COL => b10,
      OUT_0 => b4_0,
      OUT_8 => b4_8,
      OUT_5 => b4_5,
      OUT_2 => b4_2);

  s4 : KeypadCU100
    port map(
      reset => w11,
      clock => w12,
      ROW => b9,
      COL => b10,
      OUT_Hash => w10,
      OUT_9 => b4_9,
      OUT_6 => b4_6,
      OUT_3 => b4_3);

end rtl;

