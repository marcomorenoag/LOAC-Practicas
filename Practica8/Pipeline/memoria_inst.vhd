-- memoria de solo lectura

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memoria_inst is
	Port( direccion : in STD_LOGIC_VECTOR (15 downto 0);
			datos : out STD_LOGIC_VECTOR (31 downto 0));
end memoria_inst;

architecture Behavioral of memoria_inst is
   type memory is array(0 to 50) of std_logic_vector(31 downto 0);
	signal memoria : memory;
	
	begin
		-- Las direcciones las indicamos en decimal
		
		--memoria(0) <= "000000000010" & "01" & "01" & '1' & "11000";
		--memoria(1) <= "000000000011" & "01" & "11" & '1' & "01001";
		--memoria(2) <= "000000000100" & "01" & "00" & '1' & "00100";
		--memoria(3) <= "000000000001" & "01" & "10" & '0' & "00110";
		--memoria(4) <= "000000000000" & "01" & "11" & '1' & "01010";
		
		
		-- Funcion de la memoria
		process(direccion)
		begin			
			datos <= memoria(conv_integer(unsigned(direccion)));
		end process;
end Behavioral;
