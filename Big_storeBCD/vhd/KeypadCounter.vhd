library ieee;
use ieee.std_logic_1164.all;

entity KeypadCounter is
  port(reset : in std_logic;
       clock : in std_logic;
       COL : out std_logic_vector(2 downto 0));
end;

architecture rtl of KeypadCounter is
   type state_type is (S0, S1, S2, S3, S4, S5, S6);
   signal current_state, next_state : state_type;
begin

   -- Process to combinational logic
   COMBIN: process (current_state)
   begin
      case current_state is
         when S0 =>
            next_state <= S1;
         when S1 =>
            next_state <= S2;
            COL <= "001";

         when S2 =>
            next_state <= S3;
            COL <= "001";

         when S3 =>
            next_state <= S4;
            COL <= "010";

         when S4 =>
            next_state <= S5;
            COL <= "010";

         when S5 =>
            next_state <= S6;
            COL <= "100";

         when S6 =>
            next_state <= S1;
            COL <= "100";

         when others =>
            next_state <= S0;
      end case;
   end process;

   -- Process to hold synchronous elements (flip-flops)
   SYNCH: process (reset, clock)
   begin
      if reset = '1' then
        current_state <= S0;
      elsif clock'event and clock = '1' then
        current_state <= next_state;
      end if;
   end process;

end rtl;
