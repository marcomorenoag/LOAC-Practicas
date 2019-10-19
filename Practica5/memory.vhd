library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory is
	Port( dir : in std_logic_vector(2 downto 0);
			data : out std_logic_vector(13 downto 0)
			);
end memory;

architecture Behavioral of memory is
	type mem is array(0 to 7) of std_logic_vector(13 downto 0);
	signal internal_mem : mem;
	
	begin
		internal_mem(0) <= "01" & "1" & "100" & "1101" & "1110";
		internal_mem(1) <= "00" & "0" & "011" & "0001" & "0001";
		internal_mem(2) <= "10" & "0" & "100" & "1100" & "1000";
		internal_mem(3) <= "11" & "0" & "000" & "1010" & "1010";
		internal_mem(4) <= "11" & "0" & "010" & "0000" & "0000";
		
		process(dir)
			begin
				data <= internal_mem(conv_integer(unsigned(dir)));
		end process;
end Behavioral;