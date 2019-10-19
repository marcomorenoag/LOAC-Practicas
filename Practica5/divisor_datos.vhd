library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity divisor_datos is
	Port ( entrada : in STD_LOGIC_VECTOR (13 downto 0);
			 prueba: out STD_LOGIC_VECTOR(1 downto 0);
			 vf : out STD_LOGIC;
			 liga : out STD_LOGIC_VECTOR (2 downto 0);
			 salidasC : out STD_LOGIC_VECTOR(3 downto 0);
			 salidasI : out STD_LOGIC_VECTOR(3 downto 0));
end divisor_datos;

architecture Behavioral of divisor_datos is
begin
	process(entrada)
	begin
		prueba <= entrada(13 downto 12);
		vf <= entrada(11);
		liga <= entrada(10 downto 8);
		salidasC <= entrada(7 downto 4);
		salidasI <= entrada(3 downto 0);
	end process;
end Behavioral;