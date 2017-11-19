library ieee;
use ieee.std_logic_1164.all;

entity Big_showNum is
  port(input1_BCD0 : in std_logic_vector(3 downto 0);
       input1_BCD1 : in std_logic_vector(3 downto 0);
       input1_BCD2 : in std_logic_vector(3 downto 0);
       input1_BCD3 : in std_logic_vector(3 downto 0);
       input1_BCD4 : in std_logic_vector(3 downto 0);
       input1_BCD5 : in std_logic_vector(3 downto 0);
       input1_BCD6 : in std_logic_vector(3 downto 0);
       input1_ifneg : in std_logic;
       input2_BCD0 : in std_logic_vector(3 downto 0);
       input2_BCD1 : in std_logic_vector(3 downto 0);
       input2_BCD2 : in std_logic_vector(3 downto 0);
       input2_BCD3 : in std_logic_vector(3 downto 0);
       input2_BCD4 : in std_logic_vector(3 downto 0);
       input2_BCD5 : in std_logic_vector(3 downto 0);
       input2_BCD6 : in std_logic_vector(3 downto 0);
       input2_ifneg : in std_logic;
       Sig_showNumSelector : in std_logic;
       clk : in std_logic;
       rst : in std_logic;
       output_segPlace : out std_logic_vector(7 downto 0);
       output_segData : out std_logic_vector(6 downto 0));
end Big_showNum;

architecture rtl of Big_showNum is
  signal b0 : std_logic_vector(10 downto 0);
  signal b20 : std_logic_vector(7 downto 0);
  signal b17 : std_logic_vector(6 downto 0);
  signal b18 : std_logic_vector(3 downto 0);
  signal b19 : std_logic_vector(3 downto 0);
  signal b21 : std_logic_vector(3 downto 0);
  signal b22 : std_logic_vector(3 downto 0);
  signal b23 : std_logic_vector(3 downto 0);
  signal b24 : std_logic_vector(3 downto 0);
  signal b25 : std_logic_vector(3 downto 0);
  signal w22 : std_logic;
  signal b26 : std_logic_vector(3 downto 0);
  signal b27 : std_logic_vector(3 downto 0);
  signal b28 : std_logic_vector(3 downto 0);
  signal b29 : std_logic_vector(3 downto 0);
  signal b30 : std_logic_vector(3 downto 0);
  signal b31 : std_logic_vector(3 downto 0);
  signal b32 : std_logic_vector(3 downto 0);
  signal w30 : std_logic;
  signal w31 : std_logic;
  signal b36 : std_logic_vector(3 downto 0);
  signal b37 : std_logic_vector(3 downto 0);
  signal b39 : std_logic_vector(3 downto 0);
  signal b38 : std_logic_vector(3 downto 0);
  signal b40 : std_logic_vector(3 downto 0);
  signal w29 : std_logic;
  signal b41 : std_logic_vector(3 downto 0);
  signal b35 : std_logic_vector(3 downto 0);
  signal b33 : std_logic_vector(7 downto 0);
  signal b34 : std_logic_vector(7 downto 0);
  signal w32 : std_logic;
  signal w33 : std_logic;

  component SyncDataWithCounter
    port(BCD0 : in std_logic_vector(3 downto 0);
         BCD1 : in std_logic_vector(3 downto 0);
         BCD2 : in std_logic_vector(3 downto 0);
         BCD3 : in std_logic_vector(3 downto 0);
         BCD4 : in std_logic_vector(3 downto 0);
         BCD5 : in std_logic_vector(3 downto 0);
         BCD6 : in std_logic_vector(3 downto 0);
         negSign : in std_logic;
         counter8in : in std_logic_vector(7 downto 0);
         numDataOut : out std_logic_vector(10 downto 0));
  end component;

  component Keypad_numDataOut
    port(in_num : in std_logic_vector(10 downto 0);
         segData : out std_logic_vector(6 downto 0));
  end component;

  component SyncPlaceWithCounter
    port(BCD1 : in std_logic_vector(3 downto 0);
         BCD2 : in std_logic_vector(3 downto 0);
         BCD3 : in std_logic_vector(3 downto 0);
         BCD4 : in std_logic_vector(3 downto 0);
         BCD5 : in std_logic_vector(3 downto 0);
         BCD6 : in std_logic_vector(3 downto 0);
         counter8in : in std_logic_vector(7 downto 0);
         segPlace : out std_logic_vector(7 downto 0));
  end component;

  component MUX2forShowNum
    port(in1_BCD0 : in std_logic_vector(3 downto 0);
         in1_BCD1 : in std_logic_vector(3 downto 0);
         in1_BCD2 : in std_logic_vector(3 downto 0);
         in1_BCD3 : in std_logic_vector(3 downto 0);
         in1_BCD4 : in std_logic_vector(3 downto 0);
         in1_BCD5 : in std_logic_vector(3 downto 0);
         in1_BCD6 : in std_logic_vector(3 downto 0);
         in1_neg : in std_logic;
         in2_BCD0 : in std_logic_vector(3 downto 0);
         in2_BCD1 : in std_logic_vector(3 downto 0);
         in2_BCD2 : in std_logic_vector(3 downto 0);
         in2_BCD3 : in std_logic_vector(3 downto 0);
         in2_BCD4 : in std_logic_vector(3 downto 0);
         in2_BCD5 : in std_logic_vector(3 downto 0);
         in2_BCD6 : in std_logic_vector(3 downto 0);
         in2_neg : in std_logic;
         Sig_displaySwitch : in std_logic;
         out_BCD0 : out std_logic_vector(3 downto 0);
         out_BCD1 : out std_logic_vector(3 downto 0);
         out_BCD2 : out std_logic_vector(3 downto 0);
         out_BCD3 : out std_logic_vector(3 downto 0);
         out_BCD4 : out std_logic_vector(3 downto 0);
         out_BCD5 : out std_logic_vector(3 downto 0);
         out_BCD6 : out std_logic_vector(3 downto 0);
         out_neg : out std_logic);
  end component;

  component ShiftCounter8
    port(CLK : in std_logic;
         RST : in std_logic;
         ShiftCounter8OutPos : out std_logic_vector(7 downto 0);
         ShiftCounter8OutNeg : out std_logic_vector(7 downto 0));
  end component;

begin
  b18 <= input1_BCD0;
  b19 <= input1_BCD1;
  b21 <= input1_BCD2;
  b22 <= input1_BCD3;
  b23 <= input1_BCD4;
  b24 <= input1_BCD5;
  b25 <= input1_BCD6;
  w22 <= input1_ifneg;
  b26 <= input2_BCD0;
  b27 <= input2_BCD1;
  b28 <= input2_BCD2;
  b29 <= input2_BCD3;
  b30 <= input2_BCD4;
  b31 <= input2_BCD5;
  b32 <= input2_BCD6;
  w30 <= input2_ifneg;
  w31 <= Sig_showNumSelector;
  w33 <= clk;
  w32 <= rst;
  output_segPlace <= b20;
  output_segData <= b17;

  s1 : SyncDataWithCounter
    port map(
      numDataOut => b0,
      BCD2 => b36,
      BCD3 => b37,
      BCD0 => b39,
      BCD4 => b38,
      BCD5 => b40,
      negSign => w29,
      BCD6 => b41,
      BCD1 => b35,
      counter8in => b33);

  s2 : Keypad_numDataOut
    port map(
      in_num => b0,
      segData => b17);

  s4 : SyncPlaceWithCounter
    port map(
      segPlace => b20,
      BCD2 => b36,
      BCD3 => b37,
      BCD4 => b38,
      BCD5 => b40,
      BCD6 => b41,
      BCD1 => b35,
      counter8in => b34);

  s5 : MUX2forShowNum
    port map(
      in1_BCD0 => b18,
      in1_BCD1 => b19,
      in1_BCD2 => b21,
      in1_BCD3 => b22,
      in1_BCD4 => b23,
      in1_BCD5 => b24,
      in1_BCD6 => b25,
      in1_neg => w22,
      in2_BCD0 => b26,
      in2_BCD1 => b27,
      in2_BCD2 => b28,
      in2_BCD3 => b29,
      in2_BCD4 => b30,
      in2_BCD5 => b31,
      in2_BCD6 => b32,
      in2_neg => w30,
      Sig_displaySwitch => w31,
      out_BCD2 => b36,
      out_BCD3 => b37,
      out_BCD0 => b39,
      out_BCD4 => b38,
      out_BCD5 => b40,
      out_neg => w29,
      out_BCD6 => b41,
      out_BCD1 => b35);

  s3 : ShiftCounter8
    port map(
      ShiftCounter8OutPos => b33,
      ShiftCounter8OutNeg => b34,
      RST => w32,
      CLK => w33);

end rtl;

