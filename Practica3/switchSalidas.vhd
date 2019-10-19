library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity switchSalidas is
	Port ( ContenidoM : in STD_LOGIC_VECTOR (6 downto 0); -- Entradas
			 Presente : in STD_LOGIC_VECTOR (5 downto 0); -- Liga
			 Switch  : in std_logic;
			 Salidas: in STD_LOGIC_VECTOR (3 downto 0);
			 salida : out STD_LOGIC_VECTOR(6 downto 0));
end switchSalidas;

architecture Behavioral of switchSalidas is
begin
	process(ContenidoM, Presente, Switch, Salidas)
	begin
		if Switch = '0' then
			salida <= ContenidoM;
		else
			salida <= Presente(5 downto 3) & Salidas;
		end if;	
	end process;
end Behavioral;