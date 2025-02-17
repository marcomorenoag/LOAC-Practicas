library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2 is
	Port (  selector : in STD_LOGIC;
			  I0 : in STD_LOGIC_VECTOR(2 downto 0);
			  I1 : in STD_LOGIC_VECTOR(2 downto 0);
			  Output : out STD_LOGIC_VECTOR(2 downto 0));
end mux2;

architecture Behavioral of mux2 is
begin
	process (selector, I0, I1)
	begin		
		if selector = '0' then 
			Output <= I0;
		elsif selector = '1' then 
			Output <= I1;
		end if;
	end process;
end Behavioral;