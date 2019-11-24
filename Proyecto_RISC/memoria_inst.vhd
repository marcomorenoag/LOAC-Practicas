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
		-- 24 de noviembre del 2019
		--
		-- DESCRIPCIÓN:
		-- Este programa realiza la siguiente SERIE: SUMA((i+(2i))) desde i=1 hasta i=5
		-- El desarrollo de la serie es el siguiente:
		--  1 + 2	=> SUMA = 0x03
		--  2 + 4	=> SUMA = 0x06
		--  3 + 6	=> SUMA = 0x09
		--  4 + 8	=> SUMA = 0x0C
		--  5 + 32 (Este paso ya no se ejecuta, aquí se detiene
		--
		-- El registro ACCA almacenará el resultado de: i
		-- El registro ACCB almacenará el resultado de: (2i)
		-- El indice contador "i" se almacenará en la localidad de memoria[0]
		-- La suma de ACCA + ACCB se almacenará en SUMA, que es la localidad de memoria[1]
		-- 
		-- CÓDIGO EN ENSAMBLADOR
		-- Inicio:
		memoria(0) <= x"00860001"; -- LDAA #0001 ; (ACCA) <- 0x0001
		memoria(1) <= x"00010000"; -- NOP
		memoria(2) <= x"00B70000"; -- STAA $#0000 ; (mem[0]) <- (ACCA) => counter
		memoria(3) <= x"00010000"; -- NOP
		memoria(4) <= x"00D60000"; -- LDAB $#0000 ; (ACCB) <- (mem[0]) => counter
		
		-- límite_ACCB = 5
		memoria(5) <= x"00860005"; -- LDAA #0005 ; (ACCA) <- 0x0005
	
		-- IF (ACCB >= límite) THEN: reset 
		memoria(6) <= x"00110000"; -- CBA ; (ACCA) - (ACCB) ; update flags (N, Z, V, C)
		memoria(7) <= x"00270016"; -- JZ #0013 ; IF (Z == 1): PC <- (0x0016 = 0d0022)
		memoria(8) <= x"00010000"; -- NOP
		memoria(9) <= x"00010000"; -- NOP
		memoria(10)<= x"00010000"; -- NOP
		
		-- ELSE: (ACCA + ACCB; ACCB <- ACBB + 1)
		memoria(11)<= x"00960000"; -- LDAA $#0000 ; (ACCA) <- (mem[0]) => counter
		memoria(12)<= x"00580000"; -- LSLB ; ACCB <<  => 2^ACCB
		memoria(13)<= x"001B0000"; -- ABA ; (ACCA) <- (ACCA) + (ACCB)
		-- ACCB = mem[1] (suma)
		-- ABA (ACCA = ACCA + ACCB)
		memoria(14)<= x"00B70005"; -- STAA $#0001 ; (mem[1]) <- (ACCA) => acumulator
		memoria(15)<= x"00960000"; -- LDAA $#0000 ; (ACCA) <- (mem[0]) => counter
		memoria(16)<= x"004C0000"; -- INCA ; (ACCA) <- (ACCA) + 1
		memoria(17)<= x"00B70000"; -- STAA $#0000 ; (mem[0]) <- (ACCA) => acumulator + 1 
		memoria(18)<= x"007E0003"; -- JMP #0002 ; PC <- (0x0002)
		memoria(19)<= x"00010000"; -- NOP
		memoria(20)<= x"00010000"; -- NOP
		memoria(21)<= x"00010000"; -- NOP
		
		-- RESET (FINAL)
		memoria(22)<= x"004F0000"; -- CLRA ; ACCA <- 0x0000
		memoria(23)<= x"005F0000"; -- CLRB ; ACCB <- 0x0000
		memoria(24)<= x"007E0000"; -- JMP #0000 ; PC <- (0x0000)
		memoria(25)<= x"00010000"; -- NOP
		memoria(26)<= x"00010000"; -- NOP
		memoria(27)<= x"00010000"; -- NOP
		

		
		-- Mapeo de dirección de la memoria
		process(direccion)
		begin			
			datos <= memoria(conv_integer(unsigned(direccion)));
		end process;
end Behavioral;
