library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity concatenador_entradas is
	Port ( Q7 : in STD_LOGIC;
			 Q0 : in STD_LOGIC;
			 Y7 : in STD_LOGIC;
			 Y0 : in STD_LOGIC;
			 R15Y : in STD_LOGIC;
			 d0Y : in STD_LOGIC;
			 R15X : in STD_LOGIC;
			 ROX : in STD_LOGIC;
			 R15AUX : in STD_LOGIC;
			 R0AUX : in STD_LOGIC;
			 R15AP : in STD_LOGIC;
			 R0AP : in STD_LOGIC;
			 R15PC : in STD_LOGIC;
			 R0PC : in STD_LOGIC;
			 FC : in STD_LOGIC;
			 INT : in STD_LOGIC;
			 C : in STD_LOGIC;
			 V : in STD_LOGIC;
			 Z : in STD_LOGIC;
			 N : in STD_LOGIC;
			 I : in STD_LOGIC;
			 H : in STD_LOGIC;
			 X : in STD_LOGIC;
			 S : in STD_LOGIC;
			 AUX : in STD_LOGIC;
			 data: out STD_LOGIC_VECTOR(31 downto 0));
end concatenador_entradas;

architecture Behavioral of concatenador_entradas is
begin
	process(Q7,Q0,Y7,Y0,R15Y,d0Y,R15X,ROX,R15AUX,R0AUX,R15AP,R0AP,R15PC,R0PC,FC,INT,C,V,Z,N,I,H,X,S,AUX)
	begin
		data <= Q7 & Q0 & Y7 & Y0 & R15Y & d0Y & R15X & ROX & R15AUX & R0AUX & R15AP & R0AP & R15PC & R0PC & FC & INT & C & V & Z & N & I & H & X & S & AUX & "0000000";
	end process;
end Behavioral;