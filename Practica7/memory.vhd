library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory is
Port ( 
	dir : in STD_LOGIC_VECTOR (11 downto 0);
	data : out STD_LOGIC_VECTOR (93 downto 0));
end memory;

architecture Behavioral of memory is

begin
	process(dir)
	begin
	
		-- DATA FORMAT
		-- |    PRUEBA    |VF| Ins |                LIGA                 |
		--  P4 P3 P2 P1 P0 VF I1 I0 L11 L10 L9 L8 L7 L6 L5 L4 L3 L2 L1 L0 nCRI EB1 EB0 nWB EA1 EA0 nWA selbus UPA9 UPA8 UPA7 UPA6 UPA5 UPA4 UPA3 UPA2 UPA1 UPA0 nOEUPA nDUPA selmux nEX2 nEX1 nEX0 X2 X1 X0 EnaY nERA2 nERA1 nERA0 RA2 RA1 RA0 nEAP2 nEAP1 nEAP0 AP2 AP1 AP0 nEPC2 nEPC1 nEPC0 PC2 PC1 PC0 nCBD nAS nRW BD DINT HINT SET_IRQ SET_XIRQ B9 B8 B7 B6 B5 B4 B3 B2 B1 B0 CC CN CV CZ CI CH CX CS nHB ACCSEC

		-- Cadena por default: "0000000000000000000010010010000000000011011100001110001110001110001110000000000000000000000010"
		
		--if(dir=    X"000") then data <= "0000000000000000000010010010000000000011011100001110001110001110001110000000000000000000000010";
		--elsif(dir= X"001") then data <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"; 
												  
		-- CICLO FETCH										  
		if(dir=    X"000") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010";
		elsif(dir= X"001") then data <= "0000000000000000000000010010000000000011011100001110001110001110011010000000000000000000000010";
		elsif(dir= X"002") then data <= "0000001000000000000010010010000000000011011100001110001110001110001110000000000000000000000010";		
		
		-- LDAA (IMM)
		elsif(dir= X"860") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010";
		elsif(dir= X"861") then data <= "0000000000000000000010010100000000000011011100001110001110001110011010000000000000000000000010";
		elsif(dir= X"862") then data <= "0111111100000000000010010010000000000011011100001110001110001110001110000000010011000111000010";
		elsif(dir= X"863") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010";
		
		-- LDAB (IMM)
		elsif(dir= X"C60") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010";
		elsif(dir= X"C61") then data <= "0000000000000000000010100010000000000011011100001110001110001110011010000000000000000000000010";
		elsif(dir= X"C62") then data <= "0111111100000000000010010010000000000011011100001110001110001110001110000000100101000111000010";
		elsif(dir= X"C63") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010";
		
		-- ENAY
		elsif(dir= X"180") then data <= "0000000000000000000010010010000000000011011100011110001110000110000110000000000000000000000010";
		elsif(dir= X"181") then data <= "0000000000000000000000010010000000000011011100001110001110001110011010000000000000000000000010";
		elsif(dir= X"182") then data <= "0000001000000000000010010010000000000011011100001110001110001110001110000000000000000000000010";
		
		-- LDX (IND)
		elsif(dir= X"CE0") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010";
		elsif(dir= X"CE1") then data <= "0000000000000000000010010010000000000011010110001110001110001110011011000000000000000000000010";
		elsif(dir= X"CE2") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010";
		elsif(dir= X"CE3") then data <= "0000000000000000000010010010000000000011011001101110001110001110011010000000000000000000000010";
		elsif(dir= X"CE4") then data <= "0111101100000000000010010010000000000011011100001110001110001110001110000000110111000111000010";
		elsif(dir= X"CE5") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010";
		
		-- ADDA (IND)
<<<<<<< HEAD
		elsif(dir= X"AB0") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010";
		elsif(dir= X"AB1") then data <= "0000000000000000000010010010000000011111111100001110001110001110011010000000000000000000000010";
		elsif(dir= X"AB2") then data <= "0000000000000000000010010010001000011011111000001110001110001110001110000000000000000000000010";
		elsif(dir= X"AB3") then data <= "0000010110101011010110010010000000000000011100001100111110001110001110000000000000001000000010";
		elsif(dir= X"AB4") then data <= "1100000110101011011010010011001000011111010100001110001110001110001110000000000000000000000010";
		elsif(dir= X"AB5") then data <= "0000000000000000000010010011001010011111010100001110001110001110001110000000000000000000000010";
		elsif(dir= X"AB6") then data <= "0000000000000000000010010010000000000000011100001011001110001110001110000000000000000000000010";
		elsif(dir= X"AB7") then data <= "0000000000000000000010010010000000000011011100000110001110001110000110000000000000000000000010";
		elsif(dir= X"AB8") then data <= "0000000000000000000010011110000000010111111100001110001110001110001010000000000000000000000010";
		elsif(dir= X"AB9") then data <= "0111101100000000000010011000000000000000011100001110001110001110001110000000000000001111010010";
		elsif(dir= X"ABA") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010";
=======
		elsif(dir= X"CE0") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010";
		elsif(dir= X"CE1") then data <= "0000000000000000000010010010000000011111111100001110001110001110011010000000000000000000000010";
		elsif(dir= X"CE2") then data <= "0000000000000000000010010010001000011011111000001110001110001110001110000000000000000000000010";
		elsif(dir= X"CE3") then data <= "0000010110101011010110010010000000000000011100001100111110001110001110000000000000001000000010";
		elsif(dir= X"CE4") then data <= "0000000000000000000010010011001000011111010100001110001110001110001110000000000000000000000010";
		elsif(dir= X"CE5") then data <= "0000000000000000000010010011001010011111010100001110001110001110001110000000000000000000000010";
		elsif(dir= X"CE6") then data <= "0000000000000000000010010010000000000000011100001011001110001110001110000000000000000000000010";
		elsif(dir= X"CE7") then data <= "0000000000000000000010010010000000000011011100000110001110001110000110000000000000000000000010";
		elsif(dir= X"CE8") then data <= "0000000000000000000010011110000000010111111100001110001110001110001010000000000000000000000010";
		elsif(dir= X"CE9") then data <= "0111111100000000000010011000000000000000011100001110001110001110001110000000000000001111010010";
		elsif(dir= X"CEA") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010";
>>>>>>> marco/practica8

		-- STAA (IND)
		elsif(dir= X"A70") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010";
		elsif(dir= X"A71") then data <= "0000000000000000000010010010000000011111111100001110001110011110001010000000000000000000000010";
		elsif(dir= X"A72") then data <= "0000000000000000000010010010001000011011111000001110001110001110001110000000000000000000000010";
		elsif(dir= X"A73") then data <= "0000010110100111010110010010000000000000011100001100111110001110001110000000000000001000000010";
		elsif(dir= X"A74") then data <= "0000000000000000000010010011000000011111001100001110001110001110001110000000000000000000000010";
		elsif(dir= X"A75") then data <= "0000000000000000000010010011000010011111001100001110001110001110001110000000000000000000000010";
		elsif(dir= X"A76") then data <= "0000000000000000000010010010000000000000011100001011001110001110001110000000000001000111000010";
		elsif(dir= X"A77") then data <= "0000000000000000000010010010000000000011011100000110001110001110000110000000000000000000000010";
		elsif(dir= X"A78") then data <= "0111111100000000000010011010000000000011011100001110001110001110001000000000000000000000000010";
		elsif(dir= X"A79") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010";

		-- ADDB (IND)
		elsif(dir= X"EB0") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010";
		elsif(dir= X"EB1") then data <= "0000000000000000000010010010000000011111111100001110001110001110011010000000000000000000000010";
		elsif(dir= X"EB2") then data <= "0000000000000000000010010010001000011011111000001110001110001110001110000000000000000000000010";
		elsif(dir= X"EB3") then data <= "0000010111101011010110010010000000000000011100001100111110001110001110000000000000001000000010";
		elsif(dir= X"EB4") then data <= "0000000000000000000010010011000000011111010100001110001110001110001110000000000000000000000010";
		elsif(dir= X"EB5") then data <= "0000000000000000000010010011000010011111010100001110001110001110001110000000000000000000000010";
		elsif(dir= X"EB6") then data <= "0000000000000000000010010010000000000000011100001011001110001110001110000000000000000000000010";
		elsif(dir= X"EB7") then data <= "0000000000000000000010010010000000000011011100000110001110001110000110000000000000000000000010";
		elsif(dir= X"EB8") then data <= "0000000000000000000011110010000000010111111100001110001110001110001010000000000000000000000010";
		elsif(dir= X"EB9") then data <= "0111111100000000000011000010000000000000011100001110001110001110001110000000000000001111010010";
		elsif(dir= X"EBA") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010";

		-- STAB (IND)
		elsif(dir= X"E70") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010";
		elsif(dir= X"E71") then data <= "0000000000000000000010010010000000011111111100001110001110011110001010000000000000000000000010";
		elsif(dir= X"E72") then data <= "0000000000000000000010010010001000011011111000001110001110001110001110000000000000000000000010";
		elsif(dir= X"E73") then data <= "0000010111100111010110010010000000000000011100001100111110001110001110000000000000001000000010";
		elsif(dir= X"E74") then data <= "0000000000000000000010010011000000011111001100001110001110001110001110000000000000000000000010";
		elsif(dir= X"E75") then data <= "0000000000000000000010010011000010011111001100001110001110001110001110000000000000000000000010";
		elsif(dir= X"E76") then data <= "0000000000000000000010010010000000000000011100001011001110001110001110000000000001000111000010";
		elsif(dir= X"E77") then data <= "0000000000000000000010010010000000000011011100000110001110001110000110000000000000000000000010";
		elsif(dir= X"E78") then data <= "0111111100000000000011010010000000000011011100001110001110001110001000000000000000000000000010";
		elsif(dir= X"E79") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010";

		-- ABA (INH)
		elsif(dir= X"1B0") then data <= "0000000000000000000011111110000000000111111100001110001110001110001110000000000000000000000010";
		elsif(dir= X"1B1") then data <= "0111111100000000000010010100000000000000011100001110001110001110001110000000000000001111010010";
		elsif(dir= X"1B2") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010";
	
		-- JMP (EXT)
		elsif(dir= X"7E0") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010";
		elsif(dir= X"7E1") then data <= "0000000000000000000010010010000000000011011100001011001110001110011011000000000000000000000010";
		elsif(dir= X"7E2") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010";
		elsif(dir= X"7E3") then data <= "0000000000000000000010010010000000000011011100001100111110001110011010000000000000000000000010";
		elsif(dir= X"7E4") then data <= "0111111100000000000010010010000000000011011100001000001110001001011110000000000000000000000010";
		elsif(dir= X"7E5") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010";
		
		-- DEFAULT
		else data <= "0000000000000000000010010010000000000011011100001110001110001110001110000000000000000000000010";
		end if;
	end process;
end Behavioral;