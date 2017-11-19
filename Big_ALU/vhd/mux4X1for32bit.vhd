library ieee;
use ieee.std_logic_1164.all;

entity mux4X1for32bit is
  port(in1 : in std_logic_vector(31 downto 0);
       in2 : in std_logic_vector(31 downto 0);
       in3 : in std_logic_vector(31 downto 0);
       in4 : in std_logic_vector(31 downto 0);
       s0 : in std_logic;
       s1 : in std_logic;
       myOut : out std_logic_vector(31 downto 0));
end mux4X1for32bit;

architecture rtl of mux4X1for32bit is
  signal w0 : std_logic;
  signal w1 : std_logic;
  signal w2 : std_logic;
  signal w4 : std_logic;
  signal w5 : std_logic;
  signal w6 : std_logic;
  signal b6 : std_logic_vector(31 downto 0);
  signal b7 : std_logic_vector(31 downto 0);
  signal b8 : std_logic_vector(31 downto 0);
  signal b9 : std_logic_vector(31 downto 0);
  signal b10 : std_logic_vector(31 downto 0);
  signal b11 : std_logic_vector(31 downto 0);
  signal b12 : std_logic_vector(31 downto 0);
  signal b13 : std_logic_vector(31 downto 0);
  signal b14 : std_logic_vector(31 downto 0);

  component Enable32Bit
    port(input : in std_logic_vector(31 downto 0);
         enable : in std_logic;
         output : out std_logic_vector(31 downto 0));
  end component;

  component decoder2X4
    port(in1 : in std_logic;
         in2 : in std_logic;
         out1 : out std_logic;
         out2 : out std_logic;
         out3 : out std_logic;
         out4 : out std_logic);
  end component;

  component OR4For32bit
    port(in1 : in std_logic_vector(31 downto 0);
         in2 : in std_logic_vector(31 downto 0);
         in3 : in std_logic_vector(31 downto 0);
         in4 : in std_logic_vector(31 downto 0);
         myOut : out std_logic_vector(31 downto 0));
  end component;

begin
  b9 <= in1;
  b8 <= in2;
  b7 <= in3;
  b6 <= in4;
  w0 <= s0;
  w1 <= s1;
  myOut <= b14;

  s2 : Enable32Bit
    port map(
      enable => w2,
      input => b9,
      output => b13);

  s3 : Enable32Bit
    port map(
      enable => w5,
      input => b8,
      output => b12);

  s4 : Enable32Bit
    port map(
      enable => w4,
      input => b7,
      output => b11);

  s5 : Enable32Bit
    port map(
      enable => w6,
      input => b6,
      output => b10);

  s6 : decoder2X4
    port map(
      in1 => w0,
      in2 => w1,
      out1 => w2,
      out3 => w4,
      out2 => w5,
      out4 => w6);

  s7 : OR4For32bit
    port map(
      in4 => b10,
      in3 => b11,
      in2 => b12,
      in1 => b13,
      myOut => b14);

end rtl;

