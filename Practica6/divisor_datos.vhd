library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity divisor_datos is
	Port ( clk : in STD_LOGIC;
			 entrada : in STD_LOGIC_VECTOR (12 downto 0);
			 RESET : in STD_LOGIC;
			 mi : out STD_LOGIC_VECTOR(1 downto 0);
			 prueba: out STD_LOGIC_VECTOR(1 downto 0);
			 vf : out STD_LOGIC;
			 liga : out STD_LOGIC_VECTOR (3 downto 0);
			 salidas : out STD_LOGIC_VECTOR(3 downto 0));
end divisor_datos;

architecture Behavioral of divisor_datos is
begin
	process(clk, entrada, RESET)
	begin
		if RESET = '0' then 
			liga <= B"0000";
		elsif rising_edge(clk) then
			mi <=  entrada(12 downto 11);
			prueba <= entrada(10 downto 9);
			vf <= entrada(8);
			liga <= entrada(7 downto 4);
		end if;
	end process;
	
	process(entrada)
	begin
		salidas <= entrada(3 downto 0);
	end process;
end Behavioral;