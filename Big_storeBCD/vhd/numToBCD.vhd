library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity numToBCD is
  port(bcd : out std_logic_vector(3 downto 0);
       Sig_ifNum : out std_logic;
       in_star : in std_logic;
       clk : in std_logic;
       rst : in std_logic;
       Sig_eraseNum : out std_logic;
       in_num : in std_logic_vector(9 downto 0));
end numToBCD;

architecture rtl of numToBCD is
  signal w43 : std_logic;
  signal w44 : std_logic;
  signal w47 : std_logic;
  signal w48 : std_logic;
  signal b34 : std_logic_vector(3 downto 0);
  signal w46 : std_logic;
  signal w31 : std_logic;
  signal w39 : std_logic;
  signal w51 : std_logic;
  signal w56 : std_logic;
  signal w58 : std_logic;
  signal w40 : std_logic;
  signal w45 : std_logic;
  signal w49 : std_logic;
  signal w64 : std_logic;
  signal w60 : std_logic;
  signal w37 : std_logic;
  signal w66 : std_logic;
  signal w67 : std_logic;
  signal b40 : std_logic_vector(9 downto 0);
  signal w71 : std_logic;
  signal w65 : std_logic;
  signal w72 : std_logic;
  signal w61 : std_logic;
  signal w55 : std_logic;
  signal w57 : std_logic;
  signal w73 : std_logic;
  signal b34_0 : std_logic;
  signal b34_0_w50 : std_logic;
  signal b34_1 : std_logic;
  signal b34_1_w59 : std_logic;
  signal b34_2 : std_logic;
  signal b34_2_w63 : std_logic;
  signal b34_3 : std_logic;
  signal b34_3_w62 : std_logic;
  signal b40_0_w52 : std_logic;
  signal b40_1_w53 : std_logic;
  signal b40_2_w54 : std_logic;
  signal b40_3_w68 : std_logic;
  signal b40_4_w69 : std_logic;
  signal b40_5_w36 : std_logic;
  signal b40_6_w70 : std_logic;
  signal b40_7_w38 : std_logic;
  signal b40_8_w41 : std_logic;
  signal b40_9_w42 : std_logic;

  component GT_FDR
    port(D : in std_logic;
         CP : in std_logic;
         CD : in std_logic;
         Q : out std_logic;
         QN : out std_logic);
  end component;

  component GT_NOT
    port(A : in std_logic;
         Z : out std_logic);
  end component;

  component GT_OR5
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : in std_logic;
         E : in std_logic;
         Z : out std_logic);
  end component;

  component GT_OR3
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         Z : out std_logic);
  end component;

  component GT_OR4
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : in std_logic;
         Z : out std_logic);
  end component;

  component GT_OR2
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

  component GT_OR8
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : in std_logic;
         E : in std_logic;
         F : in std_logic;
         G : in std_logic;
         H : in std_logic;
         Z : out std_logic);
  end component;

begin
  bcd <= b34;
  Sig_ifNum <= w71;
  w61 <= in_star;
  w55 <= clk;
  w72 <= rst;
  Sig_eraseNum <= w73;
  b40 <= in_num;

  b34(3) <= b34_3;
  b34(2) <= b34_2;
  b34(1) <= b34_1;
  b34(0) <= b34_0;

  b34_0_w50 <= b34(0);
  b34_1_w59 <= b34(1);
  b34_2_w63 <= b34(2);
  b34_3_w62 <= b34(3);
  b40_0_w52 <= b40(0);
  b40_1_w53 <= b40(1);
  b40_2_w54 <= b40(2);
  b40_3_w68 <= b40(3);
  b40_4_w69 <= b40(4);
  b40_5_w36 <= b40(5);
  b40_6_w70 <= b40(6);
  b40_7_w38 <= b40(7);
  b40_8_w41 <= b40(8);
  b40_9_w42 <= b40(9);

  s7 : GT_FDR
    port map(
      D => w46,
      Q => b34_0,
      CP => w55,
      CD => w57,
      QN => open);

  s9 : GT_FDR
    port map(
      D => w56,
      Q => b34_2,
      CP => w55,
      CD => w57,
      QN => open);

  s10 : GT_FDR
    port map(
      D => w58,
      Q => b34_3,
      CP => w55,
      CD => w57,
      QN => open);

  s11 : GT_NOT
    port map(
      A => w72,
      Z => w57);

  s6 : GT_OR5
    port map(
      Z => w31,
      A => b40_1_w53,
      B => b40_3_w68,
      C => b40_5_w36,
      D => b40_7_w38,
      E => b40_9_w42);

  s14 : GT_OR3
    port map(
      Z => w43,
      A => b40_0_w52,
      B => b40_1_w53,
      C => b40_4_w69);

  s15 : GT_OR3
    port map(
      Z => w44,
      A => b40_5_w36,
      B => b40_8_w41,
      C => b40_9_w42);

  s16 : GT_OR4
    port map(
      Z => w39,
      A => b40_2_w54,
      B => b40_3_w68,
      C => b40_6_w70,
      D => b40_7_w38);

  s19 : GT_OR3
    port map(
      Z => w47,
      A => b40_0_w52,
      B => b40_1_w53,
      C => b40_2_w54);

  s20 : GT_OR3
    port map(
      Z => w48,
      A => b40_3_w68,
      B => b40_8_w41,
      C => b40_9_w42);

  s21 : GT_OR4
    port map(
      Z => w40,
      A => b40_4_w69,
      B => b40_5_w36,
      C => b40_6_w70,
      D => b40_7_w38);

  s25 : GT_OR2
    port map(
      Z => w45,
      A => b40_8_w41,
      B => b40_9_w42);

  s8 : GT_FDR
    port map(
      D => w51,
      Q => b34_1,
      CP => w55,
      CD => w57,
      QN => open);

  s18 : numToBCD_sub
    port map(
      status_after => w46,
      one_ele => w31,
      status => b34_0_w50,
      zero_ele => w49);

  s22 : numToBCD_sub
    port map(
      one_ele => w39,
      status_after => w51,
      status => b34_1_w59,
      zero_ele => w64);

  s26 : numToBCD_sub
    port map(
      status_after => w56,
      one_ele => w40,
      status => b34_2_w63,
      zero_ele => w60);

  s27 : numToBCD_sub
    port map(
      status_after => w58,
      one_ele => w45,
      status => b34_3_w62,
      zero_ele => w37);

  s28 : GT_OR5
    port map(
      Z => w49,
      A => b40_0_w52,
      B => b40_2_w54,
      C => b40_4_w69,
      D => b40_6_w70,
      E => b40_8_w41);

  s29 : GT_OR2
    port map(
      A => w43,
      B => w44,
      Z => w64);

  s23 : GT_OR2
    port map(
      A => w47,
      B => w48,
      Z => w60);

  s24 : GT_OR8
    port map(
      Z => w37,
      A => b40_0_w52,
      B => b40_1_w53,
      C => b40_2_w54,
      D => b40_3_w68,
      E => b40_4_w69,
      F => b40_5_w36,
      G => b40_6_w70,
      H => b40_7_w38);

  s30 : GT_OR5
    port map(
      Z => w66,
      A => b40_0_w52,
      B => b40_1_w53,
      C => b40_2_w54,
      D => b40_3_w68,
      E => b40_4_w69);

  s31 : GT_OR5
    port map(
      Z => w67,
      A => b40_5_w36,
      B => b40_6_w70,
      C => b40_7_w38,
      D => b40_8_w41,
      E => b40_9_w42);

  s32 : GT_OR2
    port map(
      A => w66,
      B => w67,
      Z => w65);

  s33 : GT_FDR
    port map(
      Q => w71,
      D => w65,
      CP => w55,
      CD => w57,
      QN => open);

  s34 : GT_FDR
    port map(
      D => w61,
      CP => w55,
      CD => w57,
      Q => w73,
      QN => open);

end rtl;

