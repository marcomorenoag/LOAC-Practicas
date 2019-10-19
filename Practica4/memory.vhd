library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory is
	Port( dir : in std_logic_vector(2 downto 0);
			data : out std_logic_vector(15 downto 0)
			);
end memory;

architecture Behavioral of memory is
	type mem is array(0 to 7) of std_logic_vector(15 downto 0);
	signal internal_mem : mem;
	
	begin
		internal_mem(0) <= "01" & "011" & "001" & "1100" & "1101";
		internal_mem(1) <= "11" & "010" & "000" & "0000" & "0000";
		internal_mem(2) <= "10" & "001" & "100" & "0011" & "0010";
		internal_mem(3) <= "00" & "010" & "100" & "0001" & "0001";
		internal_mem(4) <= "11" & "000" & "000" & "0110" & "0110";
		
		process(dir)
			begin
				data <= internal_mem(conv_integer(unsigned(dir)));
		end process;
end Behavioral;