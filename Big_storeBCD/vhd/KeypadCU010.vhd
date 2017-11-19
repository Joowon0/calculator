library ieee;
use ieee.std_logic_1164.all;

entity KeypadCU010 is
  port(reset : in std_logic;
       clock : in std_logic;
       COL : in std_logic_vector(2 downto 0);
       ROW : in std_logic_vector(3 downto 0);
       OUT_2 : out std_logic;
       OUT_5 : out std_logic;
       OUT_8 : out std_logic;
       OUT_0 : out std_logic);
end;

architecture rtl of KeypadCU010 is
   type state_type is (S1, S2, S3, S4, S5, S7, S8, S9, S11, S12, S0, S6, S10, S13);
   signal current_state, next_state : state_type;
begin

   -- Process to combinational logic
   COMBIN: process (current_state, COL, ROW)
   begin
      case current_state is
         when S1 =>
            if (COL = "010") then
               next_state <= S4;
              else
               next_state <= S1;
            end if;
            OUT_2 <= '0';
            OUT_5 <= '0';
            OUT_8 <= '0';
            OUT_0 <= '0';

         when S2 =>
            if (COL /= "010") then
               next_state <= S2;
            elsif (COL = "010") then
               next_state <= S5;
            end if;
            OUT_2 <= '0';
            OUT_5 <= '0';
            OUT_8 <= '0';
            OUT_0 <= '0';

         when S3 =>
            next_state <= S2;
            OUT_2 <= '1';
            OUT_5 <= '0';
            OUT_8 <= '0';
            OUT_0 <= '0';

         when S4 =>
            if (ROW = "0001") then
               next_state <= S3;
            elsif (ROW = "0010") then
               next_state <= S8;
            elsif (ROW = "0100") then
               next_state <= S11;
            elsif (ROW = "1000") then
               next_state <= S12;
              else
               next_state <= S1;
            end if;

         when S5 =>
            if (ROW /= "0001") then
               next_state <= S1;
            elsif (ROW = "0001") then
               next_state <= S2;
            end if;
            OUT_2 <= '0';
            OUT_5 <= '0';
            OUT_8 <= '0';
            OUT_0 <= '0';

         when S7 =>
            if (COL /= "010") then
               next_state <= S7;
            elsif (COL = "010") then
               next_state <= S9;
            end if;
            OUT_2 <= '0';
            OUT_5 <= '0';
            OUT_8 <= '0';
            OUT_0 <= '0';

         when S8 =>
            next_state <= S7;
            OUT_2 <= '0';
            OUT_5 <= '1';
            OUT_8 <= '0';
            OUT_0 <= '0';

         when S9 =>
            if (ROW /= "0010") then
               next_state <= S1;
            elsif (ROW = "0010") then
               next_state <= S7;
            end if;
            OUT_2 <= '0';
            OUT_5 <= '0';
            OUT_8 <= '0';
            OUT_0 <= '0';

         when S11 =>
            next_state <= S0;
            OUT_2 <= '0';
            OUT_5 <= '0';
            OUT_8 <= '1';
            OUT_0 <= '0';

         when S12 =>
            next_state <= S10;
            OUT_2 <= '0';
            OUT_5 <= '0';
            OUT_8 <= '0';
            OUT_0 <= '1';

         when S0 =>
            if (COL /= "010") then
               next_state <= S0;
            elsif (COL = "010") then
               next_state <= S6;
            end if;
            OUT_2 <= '0';
            OUT_5 <= '0';
            OUT_8 <= '0';
            OUT_0 <= '0';

         when S6 =>
            if (ROW /= "0100") then
               next_state <= S1;
            elsif (ROW = "0100") then
               next_state <= S0;
            end if;
            OUT_2 <= '0';
            OUT_5 <= '0';
            OUT_8 <= '0';
            OUT_0 <= '0';

         when S10 =>
            if (COL = "010") then
               next_state <= S13;
            elsif (COL /= "010") then
               next_state <= S10;
            end if;
            OUT_2 <= '0';
            OUT_5 <= '0';
            OUT_8 <= '0';
            OUT_0 <= '0';

         when S13 =>
            if (ROW /= "1000") then
               next_state <= S1;
            elsif (ROW = "1000") then
               next_state <= S10;
            end if;
            OUT_2 <= '0';
            OUT_5 <= '0';
            OUT_8 <= '0';
            OUT_0 <= '0';

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
