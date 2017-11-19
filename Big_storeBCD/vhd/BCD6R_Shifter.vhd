library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity BCD6R_Shifter is
  port(BCD0 : out std_logic_vector(3 downto 0);
       BCD1 : out std_logic_vector(3 downto 0);
       BCD2 : out std_logic_vector(3 downto 0);
       BCD3 : out std_logic_vector(3 downto 0);
       BCD4 : out std_logic_vector(3 downto 0);
       BCD5 : out std_logic_vector(3 downto 0);
       BCD6 : out std_logic_vector(3 downto 0);
       slSignal : in std_logic;
       srSignal : in std_logic;
       showFull : out std_logic;
       BCDin : in std_logic_vector(3 downto 0);
       CLK : in std_logic;
       RST : in std_logic);
end BCD6R_Shifter;

architecture rtl of BCD6R_Shifter is
  signal b7 : std_logic_vector(3 downto 0);
  signal b8 : std_logic_vector(3 downto 0);
  signal b12 : std_logic_vector(3 downto 0);
  signal b13 : std_logic_vector(3 downto 0);
  signal b14 : std_logic_vector(3 downto 0);
  signal b15 : std_logic_vector(3 downto 0);
  signal b16 : std_logic_vector(3 downto 0);
  signal b17 : std_logic_vector(3 downto 0);
  signal b18 : std_logic_vector(3 downto 0);
  signal b19 : std_logic_vector(3 downto 0);
  signal b20 : std_logic_vector(3 downto 0);
  signal b21 : std_logic_vector(3 downto 0);
  signal b22 : std_logic_vector(3 downto 0);
  signal b24 : std_logic_vector(3 downto 0);
  signal b25 : std_logic_vector(3 downto 0);
  signal b28 : std_logic_vector(3 downto 0);
  signal b29 : std_logic_vector(3 downto 0);
  signal b30 : std_logic_vector(3 downto 0);
  signal b32 : std_logic_vector(3 downto 0);
  signal b33 : std_logic_vector(3 downto 0);
  signal b34 : std_logic_vector(3 downto 0);
  signal b35 : std_logic_vector(3 downto 0);
  signal b36 : std_logic_vector(3 downto 0);
  signal b37 : std_logic_vector(3 downto 0);
  signal b38 : std_logic_vector(3 downto 0);
  signal b39 : std_logic_vector(3 downto 0);
  signal w37 : std_logic;
  signal w49 : std_logic;
  signal w52 : std_logic;
  signal w48 : std_logic;
  signal b26 : std_logic_vector(3 downto 0);
  signal b27 : std_logic_vector(3 downto 0);
  signal w35 : std_logic;
  signal w47 : std_logic;
  signal w53 : std_logic;
  signal w57 : std_logic;
  signal b52 : std_logic_vector(3 downto 0);
  signal b50 : std_logic_vector(3 downto 0);
  signal w54 : std_logic;
  signal w55 : std_logic;
  signal w50 : std_logic;
  signal w51 : std_logic;
  signal b39_0 : std_logic;
  signal b50_3_w46 : std_logic;
  signal b50_2_w60 : std_logic;
  signal b50_1_w61 : std_logic;
  signal b50_0_w62 : std_logic;

  component BCDregister
    port(DataOut : out std_logic_vector(3 downto 0);
         sel : in std_logic;
         DataIn : in std_logic_vector(3 downto 0);
         CLK : in std_logic;
         RST : in std_logic);
  end component;

  component OR2For4bits
    port(input0 : in std_logic_vector(3 downto 0);
         input1 : in std_logic_vector(3 downto 0);
         output : out std_logic_vector(3 downto 0));
  end component;

  component GT_NOT
    port(A : in std_logic;
         Z : out std_logic);
  end component;

  component enableFor4bits2
    port(fourbits : in std_logic_vector(3 downto 0);
         enable1 : in std_logic;
         output : out std_logic_vector(3 downto 0);
         enable2 : in std_logic);
  end component;

  component enableFor4bits1
    port(fourbits : in std_logic_vector(3 downto 0);
         enable : in std_logic;
         output : out std_logic_vector(3 downto 0));
  end component;

  component GT_ZERO
    port(Z : out std_logic);
  end component;

  component GT_OR2
    port(A : in std_logic;
         B : in std_logic;
         Z : out std_logic);
  end component;

  component GT_OR4
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : in std_logic;
         Z : out std_logic);
  end component;

  component GT_FDR
    port(D : in std_logic;
         CP : in std_logic;
         CD : in std_logic;
         Q : out std_logic;
         QN : out std_logic);
  end component;

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

  component numToBCD_sub
    port(status : in std_logic;
         zero_ele : in std_logic;
         one_ele : in std_logic;
         status_after : out std_logic);
  end component;

begin
  BCD0 <= b25;
  BCD1 <= b26;
  BCD2 <= b27;
  BCD3 <= b28;
  BCD4 <= b29;
  BCD5 <= b30;
  BCD6 <= b50;
  w53 <= slSignal;
  w55 <= srSignal;
  showFull <= w50;
  b24 <= BCDin;
  w48 <= CLK;
  w49 <= RST;

  b39(3) <= b39_0;
  b39(2) <= b39_0;
  b39(1) <= b39_0;
  b39(0) <= b39_0;

  b50_3_w46 <= b50(3);
  b50_2_w60 <= b50(2);
  b50_1_w61 <= b50(1);
  b50_0_w62 <= b50(0);

  s0 : BCDregister
    port map(
      DataOut => b25,
      DataIn => b32,
      sel => w37,
      RST => w49,
      CLK => w48);

  s1 : BCDregister
    port map(
      DataIn => b33,
      sel => w37,
      RST => w49,
      CLK => w48,
      DataOut => b26);

  s2 : BCDregister
    port map(
      DataIn => b34,
      sel => w37,
      RST => w49,
      CLK => w48,
      DataOut => b27);

  s3 : BCDregister
    port map(
      DataOut => b28,
      DataIn => b35,
      sel => w37,
      RST => w49,
      CLK => w48);

  s4 : BCDregister
    port map(
      DataOut => b29,
      DataIn => b36,
      sel => w37,
      RST => w49,
      CLK => w48);

  s5 : BCDregister
    port map(
      DataOut => b30,
      DataIn => b37,
      sel => w37,
      RST => w49,
      CLK => w48);

  s6 : BCDregister
    port map(
      DataIn => b38,
      sel => w37,
      RST => w49,
      CLK => w48,
      DataOut => b50);

  s7 : OR2For4bits
    port map(
      input1 => b7,
      input0 => b8,
      output => b32);

  s10 : GT_NOT
    port map(
      Z => w35,
      A => w53);

  s11 : enableFor4bits2
    port map(
      output => b7,
      fourbits => b26,
      enable1 => w35,
      enable2 => w55);

  s9 : enableFor4bits1
    port map(
      output => b8,
      fourbits => b24,
      enable => w47);

  s13 : enableFor4bits2
    port map(
      output => b12,
      fourbits => b27,
      enable1 => w35,
      enable2 => w55);

  s15 : OR2For4bits
    port map(
      input1 => b14,
      input0 => b15,
      output => b34);

  s17 : enableFor4bits1
    port map(
      output => b15,
      fourbits => b26,
      enable => w47);

  s18 : OR2For4bits
    port map(
      input1 => b16,
      input0 => b17,
      output => b35);

  s19 : enableFor4bits2
    port map(
      output => b16,
      fourbits => b29,
      enable1 => w35,
      enable2 => w55);

  s20 : enableFor4bits1
    port map(
      output => b17,
      fourbits => b27,
      enable => w47);

  s21 : OR2For4bits
    port map(
      input1 => b18,
      input0 => b19,
      output => b36);

  s22 : enableFor4bits2
    port map(
      output => b18,
      fourbits => b30,
      enable1 => w35,
      enable2 => w55);

  s23 : enableFor4bits1
    port map(
      output => b19,
      fourbits => b28,
      enable => w47);

  s24 : OR2For4bits
    port map(
      input1 => b20,
      input0 => b21,
      output => b37);

  s25 : enableFor4bits2
    port map(
      output => b20,
      enable1 => w35,
      fourbits => b50,
      enable2 => w55);

  s26 : enableFor4bits1
    port map(
      output => b21,
      fourbits => b29,
      enable => w47);

  s27 : OR2For4bits
    port map(
      input1 => b22,
      output => b38,
      input0 => b52);

  s28 : enableFor4bits2
    port map(
      output => b22,
      fourbits => b39,
      enable1 => w35,
      enable2 => w55);

  s29 : enableFor4bits1
    port map(
      fourbits => b30,
      enable => w47,
      output => b52);

  s14 : enableFor4bits1
    port map(
      output => b13,
      fourbits => b25,
      enable => w47);

  s12 : OR2For4bits
    port map(
      input1 => b12,
      input0 => b13,
      output => b33);

  s30 : GT_ZERO
    port map(
      Z => b39_0);

  s31 : GT_OR2
    port map(
      Z => w37,
      A => w47,
      B => w55);

  s32 : GT_OR4
    port map(
      Z => w57,
      D => b50_3_w46,
      C => b50_2_w60,
      B => b50_1_w61,
      A => b50_0_w62);

  s34 : GT_FDR
    port map(
      CD => w52,
      CP => w48,
      Q => w50,
      D => w51,
      QN => open);

  s36 : GT_NOT
    port map(
      A => w49,
      Z => w52);

  s37 : GT_AND_NOT
    port map(
      Z => w47,
      A => w53,
      B => w51);

  s33 : GT_AND2
    port map(
      B => w53,
      A => w57,
      Z => w54);

  s42 : enableFor4bits2
    port map(
      output => b14,
      fourbits => b28,
      enable1 => w35,
      enable2 => w55);

  s38 : numToBCD_sub
    port map(
      one_ele => w54,
      zero_ele => w55,
      status => w50,
      status_after => w51);

end rtl;

