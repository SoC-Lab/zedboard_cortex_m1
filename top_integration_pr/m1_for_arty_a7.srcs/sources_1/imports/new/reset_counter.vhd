library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all; 


entity reset_counter is 
generic (MAX_COUNTER_VALUE : natural;
		DURATION_RESET: natural);
port (
		reset_i: in std_ulogic;
		clock_i: in std_ulogic;
		reset_o : out std_ulogic
	);
end entity reset_counter;


architecture rtl of reset_counter is
	constant RESET_ACTIVE : std_logic := '1'; -- DO NOT CHANGE
	signal counter_value: natural range 0 to MAX_COUNTER_VALUE-1 := 0; 
	signal reset_count : natural range 0 to DURATION_RESET-1 := 0;
	signal reset_s : std_logic;
	signal reset_once : std_logic := '0';
	
	signal output_reset_sent : std_logic := '0';
	signal finished_sending : std_logic := '0';
begin

reset_o <= reset_s;

proc1: process(reset_i,clock_i) is 
begin
	if (reset_i = RESET_ACTIVE) then
		counter_value <= 0;
	elsif (rising_edge(clock_i)) then
		reset_once <= '0';
		if(counter_value < natural(MAX_COUNTER_VALUE-1)) then 
			counter_value <= counter_value+1;
			reset_once <= '0';
		else
			counter_value <= 0;
			reset_once <= '1';
		end if;
	end if;
end process;

-- Reset von außen
-- true and (false or true) = true

-- 1 cycle vom eigenen Reset
-- true and (false or false) = false

-- weiteren cycle vom eigenen Reset
-- true and (true or false) = false

output_block: process(clock_i, reset_s, reset_once, reset_i) is 
begin
	if ((reset_i = RESET_ACTIVE) and ((reset_once/='1') or (reset_s /= RESET_ACTIVE)))  then -- needs to be false when reset comes from this entity
		reset_count <= 0;
		output_reset_sent <= '0';
		finished_sending <= '0';
		reset_s <= '0';
	elsif (rising_edge(clock_i)) then
		if (reset_once = '1' or output_reset_sent = '1') then
			if( reset_count < natural(DURATION_RESET-1)) and (finished_sending = '0') then 
				reset_count <= reset_count+1;
				reset_s <= RESET_ACTIVE;
				output_reset_sent <= '1';
			else
				reset_count <= 0;
				output_reset_sent <= '1';
				reset_s <= not RESET_ACTIVE;
				finished_sending <= '1';
			end if;
		else
			reset_s <= not RESET_ACTIVE;
		end if;
	end if;
end process;



end architecture rtl;