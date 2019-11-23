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

		-- Inicializa ACCA = 0, MEM_0 = 0, ACCB = 1
		memoria(0) <= x"00860000"; -- LDAA 00
		memoria(1) <= x"00B70004"; -- STAA #0004 (SUMA)
		memoria(2) <= x"00C60001"; -- LDAB 01
		-- Número limite
		memoria(3) <= x"00860005"; -- LDAA 05 (n) --- JUMP AQUI
		-- IF  ACCB > limite THEN RESET 
		memoria(4) <= x"00110000"; -- CBA (ACCA - ACCB) Actualizar banderas 
		memoria(5) <= x"00270013"; -- JB #0013 si se cumple salta al reset (x"13"=19)
		memoria(6) <= x"00010000"; -- NOP
		memoria(7) <= x"00010000"; -- NOP
		memoria(8) <= x"00010000"; -- NOP
		-- ELSE: A + B, B++
		memoria(9) <= x"00960004";  -- LDAA #0004 acceso directo a memoria
		memoria(10) <= x"001B0000"; -- ABA
		memoria(11) <= x"005c0000"; -- INCB
		memoria(12) <= x"00B70004"; -- STAA #0004 guarda suma
		memoria(13) <= x"007E0003"; -- JMP al x"03"
		memoria(14) <= x"00010000"; -- NOP
		memoria(15) <= x"00010000"; -- NOP
		memoria(16) <= x"00010000"; -- NOP

		-- Subrutina de reset (fin de programa)
		memoria(19) <= x"007E0000"; -- JMP al x"0"
		memoria(20) <= x"00010000"; -- NOP
		memoria(21) <= x"00010000"; -- NOP
		memoria(22) <= x"00010000"; -- NOP

		
		-- Mapeo de dirección de la memoria
		process(direccion)
		begin			
			datos <= memoria(conv_integer(unsigned(direccion)));
		end process;
end Behavioral;
