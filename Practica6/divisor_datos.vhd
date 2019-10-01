library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity divisor_datos is
	Port ( clk : in STD_LOGIC;
			 entrada : in STD_LOGIC_VECTOR (12 downto 0);
			 mi : out STD_LOGIC_VECTOR(1 downto 0);
			 prueba: out STD_LOGIC_VECTOR(1 downto 0);
			 vf : out STD_LOGIC;
			 liga : out STD_LOGIC_VECTOR (3 downto 0);
			 salidas : out STD_LOGIC_VECTOR(3 downto 0));
end divisor_datos;

architecture Behavioral of divisor_datos is
begin
	process(clk, entrada)
	begin
		if rising_edge(clk) then
			mi <=  entrada(12 downto 11);
			prueba <= entrada(10 downto 9);
			vf <= entrada(8);
			liga <= entrada(7 downto 4);
			salidas <= entrada(3 downto 0);
		end if;
	end process;
end Behavioral;