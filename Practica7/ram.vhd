library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ram is
	Port( address : in std_logic_vector(15 downto 0);
			data : inout std_logic_vector(7 downto 0);
			Wn : in std_logic;
			CSn : in std_logic
			);
end ram;

architecture Behavioral of ram is
	type memory is array(0 to 255) of std_logic_vector(7 downto 0);
	signal mem : memory;
	signal data_out : std_logic_vector(7 downto 0) := X"00";
	
	begin
	
	-- Memory Write Block
	MEM_WRITE: process (address, CSn, Wn, data) 
	begin
		--LDAA #$00
		mem(0) <= X"86";
		mem(1) <= X"00";
		
		--LDAB #$01
		mem(2) <= X"C6";
		mem(3) <= X"01";
		
		--LDx #$0001
		mem(4) <= X"CE";
		mem(5) <= X"00";
		mem(6) <= X"01";
		
		--LDy #$0003
		mem(7) <= X"18";
		mem(8) <= X"CE";
		mem(9) <= X"00";
		mem(10) <= X"03";
		
		--ADAA 0,Y
		mem(11) <= X"18";
		mem(12) <= X"AB";
		mem(13) <= X"00";
		
--		--STAA 0,X
--		mem(14) <= X"A7";
--		mem(15) <= X"00";
--		
--		--ADDB 0,X
--		mem(16) <= X"EB";
--		mem(17) <= X"00";
--		
--		--STAB 0,Y
--		mem(18) <= X"18";
--		mem(19) <= X"E7";
--		mem(20) <= X"00";
--		
--		--JMP #$000B
--		mem(21) <= X"7E";
--		mem(22) <= X"00";
--		mem(23) <= X"0B";
		
		
		if (CSn = '0' and Wn = '0') then
			mem(conv_integer(unsigned(address))) <= data;
		end if;
	end process;

	TRI_STATE: process (address, CSn, Wn, data_out)
	begin
		if (CSn = '0' and Wn = '1') then
			data <= data_out;
		else 
			data <= (others => 'Z');
		end if;
	end process;
		
 -- Memory Read Block
	MEM_READ: process (address, CSn, Wn, mem) 
	begin
		if (CSn = '0' and Wn = '1') then
			data_out <= mem(conv_integer(unsigned(address)));
		else
			data_out <= (others => '0');
		end if;
	end process;
	
end Behavioral;
