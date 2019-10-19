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
-- Generated on "08/18/2019 23:19:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          practica2_vhdl
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY practica2_vhdl_vhd_vec_tst IS
END practica2_vhdl_vhd_vec_tst;
ARCHITECTURE practica2_vhdl_arch OF practica2_vhdl_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL E : STD_LOGIC;
SIGNAL RELOJ : STD_LOGIC;
SIGNAL S : STD_LOGIC;
COMPONENT practica2_vhdl
	PORT (
	E : IN STD_LOGIC;
	RELOJ : IN STD_LOGIC;
	S : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : practica2_vhdl
	PORT MAP (
-- list connections between master ports and signals
	E => E,
	RELOJ => RELOJ,
	S => S
	);

-- E
t_prcs_E: PROCESS
BEGIN
	E <= '1';
	WAIT FOR 20000 ps;
	E <= '0';
	WAIT FOR 10000 ps;
	E <= '1';
	WAIT FOR 30000 ps;
	E <= '0';
	WAIT FOR 20000 ps;
	E <= '1';
	WAIT FOR 20000 ps;
	E <= '0';
	WAIT FOR 10000 ps;
	E <= '1';
	WAIT FOR 10000 ps;
	E <= '0';
	WAIT FOR 20000 ps;
	E <= '1';
	WAIT FOR 20000 ps;
	E <= '0';
	WAIT FOR 10000 ps;
	E <= '1';
	WAIT FOR 40000 ps;
	E <= '0';
	WAIT FOR 20000 ps;
	E <= '1';
	WAIT FOR 10000 ps;
	E <= '0';
	WAIT FOR 10000 ps;
	E <= '1';
	WAIT FOR 20000 ps;
	E <= '0';
	WAIT FOR 10000 ps;
	E <= '1';
	WAIT FOR 20000 ps;
	E <= '0';
	WAIT FOR 10000 ps;
	E <= '1';
	WAIT FOR 10000 ps;
	E <= '0';
	WAIT FOR 40000 ps;
	E <= '1';
	WAIT FOR 20000 ps;
	E <= '0';
	WAIT FOR 10000 ps;
	E <= '1';
	WAIT FOR 10000 ps;
	E <= '0';
	WAIT FOR 10000 ps;
	E <= '1';
	WAIT FOR 50000 ps;
	E <= '0';
	WAIT FOR 10000 ps;
	E <= '1';
	WAIT FOR 20000 ps;
	E <= '0';
	WAIT FOR 20000 ps;
	E <= '1';
	WAIT FOR 10000 ps;
	E <= '0';
	WAIT FOR 20000 ps;
	E <= '1';
	WAIT FOR 20000 ps;
	E <= '0';
	WAIT FOR 20000 ps;
	E <= '1';
	WAIT FOR 10000 ps;
	E <= '0';
	WAIT FOR 20000 ps;
	E <= '1';
	WAIT FOR 10000 ps;
	E <= '0';
	WAIT FOR 30000 ps;
	E <= '1';
	WAIT FOR 10000 ps;
	E <= '0';
	WAIT FOR 60000 ps;
	E <= '1';
	WAIT FOR 20000 ps;
	E <= '0';
	WAIT FOR 20000 ps;
	E <= '1';
	WAIT FOR 30000 ps;
	E <= '0';
	WAIT FOR 20000 ps;
	E <= '1';
	WAIT FOR 20000 ps;
	E <= '0';
	WAIT FOR 10000 ps;
	E <= '1';
	WAIT FOR 20000 ps;
	E <= '0';
	WAIT FOR 30000 ps;
	E <= '1';
	WAIT FOR 10000 ps;
	E <= '0';
	WAIT FOR 10000 ps;
	E <= '1';
	WAIT FOR 10000 ps;
	E <= '0';
	WAIT FOR 20000 ps;
	E <= '1';
	WAIT FOR 10000 ps;
	E <= '0';
	WAIT FOR 10000 ps;
	E <= '1';
	WAIT FOR 10000 ps;
	E <= '0';
	WAIT FOR 20000 ps;
	E <= '1';
WAIT;
END PROCESS t_prcs_E;

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
END practica2_vhdl_arch;
