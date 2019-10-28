library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bufferDataBusbaja is
    port(PortL,PortR: inout std_logic_vector(7 downto 0);
          nRW: in std_logic;
			 BD: in std_logic);
end bufferDataBusbaja;

architecture Behavioral of bufferDataBusbaja is

begin

 PortR <= PortL when (nRW = '0' and BD = '0') else (others => 'Z');
 PortL <= PortR when (nRW = '1' and BD = '0') else (others => 'Z');

end Behavioral;