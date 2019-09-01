-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/28/2019 10:25:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Practica3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Practica3_vhd_vec_tst IS
END Practica3_vhd_vec_tst;
ARCHITECTURE Practica3_arch OF Practica3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BOTON : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL entradas : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RESET : STD_LOGIC;
SIGNAL salida : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL salidas : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Switch : STD_LOGIC;
COMPONENT Practica3
	PORT (
	BOTON : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	entradas : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	RESET : IN STD_LOGIC;
	salida : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	salidas : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Switch : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Practica3
	PORT MAP (
-- list connections between master ports and signals
	BOTON => BOTON,
	CLK => CLK,
	entradas => entradas,
	RESET => RESET,
	salida => salida,
	salidas => salidas,
	Switch => Switch
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
WAIT;
END PROCESS t_prcs_RESET;
END Practica3_arch;
