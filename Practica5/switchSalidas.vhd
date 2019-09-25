library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity switchSalidas is
	Port ( nextState : in STD_LOGIC_VECTOR (2 downto 0);
			 currentState : in STD_LOGIC_VECTOR (2 downto 0);
			 Switch  : in std_logic;
			 SalidaMaquina: in STD_LOGIC_VECTOR (3 downto 0);
			 salida : out STD_LOGIC_VECTOR(6 downto 0));
end switchSalidas;

architecture Behavioral of switchSalidas is
begin
	process(nextState, currentState, Switch, SalidaMaquina)
	begin
		if Switch = '0' then
			salida <= nextState & salidaMaquina;
		else
			salida <= currentState & SalidaMaquina;
		end if;	
	end process;
end Behavioral;
