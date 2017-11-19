library ieee;
use ieee.std_logic_1164.all;

entity KeypadCU100 is
  port(reset : in std_logic;
       clock : in std_logic;
       COL : in std_logic_vector(2 downto 0);
       ROW : in std_logic_vector(3 downto 0);
       OUT_3 : out std_logic;
       OUT_6 : out std_logic;
       OUT_9 : out std_logic;
       OUT_Hash : out std_logic);
end;

architecture rtl of KeypadCU100 is
   type state_type is (S1, S2, S4, S5, S7, S8, S9, S11, S12, S14, S15, S17, S18, S3);
   signal current_state, next_state : state_type;
begin

   -- Process to combinational logic
   COMBIN: process (current_state, COL, ROW)
   begin
      case current_state is
         when S1 =>
            if (COL = "100") then
               next_state <= S4;
              else
               next_state <= S1;
            end if;
            OUT_3 <= '0';
            OUT_6 <= '0';
            OUT_9 <= '0';
            OUT_Hash <= '0';

         when S2 =>
            if (COL /= "100") then
               next_state <= S2;
            elsif (COL = "100") then
               next_state <= S5;
            end if;
            OUT_3 <= '0';
            OUT_6 <= '0';
            OUT_9 <= '0';
            OUT_Hash <= '0';

         when S4 =>
            if (ROW = "0010") then
               next_state <= S8;
            elsif (ROW = "0100") then
               next_state <= S11;
            elsif (ROW = "0001") then
               next_state <= S12;
            elsif (ROW = "1000") then
               next_state <= S3;
              else
               next_state <= S1;
            end if;

         when S5 =>
            if (ROW /= "1000") then
               next_state <= S1;
            elsif (ROW = "1000") then
               next_state <= S2;
            end if;
            OUT_3 <= '0';
            OUT_6 <= '0';
            OUT_9 <= '0';
            OUT_Hash <= '0';

         when S7 =>
            if (COL /= "100") then
               next_state <= S7;
            elsif (COL = "100") then
               next_state <= S9;
            end if;
            OUT_3 <= '0';
            OUT_6 <= '0';
            OUT_9 <= '0';
            OUT_Hash <= '0';

         when S8 =>
            next_state <= S7;
            OUT_3 <= '0';
            OUT_6 <= '1';
            OUT_9 <= '0';
            OUT_Hash <= '0';

         when S9 =>
            if (ROW /= "0010") then
               next_state <= S1;
            elsif (ROW = "0010") then
               next_state <= S7;
            end if;
            OUT_3 <= '0';
            OUT_6 <= '0';
            OUT_9 <= '0';
            OUT_Hash <= '0';

         when S11 =>
            next_state <= S14;
            OUT_3 <= '0';
            OUT_6 <= '0';
            OUT_9 <= '1';
            OUT_Hash <= '0';

         when S12 =>
            next_state <= S17;
            OUT_3 <= '1';
            OUT_6 <= '0';
            OUT_9 <= '0';
            OUT_Hash <= '0';

         when S14 =>
            if (COL /= "100") then
               next_state <= S14;
            elsif (COL = "100") then
               next_state <= S15;
            end if;
            OUT_3 <= '0';
            OUT_6 <= '0';
            OUT_9 <= '0';
            OUT_Hash <= '0';

         when S15 =>
            if (ROW = "0100") then
               next_state <= S14;
            elsif (ROW /= "0100") then
               next_state <= S1;
            end if;
            OUT_3 <= '0';
            OUT_6 <= '0';
            OUT_9 <= '0';
            OUT_Hash <= '0';

         when S17 =>
            if (COL /= "100") then
               next_state <= S17;
            elsif (COL = "100") then
               next_state <= S18;
            end if;
            OUT_3 <= '0';
            OUT_6 <= '0';
            OUT_9 <= '0';
            OUT_Hash <= '0';

         when S18 =>
            if (ROW = "0001") then
               next_state <= S17;
            elsif (ROW /= "0001") then
               next_state <= S1;
            end if;
            OUT_3 <= '0';
            OUT_6 <= '0';
            OUT_9 <= '0';
            OUT_Hash <= '0';

         when S3 =>
            next_state <= S2;
            OUT_3 <= '0';
            OUT_6 <= '0';
            OUT_9 <= '0';
            OUT_Hash <= '1';

         when others =>
            next_state <= S1;
      end case;
   end process;

   -- Process to hold synchronous elements (flip-flops)
   SYNCH: process (reset, clock)
   begin
      if reset = '1' then
        current_state <= S1;
      elsif clock'event and clock = '1' then
        current_state <= next_state;
      end if;
   end process;

end rtl;
