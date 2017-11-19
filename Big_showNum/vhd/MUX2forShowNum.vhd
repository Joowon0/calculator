library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity MUX2forShowNum is
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
end MUX2forShowNum;

architecture rtl of MUX2forShowNum is
  signal w0 : std_logic;
  signal w1 : std_logic;
  signal w2 : std_logic;
  signal b7 : std_logic_vector(3 downto 0);
  signal b5 : std_logic_vector(3 downto 0);
  signal b6 : std_logic_vector(3 downto 0);
  signal b19 : std_logic_vector(3 downto 0);
  signal b20 : std_logic_vector(3 downto 0);
  signal b21 : std_logic_vector(3 downto 0);
  signal b35 : std_logic_vector(3 downto 0);
  signal b36 : std_logic_vector(3 downto 0);
  signal b37 : std_logic_vector(3 downto 0);
  signal b51 : std_logic_vector(3 downto 0);
  signal b52 : std_logic_vector(3 downto 0);
  signal b53 : std_logic_vector(3 downto 0);
  signal b67 : std_logic_vector(3 downto 0);
  signal b68 : std_logic_vector(3 downto 0);
  signal b69 : std_logic_vector(3 downto 0);
  signal b83 : std_logic_vector(3 downto 0);
  signal b84 : std_logic_vector(3 downto 0);
  signal b85 : std_logic_vector(3 downto 0);
  signal b99 : std_logic_vector(3 downto 0);
  signal b100 : std_logic_vector(3 downto 0);
  signal b101 : std_logic_vector(3 downto 0);
  signal w114 : std_logic;
  signal b7_0 : std_logic;
  signal b7_1 : std_logic;
  signal b7_2 : std_logic;
  signal b7_3 : std_logic;
  signal b6_0_w10 : std_logic;
  signal b5_0_w11 : std_logic;
  signal b6_1_w12 : std_logic;
  signal b5_1_w13 : std_logic;
  signal b6_2_w14 : std_logic;
  signal b5_2_w15 : std_logic;
  signal b6_3_w16 : std_logic;
  signal b5_3_w17 : std_logic;
  signal b19_0 : std_logic;
  signal b19_1 : std_logic;
  signal b19_2 : std_logic;
  signal b19_3 : std_logic;
  signal b21_0_w26 : std_logic;
  signal b20_0_w27 : std_logic;
  signal b21_1_w28 : std_logic;
  signal b20_1_w29 : std_logic;
  signal b21_2_w30 : std_logic;
  signal b20_2_w31 : std_logic;
  signal b21_3_w32 : std_logic;
  signal b20_3_w33 : std_logic;
  signal b35_0 : std_logic;
  signal b35_1 : std_logic;
  signal b35_2 : std_logic;
  signal b35_3 : std_logic;
  signal b37_0_w42 : std_logic;
  signal b36_0_w43 : std_logic;
  signal b37_1_w44 : std_logic;
  signal b36_1_w45 : std_logic;
  signal b37_2_w46 : std_logic;
  signal b36_2_w47 : std_logic;
  signal b37_3_w48 : std_logic;
  signal b36_3_w49 : std_logic;
  signal b51_0 : std_logic;
  signal b51_1 : std_logic;
  signal b51_2 : std_logic;
  signal b51_3 : std_logic;
  signal b53_0_w58 : std_logic;
  signal b52_0_w59 : std_logic;
  signal b53_1_w60 : std_logic;
  signal b52_1_w61 : std_logic;
  signal b53_2_w62 : std_logic;
  signal b52_2_w63 : std_logic;
  signal b53_3_w64 : std_logic;
  signal b52_3_w65 : std_logic;
  signal b67_0 : std_logic;
  signal b67_1 : std_logic;
  signal b67_2 : std_logic;
  signal b67_3 : std_logic;
  signal b69_0_w74 : std_logic;
  signal b68_0_w75 : std_logic;
  signal b69_1_w76 : std_logic;
  signal b68_1_w77 : std_logic;
  signal b69_2_w78 : std_logic;
  signal b68_2_w79 : std_logic;
  signal b69_3_w80 : std_logic;
  signal b68_3_w81 : std_logic;
  signal b83_0 : std_logic;
  signal b83_1 : std_logic;
  signal b83_2 : std_logic;
  signal b83_3 : std_logic;
  signal b85_0_w90 : std_logic;
  signal b84_0_w91 : std_logic;
  signal b85_1_w92 : std_logic;
  signal b84_1_w93 : std_logic;
  signal b85_2_w94 : std_logic;
  signal b84_2_w95 : std_logic;
  signal b85_3_w96 : std_logic;
  signal b84_3_w97 : std_logic;
  signal b99_0 : std_logic;
  signal b99_1 : std_logic;
  signal b99_2 : std_logic;
  signal b99_3 : std_logic;
  signal b101_0_w106 : std_logic;
  signal b100_0_w107 : std_logic;
  signal b101_1_w108 : std_logic;
  signal b100_1_w109 : std_logic;
  signal b101_2_w110 : std_logic;
  signal b100_2_w111 : std_logic;
  signal b101_3_w112 : std_logic;
  signal b100_3_w113 : std_logic;

  component GT_MUX2
    port(A : in std_logic;
         B : in std_logic;
         S : in std_logic;
         Z : out std_logic);
  end component;

begin
  b6 <= in1_BCD0;
  b21 <= in1_BCD1;
  b37 <= in1_BCD2;
  b53 <= in1_BCD3;
  b69 <= in1_BCD4;
  b85 <= in1_BCD5;
  b101 <= in1_BCD6;
  w1 <= in1_neg;
  b5 <= in2_BCD0;
  b20 <= in2_BCD1;
  b36 <= in2_BCD2;
  b52 <= in2_BCD3;
  b68 <= in2_BCD4;
  b84 <= in2_BCD5;
  b100 <= in2_BCD6;
  w2 <= in2_neg;
  w114 <= Sig_displaySwitch;
  out_BCD0 <= b7;
  out_BCD1 <= b19;
  out_BCD2 <= b35;
  out_BCD3 <= b51;
  out_BCD4 <= b67;
  out_BCD5 <= b83;
  out_BCD6 <= b99;
  out_neg <= w0;

  b7(3) <= b7_3;
  b7(2) <= b7_2;
  b7(1) <= b7_1;
  b7(0) <= b7_0;
  b19(3) <= b19_3;
  b19(2) <= b19_2;
  b19(1) <= b19_1;
  b19(0) <= b19_0;
  b35(3) <= b35_3;
  b35(2) <= b35_2;
  b35(1) <= b35_1;
  b35(0) <= b35_0;
  b51(3) <= b51_3;
  b51(2) <= b51_2;
  b51(1) <= b51_1;
  b51(0) <= b51_0;
  b67(3) <= b67_3;
  b67(2) <= b67_2;
  b67(1) <= b67_1;
  b67(0) <= b67_0;
  b83(3) <= b83_3;
  b83(2) <= b83_2;
  b83(1) <= b83_1;
  b83(0) <= b83_0;
  b99(3) <= b99_3;
  b99(2) <= b99_2;
  b99(1) <= b99_1;
  b99(0) <= b99_0;

  b6_0_w10 <= b6(0);
  b5_0_w11 <= b5(0);
  b6_1_w12 <= b6(1);
  b5_1_w13 <= b5(1);
  b6_2_w14 <= b6(2);
  b5_2_w15 <= b5(2);
  b6_3_w16 <= b6(3);
  b5_3_w17 <= b5(3);
  b21_0_w26 <= b21(0);
  b20_0_w27 <= b20(0);
  b21_1_w28 <= b21(1);
  b20_1_w29 <= b20(1);
  b21_2_w30 <= b21(2);
  b20_2_w31 <= b20(2);
  b21_3_w32 <= b21(3);
  b20_3_w33 <= b20(3);
  b37_0_w42 <= b37(0);
  b36_0_w43 <= b36(0);
  b37_1_w44 <= b37(1);
  b36_1_w45 <= b36(1);
  b37_2_w46 <= b37(2);
  b36_2_w47 <= b36(2);
  b37_3_w48 <= b37(3);
  b36_3_w49 <= b36(3);
  b53_0_w58 <= b53(0);
  b52_0_w59 <= b52(0);
  b53_1_w60 <= b53(1);
  b52_1_w61 <= b52(1);
  b53_2_w62 <= b53(2);
  b52_2_w63 <= b52(2);
  b53_3_w64 <= b53(3);
  b52_3_w65 <= b52(3);
  b69_0_w74 <= b69(0);
  b68_0_w75 <= b68(0);
  b69_1_w76 <= b69(1);
  b68_1_w77 <= b68(1);
  b69_2_w78 <= b69(2);
  b68_2_w79 <= b68(2);
  b69_3_w80 <= b69(3);
  b68_3_w81 <= b68(3);
  b85_0_w90 <= b85(0);
  b84_0_w91 <= b84(0);
  b85_1_w92 <= b85(1);
  b84_1_w93 <= b84(1);
  b85_2_w94 <= b85(2);
  b84_2_w95 <= b84(2);
  b85_3_w96 <= b85(3);
  b84_3_w97 <= b84(3);
  b101_0_w106 <= b101(0);
  b100_0_w107 <= b100(0);
  b101_1_w108 <= b101(1);
  b100_1_w109 <= b100(1);
  b101_2_w110 <= b101(2);
  b100_2_w111 <= b100(2);
  b101_3_w112 <= b101(3);
  b100_3_w113 <= b100(3);

  s0 : GT_MUX2
    port map(
      Z => w0,
      A => w1,
      B => w2,
      S => w114);

  s1 : GT_MUX2
    port map(
      Z => b7_0,
      A => b6_0_w10,
      B => b5_0_w11,
      S => w114);

  s2 : GT_MUX2
    port map(
      Z => b7_1,
      A => b6_1_w12,
      B => b5_1_w13,
      S => w114);

  s3 : GT_MUX2
    port map(
      Z => b7_2,
      A => b6_2_w14,
      B => b5_2_w15,
      S => w114);

  s4 : GT_MUX2
    port map(
      Z => b7_3,
      A => b6_3_w16,
      B => b5_3_w17,
      S => w114);

  s5 : GT_MUX2
    port map(
      Z => b19_0,
      A => b21_0_w26,
      B => b20_0_w27,
      S => w114);

  s6 : GT_MUX2
    port map(
      Z => b19_1,
      A => b21_1_w28,
      B => b20_1_w29,
      S => w114);

  s7 : GT_MUX2
    port map(
      Z => b19_2,
      A => b21_2_w30,
      B => b20_2_w31,
      S => w114);

  s8 : GT_MUX2
    port map(
      Z => b19_3,
      A => b21_3_w32,
      B => b20_3_w33,
      S => w114);

  s9 : GT_MUX2
    port map(
      Z => b35_0,
      A => b37_0_w42,
      B => b36_0_w43,
      S => w114);

  s10 : GT_MUX2
    port map(
      Z => b35_1,
      A => b37_1_w44,
      B => b36_1_w45,
      S => w114);

  s11 : GT_MUX2
    port map(
      Z => b35_2,
      A => b37_2_w46,
      B => b36_2_w47,
      S => w114);

  s12 : GT_MUX2
    port map(
      Z => b35_3,
      A => b37_3_w48,
      B => b36_3_w49,
      S => w114);

  s13 : GT_MUX2
    port map(
      Z => b51_0,
      A => b53_0_w58,
      B => b52_0_w59,
      S => w114);

  s14 : GT_MUX2
    port map(
      Z => b51_1,
      A => b53_1_w60,
      B => b52_1_w61,
      S => w114);

  s15 : GT_MUX2
    port map(
      Z => b51_2,
      A => b53_2_w62,
      B => b52_2_w63,
      S => w114);

  s16 : GT_MUX2
    port map(
      Z => b51_3,
      A => b53_3_w64,
      B => b52_3_w65,
      S => w114);

  s17 : GT_MUX2
    port map(
      Z => b67_0,
      A => b69_0_w74,
      B => b68_0_w75,
      S => w114);

  s18 : GT_MUX2
    port map(
      Z => b67_1,
      A => b69_1_w76,
      B => b68_1_w77,
      S => w114);

  s19 : GT_MUX2
    port map(
      Z => b67_2,
      A => b69_2_w78,
      B => b68_2_w79,
      S => w114);

  s20 : GT_MUX2
    port map(
      Z => b67_3,
      A => b69_3_w80,
      B => b68_3_w81,
      S => w114);

  s21 : GT_MUX2
    port map(
      Z => b83_0,
      A => b85_0_w90,
      B => b84_0_w91,
      S => w114);

  s22 : GT_MUX2
    port map(
      Z => b83_1,
      A => b85_1_w92,
      B => b84_1_w93,
      S => w114);

  s23 : GT_MUX2
    port map(
      Z => b83_2,
      A => b85_2_w94,
      B => b84_2_w95,
      S => w114);

  s24 : GT_MUX2
    port map(
      Z => b83_3,
      A => b85_3_w96,
      B => b84_3_w97,
      S => w114);

  s25 : GT_MUX2
    port map(
      Z => b99_0,
      A => b101_0_w106,
      B => b100_0_w107,
      S => w114);

  s26 : GT_MUX2
    port map(
      Z => b99_1,
      A => b101_1_w108,
      B => b100_1_w109,
      S => w114);

  s27 : GT_MUX2
    port map(
      Z => b99_2,
      A => b101_2_w110,
      B => b100_2_w111,
      S => w114);

  s28 : GT_MUX2
    port map(
      Z => b99_3,
      A => b101_3_w112,
      B => b100_3_w113,
      S => w114);

end rtl;

