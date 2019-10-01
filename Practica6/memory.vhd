library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory is
	Port( dir : in std_logic_vector(3 downto 0);
			data : out std_logic_vector(12 downto 0)
			);
end memory;

architecture Behavioral of memory is
	type mem is array(0 to 15) of std_logic_vector(12 downto 0);
	signal internal_mem : mem;
	
	begin
		--internal_mem(0) <= "00" & "11" & "0" & "0000" & "1100";
		--internal_mem(1) <= "00" & "00" & "0" & "0000" & "0110";
		--internal_mem(2) <= "11" & "00" & "0" & "0000" & "0001";
		--internal_mem(3) <= "01" & "00" & "0" & "0011" & "0010";
		--internal_mem(4) <= "10" & "10" & "1" & "0000" & "1000";
		--internal_mem(5) <= "01" & "11" & "0" & "0001" & "1100";
		--internal_mem(6) <= "00" & "00" & "0" & "0000" & "0011";
		--internal_mem(7) <= "01" & "11" & "0" & "0000" & "0001";
		--internal_mem(8) <= "00" & "00" & "0" & "0000" & "1000";
		--internal_mem(9) <= "10" & "10" & "1" & "0000" & "0000";
		--internal_mem(10) <= "01" & "11" & "0" & "0001" & "1100";
		--internal_mem(11) <= "01" & "01" & "1" & "1011" & "0010";
		--internal_mem(12) <= "01" & "11" & "0" & "1001" & "0000";
		--internal_mem(13) <= "00" & "00" & "0" & "0000" & "0101";
		--internal_mem(14) <= "01" & "11" & "0" & "0000" & "0001";
		
		internal_mem(0) <= "00" & "11" & "0" & "0000" & "1100";
		internal_mem(1) <= "00" & "00" & "0" & "0000" & "0110";
		internal_mem(2) <= "10" & "00" & "0" & "0000" & "0001";
		internal_mem(3) <= "01" & "00" & "0" & "0011" & "0010";
		internal_mem(4) <= "11" & "10" & "1" & "0000" & "1000";
		internal_mem(5) <= "01" & "11" & "0" & "0001" & "1100";
		internal_mem(6) <= "00" & "00" & "0" & "0000" & "0011";
		internal_mem(7) <= "01" & "11" & "0" & "0000" & "0001";
		internal_mem(8) <= "00" & "00" & "0" & "0000" & "1000";
		internal_mem(9) <= "11" & "10" & "1" & "0000" & "0000";
		internal_mem(10) <= "01" & "11" & "0" & "0001" & "1100";
		internal_mem(11) <= "01" & "01" & "1" & "1011" & "0010";
		internal_mem(12) <= "01" & "11" & "0" & "1001" & "0000";
		internal_mem(13) <= "00" & "00" & "0" & "0000" & "0101";
		internal_mem(14) <= "01" & "11" & "0" & "0000" & "0001";
		
		process(dir)
			begin
				data <= internal_mem(conv_integer(unsigned(dir)));
		end process;
end Behavioral;