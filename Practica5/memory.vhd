library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory is
	Port ( direccion : in STD_LOGIC_VECTOR (2 downto 0);
			 datos : out STD_LOGIC_VECTOR (13 downto 0));
end memory;

architecture Behavioral of memory is
begin
	process(direccion)
	begin
		if   (direccion = "000") then datos <= "01" & "1" & "100" & "1101" & "1110";
		elsif(direccion = "001") then datos <= "00" & "0" & "011" & "0001" & "0001";
		elsif(direccion = "010") then datos <= "10" & "0" & "100" & "1100" & "1000";
		elsif(direccion = "011") then datos <= "11" & "0" & "000" & "1010" & "1010";
		elsif(direccion = "100") then datos <= "11" & "0" & "010" & "0000" & "0000";
		end if;	
	end process;
end Behavioral;