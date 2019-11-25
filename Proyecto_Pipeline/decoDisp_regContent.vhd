library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity decoDisp_regContent is
	Port ( reset : in STD_LOGIC;
			 sw_selectReg  :  in STD_LOGIC;
          AccA : in STD_LOGIC_VECTOR(15 downto 0);
			 AccB : in STD_LOGIC_VECTOR(15 downto 0);
          first_digit : out STD_LOGIC_VECTOR(7 downto 0);
			 second_digit : out STD_LOGIC_VECTOR(7 downto 0);
			 third_digit : out STD_LOGIC_VECTOR(7 downto 0));
end decoDisp_regContent;

architecture Behavioral of decoDisp_regContent is

signal first_value: STD_LOGIC_VECTOR (3 downto 0);
signal second_value: STD_LOGIC_VECTOR (3 downto 0);
signal third_value: STD_LOGIC_VECTOR (3 downto 0);

begin
	
	process(reset)
	begin 
		if(reset = '0') then
			first_value <= (others => '0');
			second_value <= (others => '0');
			third_value <= (others => '0');
		else
			if sw_selectReg = '0' then
				first_value <= ACCA(3 downto 0);
				second_value <= ACCA(7 downto 4);
				third_value <= ACCA(11 downto 8);
			else
				first_value <= AccB(3 downto 0);
				second_value <= AccB(7 downto 4);
				third_value <= AccB(11 downto 8);
			end if;
		end if;
	end process;
	
	process(first_value, second_value, third_value)
	begin
		case first_value is
			when "0000" => first_digit <= "00000011"; -- 0    
			when "0001" => first_digit <= "10011111"; -- 1
			when "0010" => first_digit <= "00100101"; -- 2
			when "0011" => first_digit <= "00001101"; -- 3
			when "0100" => first_digit <= "10011001"; -- 4
			when "0101" => first_digit <= "01001001"; -- 5
			when "0110" => first_digit <= "01000001"; -- 6
			when "0111" => first_digit <= "00011111"; -- 7
			when "1000" => first_digit <= "00000001"; -- 8    
			when "1001" => first_digit <= "00001001"; -- 9
			when "1010" => first_digit <= "00000101"; -- A
			when "1011" => first_digit <= "11000001"; -- B
			when "1100" => first_digit <= "01100011"; -- C
			when "1101" => first_digit <= "10000101"; -- D
			when "1110" => first_digit <= "01100001"; -- E
			when "1111" => first_digit <= "01110001"; -- F
		end case;
		 
		case second_value is
			when "0000" => second_digit <= "00000011"; -- 0    
			when "0001" => second_digit <= "10011111"; -- 1
			when "0010" => second_digit <= "00100101"; -- 2
			when "0011" => second_digit <= "00001101"; -- 3
			when "0100" => second_digit <= "10011001"; -- 4
			when "0101" => second_digit <= "01001001"; -- 5
			when "0110" => second_digit <= "01000001"; -- 6
			when "0111" => second_digit <= "00011111"; -- 7
			when "1000" => second_digit <= "00000001"; -- 8    
			when "1001" => second_digit <= "00001001"; -- 9
			when "1010" => second_digit <= "00000101"; -- A
			when "1011" => second_digit <= "11000001"; -- B
			when "1100" => second_digit <= "01100011"; -- C
			when "1101" => second_digit <= "10000101"; -- D
			when "1110" => second_digit <= "01100001"; -- E
			when "1111" => second_digit <= "01110001"; -- F
		end case;
		
		case third_value is
			when "0000" => third_digit <= "00000011"; -- 0    
			when "0001" => third_digit <= "10011111"; -- 1
			when "0010" => third_digit <= "00100101"; -- 2
			when "0011" => third_digit <= "00001101"; -- 3
			when "0100" => third_digit <= "10011001"; -- 4
			when "0101" => third_digit <= "01001001"; -- 5
			when "0110" => third_digit <= "01000001"; -- 6
			when "0111" => third_digit <= "00011111"; -- 7
			when "1000" => third_digit <= "00000001"; -- 8    
			when "1001" => third_digit <= "00001001"; -- 9
			when "1010" => third_digit <= "00000101"; -- A
			when "1011" => third_digit <= "11000001"; -- B
			when "1100" => third_digit <= "01100011"; -- C
			when "1101" => third_digit <= "10000101"; -- D
			when "1110" => third_digit <= "01100001"; -- E
			when "1111" => third_digit <= "01110001"; -- F
		end case;
		 
	end process;

end Behavioral;
