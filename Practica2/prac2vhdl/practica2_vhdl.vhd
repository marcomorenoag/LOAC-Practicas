library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity practica2_vhdl is
	Port( RELOJ : in STD_LOGIC;
			E  : in STD_LOGIC;
			S  : out STD_LOGIC;
			nextState : out STD_LOGIC_VECTOR(1 downto 0);
			currentState : out STD_LOGIC_VECTOR(1 downto 0));
end practica2_vhdl;

architecture Behavioral of practica2_vhdl is

	signal esiguiente : std_logic_vector (1 downto 0) := B"00";
	constant A : std_logic_vector(1 downto 0) := B"00";
	constant B : std_logic_vector(1 downto 0) := B"01";
	constant C : std_logic_vector(1 downto 0) := B"10";
	constant D : std_logic_vector(1 downto 0) := B"11";
	
	begin
	process (E, RELOJ)
		begin
			if rising_edge (RELOJ) then
				case esiguiente is
					when A =>
						S <= '0';
						currentState <= A;
						if E = '0' then 
							esiguiente <= A;
							nextState <= A;
						elsif E = '1' then 
							esiguiente <= B;
							nextState <= B;
						end if;
					when B =>
						S <= '0';
						currentState <= B;
						if E = '1' then 
							esiguiente <= C;
							nextState <= C;
						elsif E = '0' then 
							esiguiente <= A;
							nextState <= A;
						end if;
					when C =>
						S <= '0';
						currentState <= C;
						if E = '0' then 
							esiguiente <= A;
							nextState <= A;
						elsif E = '1' then 
							esiguiente <= D;
							nextState <= D;
						end if;
					when D =>
						S <= '1';
						currentState <= D;
						if E = '0' then 
							esiguiente <= A;
							nextState <= A;
						elsif E = '1' then 
							esiguiente <= D;
							nextState <= D;
						end if;
					when others => null;
				end case;
			end if;
	end process;
end Behavioral;