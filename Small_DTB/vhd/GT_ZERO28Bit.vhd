library ieee;
use ieee.std_logic_1164.all;

library gtlib;

entity GT_ZERO28Bit is
  port(Output : out std_logic_vector(27 downto 0));
end GT_ZERO28Bit;

architecture rtl of GT_ZERO28Bit is
  signal b0 : std_logic_vector(27 downto 0);
  signal b0_0 : std_logic;

  component GT_ZERO
    port(Z : out std_logic);
  end component;

begin
  Output <= b0;

  b0(27) <= b0_0;
  b0(26) <= b0_0;
  b0(25) <= b0_0;
  b0(24) <= b0_0;
  b0(23) <= b0_0;
  b0(22) <= b0_0;
  b0(21) <= b0_0;
  b0(20) <= b0_0;
  b0(19) <= b0_0;
  b0(18) <= b0_0;
  b0(17) <= b0_0;
  b0(16) <= b0_0;
  b0(15) <= b0_0;
  b0(14) <= b0_0;
  b0(13) <= b0_0;
  b0(12) <= b0_0;
  b0(11) <= b0_0;
  b0(10) <= b0_0;
  b0(9) <= b0_0;
  b0(8) <= b0_0;
  b0(7) <= b0_0;
  b0(6) <= b0_0;
  b0(5) <= b0_0;
  b0(4) <= b0_0;
  b0(3) <= b0_0;
  b0(2) <= b0_0;
  b0(1) <= b0_0;
  b0(0) <= b0_0;

  s0 : GT_ZERO
    port map(
      Z => b0_0);

end rtl;

