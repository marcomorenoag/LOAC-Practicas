library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity concatenador_datos is
	Port ( entradas : in STD_LOGIC_VECTOR (2 downto 0); -- Entradas
			 liga : in STD_LOGIC_VECTOR (2 downto 0); -- Liga
			 salida : out STD_LOGIC_VECTOR(5 downto 0));
end concatenador_datos;

architecture Behavioral of concatenador_datos is
begin
	process(entradas, liga)
	begin
		salida <= liga & entradas; -- Liga & Entradas
	end process;
end Behavioral;