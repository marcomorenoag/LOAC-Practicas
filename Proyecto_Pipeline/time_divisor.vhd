library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity time_divisor is
    Port( reloj : in STD_LOGIC;	-- CLK 50 MHz
			 clk : out STD_LOGIC);	-- Time time_divisor
end time_divisor;

architecture Behavioral of time_divisor is

signal div: STD_LOGIC := '0';

begin
	process (reloj, div)
		variable limite: INTEGER := 50000000;
		variable cuenta: INTEGER range 0 to 50000000 := 0;
		begin
			if rising_edge(reloj) then 
				if cuenta = limite then
					cuenta := 0;
					div <= not(div);
				else
					cuenta := cuenta+1;
				end if;
			end if;
			clk <= div;
		end process;
end Behavioral;
