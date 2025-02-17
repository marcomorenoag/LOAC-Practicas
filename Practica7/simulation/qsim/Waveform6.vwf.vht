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
-- Generated on "11/03/2019 23:31:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LOAC_P7_CISC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LOAC_P7_CISC_vhd_vec_tst IS
END LOAC_P7_CISC_vhd_vec_tst;
ARCHITECTURE LOAC_P7_CISC_arch OF LOAC_P7_CISC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL CurrentState : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL Debug_Q : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Debug_Yupa : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DebugACUMA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DebugACUMB : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DebugAP : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DebugIX : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DebugIY : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DebugPC : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DebugRA : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL IRQn : STD_LOGIC;
SIGNAL muxentra : STD_LOGIC;
SIGNAL N : STD_LOGIC;
SIGNAL prueba : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL regInstr : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL RESET : STD_LOGIC;
SIGNAL selector : STD_LOGIC;
SIGNAL vf : STD_LOGIC;
SIGNAL XIRQn : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT LOAC_P7_CISC
	PORT (
	CLK : IN STD_LOGIC;
	CurrentState : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	Debug_Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Debug_Yupa : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DebugACUMA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DebugACUMB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DebugAP : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	DebugIX : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	DebugIY : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	DebugPC : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	DebugRA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	IRQn : IN STD_LOGIC;
	muxentra : OUT STD_LOGIC;
	N : OUT STD_LOGIC;
	prueba : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	regInstr : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	RESET : IN STD_LOGIC;
	selector : OUT STD_LOGIC;
	vf : OUT STD_LOGIC;
	XIRQn : IN STD_LOGIC;
	Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : LOAC_P7_CISC
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CurrentState => CurrentState,
	Debug_Q => Debug_Q,
	Debug_Yupa => Debug_Yupa,
	DebugACUMA => DebugACUMA,
	DebugACUMB => DebugACUMB,
	DebugAP => DebugAP,
	DebugIX => DebugIX,
	DebugIY => DebugIY,
	DebugPC => DebugPC,
	DebugRA => DebugRA,
	IRQn => IRQn,
	muxentra => muxentra,
	N => N,
	prueba => prueba,
	regInstr => regInstr,
	RESET => RESET,
	selector => selector,
	vf => vf,
	XIRQn => XIRQn,
	Z => Z
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

-- IRQn
t_prcs_IRQn: PROCESS
BEGIN
	IRQn <= '1';
WAIT;
END PROCESS t_prcs_IRQn;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
WAIT;
END PROCESS t_prcs_RESET;

-- XIRQn
t_prcs_XIRQn: PROCESS
BEGIN
	XIRQn <= '1';
WAIT;
END PROCESS t_prcs_XIRQn;
END LOAC_P7_CISC_arch;
