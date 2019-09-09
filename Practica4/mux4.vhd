library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4 is
	Port (  selector : in STD_LOGIC_VECTOR(1 downto 0);
			  I0 : in STD_LOGIC;
			  I1 : in STD_LOGIC;
			  I2 : in STD_LOGIC;
			  I3 : in STD_LOGIC;
			  Output  : out STD_LOGIC);
end mux4;

architecture Behavioral of mux4 is
begin
	process (selector, I0, I1, I2, I3)
	begin		
		if selector = "00" then 
			Output <= I0;
		elsif selector = "01" then 
			Output <= I1;
		elsif selector = "10" then 
			Output <= I2;
		elsif selector = "11" then 
			Output <= I3;
		end if;
	end process;
end Behavioral;