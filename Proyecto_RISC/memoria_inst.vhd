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

		-- PROGRAMA EN ENSAMBLADOR DEL PROCESADOR RISC 68HC11
		--
		-- REALIZADO POR:
		-- * García Fernández Jesús Alejandro
		-- * López Santibañez Jiménez Luis Gerardo
		-- * Moreno Guerra Marco Antonio
		--
		-- FECHA DE ÚLTIMA MODIFICACIÓN:
		-- 23 de noviembre del 2019
		--
		-- DESCRIPCIÓN:
		-- Este programa realiza la siguiente SERIE: SUMA(((-1)^(i+1))*i+(2^i))) desde i=0 hasta i=5
		-- El desarrollo de la serie es el siguiente:
		--  0 + 1	=> SUMA = 1
		--  1 + 2	=> SUMA = 4
		-- -2 + 4	=> SUMA = 6
		--  3 + 8	=> SUMA = 17
		-- -4 + 16	=> SUMA = 29
		--  5 + 32 (Este paso ya no se ejecuta, aquí se detiene
		--
		-- El registro ACCA almacenará el resultado de: ((-1)^(i+1))*i
		-- El registro ACCB almacenará el resultado de: (2^i)
		-- La suma de ACCA + ACCB se almacenará en SUMA, que es la localidad de memoria[0]
		-- El indice contador "i" se almacenará en la localidad de memoria[1]
		-- 
		-- CÓDIGO EN ENSAMBLADOR
		-- Inicio: ACCA = 0, MEM_0 = 0, ACCB = 1
		memoria(0) <= x"00860000"; -- LDAA #0000 ; (ACCA) <- 0x0000
		memoria(1) <= x"00B70004"; -- STAA #0004 ; (mem[4]) <- (ACCA)
		memoria(2) <= x"00C60001"; -- LDAB #0001 ; (ACCB) <- 0x0001
		
		-- límite = 5
		memoria(3) <= x"00860005"; -- LDAA #0005 ; (ACCA) <- 0x0005
		
		-- IF (ACCB >= límite) THEN: reset 
		memoria(4) <= x"00110000"; -- CBA ; (ACCA) - (ACCB) ; update flags (N, Z, V, C)
		memoria(5) <= x"00270013"; -- JZ #0013 ; IF (Z == 1): PC <- (0x0013 = 0d0019)
		memoria(6) <= x"00010000"; -- NOP
		memoria(7) <= x"00010000"; -- NOP
		memoria(8) <= x"00010000"; -- NOP
		
		-- ELSE: (ACCA + ACCB; ACCB <- ACBB + 1)
		memoria(9) <= x"00960004";  -- LDAA $#0004 ; (ACCA) <- (mem[4])
		memoria(10) <= x"001B0000"; -- ABA ; (ACCA) <- (ACCA) + (ACCB)
		memoria(11) <= x"005c0000"; -- INCB ; (ACCB) <- (ACCB) + 1
		memoria(12) <= x"00B70004"; -- STAA #0004 ; (mem[4]) <- (ACCA)
		memoria(13) <= x"007E0003"; -- JMP #0003 ; PC <- (0x0003)
		memoria(14) <= x"00010000"; -- NOP
		memoria(15) <= x"00010000"; -- NOP
		memoria(16) <= x"00010000"; -- NOP

		-- Subrutina de reset (fin de programa)
		memoria(19) <= x"007E0000"; -- JMP #0000 ; PC <- (0x0000)
		memoria(20) <= x"00010000"; -- NOP
		memoria(21) <= x"00010000"; -- NOP
		memoria(22) <= x"00010000"; -- NOP

		
		-- Mapeo de dirección de la memoria
		process(direccion)
		begin			
			datos <= memoria(conv_integer(unsigned(direccion)));
		end process;
end Behavioral;
