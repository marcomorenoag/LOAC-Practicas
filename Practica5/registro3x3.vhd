library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro3x3 is
	Port (  RELOJ : in STD_LOGIC;
			  RESET : in STD_LOGIC;
			  ENTRADA  : in STD_LOGIC_VECTOR(2 downto 0);
			  SALIDA : out STD_LOGIC_VECTOR(2 downto 0));
end registro3x3;

architecture Behavioral of registro3x3 is
signal valor_interno : std_logic_vector (2 downto 0) := B"000";
begin
	process (RELOJ, RESET, ENTRADA)
	begin		
		if RESET = '0' then 
			valor_interno <= B"000";
		elsif rising_edge (RELOJ) then
			valor_interno <= ENTRADA;
		end if;
	end process;
	
	process (valor_interno)
	begin
		SALIDA <= valor_interno;
	end process;
end Behavioral;