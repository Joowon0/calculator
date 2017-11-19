library ieee;
use ieee.std_logic_1164.all;

entity DTBTotal is
  port(BCD0 : in std_logic_vector(3 downto 0);
       BCD1 : in std_logic_vector(3 downto 0);
       BCD2 : in std_logic_vector(3 downto 0);
       BCD3 : in std_logic_vector(3 downto 0);
       BCD4 : in std_logic_vector(3 downto 0);
       BCD5 : in std_logic_vector(3 downto 0);
       BCD6 : in std_logic_vector(3 downto 0);
       binarySumOut : out std_logic_vector(31 downto 0));
end DTBTotal;

architecture rtl of DTBTotal is
  signal b0 : std_logic_vector(3 downto 0);
  signal b1 : std_logic_vector(3 downto 0);
  signal b2 : std_logic_vector(3 downto 0);
  signal b3 : std_logic_vector(3 downto 0);
  signal b4 : std_logic_vector(3 downto 0);
  signal b5 : std_logic_vector(3 downto 0);
  signal b6 : std_logic_vector(3 downto 0);
  signal b7 : std_logic_vector(31 downto 0);
  signal b8 : std_logic_vector(31 downto 0);
  signal b10 : std_logic_vector(31 downto 0);
  signal b11 : std_logic_vector(31 downto 0);
  signal b12 : std_logic_vector(31 downto 0);
  signal b13 : std_logic_vector(31 downto 0);
  signal b14 : std_logic_vector(31 downto 0);
  signal b15 : std_logic_vector(31 downto 0);
  signal b16 : std_logic_vector(31 downto 0);
  signal b17 : std_logic_vector(31 downto 0);
  signal b18 : std_logic_vector(31 downto 0);
  signal b19 : std_logic_vector(31 downto 0);
  signal b20 : std_logic_vector(31 downto 0);

  component DTB_BCD0
    port(BCD0 : in std_logic_vector(3 downto 0);
         binaryout : out std_logic_vector(31 downto 0));
  end component;

  component DTB_BCD1
    port(BCD1 : in std_logic_vector(3 downto 0);
         binaryout : out std_logic_vector(31 downto 0));
  end component;

  component DTB_BCD2
    port(BCD2 : in std_logic_vector(3 downto 0);
         binaryout : out std_logic_vector(31 downto 0));
  end component;

  component DTB_BCD3
    port(BCD3 : in std_logic_vector(3 downto 0);
         binaryout : out std_logic_vector(31 downto 0));
  end component;

  component DTB_BCD4
    port(BCD4 : in std_logic_vector(3 downto 0);
         binaryout : out std_logic_vector(31 downto 0));
  end component;

  component DTB_BCD5
    port(BCD5 : in std_logic_vector(3 downto 0);
         binaryout : out std_logic_vector(31 downto 0));
  end component;

  component DTB_BCD6
    port(BCD6 : in std_logic_vector(3 downto 0);
         binaryout : out std_logic_vector(31 downto 0));
  end component;

  component adder32bit
    port(inputAA : in std_logic_vector(31 downto 0);
         inputBB : in std_logic_vector(31 downto 0);
         output32bit : out std_logic_vector(31 downto 0);
         overflowww : out std_logic);
  end component;

begin
  b0 <= BCD0;
  b1 <= BCD1;
  b2 <= BCD2;
  b3 <= BCD3;
  b4 <= BCD4;
  b5 <= BCD5;
  b6 <= BCD6;
  binarySumOut <= b7;

  s0 : DTB_BCD0
    port map(
      BCD0 => b0,
      binaryout => b8);

  s1 : DTB_BCD1
    port map(
      BCD1 => b1,
      binaryout => b11);

  s2 : DTB_BCD2
    port map(
      BCD2 => b2,
      binaryout => b10);

  s3 : DTB_BCD3
    port map(
      BCD3 => b3,
      binaryout => b12);

  s4 : DTB_BCD4
    port map(
      BCD4 => b4,
      binaryout => b13);

  s5 : DTB_BCD5
    port map(
      BCD5 => b5,
      binaryout => b14);

  s6 : DTB_BCD6
    port map(
      BCD6 => b6,
      binaryout => b18);

  s7 : adder32bit
    port map(
      inputAA => b8,
      inputBB => b11,
      output32bit => b15,
      overflowww => open);

  s8 : adder32bit
    port map(
      inputAA => b10,
      inputBB => b12,
      output32bit => b16,
      overflowww => open);

  s9 : adder32bit
    port map(
      inputAA => b13,
      inputBB => b14,
      output32bit => b17,
      overflowww => open);

  s10 : adder32bit
    port map(
      inputAA => b15,
      inputBB => b16,
      output32bit => b19,
      overflowww => open);

  s11 : adder32bit
    port map(
      inputAA => b17,
      inputBB => b18,
      output32bit => b20,
      overflowww => open);

  s12 : adder32bit
    port map(
      output32bit => b7,
      inputAA => b19,
      inputBB => b20,
      overflowww => open);

end rtl;

