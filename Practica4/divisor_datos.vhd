library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity divisor_datos is
	Port ( entrada : in STD_LOGIC_VECTOR (15 downto 0);
			 prueba : out STD_LOGIC_VECTOR (1 downto 0);
			 ligaF : out STD_LOGIC_VECTOR (2 downto 0);
			 ligaV : out STD_LOGIC_VECTOR (2 downto 0);
			 salidasF : out STD_LOGIC_VECTOR(3 downto 0);
			 salidasV : out STD_LOGIC_VECTOR(3 downto 0)
			 );
end divisor_datos;

architecture Behavioral of divisor_datos is
begin
	process(entrada)
	begin
		prueba <= entrada(15 downto 14);
		ligaF <= entrada(13 downto 11);
		ligaV <= entrada(10 downto 8);
		salidasF <= entrada(7 downto 4);
		salidasV <= entrada(3 downto 0);
	end process;
end Behavioral;