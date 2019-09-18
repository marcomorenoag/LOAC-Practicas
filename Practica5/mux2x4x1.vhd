library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2X4X1 is
	Port (  selector : in STD_LOGIC_VECTOR(1 downto 0);
			  Q1 : in STD_LOGIC;
			  Q2 : in STD_LOGIC;
			  Q3 : in STD_LOGIC;
			  AUX : in STD_LOGIC;
			  salida  : out STD_LOGIC);
end mux2X4X1;

architecture Behavioral of mux2X4X1 is
begin
	process (selector, Q1, Q2, Q3, AUX)
	begin		
		if selector = "00" then 
			salida <= Q1;
		elsif selector = "01" then 
			salida <= Q2;
		elsif selector = "10" then 
			salida <= Q3;
		elsif selector = "11" then 
			salida <= AUX;
		end if;
	end process;
end Behavioral;