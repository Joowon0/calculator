library ieee;
use ieee.std_logic_1164.all;

entity ifNeg is
  port(reset : in std_logic;
       clock : in std_logic;
       inputHash : in std_logic;
       showIfNeg : out std_logic);
end;

architecture rtl of ifNeg is
   type state_type is (S0, S1);
   signal current_state, next_state : state_type;
begin

   -- Process to combinational logic
   COMBIN: process (current_state, inputHash)
   begin
      case current_state is
         when S0 =>
            if (inputHash = '1') then
               next_state <= S1;
            elsif (inputHash = '0') then
               next_state <= S0;
            end if;
            showIfNeg <= '0';

         when S1 =>
            if (inputHash = '1') then
               next_state <= S0;
            elsif (inputHash = '0') then
               next_state <= S1;
            end if;
            showIfNeg <= '1';

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
