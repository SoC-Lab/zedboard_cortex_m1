library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tor is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           SELECT0 : in STD_LOGIC;
           SELECT1 : in STD_LOGIC;
		   SELECT2 : in STD_LOGIC;
		   SELECT3 : in STD_LOGIC;
           INPUT0 : in STD_LOGIC;
           INPUT1 : in STD_LOGIC;
           INPUT2 : in STD_LOGIC;
           INPUT3 : in STD_LOGIC;
           OUTPUT0 : out STD_LOGIC);
end tor;

architecture Behavioral of tor is
	signal sel : std_logic_vector(3 downto 0);

begin
	sel <= SELECT3 & SELECT2 & SELECT1 & SELECT0;

	p_tor : process(CLK)
	begin
		if RST = '0' then 
				OUTPUT0 <= '0';
		elsif rising_edge(CLK)  then
			case sel is
				when "0001" => OUTPUT0 <= INPUT0;
				when "0010" => OUTPUT0 <= INPUT1;
				when "0100" => OUTPUT0 <= INPUT2;
				when others => OUTPUT0 <= INPUT3;
			end case;
		end if;
	end process p_tor;
    
end Behavioral;
