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
-- Generated on "09/18/2019 09:15:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LOAC_P5
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LOAC_P5_vhd_vec_tst IS
END LOAC_P5_vhd_vec_tst;
ARCHITECTURE LOAC_P5_arch OF LOAC_P5_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL currentState : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL nexttSate : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RELOJ : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL salida : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT LOAC_P5
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : IN STD_LOGIC;
	currentState : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	nexttSate : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	RELOJ : IN STD_LOGIC;
	RESET : IN STD_LOGIC;
	salida : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : LOAC_P5
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	currentState => currentState,
	nexttSate => nexttSate,
	RELOJ => RELOJ,
	RESET => RESET,
	salida => salida
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- C
t_prcs_C: PROCESS
BEGIN
	C <= '0';
WAIT;
END PROCESS t_prcs_C;

-- RELOJ
t_prcs_RELOJ: PROCESS
BEGIN
LOOP
	RELOJ <= '0';
	WAIT FOR 5000 ps;
	RELOJ <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_RELOJ;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
WAIT;
END PROCESS t_prcs_RESET;
END LOAC_P5_arch;
