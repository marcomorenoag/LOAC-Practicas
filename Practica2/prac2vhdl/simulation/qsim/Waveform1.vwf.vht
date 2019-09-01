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
-- Generated on "08/21/2019 09:34:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Block3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Block3_vhd_vec_tst IS
END Block3_vhd_vec_tst;
ARCHITECTURE Block3_arch OF Block3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL currentState : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL inicia : STD_LOGIC;
SIGNAL maquinaBtn : STD_LOGIC;
SIGNAL nextState : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Salida : STD_LOGIC;
COMPONENT Block3
	PORT (
	Clock : IN STD_LOGIC;
	currentState : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	inicia : IN STD_LOGIC;
	maquinaBtn : IN STD_LOGIC;
	nextState : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	Salida : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Block3
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	currentState => currentState,
	inicia => inicia,
	maquinaBtn => maquinaBtn,
	nextState => nextState,
	Salida => Salida
	);
END Block3_arch;
