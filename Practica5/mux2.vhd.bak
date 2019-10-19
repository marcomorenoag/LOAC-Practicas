library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2 is
	Port (  seleccion : in STD_LOGIC;
			  E0 : in STD_LOGIC_VECTOR(2 downto 0);
			  E1 : in STD_LOGIC_VECTOR(2 downto 0);
			  salida  : out STD_LOGIC_VECTOR(2 downto 0));
end mux2;

architecture Behavioral of mux2 is
begin
	process (seleccion, E0, E1)
	begin		
		if seleccion = '0' then 
			salida <= E0;
		elsif seleccion = '1' then 
			salida <= E1;
		end if;
	end process;
end Behavioral;