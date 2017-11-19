library ieee;
use ieee.std_logic_1164.all;

entity KeypadCU001 is
  port(reset : in std_logic;
       clock : in std_logic;
       COL : in std_logic_vector(2 downto 0);
       ROW : in std_logic_vector(3 downto 0);
       OUT_1 : out std_logic;
       OUT_4 : out std_logic;
       OUT_7 : out std_logic;
       OUT_Star : out std_logic);
end;

architecture rtl of KeypadCU001 is
   type state_type is (S1, S3, S4, S6, S7, S5, S8, S10, S0, S2, S9, S11, S12, S13);
   signal current_state, next_state : state_type;
begin

   -- Process to combinational logic
   COMBIN: process (current_state, COL, ROW)
   begin
      case current_state is
         when S1 =>
            if (COL = "001") then
               next_state <= S6;
              else
               next_state <= S1;
            end if;
            OUT_1 <= '0';
            OUT_4 <= '0';
            OUT_7 <= '0';
            OUT_Star <= '0';

         when S3 =>
            if (COL /= "001") then
               next_state <= S3;
            elsif (COL = "001") then
               next_state <= S7;
            end if;
            OUT_1 <= '0';
            OUT_4 <= '0';
            OUT_7 <= '0';
            OUT_Star <= '0';

         when S4 =>
            next_state <= S3;
            OUT_1 <= '0';
            OUT_4 <= '0';
            OUT_7 <= '0';
            OUT_Star <= '1';

         when S6 =>
            if (ROW = "1000") then
               next_state <= S4;
            elsif (ROW = "0010") then
               next_state <= S8;
            elsif (ROW = "0001") then
               next_state <= S0;
            elsif (ROW = "0100") then
               next_state <= S2;
              else
               next_state <= S1;
            end if;

         when S7 =>
            if (ROW /= "1000") then
               next_state <= S1;
            elsif (ROW = "1000") then
               next_state <= S3;
            end if;
            OUT_1 <= '0';
            OUT_4 <= '0';
            OUT_7 <= '0';
            OUT_Star <= '0';

         when S5 =>
            if (COL /= "001") then
               next_state <= S5;
            elsif (COL = "001") then
               next_state <= S10;
            end if;
            OUT_1 <= '0';
            OUT_4 <= '0';
            OUT_7 <= '0';
            OUT_Star <= '0';

         when S8 =>
            next_state <= S5;
            OUT_1 <= '0';
            OUT_4 <= '1';
            OUT_7 <= '0';
            OUT_Star <= '0';

         when S10 =>
            if (ROW /= "0010") then
               next_state <= S1;
            elsif (ROW = "0010") then
               next_state <= S5;
            end if;
            OUT_1 <= '0';
            OUT_4 <= '0';
            OUT_7 <= '0';
            OUT_Star <= '0';

         when S0 =>
            next_state <= S9;
            OUT_1 <= '1';
            OUT_4 <= '0';
            OUT_7 <= '0';
            OUT_Star <= '0';

         when S2 =>
            next_state <= S12;
            OUT_1 <= '0';
            OUT_4 <= '0';
            OUT_7 <= '1';
            OUT_Star <= '0';

         when S9 =>
            if (COL = "001") then
               next_state <= S11;
            elsif (COL /= "001") then
               next_state <= S9;
            end if;
            OUT_1 <= '0';
            OUT_4 <= '0';
            OUT_7 <= '0';
            OUT_Star <= '0';

         when S11 =>
            if (ROW /= "0001") then
               next_state <= S1;
            elsif (ROW = "0001") then
               next_state <= S9;
            end if;
            OUT_1 <= '0';
            OUT_4 <= '0';
            OUT_7 <= '0';
            OUT_Star <= '0';

         when S12 =>
            if (COL /= "001") then
               next_state <= S12;
            elsif (COL = "001") then
               next_state <= S13;
            end if;
            OUT_1 <= '0';
            OUT_4 <= '0';
            OUT_7 <= '0';
            OUT_Star <= '0';

         when S13 =>
            if (ROW /= "0100") then
               next_state <= S1;
            elsif (ROW = "0100") then
               next_state <= S12;
            end if;
            OUT_1 <= '0';
            OUT_4 <= '0';
            OUT_7 <= '0';
            OUT_Star <= '0';

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
