library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity muxSalidas is
	Port (  selector : in STD_LOGIC;
			  salidaCarga : in STD_LOGIC_VECTOR(3 downto 0);
			  salidaIncrementa : in STD_LOGIC_VECTOR(3 downto 0);
			  salida  : out STD_LOGIC_VECTOR(3 downto 0));
end muxSalidas;

architecture Behavioral of muxSalidas is
begin
	process (selector, salidaCarga, salidaIncrementa)
	begin		
		if selector = '1' then 
			salida <= salidaCarga;
		elsif selector = '0' then 
			salida <= salidaIncrementa;
		end if;
	end process;
end Behavioral;