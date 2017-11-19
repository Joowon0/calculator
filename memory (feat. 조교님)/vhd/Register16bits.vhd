library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity Register16bits is
  port(DataOut : out std_logic_vector(15 downto 0);
       sel : in std_logic;
       DataIn : in std_logic_vector(15 downto 0);
       CLK : in std_logic;
       RST : in std_logic);
end Register16bits;

architecture rtl of Register16bits is
  signal w19 : std_logic;
  signal w27 : std_logic;
  signal w28 : std_logic;
  signal w29 : std_logic;
  signal w17 : std_logic;
  signal w21 : std_logic;
  signal w30 : std_logic;
  signal w31 : std_logic;
  signal w36 : std_logic;
  signal w37 : std_logic;
  signal w38 : std_logic;
  signal w39 : std_logic;
  signal w44 : std_logic;
  signal w45 : std_logic;
  signal b56 : std_logic_vector(15 downto 0);
  signal b57 : std_logic_vector(15 downto 0);
  signal w78 : std_logic;
  signal w80 : std_logic;
  signal w81 : std_logic;
  signal w62 : std_logic;
  signal w63 : std_logic;
  signal w84 : std_logic;
  signal w79 : std_logic;
  signal b56_0_w48 : std_logic;
  signal b56_1_w49 : std_logic;
  signal b56_2_w50 : std_logic;
  signal b56_3_w51 : std_logic;
  signal b56_4_w52 : std_logic;
  signal b56_5_w53 : std_logic;
  signal b56_6_w54 : std_logic;
  signal b56_7_w55 : std_logic;
  signal b56_8_w56 : std_logic;
  signal b56_9_w57 : std_logic;
  signal b56_10_w58 : std_logic;
  signal b56_11_w59 : std_logic;
  signal b56_12_w60 : std_logic;
  signal b56_13_w61 : std_logic;
  signal b57_0 : std_logic;
  signal b57_0_w64 : std_logic;
  signal b57_1 : std_logic;
  signal b57_1_w65 : std_logic;
  signal b57_2 : std_logic;
  signal b57_2_w66 : std_logic;
  signal b57_3 : std_logic;
  signal b57_3_w67 : std_logic;
  signal b57_4 : std_logic;
  signal b57_4_w68 : std_logic;
  signal b57_5 : std_logic;
  signal b57_5_w69 : std_logic;
  signal b57_6 : std_logic;
  signal b57_6_w70 : std_logic;
  signal b57_7 : std_logic;
  signal b57_7_w71 : std_logic;
  signal b57_8 : std_logic;
  signal b57_8_w72 : std_logic;
  signal b57_9 : std_logic;
  signal b57_9_w73 : std_logic;
  signal b57_10 : std_logic;
  signal b57_10_w74 : std_logic;
  signal b57_11 : std_logic;
  signal b57_11_w75 : std_logic;
  signal b57_12 : std_logic;
  signal b57_12_w76 : std_logic;
  signal b57_13 : std_logic;
  signal b57_13_w77 : std_logic;
  signal b57_14 : std_logic;
  signal b57_14_w85 : std_logic;
  signal b57_15 : std_logic;
  signal b57_15_w86 : std_logic;
  signal b56_14_w82 : std_logic;
  signal b56_15_w83 : std_logic;

  component GT_FDR
    port(D : in std_logic;
         CP : in std_logic;
         CD : in std_logic;
         Q : out std_logic;
         QN : out std_logic);
  end component;

  component GT_AO22
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : in std_logic;
         Z : out std_logic);
  end component;

  component GT_NOT
    port(A : in std_logic;
         Z : out std_logic);
  end component;

begin
  DataOut <= b57;
  w79 <= sel;
  b56 <= DataIn;
  w62 <= CLK;
  w78 <= RST;

  b57(15) <= b57_15;
  b57(14) <= b57_14;
  b57(13) <= b57_13;
  b57(12) <= b57_12;
  b57(11) <= b57_11;
  b57(10) <= b57_10;
  b57(9) <= b57_9;
  b57(8) <= b57_8;
  b57(7) <= b57_7;
  b57(6) <= b57_6;
  b57(5) <= b57_5;
  b57(4) <= b57_4;
  b57(3) <= b57_3;
  b57(2) <= b57_2;
  b57(1) <= b57_1;
  b57(0) <= b57_0;

  b56_0_w48 <= b56(0);
  b56_1_w49 <= b56(1);
  b56_2_w50 <= b56(2);
  b56_3_w51 <= b56(3);
  b56_4_w52 <= b56(4);
  b56_5_w53 <= b56(5);
  b56_6_w54 <= b56(6);
  b56_7_w55 <= b56(7);
  b56_8_w56 <= b56(8);
  b56_9_w57 <= b56(9);
  b56_10_w58 <= b56(10);
  b56_11_w59 <= b56(11);
  b56_12_w60 <= b56(12);
  b56_13_w61 <= b56(13);
  b57_0_w64 <= b57(0);
  b57_1_w65 <= b57(1);
  b57_2_w66 <= b57(2);
  b57_3_w67 <= b57(3);
  b57_4_w68 <= b57(4);
  b57_5_w69 <= b57(5);
  b57_6_w70 <= b57(6);
  b57_7_w71 <= b57(7);
  b57_8_w72 <= b57(8);
  b57_9_w73 <= b57(9);
  b57_10_w74 <= b57(10);
  b57_11_w75 <= b57(11);
  b57_12_w76 <= b57(12);
  b57_13_w77 <= b57(13);
  b57_14_w85 <= b57(14);
  b57_15_w86 <= b57(15);
  b56_14_w82 <= b56(14);
  b56_15_w83 <= b56(15);

  s0 : GT_FDR
    port map(
      D => w29,
      Q => b57_0,
      CP => w62,
      CD => w63,
      QN => open);

  s1 : GT_FDR
    port map(
      D => w28,
      Q => b57_1,
      CP => w62,
      CD => w63,
      QN => open);

  s2 : GT_FDR
    port map(
      D => w27,
      Q => b57_2,
      CP => w62,
      CD => w63,
      QN => open);

  s3 : GT_FDR
    port map(
      D => w19,
      Q => b57_3,
      CP => w62,
      CD => w63,
      QN => open);

  s4 : GT_AO22
    port map(
      Z => w29,
      D => b56_0_w48,
      A => b57_0_w64,
      B => w84,
      C => w79);

  s5 : GT_NOT
    port map(
      Z => w84,
      A => w79);

  s6 : GT_AO22
    port map(
      Z => w28,
      D => b56_1_w49,
      A => b57_1_w65,
      B => w84,
      C => w79);

  s7 : GT_AO22
    port map(
      Z => w27,
      D => b56_2_w50,
      A => b57_2_w66,
      B => w84,
      C => w79);

  s8 : GT_AO22
    port map(
      Z => w19,
      D => b56_3_w51,
      A => b57_3_w67,
      B => w84,
      C => w79);

  s9 : GT_FDR
    port map(
      D => w31,
      Q => b57_4,
      CP => w62,
      CD => w63,
      QN => open);

  s10 : GT_FDR
    port map(
      D => w30,
      Q => b57_5,
      CP => w62,
      CD => w63,
      QN => open);

  s11 : GT_FDR
    port map(
      D => w21,
      Q => b57_6,
      CP => w62,
      CD => w63,
      QN => open);

  s12 : GT_FDR
    port map(
      D => w17,
      Q => b57_7,
      CP => w62,
      CD => w63,
      QN => open);

  s13 : GT_AO22
    port map(
      Z => w31,
      D => b56_4_w52,
      A => b57_4_w68,
      B => w84,
      C => w79);

  s14 : GT_AO22
    port map(
      Z => w30,
      D => b56_5_w53,
      A => b57_5_w69,
      B => w84,
      C => w79);

  s15 : GT_AO22
    port map(
      Z => w21,
      D => b56_6_w54,
      A => b57_6_w70,
      B => w84,
      C => w79);

  s16 : GT_AO22
    port map(
      Z => w17,
      D => b56_7_w55,
      A => b57_7_w71,
      B => w84,
      C => w79);

  s17 : GT_FDR
    port map(
      D => w39,
      Q => b57_8,
      CP => w62,
      CD => w63,
      QN => open);

  s18 : GT_FDR
    port map(
      D => w38,
      Q => b57_9,
      CP => w62,
      CD => w63,
      QN => open);

  s19 : GT_FDR
    port map(
      D => w37,
      Q => b57_10,
      CP => w62,
      CD => w63,
      QN => open);

  s20 : GT_FDR
    port map(
      D => w36,
      Q => b57_11,
      CP => w62,
      CD => w63,
      QN => open);

  s21 : GT_AO22
    port map(
      Z => w39,
      D => b56_8_w56,
      A => b57_8_w72,
      B => w84,
      C => w79);

  s22 : GT_AO22
    port map(
      Z => w38,
      D => b56_9_w57,
      A => b57_9_w73,
      B => w84,
      C => w79);

  s23 : GT_AO22
    port map(
      Z => w37,
      D => b56_10_w58,
      A => b57_10_w74,
      B => w84,
      C => w79);

  s24 : GT_AO22
    port map(
      Z => w36,
      D => b56_11_w59,
      A => b57_11_w75,
      B => w84,
      C => w79);

  s25 : GT_FDR
    port map(
      D => w45,
      Q => b57_12,
      CP => w62,
      CD => w63,
      QN => open);

  s26 : GT_FDR
    port map(
      D => w44,
      Q => b57_13,
      CP => w62,
      CD => w63,
      QN => open);

  s27 : GT_AO22
    port map(
      Z => w45,
      D => b56_12_w60,
      A => b57_12_w76,
      B => w84,
      C => w79);

  s28 : GT_AO22
    port map(
      Z => w44,
      D => b56_13_w61,
      A => b57_13_w77,
      B => w84,
      C => w79);

  s29 : GT_NOT
    port map(
      A => w78,
      Z => w63);

  s30 : GT_FDR
    port map(
      D => w81,
      Q => b57_14,
      CP => w62,
      CD => w63,
      QN => open);

  s31 : GT_FDR
    port map(
      D => w80,
      Q => b57_15,
      CP => w62,
      CD => w63,
      QN => open);

  s32 : GT_AO22
    port map(
      Z => w81,
      A => b57_14_w85,
      D => b56_14_w82,
      B => w84,
      C => w79);

  s33 : GT_AO22
    port map(
      Z => w80,
      A => b57_15_w86,
      D => b56_15_w83,
      B => w84,
      C => w79);

end rtl;

