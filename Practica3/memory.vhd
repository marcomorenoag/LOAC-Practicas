library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory is
	Port( dir : in std_logic_vector(5 downto 0);
			data : out std_logic_vector(6 downto 0)
			);
end memory;

architecture Behavioral of memory is
	type mem is array(0 to 63) of std_logic_vector(6 downto 0);
	signal internal_mem : mem;
	
	begin
		-- ESTADO 0
		internal_mem(0) <= "011" & "1110";
		internal_mem(1) <= "011" & "1110";
		internal_mem(2) <= "001" & "1011";
		internal_mem(3) <= "001" & "1011";
		internal_mem(4) <= "011" & "1110";
		internal_mem(5) <= "011" & "1110";
		internal_mem(6) <= "001" & "1011";
		internal_mem(7) <= "001" & "1011";
		
		-- ESTADO 1
		internal_mem(8)  <= "010" & "0000";
		internal_mem(9)  <= "010" & "0000";
		internal_mem(10) <= "010" & "0000";
		internal_mem(11) <= "010" & "0000";
		internal_mem(12) <= "010" & "0000";
		internal_mem(13) <= "010" & "0000";
		internal_mem(14) <= "010" & "0000";
		internal_mem(15) <= "010" & "0000";
		
		-- ESTADO 2
		internal_mem(16) <= "001" & "1010";
		internal_mem(17) <= "100" & "0010";
		internal_mem(18) <= "001" & "1010";
		internal_mem(19) <= "100" & "0010";
		internal_mem(20) <= "001" & "1010";
		internal_mem(21) <= "100" & "0010";
		internal_mem(22) <= "001" & "1010";
		internal_mem(23) <= "100" & "0010";
		
		-- ESTADO 3
		internal_mem(24) <= "010" & "0001";
		internal_mem(25) <= "010" & "0001";
		internal_mem(26) <= "010" & "0001";
		internal_mem(27) <= "010" & "0001";
		internal_mem(28) <= "100" & "0001";
		internal_mem(29) <= "100" & "0001";
		internal_mem(30) <= "100" & "0001";
		internal_mem(31) <= "100" & "0001";		
			-- ESTADO 4
		internal_mem(32) <= "000" & "0110";
		internal_mem(33) <= "000" & "0110";
		internal_mem(34) <= "000" & "0110";
		internal_mem(35) <= "000" & "0110";
		internal_mem(36) <= "000" & "0110";
		internal_mem(37) <= "000" & "0110";
		internal_mem(38) <= "000" & "0110";
		internal_mem(39) <= "000" & "0110";
		
		process(dir)
			begin
				data <= internal_mem(conv_integer(unsigned(dir)));
		end process;
end Behavioral;
