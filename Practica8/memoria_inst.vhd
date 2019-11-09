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
		
		
		memoria(0) <= X"00C60002"; -- LDAB #$02
		memoria(1) <= X"00860000"; -- LDAA #$00
		memoria(2) <= X"00010000"; -- NOP
		memoria(4) <= X"001B0000"; -- ABA
		memoria(5) <= X"007E0002"; -- JMP #$0002
		memoria(6) <= X"00010000"; -- NOP
		memoria(7) <= X"00010000"; -- NOP
		memoria(8) <= X"00010000"; -- NOP
		
		
		
		-- Funcion de la memoria
		process(direccion)
		begin			
			datos <= memoria(conv_integer(unsigned(direccion)));
		end process;
end Behavioral;
