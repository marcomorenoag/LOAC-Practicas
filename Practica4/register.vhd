library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register3 is
	Port (  CLK : in STD_LOGIC;
			  RESET : in STD_LOGIC;
			  DATA_IN  : in STD_LOGIC_VECTOR(2 downto 0);
			  DATA_OUT : out STD_LOGIC_VECTOR(2 downto 0));
end register3;

architecture Behavioral of register3 is
signal internal_value : std_logic_vector (2 downto 0) := B"000";
begin
	process (CLK, RESET, DATA_IN)
	begin		
		if RESET = '0' then 
			internal_value <= B"000";
		elsif rising_edge (CLK) then
			internal_value <= DATA_IN;
		end if;
	end process;
	
	process (internal_value)
	begin
		DATA_OUT <= internal_value;
	end process;
end Behavioral;