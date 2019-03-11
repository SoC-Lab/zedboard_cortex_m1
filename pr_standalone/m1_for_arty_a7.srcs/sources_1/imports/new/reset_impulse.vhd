----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.03.2019 22:30:28
-- Design Name: 
-- Module Name: reset_impulse - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reset_impulse is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           reset_in : in STD_LOGIC_VECTOR(3 downto 0);
           reset_out : out STD_LOGIC_VECTOR(3 downto 0));
end reset_impulse;

architecture Behavioral of reset_impulse is

    signal reset_sync_1 : std_logic_vector(3 downto 0);
    signal reset_sync_2 : std_logic_vector(3 downto 0);

begin

    --synchronize reset (clocked)
	reset_sync: process(rst, clk)
	begin

		if(rst = '1') then

			reset_sync_1 <= (others => '0');
			reset_sync_2 <= (others => '0');

		elsif(rising_edge(clk)) then

			--synchronise input signal
			reset_sync_1 <= reset_in;
			reset_sync_2 <= reset_sync_1;

		end if;
	end process reset_sync;

    reset_out <= not ((not reset_sync_1) or reset_sync_2);

end Behavioral;
