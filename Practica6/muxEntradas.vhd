library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity muxEntradas is
	Port (  selector : in STD_LOGIC_VECTOR(1 downto 0);
			  x : in STD_LOGIC;
			  y : in STD_LOGIC;
			  int : in STD_LOGIC;
			  AUX : in STD_LOGIC;
			  salida  : out STD_LOGIC);
end muxEntradas;

architecture Behavioral of muxEntradas is
begin
	process (selector, x, y, int, AUX)
	begin		
		if selector = "00" then 
			salida <= x;
		elsif selector = "01" then 
			salida <= y;
		elsif selector = "10" then 
			salida <= int;
		elsif selector = "11" then 
			salida <= AUX;
		end if;
	end process;
end Behavioral;