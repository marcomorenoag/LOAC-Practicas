library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity switchSalidas is
	Port ( nextStateInc : in STD_LOGIC_VECTOR (3 downto 0);	
			 nextStateCar : in STD_LOGIC_VECTOR (3 downto 0);
			 currentState : in STD_LOGIC_VECTOR (3 downto 0);
			 selector : in STD_LOGIC;
			 Switch  : in std_logic;
			 SalidaMaquina: in STD_LOGIC_VECTOR (3 downto 0);
			 salida : out STD_LOGIC_VECTOR(7 downto 0));
end switchSalidas;

architecture Behavioral of switchSalidas is
begin
	process(selector, nextStateInc, nextStateCar, currentState, Switch, SalidaMaquina)
	begin
		if Switch = '0' then
			if selector = '0' then
			salida <= nextStateInc & salidaMaquina;
			else
			salida <= nextStateCar & salidaMaquina;
			end if;
		else
			salida <= currentState & SalidaMaquina;
		end if;	
	end process;
end Behavioral;
