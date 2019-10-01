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
-- Generated on "10/01/2019 00:24:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Practica6
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Practica6_vhd_vec_tst IS
END Practica6_vhd_vec_tst;
ARCHITECTURE Practica6_arch OF Practica6_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ENTRADA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL int : STD_LOGIC;
SIGNAL nextState : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL pin_name1 : STD_LOGIC;
SIGNAL RELOJ : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL salidas : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL state : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL x : STD_LOGIC;
SIGNAL y : STD_LOGIC;
COMPONENT Practica6
	PORT (
	ENTRADA : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	int : IN STD_LOGIC;
	nextState : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	pin_name1 : OUT STD_LOGIC;
	RELOJ : IN STD_LOGIC;
	RESET : IN STD_LOGIC;
	salidas : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	x : IN STD_LOGIC;
	y : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Practica6
	PORT MAP (
-- list connections between master ports and signals
	ENTRADA => ENTRADA,
	int => int,
	nextState => nextState,
	pin_name1 => pin_name1,
	RELOJ => RELOJ,
	RESET => RESET,
	salidas => salidas,
	state => state,
	x => x,
	y => y
	);
-- ENTRADA[3]
t_prcs_ENTRADA_3: PROCESS
BEGIN
	ENTRADA(3) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_3;
-- ENTRADA[2]
t_prcs_ENTRADA_2: PROCESS
BEGIN
	ENTRADA(2) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_2;
-- ENTRADA[1]
t_prcs_ENTRADA_1: PROCESS
BEGIN
	ENTRADA(1) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_1;
-- ENTRADA[0]
t_prcs_ENTRADA_0: PROCESS
BEGIN
	ENTRADA(0) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_0;

-- int
t_prcs_int: PROCESS
BEGIN
	int <= '0';
WAIT;
END PROCESS t_prcs_int;

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

-- x
t_prcs_x: PROCESS
BEGIN
	x <= '0';
WAIT;
END PROCESS t_prcs_x;

-- y
t_prcs_y: PROCESS
BEGIN
	y <= '0';
WAIT;
END PROCESS t_prcs_y;
END Practica6_arch;
