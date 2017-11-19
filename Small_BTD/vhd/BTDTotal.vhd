library ieee;
use ieee.std_logic_1164.all;

entity BTDTotal is
  port(binaryP : in std_logic_vector(31 downto 0);
       BCD0 : out std_logic_vector(3 downto 0);
       BCD1 : out std_logic_vector(3 downto 0);
       BCD2 : out std_logic_vector(3 downto 0);
       BCD3 : out std_logic_vector(3 downto 0);
       BCD4 : out std_logic_vector(3 downto 0);
       BCD5 : out std_logic_vector(3 downto 0);
       BCD6 : out std_logic_vector(3 downto 0);
       binaryN : in std_logic_vector(31 downto 0);
       if_Neg : out std_logic);
end BTDTotal;

architecture rtl of BTDTotal is
  signal b6 : std_logic_vector(31 downto 0);
  signal b7 : std_logic_vector(3 downto 0);
  signal b8 : std_logic_vector(3 downto 0);
  signal b9 : std_logic_vector(3 downto 0);
  signal b10 : std_logic_vector(3 downto 0);
  signal b11 : std_logic_vector(3 downto 0);
  signal b12 : std_logic_vector(3 downto 0);
  signal b13 : std_logic_vector(3 downto 0);
  signal b14 : std_logic_vector(31 downto 0);
  signal b15 : std_logic_vector(31 downto 0);
  signal b16 : std_logic_vector(31 downto 0);
  signal b17 : std_logic_vector(31 downto 0);
  signal b16_31_w13 : std_logic;
  signal b17_31_w14 : std_logic;

  component BTD_pos
    port(binaryIn : in std_logic_vector(31 downto 0);
         BCDout0 : out std_logic_vector(3 downto 0);
         BCDout1 : out std_logic_vector(3 downto 0);
         BCDout2 : out std_logic_vector(3 downto 0);
         BCDout3 : out std_logic_vector(3 downto 0);
         BCDout4 : out std_logic_vector(3 downto 0);
         BCDout5 : out std_logic_vector(3 downto 0);
         BCDout6 : out std_logic_vector(3 downto 0));
  end component;

  component Enable32Bit
    port(input : in std_logic_vector(31 downto 0);
         enable : in std_logic;
         output : out std_logic_vector(31 downto 0));
  end component;

  component OR2For32bit
    port(in1 : in std_logic_vector(31 downto 0);
         in2 : in std_logic_vector(31 downto 0);
         myOut : out std_logic_vector(31 downto 0));
  end component;

begin
  b17 <= binaryP;
  BCD0 <= b7;
  BCD1 <= b8;
  BCD2 <= b9;
  BCD3 <= b10;
  BCD4 <= b11;
  BCD5 <= b12;
  BCD6 <= b13;
  b16 <= binaryN;
  if_Neg <= b17(31);

  b16_31_w13 <= b16(31);
  b17_31_w14 <= b17(31);

  s0 : BTD_pos
    port map(
      binaryIn => b6,
      BCDout0 => b7,
      BCDout1 => b8,
      BCDout2 => b9,
      BCDout3 => b10,
      BCDout4 => b11,
      BCDout5 => b12,
      BCDout6 => b13);

  s1 : Enable32Bit
    port map(
      output => b14,
      enable => b16_31_w13,
      input => b17);

  s3 : OR2For32bit
    port map(
      myOut => b6,
      in1 => b14,
      in2 => b15);

  s2 : Enable32Bit
    port map(
      output => b15,
      input => b16,
      enable => b17_31_w14);

end rtl;

