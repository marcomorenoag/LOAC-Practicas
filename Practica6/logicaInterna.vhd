library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logicaInterna is
	Port (  mi : in STD_LOGIC_VECTOR(1 downto 0);
			  carga : in STD_LOGIC;
			  NOTPL : OUT STD_LOGIC;
			  NOTVECT : OUT STD_LOGIC;
			  NOTMAP : OUT STD_LOGIC;
			  SELECTOR : OUT STD_LOGIC
			  );
end logicaInterna;

architecture Behavioral of logicaInterna is
	signal eval : std_logic_vector(2 downto 0) := mi & carga;
begin
	process (mi, carga)
	begin
		case eval is
			when "000" => SELECTOR <= '0';
							  NOTPL <= '1';
							  NOTVECT <= '1';
							  NOTMAP <= '1';
			when "001" => SELECTOR <= '0';
							  NOTPL <= '1';
							  NOTVECT <= '1';
							  NOTMAP <= '1';
		   when "010" => SELECTOR <= '1';
							  NOTPL <= '0';
							  NOTVECT <= '1';
							  NOTMAP <= '1';
			when "011" => SELECTOR <= '0';
							  NOTPL <= '0';
							  NOTVECT <= '1';
							  NOTMAP <= '1';
			when "100" => SELECTOR <= '1';
							  NOTPL <= '1';
							  NOTVECT <= '0';
							  NOTMAP <= '1';	
			when "101" => SELECTOR <= '0';
							  NOTPL <= '1';
							  NOTVECT <= '0';
							  NOTMAP <= '1';
			when "110" => SELECTOR <= '1';
							  NOTPL <= '1';
							  NOTVECT <= '1';
							  NOTMAP <= '0';
			when "111" => SELECTOR <= '1';
							  NOTPL <= '1';
							  NOTVECT <= '1';
							  NOTMAP <= '0';	
			end case;			  
	end process;
end Behavioral;