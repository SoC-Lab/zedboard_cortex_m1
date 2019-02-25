library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity invert_singleValue is
    port ( i_signal  : in  std_logic;
           o_signal  : out  std_logic
	);
end invert_singleValue;

architecture rtl of invert_singleValue is

begin

	o_signal <= not i_signal;
	
end rtl;