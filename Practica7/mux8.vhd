library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8 is
	Port (  sel : in STD_LOGIC;
			  I0 : in STD_LOGIC_VECTOR(7 downto 0);
			  I1 : in STD_LOGIC_VECTOR(7 downto 0);
			  output  : out STD_LOGIC_VECTOR(7 downto 0));
end mux8;

architecture Behavioral of mux8 is
begin
	process (sel, I0, I1)
	begin		
		if sel = '0' then 
			output <= I0;
		elsif sel = '1' then 
			output <= I1;
		end if;
	end process;
end Behavioral;