library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity muxSalInc is
	Port (  seleccion : in STD_LOGIC;
			  E0 : in STD_LOGIC_VECTOR(3 downto 0);
			  E1 : in STD_LOGIC_VECTOR(3 downto 0);
			  salida  : out STD_LOGIC_VECTOR(3 downto 0));
end muxSalInc;

architecture Behavioral of muxSalInc is
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