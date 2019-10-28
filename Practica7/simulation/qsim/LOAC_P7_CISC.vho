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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/27/2019 21:04:10"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LOAC_P7_CISC IS
    PORT (
	Z : OUT std_logic;
	RESET : IN std_logic;
	CLK : IN std_logic;
	ENAY : IN std_logic;
	IRQn : IN std_logic;
	XIRQn : IN std_logic;
	N : OUT std_logic;
	CurrentState : OUT std_logic_vector(11 DOWNTO 0);
	Debug_Q : OUT std_logic_vector(7 DOWNTO 0);
	Debug_Yupa : OUT std_logic_vector(7 DOWNTO 0);
	DebugACUMA : OUT std_logic_vector(7 DOWNTO 0);
	DebugACUMB : OUT std_logic_vector(7 DOWNTO 0);
	DebugAP : OUT std_logic_vector(15 DOWNTO 0);
	DebugIX : OUT std_logic_vector(15 DOWNTO 0);
	DebugIY : OUT std_logic_vector(15 DOWNTO 0);
	DebugPC : OUT std_logic_vector(15 DOWNTO 0);
	DebugRA : OUT std_logic_vector(15 DOWNTO 0);
	regInstr : OUT std_logic_vector(11 DOWNTO 0)
	);
END LOAC_P7_CISC;

-- Design Ports Information
-- Z	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRQn	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XIRQn	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[11]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[10]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[9]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[8]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[7]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[6]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[5]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[4]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[3]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[2]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[0]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[7]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[6]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[5]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[4]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[3]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[0]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[7]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[5]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[4]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[3]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[2]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[1]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[0]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[7]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[6]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[5]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[4]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[3]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[0]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[7]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[6]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[5]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[4]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[3]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[1]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[15]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[14]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[13]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[12]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[11]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[10]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[9]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[8]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[4]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[2]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[15]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[14]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[13]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[12]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[11]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[10]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[9]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[8]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[7]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[6]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[5]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[4]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[3]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[0]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[15]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[14]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[13]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[12]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[11]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[10]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[9]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[8]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[7]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[6]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[5]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[4]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[3]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[2]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[1]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[15]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[14]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[13]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[12]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[11]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[10]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[9]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[8]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[7]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[6]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[5]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[4]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[3]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[1]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[15]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[14]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[13]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[12]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[11]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[10]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[9]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[8]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[7]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[5]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[4]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[2]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[11]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[10]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[9]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[8]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[7]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[6]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[5]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENAY	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LOAC_P7_CISC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ENAY : std_logic;
SIGNAL ww_IRQn : std_logic;
SIGNAL ww_XIRQn : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_CurrentState : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Debug_Q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Debug_Yupa : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DebugACUMA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DebugACUMB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DebugAP : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DebugIX : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DebugIY : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DebugPC : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DebugRA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_regInstr : std_logic_vector(11 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst6|inst3|nCRI~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|inst3|nCBD~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IRQn~input_o\ : std_logic;
SIGNAL \XIRQn~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \regInstr[11]~output_o\ : std_logic;
SIGNAL \regInstr[10]~output_o\ : std_logic;
SIGNAL \regInstr[9]~output_o\ : std_logic;
SIGNAL \regInstr[8]~output_o\ : std_logic;
SIGNAL \regInstr[7]~output_o\ : std_logic;
SIGNAL \regInstr[6]~output_o\ : std_logic;
SIGNAL \regInstr[5]~output_o\ : std_logic;
SIGNAL \regInstr[4]~output_o\ : std_logic;
SIGNAL \regInstr[3]~output_o\ : std_logic;
SIGNAL \regInstr[2]~output_o\ : std_logic;
SIGNAL \regInstr[1]~output_o\ : std_logic;
SIGNAL \regInstr[0]~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \N~output_o\ : std_logic;
SIGNAL \CurrentState[11]~output_o\ : std_logic;
SIGNAL \CurrentState[10]~output_o\ : std_logic;
SIGNAL \CurrentState[9]~output_o\ : std_logic;
SIGNAL \CurrentState[8]~output_o\ : std_logic;
SIGNAL \CurrentState[7]~output_o\ : std_logic;
SIGNAL \CurrentState[6]~output_o\ : std_logic;
SIGNAL \CurrentState[5]~output_o\ : std_logic;
SIGNAL \CurrentState[4]~output_o\ : std_logic;
SIGNAL \CurrentState[3]~output_o\ : std_logic;
SIGNAL \CurrentState[2]~output_o\ : std_logic;
SIGNAL \CurrentState[1]~output_o\ : std_logic;
SIGNAL \CurrentState[0]~output_o\ : std_logic;
SIGNAL \Debug_Q[7]~output_o\ : std_logic;
SIGNAL \Debug_Q[6]~output_o\ : std_logic;
SIGNAL \Debug_Q[5]~output_o\ : std_logic;
SIGNAL \Debug_Q[4]~output_o\ : std_logic;
SIGNAL \Debug_Q[3]~output_o\ : std_logic;
SIGNAL \Debug_Q[2]~output_o\ : std_logic;
SIGNAL \Debug_Q[1]~output_o\ : std_logic;
SIGNAL \Debug_Q[0]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[7]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[6]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[5]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[4]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[3]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[2]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[1]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[0]~output_o\ : std_logic;
SIGNAL \DebugACUMA[7]~output_o\ : std_logic;
SIGNAL \DebugACUMA[6]~output_o\ : std_logic;
SIGNAL \DebugACUMA[5]~output_o\ : std_logic;
SIGNAL \DebugACUMA[4]~output_o\ : std_logic;
SIGNAL \DebugACUMA[3]~output_o\ : std_logic;
SIGNAL \DebugACUMA[2]~output_o\ : std_logic;
SIGNAL \DebugACUMA[1]~output_o\ : std_logic;
SIGNAL \DebugACUMA[0]~output_o\ : std_logic;
SIGNAL \DebugACUMB[7]~output_o\ : std_logic;
SIGNAL \DebugACUMB[6]~output_o\ : std_logic;
SIGNAL \DebugACUMB[5]~output_o\ : std_logic;
SIGNAL \DebugACUMB[4]~output_o\ : std_logic;
SIGNAL \DebugACUMB[3]~output_o\ : std_logic;
SIGNAL \DebugACUMB[2]~output_o\ : std_logic;
SIGNAL \DebugACUMB[1]~output_o\ : std_logic;
SIGNAL \DebugACUMB[0]~output_o\ : std_logic;
SIGNAL \DebugAP[15]~output_o\ : std_logic;
SIGNAL \DebugAP[14]~output_o\ : std_logic;
SIGNAL \DebugAP[13]~output_o\ : std_logic;
SIGNAL \DebugAP[12]~output_o\ : std_logic;
SIGNAL \DebugAP[11]~output_o\ : std_logic;
SIGNAL \DebugAP[10]~output_o\ : std_logic;
SIGNAL \DebugAP[9]~output_o\ : std_logic;
SIGNAL \DebugAP[8]~output_o\ : std_logic;
SIGNAL \DebugAP[7]~output_o\ : std_logic;
SIGNAL \DebugAP[6]~output_o\ : std_logic;
SIGNAL \DebugAP[5]~output_o\ : std_logic;
SIGNAL \DebugAP[4]~output_o\ : std_logic;
SIGNAL \DebugAP[3]~output_o\ : std_logic;
SIGNAL \DebugAP[2]~output_o\ : std_logic;
SIGNAL \DebugAP[1]~output_o\ : std_logic;
SIGNAL \DebugAP[0]~output_o\ : std_logic;
SIGNAL \DebugIX[15]~output_o\ : std_logic;
SIGNAL \DebugIX[14]~output_o\ : std_logic;
SIGNAL \DebugIX[13]~output_o\ : std_logic;
SIGNAL \DebugIX[12]~output_o\ : std_logic;
SIGNAL \DebugIX[11]~output_o\ : std_logic;
SIGNAL \DebugIX[10]~output_o\ : std_logic;
SIGNAL \DebugIX[9]~output_o\ : std_logic;
SIGNAL \DebugIX[8]~output_o\ : std_logic;
SIGNAL \DebugIX[7]~output_o\ : std_logic;
SIGNAL \DebugIX[6]~output_o\ : std_logic;
SIGNAL \DebugIX[5]~output_o\ : std_logic;
SIGNAL \DebugIX[4]~output_o\ : std_logic;
SIGNAL \DebugIX[3]~output_o\ : std_logic;
SIGNAL \DebugIX[2]~output_o\ : std_logic;
SIGNAL \DebugIX[1]~output_o\ : std_logic;
SIGNAL \DebugIX[0]~output_o\ : std_logic;
SIGNAL \DebugIY[15]~output_o\ : std_logic;
SIGNAL \DebugIY[14]~output_o\ : std_logic;
SIGNAL \DebugIY[13]~output_o\ : std_logic;
SIGNAL \DebugIY[12]~output_o\ : std_logic;
SIGNAL \DebugIY[11]~output_o\ : std_logic;
SIGNAL \DebugIY[10]~output_o\ : std_logic;
SIGNAL \DebugIY[9]~output_o\ : std_logic;
SIGNAL \DebugIY[8]~output_o\ : std_logic;
SIGNAL \DebugIY[7]~output_o\ : std_logic;
SIGNAL \DebugIY[6]~output_o\ : std_logic;
SIGNAL \DebugIY[5]~output_o\ : std_logic;
SIGNAL \DebugIY[4]~output_o\ : std_logic;
SIGNAL \DebugIY[3]~output_o\ : std_logic;
SIGNAL \DebugIY[2]~output_o\ : std_logic;
SIGNAL \DebugIY[1]~output_o\ : std_logic;
SIGNAL \DebugIY[0]~output_o\ : std_logic;
SIGNAL \DebugPC[15]~output_o\ : std_logic;
SIGNAL \DebugPC[14]~output_o\ : std_logic;
SIGNAL \DebugPC[13]~output_o\ : std_logic;
SIGNAL \DebugPC[12]~output_o\ : std_logic;
SIGNAL \DebugPC[11]~output_o\ : std_logic;
SIGNAL \DebugPC[10]~output_o\ : std_logic;
SIGNAL \DebugPC[9]~output_o\ : std_logic;
SIGNAL \DebugPC[8]~output_o\ : std_logic;
SIGNAL \DebugPC[7]~output_o\ : std_logic;
SIGNAL \DebugPC[6]~output_o\ : std_logic;
SIGNAL \DebugPC[5]~output_o\ : std_logic;
SIGNAL \DebugPC[4]~output_o\ : std_logic;
SIGNAL \DebugPC[3]~output_o\ : std_logic;
SIGNAL \DebugPC[2]~output_o\ : std_logic;
SIGNAL \DebugPC[1]~output_o\ : std_logic;
SIGNAL \DebugPC[0]~output_o\ : std_logic;
SIGNAL \DebugRA[15]~output_o\ : std_logic;
SIGNAL \DebugRA[14]~output_o\ : std_logic;
SIGNAL \DebugRA[13]~output_o\ : std_logic;
SIGNAL \DebugRA[12]~output_o\ : std_logic;
SIGNAL \DebugRA[11]~output_o\ : std_logic;
SIGNAL \DebugRA[10]~output_o\ : std_logic;
SIGNAL \DebugRA[9]~output_o\ : std_logic;
SIGNAL \DebugRA[8]~output_o\ : std_logic;
SIGNAL \DebugRA[7]~output_o\ : std_logic;
SIGNAL \DebugRA[6]~output_o\ : std_logic;
SIGNAL \DebugRA[5]~output_o\ : std_logic;
SIGNAL \DebugRA[4]~output_o\ : std_logic;
SIGNAL \DebugRA[3]~output_o\ : std_logic;
SIGNAL \DebugRA[2]~output_o\ : std_logic;
SIGNAL \DebugRA[1]~output_o\ : std_logic;
SIGNAL \DebugRA[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[0]~33_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst12[0]~0_combout\ : std_logic;
SIGNAL \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[1]~12\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[2]~13_combout\ : std_logic;
SIGNAL \inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[2]~14\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[3]~16\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[4]~17_combout\ : std_logic;
SIGNAL \inst6|inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst6|inst|data~13_combout\ : std_logic;
SIGNAL \inst6|inst|data[86]~16_combout\ : std_logic;
SIGNAL \inst6|inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst6|inst|Equal14~2_combout\ : std_logic;
SIGNAL \inst6|inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst6|inst3|PC[0]~0_combout\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[10]~30\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[11]~31_combout\ : std_logic;
SIGNAL \inst6|inst5|$00000|auto_generated|result_node[11]~11_combout\ : std_logic;
SIGNAL \inst6|inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst6|inst|Equal11~0_combout\ : std_logic;
SIGNAL \inst6|inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst6|inst|Equal14~0_combout\ : std_logic;
SIGNAL \inst6|inst3|nAS~0_combout\ : std_logic;
SIGNAL \inst6|inst3|nAS~1_combout\ : std_logic;
SIGNAL \inst6|inst|data[87]~24_combout\ : std_logic;
SIGNAL \inst6|inst|Equal17~0_combout\ : std_logic;
SIGNAL \inst6|inst3|PC[0]~1_combout\ : std_logic;
SIGNAL \inst6|inst3|PC[0]~3_combout\ : std_logic;
SIGNAL \inst6|inst3|PC[0]~4_combout\ : std_logic;
SIGNAL \inst6|inst3|X[2]~0_combout\ : std_logic;
SIGNAL \inst7|PortL[7]~2_combout\ : std_logic;
SIGNAL \inst6|inst8[9]~2_combout\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[8]~26\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[9]~27_combout\ : std_logic;
SIGNAL \inst6|inst5|$00000|auto_generated|result_node[9]~9_combout\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[9]~28\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[10]~29_combout\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RegPC|data_out[0]~45_combout\ : std_logic;
SIGNAL \RegPC|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \RegPC|data_out[1]~15_combout\ : std_logic;
SIGNAL \RegPC|data_out[1]~16\ : std_logic;
SIGNAL \RegPC|data_out[2]~17_combout\ : std_logic;
SIGNAL \RegPC|data_out[2]~18\ : std_logic;
SIGNAL \RegPC|data_out[3]~19_combout\ : std_logic;
SIGNAL \RegPC|data_out[3]~20\ : std_logic;
SIGNAL \RegPC|data_out[4]~21_combout\ : std_logic;
SIGNAL \RegPC|data_out[4]~22\ : std_logic;
SIGNAL \RegPC|data_out[5]~23_combout\ : std_logic;
SIGNAL \dir|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \RegPC|data_out[5]~24\ : std_logic;
SIGNAL \RegPC|data_out[6]~25_combout\ : std_logic;
SIGNAL \dir|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \dir|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \RegPC|data_out[6]~26\ : std_logic;
SIGNAL \RegPC|data_out[7]~27_combout\ : std_logic;
SIGNAL \dir|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst|data_out[4]~0_combout\ : std_logic;
SIGNAL \dir|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \dir|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \dir|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst7|PortL[6]~1_combout\ : std_logic;
SIGNAL \inst6|inst8[10]~1_combout\ : std_logic;
SIGNAL \inst6|inst5|$00000|auto_generated|result_node[10]~10_combout\ : std_logic;
SIGNAL \inst6|inst|Equal14~1_combout\ : std_logic;
SIGNAL \inst6|inst|data[86]~17_combout\ : std_logic;
SIGNAL \inst6|inst|data[86]~18_combout\ : std_logic;
SIGNAL \inst6|inst|data[27]~19_combout\ : std_logic;
SIGNAL \inst6|inst|Equal14~3_combout\ : std_logic;
SIGNAL \inst6|inst|data[27]~23_combout\ : std_logic;
SIGNAL \inst6|inst|data[87]~25_combout\ : std_logic;
SIGNAL \inst6|inst3|nCBD~combout\ : std_logic;
SIGNAL \inst6|inst3|nCBD~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst7|PortL[3]~4_combout\ : std_logic;
SIGNAL \inst6|inst8[7]~4_combout\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[6]~22\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[7]~23_combout\ : std_logic;
SIGNAL \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[7]~24\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[8]~25_combout\ : std_logic;
SIGNAL \inst|data_out[4]~1_combout\ : std_logic;
SIGNAL \inst7|PortL[4]~3_combout\ : std_logic;
SIGNAL \inst6|inst8[8]~3_combout\ : std_logic;
SIGNAL \inst6|inst5|$00000|auto_generated|result_node[8]~8_combout\ : std_logic;
SIGNAL \inst6|inst|Equal12~0_combout\ : std_logic;
SIGNAL \inst6|inst|data[73]~22_combout\ : std_logic;
SIGNAL \inst6|inst3|nCRI~combout\ : std_logic;
SIGNAL \inst6|inst3|nCRI~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst7|PortL[0]~6_combout\ : std_logic;
SIGNAL \inst6|inst8[4]~7_combout\ : std_logic;
SIGNAL \inst6|inst5|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[4]~18\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[5]~19_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst7|PortL[1]~5_combout\ : std_logic;
SIGNAL \inst6|inst8[5]~6_combout\ : std_logic;
SIGNAL \inst6|inst5|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[5]~20\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[6]~21_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|PortL[7]~0_combout\ : std_logic;
SIGNAL \inst6|inst8[6]~5_combout\ : std_logic;
SIGNAL \inst6|inst5|$00000|auto_generated|result_node[6]~6_combout\ : std_logic;
SIGNAL \inst6|inst|Equal3~1_combout\ : std_logic;
SIGNAL \inst6|inst|Equal3~2_combout\ : std_logic;
SIGNAL \inst6|inst3|PC[0]~2_combout\ : std_logic;
SIGNAL \inst6|inst|data[87]~26_combout\ : std_logic;
SIGNAL \inst6|inst|data[87]~12_combout\ : std_logic;
SIGNAL \inst6|inst|data~21_combout\ : std_logic;
SIGNAL \inst9|R0~0_combout\ : std_logic;
SIGNAL \ENAY~input_o\ : std_logic;
SIGNAL \inst13|data_out[0]~1_combout\ : std_logic;
SIGNAL \inst9|R0~1_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[7]~0_combout\ : std_logic;
SIGNAL \inst6|inst|Equal18~0_combout\ : std_logic;
SIGNAL \inst6|inst|data[86]~29_combout\ : std_logic;
SIGNAL \inst6|inst6|$00001|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst6|inst3|vf~q\ : std_logic;
SIGNAL \inst6|inst7~combout\ : std_logic;
SIGNAL \inst6|inst1|SELECTOR~3_combout\ : std_logic;
SIGNAL \inst6|inst1|SELECTOR~0_combout\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[3]~15_combout\ : std_logic;
SIGNAL \inst6|inst5|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \inst6|inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst6|inst|data[87]~14_combout\ : std_logic;
SIGNAL \inst6|inst|data[87]~27_combout\ : std_logic;
SIGNAL \inst6|inst|data[87]~15_combout\ : std_logic;
SIGNAL \inst6|inst1|SELECTOR~2_combout\ : std_logic;
SIGNAL \inst6|inst2|valor_interno[1]~11_combout\ : std_logic;
SIGNAL \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst6|inst|data~28_combout\ : std_logic;
SIGNAL \inst6|inst|data[86]~20_combout\ : std_logic;
SIGNAL \inst6|inst8[11]~0_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \upa|Q[6]~feeder_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \upa|Q[5]~feeder_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \upa|Q[4]~feeder_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \upa|Q[3]~feeder_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \upa|Q[2]~feeder_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \upa|Q[1]~feeder_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \upa|Q[0]~feeder_combout\ : std_logic;
SIGNAL \upa|Yupa_interno[6]~feeder_combout\ : std_logic;
SIGNAL \upa|Yupa_interno[5]~feeder_combout\ : std_logic;
SIGNAL \upa|Yupa_interno[4]~feeder_combout\ : std_logic;
SIGNAL \upa|Yupa_interno[3]~feeder_combout\ : std_logic;
SIGNAL \upa|Yupa_interno[2]~feeder_combout\ : std_logic;
SIGNAL \upa|Yupa_interno[1]~feeder_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[7]~0_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|PortL[7]~0_combout\ : std_logic;
SIGNAL \inst9|data_out[15]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_out[8]~0_combout\ : std_logic;
SIGNAL \inst1|PortL[6]~1_combout\ : std_logic;
SIGNAL \inst9|data_out[14]~feeder_combout\ : std_logic;
SIGNAL \inst1|PortL[7]~2_combout\ : std_logic;
SIGNAL \inst9|data_out[13]~feeder_combout\ : std_logic;
SIGNAL \inst1|PortL[4]~3_combout\ : std_logic;
SIGNAL \inst9|data_out[12]~feeder_combout\ : std_logic;
SIGNAL \inst1|PortL[3]~4_combout\ : std_logic;
SIGNAL \inst9|data_out[11]~feeder_combout\ : std_logic;
SIGNAL \inst9|data_out[10]~feeder_combout\ : std_logic;
SIGNAL \inst1|PortL[1]~5_combout\ : std_logic;
SIGNAL \inst9|data_out[9]~feeder_combout\ : std_logic;
SIGNAL \inst1|PortL[0]~6_combout\ : std_logic;
SIGNAL \inst9|data_out[8]~feeder_combout\ : std_logic;
SIGNAL \inst9|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \inst9|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_out[15]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_out[14]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_out[12]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_out[11]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_out[10]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_out[9]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_out[8]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \RegPC|data_out[7]~28\ : std_logic;
SIGNAL \RegPC|data_out[8]~29_combout\ : std_logic;
SIGNAL \RegPC|data_out[8]~30\ : std_logic;
SIGNAL \RegPC|data_out[9]~31_combout\ : std_logic;
SIGNAL \RegPC|data_out[9]~32\ : std_logic;
SIGNAL \RegPC|data_out[10]~33_combout\ : std_logic;
SIGNAL \RegPC|data_out[10]~34\ : std_logic;
SIGNAL \RegPC|data_out[11]~35_combout\ : std_logic;
SIGNAL \RegPC|data_out[11]~36\ : std_logic;
SIGNAL \RegPC|data_out[12]~37_combout\ : std_logic;
SIGNAL \RegPC|data_out[12]~38\ : std_logic;
SIGNAL \RegPC|data_out[13]~39_combout\ : std_logic;
SIGNAL \RegPC|data_out[13]~40\ : std_logic;
SIGNAL \RegPC|data_out[14]~41_combout\ : std_logic;
SIGNAL \RegPC|data_out[14]~42\ : std_logic;
SIGNAL \RegPC|data_out[15]~43_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|inst2|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RegPC|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst6|inst3|instruccion\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst6|inst3|liga\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \upa|Banderas\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \upa|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \upa|Yupa_interno\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \AcumuladorB|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst13|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dir|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst6|inst3|prueba\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst6|inst1|ALT_INV_SELECTOR~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Z <= ww_Z;
ww_RESET <= RESET;
ww_CLK <= CLK;
ww_ENAY <= ENAY;
ww_IRQn <= IRQn;
ww_XIRQn <= XIRQn;
N <= ww_N;
CurrentState <= ww_CurrentState;
Debug_Q <= ww_Debug_Q;
Debug_Yupa <= ww_Debug_Yupa;
DebugACUMA <= ww_DebugACUMA;
DebugACUMB <= ww_DebugACUMB;
DebugAP <= ww_DebugAP;
DebugIX <= ww_DebugIX;
DebugIY <= ww_DebugIY;
DebugPC <= ww_DebugPC;
DebugRA <= ww_DebugRA;
regInstr <= ww_regInstr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst6|inst3|nCRI~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|inst3|nCRI~combout\);

\inst6|inst3|nCBD~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|inst3|nCBD~combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);
\inst6|inst1|ALT_INV_SELECTOR~2_combout\ <= NOT \inst6|inst1|SELECTOR~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y27_N2
\regInstr[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst8[11]~0_combout\,
	oe => \inst6|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[11]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\regInstr[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst8[10]~1_combout\,
	oe => \inst6|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[10]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\regInstr[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst8[9]~2_combout\,
	oe => \inst6|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[9]~output_o\);

-- Location: IOOBUF_X0_Y16_N2
\regInstr[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst8[8]~3_combout\,
	oe => \inst6|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[8]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\regInstr[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst8[7]~4_combout\,
	oe => \inst6|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[7]~output_o\);

-- Location: IOOBUF_X0_Y16_N9
\regInstr[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst8[6]~5_combout\,
	oe => \inst6|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[6]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\regInstr[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst8[5]~6_combout\,
	oe => \inst6|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[5]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\regInstr[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst8[4]~7_combout\,
	oe => \inst6|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[4]~output_o\);

-- Location: IOOBUF_X0_Y30_N23
\regInstr[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|ALT_INV_SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[3]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\regInstr[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|ALT_INV_SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[2]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\regInstr[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1|ALT_INV_SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\regInstr[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12[0]~0_combout\,
	oe => \inst6|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\Z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\N~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\CurrentState[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	devoe => ww_devoe,
	o => \CurrentState[11]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\CurrentState[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	devoe => ww_devoe,
	o => \CurrentState[10]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\CurrentState[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	devoe => ww_devoe,
	o => \CurrentState[9]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\CurrentState[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	devoe => ww_devoe,
	o => \CurrentState[8]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\CurrentState[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	devoe => ww_devoe,
	o => \CurrentState[7]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\CurrentState[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	devoe => ww_devoe,
	o => \CurrentState[6]~output_o\);

-- Location: IOOBUF_X0_Y29_N9
\CurrentState[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5|$00000|auto_generated|result_node[5]~5_combout\,
	devoe => ww_devoe,
	o => \CurrentState[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\CurrentState[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5|$00000|auto_generated|result_node[4]~4_combout\,
	devoe => ww_devoe,
	o => \CurrentState[4]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\CurrentState[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	devoe => ww_devoe,
	o => \CurrentState[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\CurrentState[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	devoe => ww_devoe,
	o => \CurrentState[2]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\CurrentState[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => \CurrentState[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\CurrentState[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	devoe => ww_devoe,
	o => \CurrentState[0]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\Debug_Q[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Banderas\(2),
	devoe => ww_devoe,
	o => \Debug_Q[7]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\Debug_Q[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Q\(6),
	devoe => ww_devoe,
	o => \Debug_Q[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\Debug_Q[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Q\(5),
	devoe => ww_devoe,
	o => \Debug_Q[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\Debug_Q[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Q\(4),
	devoe => ww_devoe,
	o => \Debug_Q[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\Debug_Q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Q\(3),
	devoe => ww_devoe,
	o => \Debug_Q[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\Debug_Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Q\(2),
	devoe => ww_devoe,
	o => \Debug_Q[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\Debug_Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Q\(1),
	devoe => ww_devoe,
	o => \Debug_Q[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\Debug_Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Q\(0),
	devoe => ww_devoe,
	o => \Debug_Q[0]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\Debug_Yupa[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Banderas\(2),
	devoe => ww_devoe,
	o => \Debug_Yupa[7]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\Debug_Yupa[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Yupa_interno\(6),
	devoe => ww_devoe,
	o => \Debug_Yupa[6]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\Debug_Yupa[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Yupa_interno\(5),
	devoe => ww_devoe,
	o => \Debug_Yupa[5]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\Debug_Yupa[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Yupa_interno\(4),
	devoe => ww_devoe,
	o => \Debug_Yupa[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\Debug_Yupa[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Yupa_interno\(3),
	devoe => ww_devoe,
	o => \Debug_Yupa[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\Debug_Yupa[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Yupa_interno\(2),
	devoe => ww_devoe,
	o => \Debug_Yupa[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\Debug_Yupa[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Yupa_interno\(1),
	devoe => ww_devoe,
	o => \Debug_Yupa[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\Debug_Yupa[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Q\(0),
	devoe => ww_devoe,
	o => \Debug_Yupa[0]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\DebugACUMA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorA|data_out\(7),
	devoe => ww_devoe,
	o => \DebugACUMA[7]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\DebugACUMA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorA|data_out\(6),
	devoe => ww_devoe,
	o => \DebugACUMA[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\DebugACUMA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorA|data_out\(5),
	devoe => ww_devoe,
	o => \DebugACUMA[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\DebugACUMA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorA|data_out\(4),
	devoe => ww_devoe,
	o => \DebugACUMA[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\DebugACUMA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorA|data_out\(3),
	devoe => ww_devoe,
	o => \DebugACUMA[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\DebugACUMA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorA|data_out\(2),
	devoe => ww_devoe,
	o => \DebugACUMA[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N16
\DebugACUMA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorA|data_out\(1),
	devoe => ww_devoe,
	o => \DebugACUMA[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N30
\DebugACUMA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorA|data_out\(0),
	devoe => ww_devoe,
	o => \DebugACUMA[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\DebugACUMB[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorB|data_out\(7),
	devoe => ww_devoe,
	o => \DebugACUMB[7]~output_o\);

-- Location: IOOBUF_X0_Y37_N9
\DebugACUMB[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorB|data_out\(6),
	devoe => ww_devoe,
	o => \DebugACUMB[6]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\DebugACUMB[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorB|data_out\(5),
	devoe => ww_devoe,
	o => \DebugACUMB[5]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\DebugACUMB[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorB|data_out\(4),
	devoe => ww_devoe,
	o => \DebugACUMB[4]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\DebugACUMB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorB|data_out\(3),
	devoe => ww_devoe,
	o => \DebugACUMB[3]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\DebugACUMB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorB|data_out\(2),
	devoe => ww_devoe,
	o => \DebugACUMB[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\DebugACUMB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorB|data_out\(1),
	devoe => ww_devoe,
	o => \DebugACUMB[1]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\DebugACUMB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorB|data_out\(0),
	devoe => ww_devoe,
	o => \DebugACUMB[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\DebugAP[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugAP[15]~output_o\);

-- Location: IOOBUF_X78_Y29_N9
\DebugAP[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugAP[14]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\DebugAP[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugAP[13]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\DebugAP[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugAP[12]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\DebugAP[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugAP[11]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\DebugAP[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugAP[10]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\DebugAP[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugAP[9]~output_o\);

-- Location: IOOBUF_X78_Y17_N23
\DebugAP[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugAP[8]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\DebugAP[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugAP[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\DebugAP[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugAP[6]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\DebugAP[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugAP[5]~output_o\);

-- Location: IOOBUF_X78_Y23_N23
\DebugAP[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugAP[4]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\DebugAP[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugAP[3]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\DebugAP[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugAP[2]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\DebugAP[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugAP[1]~output_o\);

-- Location: IOOBUF_X78_Y3_N16
\DebugAP[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugAP[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\DebugIX[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(15),
	devoe => ww_devoe,
	o => \DebugIX[15]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\DebugIX[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(14),
	devoe => ww_devoe,
	o => \DebugIX[14]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\DebugIX[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(13),
	devoe => ww_devoe,
	o => \DebugIX[13]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
\DebugIX[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(12),
	devoe => ww_devoe,
	o => \DebugIX[12]~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\DebugIX[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(11),
	devoe => ww_devoe,
	o => \DebugIX[11]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\DebugIX[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(10),
	devoe => ww_devoe,
	o => \DebugIX[10]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\DebugIX[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(9),
	devoe => ww_devoe,
	o => \DebugIX[9]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\DebugIX[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(8),
	devoe => ww_devoe,
	o => \DebugIX[8]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\DebugIX[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(7),
	devoe => ww_devoe,
	o => \DebugIX[7]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\DebugIX[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(6),
	devoe => ww_devoe,
	o => \DebugIX[6]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\DebugIX[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(5),
	devoe => ww_devoe,
	o => \DebugIX[5]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\DebugIX[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(4),
	devoe => ww_devoe,
	o => \DebugIX[4]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\DebugIX[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(3),
	devoe => ww_devoe,
	o => \DebugIX[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\DebugIX[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(2),
	devoe => ww_devoe,
	o => \DebugIX[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\DebugIX[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(1),
	devoe => ww_devoe,
	o => \DebugIX[1]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\DebugIX[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(0),
	devoe => ww_devoe,
	o => \DebugIX[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\DebugIY[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data_out\(15),
	devoe => ww_devoe,
	o => \DebugIY[15]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\DebugIY[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data_out\(14),
	devoe => ww_devoe,
	o => \DebugIY[14]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\DebugIY[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data_out\(13),
	devoe => ww_devoe,
	o => \DebugIY[13]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\DebugIY[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data_out\(12),
	devoe => ww_devoe,
	o => \DebugIY[12]~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\DebugIY[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data_out\(11),
	devoe => ww_devoe,
	o => \DebugIY[11]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\DebugIY[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data_out\(10),
	devoe => ww_devoe,
	o => \DebugIY[10]~output_o\);

-- Location: IOOBUF_X0_Y18_N2
\DebugIY[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data_out\(9),
	devoe => ww_devoe,
	o => \DebugIY[9]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\DebugIY[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data_out\(8),
	devoe => ww_devoe,
	o => \DebugIY[8]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\DebugIY[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data_out\(7),
	devoe => ww_devoe,
	o => \DebugIY[7]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\DebugIY[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data_out\(6),
	devoe => ww_devoe,
	o => \DebugIY[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\DebugIY[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data_out\(5),
	devoe => ww_devoe,
	o => \DebugIY[5]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\DebugIY[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data_out\(4),
	devoe => ww_devoe,
	o => \DebugIY[4]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\DebugIY[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data_out\(3),
	devoe => ww_devoe,
	o => \DebugIY[3]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\DebugIY[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data_out\(2),
	devoe => ww_devoe,
	o => \DebugIY[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\DebugIY[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data_out\(1),
	devoe => ww_devoe,
	o => \DebugIY[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\DebugIY[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data_out\(0),
	devoe => ww_devoe,
	o => \DebugIY[0]~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\DebugPC[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|data_out\(15),
	devoe => ww_devoe,
	o => \DebugPC[15]~output_o\);

-- Location: IOOBUF_X0_Y36_N9
\DebugPC[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|data_out\(14),
	devoe => ww_devoe,
	o => \DebugPC[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\DebugPC[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|data_out\(13),
	devoe => ww_devoe,
	o => \DebugPC[13]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\DebugPC[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|data_out\(12),
	devoe => ww_devoe,
	o => \DebugPC[12]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\DebugPC[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|data_out\(11),
	devoe => ww_devoe,
	o => \DebugPC[11]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\DebugPC[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|data_out\(10),
	devoe => ww_devoe,
	o => \DebugPC[10]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\DebugPC[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|data_out\(9),
	devoe => ww_devoe,
	o => \DebugPC[9]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\DebugPC[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|data_out\(8),
	devoe => ww_devoe,
	o => \DebugPC[8]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\DebugPC[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|data_out\(7),
	devoe => ww_devoe,
	o => \DebugPC[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\DebugPC[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|data_out\(6),
	devoe => ww_devoe,
	o => \DebugPC[6]~output_o\);

-- Location: IOOBUF_X0_Y35_N23
\DebugPC[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|data_out\(5),
	devoe => ww_devoe,
	o => \DebugPC[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\DebugPC[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|data_out\(4),
	devoe => ww_devoe,
	o => \DebugPC[4]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\DebugPC[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|data_out\(3),
	devoe => ww_devoe,
	o => \DebugPC[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\DebugPC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|data_out\(2),
	devoe => ww_devoe,
	o => \DebugPC[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\DebugPC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|data_out\(1),
	devoe => ww_devoe,
	o => \DebugPC[1]~output_o\);

-- Location: IOOBUF_X0_Y29_N2
\DebugPC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|data_out\(0),
	devoe => ww_devoe,
	o => \DebugPC[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\DebugRA[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugRA[15]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\DebugRA[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugRA[14]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\DebugRA[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugRA[13]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\DebugRA[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugRA[12]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\DebugRA[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugRA[11]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\DebugRA[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugRA[10]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\DebugRA[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugRA[9]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\DebugRA[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugRA[8]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\DebugRA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugRA[7]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\DebugRA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugRA[6]~output_o\);

-- Location: IOOBUF_X78_Y18_N9
\DebugRA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugRA[5]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\DebugRA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugRA[4]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\DebugRA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugRA[3]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\DebugRA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugRA[2]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\DebugRA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugRA[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\DebugRA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugRA[0]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: LCCOMB_X3_Y22_N26
\inst6|inst2|valor_interno[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst2|valor_interno[0]~33_combout\ = !\inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst6|inst2|valor_interno[0]~33_combout\);

-- Location: IOIBUF_X0_Y18_N22
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G1
\RESET~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X3_Y22_N27
\inst6|inst2|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst6|inst2|valor_interno[0]~33_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst2|valor_interno\(0));

-- Location: FF_X3_Y22_N11
\inst6|inst3|liga[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst6|inst|data~21_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst3|liga\(0));

-- Location: LCCOMB_X3_Y22_N10
\inst12[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[0]~0_combout\ = (!\inst6|inst3|instruccion\(1) & ((\inst6|inst3|liga\(0)) # (!\inst6|inst3|instruccion\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst3|instruccion\(0),
	datac => \inst6|inst3|liga\(0),
	datad => \inst6|inst3|instruccion\(1),
	combout => \inst12[0]~0_combout\);

-- Location: LCCOMB_X3_Y22_N24
\inst6|inst5|$00000|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\ = (\inst6|inst1|SELECTOR~0_combout\ & ((\inst12[0]~0_combout\))) # (!\inst6|inst1|SELECTOR~0_combout\ & (\inst6|inst2|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|SELECTOR~0_combout\,
	datac => \inst6|inst2|valor_interno\(0),
	datad => \inst12[0]~0_combout\,
	combout => \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X10_Y22_N2
\inst6|inst2|valor_interno[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst2|valor_interno[1]~11_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\ $ (VCC))) # (!\inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\ & 
-- (\inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\ & VCC))
-- \inst6|inst2|valor_interno[1]~12\ = CARRY((\inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\ & \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => VCC,
	combout => \inst6|inst2|valor_interno[1]~11_combout\,
	cout => \inst6|inst2|valor_interno[1]~12\);

-- Location: LCCOMB_X10_Y22_N4
\inst6|inst2|valor_interno[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst2|valor_interno[2]~13_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\ & (!\inst6|inst2|valor_interno[1]~12\)) # (!\inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\ & ((\inst6|inst2|valor_interno[1]~12\) # 
-- (GND)))
-- \inst6|inst2|valor_interno[2]~14\ = CARRY((!\inst6|inst2|valor_interno[1]~12\) # (!\inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datad => VCC,
	cin => \inst6|inst2|valor_interno[1]~12\,
	combout => \inst6|inst2|valor_interno[2]~13_combout\,
	cout => \inst6|inst2|valor_interno[2]~14\);

-- Location: FF_X10_Y22_N5
\inst6|inst2|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst6|inst2|valor_interno[2]~13_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst2|valor_interno\(2));

-- Location: LCCOMB_X7_Y22_N28
\inst6|inst5|$00000|auto_generated|result_node[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\ = (\inst6|inst1|SELECTOR~0_combout\ & ((!\inst6|inst1|SELECTOR~2_combout\))) # (!\inst6|inst1|SELECTOR~0_combout\ & (\inst6|inst2|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst2|valor_interno\(2),
	datab => \inst6|inst1|SELECTOR~2_combout\,
	datad => \inst6|inst1|SELECTOR~0_combout\,
	combout => \inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X10_Y22_N6
\inst6|inst2|valor_interno[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst2|valor_interno[3]~15_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[3]~3_combout\ & (\inst6|inst2|valor_interno[2]~14\ $ (GND))) # (!\inst6|inst5|$00000|auto_generated|result_node[3]~3_combout\ & (!\inst6|inst2|valor_interno[2]~14\ 
-- & VCC))
-- \inst6|inst2|valor_interno[3]~16\ = CARRY((\inst6|inst5|$00000|auto_generated|result_node[3]~3_combout\ & !\inst6|inst2|valor_interno[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datad => VCC,
	cin => \inst6|inst2|valor_interno[2]~14\,
	combout => \inst6|inst2|valor_interno[3]~15_combout\,
	cout => \inst6|inst2|valor_interno[3]~16\);

-- Location: LCCOMB_X10_Y22_N8
\inst6|inst2|valor_interno[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst2|valor_interno[4]~17_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[4]~4_combout\ & (!\inst6|inst2|valor_interno[3]~16\)) # (!\inst6|inst5|$00000|auto_generated|result_node[4]~4_combout\ & ((\inst6|inst2|valor_interno[3]~16\) # 
-- (GND)))
-- \inst6|inst2|valor_interno[4]~18\ = CARRY((!\inst6|inst2|valor_interno[3]~16\) # (!\inst6|inst5|$00000|auto_generated|result_node[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst5|$00000|auto_generated|result_node[4]~4_combout\,
	datad => VCC,
	cin => \inst6|inst2|valor_interno[3]~16\,
	combout => \inst6|inst2|valor_interno[4]~17_combout\,
	cout => \inst6|inst2|valor_interno[4]~18\);

-- Location: FF_X10_Y22_N9
\inst6|inst2|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst6|inst2|valor_interno[4]~17_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst2|valor_interno\(4));

-- Location: LCCOMB_X6_Y22_N30
\inst6|inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|Equal1~0_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\ & !\inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst6|inst|Equal1~0_combout\);

-- Location: LCCOMB_X8_Y22_N22
\inst6|inst|data~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|data~13_combout\ = ((!\inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\) # (!\inst6|inst|Equal3~2_combout\)) # (!\inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst6|inst|Equal3~2_combout\,
	datad => \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst6|inst|data~13_combout\);

-- Location: LCCOMB_X3_Y22_N8
\inst6|inst|data[86]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|data[86]~16_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (!\inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\ & \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datac => \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst6|inst|data[86]~16_combout\);

-- Location: LCCOMB_X6_Y22_N22
\inst6|inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|Equal0~3_combout\ = (!\inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\ & !\inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst6|inst|Equal0~3_combout\);

-- Location: LCCOMB_X8_Y22_N6
\inst6|inst|Equal14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|Equal14~2_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (\inst6|inst|Equal14~1_combout\ & (!\inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\ & \inst6|inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datab => \inst6|inst|Equal14~1_combout\,
	datac => \inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datad => \inst6|inst|Equal0~3_combout\,
	combout => \inst6|inst|Equal14~2_combout\);

-- Location: LCCOMB_X3_Y22_N16
\inst6|inst|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|Equal2~0_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\ & !\inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst6|inst|Equal2~0_combout\);

-- Location: LCCOMB_X8_Y22_N28
\inst6|inst3|PC[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst3|PC[0]~0_combout\ = ((!\inst6|inst|Equal0~2_combout\ & ((!\inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\) # (!\inst6|inst|Equal12~0_combout\)))) # (!\inst6|inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Equal12~0_combout\,
	datab => \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datac => \inst6|inst|Equal1~0_combout\,
	datad => \inst6|inst|Equal0~2_combout\,
	combout => \inst6|inst3|PC[0]~0_combout\);

-- Location: LCCOMB_X10_Y22_N20
\inst6|inst2|valor_interno[10]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst2|valor_interno[10]~29_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[10]~10_combout\ & (!\inst6|inst2|valor_interno[9]~28\)) # (!\inst6|inst5|$00000|auto_generated|result_node[10]~10_combout\ & ((\inst6|inst2|valor_interno[9]~28\) 
-- # (GND)))
-- \inst6|inst2|valor_interno[10]~30\ = CARRY((!\inst6|inst2|valor_interno[9]~28\) # (!\inst6|inst5|$00000|auto_generated|result_node[10]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => VCC,
	cin => \inst6|inst2|valor_interno[9]~28\,
	combout => \inst6|inst2|valor_interno[10]~29_combout\,
	cout => \inst6|inst2|valor_interno[10]~30\);

-- Location: LCCOMB_X10_Y22_N22
\inst6|inst2|valor_interno[11]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst2|valor_interno[11]~31_combout\ = \inst6|inst2|valor_interno[10]~30\ $ (!\inst6|inst5|$00000|auto_generated|result_node[11]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	cin => \inst6|inst2|valor_interno[10]~30\,
	combout => \inst6|inst2|valor_interno[11]~31_combout\);

-- Location: FF_X10_Y22_N23
\inst6|inst2|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst6|inst2|valor_interno[11]~31_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst2|valor_interno\(11));

-- Location: LCCOMB_X10_Y22_N30
\inst6|inst5|$00000|auto_generated|result_node[11]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst5|$00000|auto_generated|result_node[11]~11_combout\ = (\inst6|inst1|SELECTOR~0_combout\ & ((\inst6|inst8[11]~0_combout\))) # (!\inst6|inst1|SELECTOR~0_combout\ & (\inst6|inst2|valor_interno\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst2|valor_interno\(11),
	datab => \inst6|inst1|SELECTOR~0_combout\,
	datad => \inst6|inst8[11]~0_combout\,
	combout => \inst6|inst5|$00000|auto_generated|result_node[11]~11_combout\);

-- Location: LCCOMB_X10_Y22_N0
\inst6|inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|Equal0~1_combout\ = (!\inst6|inst5|$00000|auto_generated|result_node[6]~6_combout\ & (!\inst6|inst5|$00000|auto_generated|result_node[11]~11_combout\ & (!\inst6|inst5|$00000|auto_generated|result_node[10]~10_combout\ & 
-- !\inst6|inst5|$00000|auto_generated|result_node[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	datab => \inst6|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	datac => \inst6|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst6|inst5|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \inst6|inst|Equal0~1_combout\);

-- Location: LCCOMB_X7_Y22_N6
\inst6|inst|Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|Equal11~0_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (\inst6|inst5|$00000|auto_generated|result_node[8]~8_combout\ & (\inst6|inst|Equal0~0_combout\ & \inst6|inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datab => \inst6|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	datac => \inst6|inst|Equal0~0_combout\,
	datad => \inst6|inst|Equal0~1_combout\,
	combout => \inst6|inst|Equal11~0_combout\);

-- Location: LCCOMB_X7_Y22_N16
\inst6|inst|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|Equal3~0_combout\ = (!\inst6|inst5|$00000|auto_generated|result_node[3]~3_combout\ & (!\inst6|inst5|$00000|auto_generated|result_node[9]~9_combout\ & (!\inst6|inst5|$00000|auto_generated|result_node[4]~4_combout\ & 
-- \inst6|inst5|$00000|auto_generated|result_node[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datab => \inst6|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	datac => \inst6|inst5|$00000|auto_generated|result_node[4]~4_combout\,
	datad => \inst6|inst5|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \inst6|inst|Equal3~0_combout\);

-- Location: LCCOMB_X6_Y22_N10
\inst6|inst|Equal14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|Equal14~0_combout\ = (\inst6|inst|Equal3~0_combout\ & (\inst6|inst5|$00000|auto_generated|result_node[10]~10_combout\ & (\inst6|inst|Equal3~1_combout\ & !\inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Equal3~0_combout\,
	datab => \inst6|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datac => \inst6|inst|Equal3~1_combout\,
	datad => \inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \inst6|inst|Equal14~0_combout\);

-- Location: LCCOMB_X6_Y22_N18
\inst6|inst3|nAS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst3|nAS~0_combout\ = (((!\inst6|inst|Equal1~0_combout\ & !\inst6|inst|Equal0~3_combout\)) # (!\inst6|inst|Equal14~0_combout\)) # (!\inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Equal1~0_combout\,
	datab => \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datac => \inst6|inst|Equal0~3_combout\,
	datad => \inst6|inst|Equal14~0_combout\,
	combout => \inst6|inst3|nAS~0_combout\);

-- Location: LCCOMB_X8_Y22_N24
\inst6|inst3|nAS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst3|nAS~1_combout\ = (\inst6|inst3|PC[0]~0_combout\ & (\inst6|inst3|nAS~0_combout\ & ((!\inst6|inst|Equal11~0_combout\) # (!\inst6|inst|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Equal2~0_combout\,
	datab => \inst6|inst3|PC[0]~0_combout\,
	datac => \inst6|inst|Equal11~0_combout\,
	datad => \inst6|inst3|nAS~0_combout\,
	combout => \inst6|inst3|nAS~1_combout\);

-- Location: LCCOMB_X8_Y22_N8
\inst6|inst|data[87]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|data[87]~24_combout\ = (\inst6|inst3|PC[0]~0_combout\ & (((\inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\) # (!\inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\)) # (!\inst6|inst|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst3|PC[0]~0_combout\,
	datab => \inst6|inst|Equal11~0_combout\,
	datac => \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst6|inst|data[87]~24_combout\);

-- Location: LCCOMB_X6_Y22_N20
\inst6|inst|Equal17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|Equal17~0_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst6|inst|Equal14~0_combout\ & 
-- \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst6|inst|Equal14~0_combout\,
	datad => \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	combout => \inst6|inst|Equal17~0_combout\);

-- Location: LCCOMB_X8_Y22_N20
\inst6|inst3|PC[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst3|PC[0]~1_combout\ = (\inst6|inst3|nAS~1_combout\ & (((\inst6|inst|Equal17~0_combout\)))) # (!\inst6|inst3|nAS~1_combout\ & (!\inst6|inst|Equal14~2_combout\ & (\inst6|inst|data[87]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Equal14~2_combout\,
	datab => \inst6|inst3|nAS~1_combout\,
	datac => \inst6|inst|data[87]~24_combout\,
	datad => \inst6|inst|Equal17~0_combout\,
	combout => \inst6|inst3|PC[0]~1_combout\);

-- Location: LCCOMB_X8_Y22_N16
\inst6|inst3|PC[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst3|PC[0]~3_combout\ = (\inst6|inst|data[87]~14_combout\ & ((\inst6|inst3|nAS~1_combout\) # ((\inst6|inst3|PC[0]~0_combout\ & \inst6|inst3|PC[0]~2_combout\)))) # (!\inst6|inst|data[87]~14_combout\ & (((\inst6|inst3|PC[0]~0_combout\ & 
-- \inst6|inst3|PC[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|data[87]~14_combout\,
	datab => \inst6|inst3|nAS~1_combout\,
	datac => \inst6|inst3|PC[0]~0_combout\,
	datad => \inst6|inst3|PC[0]~2_combout\,
	combout => \inst6|inst3|PC[0]~3_combout\);

-- Location: LCCOMB_X8_Y22_N2
\inst6|inst3|PC[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst3|PC[0]~4_combout\ = (\RESET~input_o\ & (((\inst6|inst|data[87]~14_combout\ & \inst6|inst3|PC[0]~1_combout\)) # (!\inst6|inst3|PC[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|data[87]~14_combout\,
	datab => \inst6|inst3|PC[0]~1_combout\,
	datac => \RESET~input_o\,
	datad => \inst6|inst3|PC[0]~3_combout\,
	combout => \inst6|inst3|PC[0]~4_combout\);

-- Location: LCCOMB_X6_Y22_N14
\inst6|inst3|X[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst3|X[2]~0_combout\ = (\RESET~input_o\ & (\inst6|inst|Equal1~0_combout\ & (\inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\ & \inst6|inst|Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst6|inst|Equal1~0_combout\,
	datac => \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datad => \inst6|inst|Equal14~0_combout\,
	combout => \inst6|inst3|X[2]~0_combout\);

-- Location: LCCOMB_X7_Y22_N24
\inst7|PortL[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|PortL[7]~2_combout\ = (\inst6|inst3|X[2]~0_combout\) # (!\inst6|inst3|PC[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst3|PC[0]~4_combout\,
	datad => \inst6|inst3|X[2]~0_combout\,
	combout => \inst7|PortL[7]~2_combout\);

-- Location: FF_X7_Y22_N1
\inst11|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst3|nCRI~clkctrl_outclk\,
	asdata => \inst7|PortL[7]~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(9));

-- Location: LCCOMB_X7_Y22_N0
\inst6|inst8[9]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst8[9]~2_combout\ = (!\inst6|inst3|instruccion\(0) & ((\inst11|valor_interno\(9)) # (!\inst6|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst3|instruccion\(1),
	datac => \inst11|valor_interno\(9),
	datad => \inst6|inst3|instruccion\(0),
	combout => \inst6|inst8[9]~2_combout\);

-- Location: LCCOMB_X10_Y22_N16
\inst6|inst2|valor_interno[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst2|valor_interno[8]~25_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[8]~8_combout\ & (!\inst6|inst2|valor_interno[7]~24\)) # (!\inst6|inst5|$00000|auto_generated|result_node[8]~8_combout\ & ((\inst6|inst2|valor_interno[7]~24\) # 
-- (GND)))
-- \inst6|inst2|valor_interno[8]~26\ = CARRY((!\inst6|inst2|valor_interno[7]~24\) # (!\inst6|inst5|$00000|auto_generated|result_node[8]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	datad => VCC,
	cin => \inst6|inst2|valor_interno[7]~24\,
	combout => \inst6|inst2|valor_interno[8]~25_combout\,
	cout => \inst6|inst2|valor_interno[8]~26\);

-- Location: LCCOMB_X10_Y22_N18
\inst6|inst2|valor_interno[9]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst2|valor_interno[9]~27_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[9]~9_combout\ & (\inst6|inst2|valor_interno[8]~26\ $ (GND))) # (!\inst6|inst5|$00000|auto_generated|result_node[9]~9_combout\ & (!\inst6|inst2|valor_interno[8]~26\ 
-- & VCC))
-- \inst6|inst2|valor_interno[9]~28\ = CARRY((\inst6|inst5|$00000|auto_generated|result_node[9]~9_combout\ & !\inst6|inst2|valor_interno[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	datad => VCC,
	cin => \inst6|inst2|valor_interno[8]~26\,
	combout => \inst6|inst2|valor_interno[9]~27_combout\,
	cout => \inst6|inst2|valor_interno[9]~28\);

-- Location: FF_X10_Y22_N19
\inst6|inst2|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst6|inst2|valor_interno[9]~27_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst2|valor_interno\(9));

-- Location: LCCOMB_X7_Y22_N22
\inst6|inst5|$00000|auto_generated|result_node[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst5|$00000|auto_generated|result_node[9]~9_combout\ = (\inst6|inst1|SELECTOR~0_combout\ & (\inst6|inst8[9]~2_combout\)) # (!\inst6|inst1|SELECTOR~0_combout\ & ((\inst6|inst2|valor_interno\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|SELECTOR~0_combout\,
	datab => \inst6|inst8[9]~2_combout\,
	datad => \inst6|inst2|valor_interno\(9),
	combout => \inst6|inst5|$00000|auto_generated|result_node[9]~9_combout\);

-- Location: FF_X10_Y22_N21
\inst6|inst2|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst6|inst2|valor_interno[10]~29_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst2|valor_interno\(10));

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X9_Y23_N10
\RegPC|data_out[0]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[0]~45_combout\ = \RegPC|data_out\(0) $ (\inst6|inst3|PC[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(0),
	datad => \inst6|inst3|PC[0]~4_combout\,
	combout => \RegPC|data_out[0]~45_combout\);

-- Location: LCCOMB_X9_Y23_N16
\RegPC|data_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[0]~feeder_combout\ = \RegPC|data_out[0]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegPC|data_out[0]~45_combout\,
	combout => \RegPC|data_out[0]~feeder_combout\);

-- Location: FF_X9_Y23_N17
\RegPC|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(0));

-- Location: LCCOMB_X13_Y22_N2
\RegPC|data_out[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[1]~15_combout\ = (\RegPC|data_out\(0) & (\RegPC|data_out\(1) $ (VCC))) # (!\RegPC|data_out\(0) & (\RegPC|data_out\(1) & VCC))
-- \RegPC|data_out[1]~16\ = CARRY((\RegPC|data_out\(0) & \RegPC|data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(0),
	datab => \RegPC|data_out\(1),
	datad => VCC,
	combout => \RegPC|data_out[1]~15_combout\,
	cout => \RegPC|data_out[1]~16\);

-- Location: FF_X13_Y22_N3
\RegPC|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[1]~15_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst6|inst3|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(1));

-- Location: LCCOMB_X13_Y22_N4
\RegPC|data_out[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[2]~17_combout\ = (\RegPC|data_out\(2) & (!\RegPC|data_out[1]~16\)) # (!\RegPC|data_out\(2) & ((\RegPC|data_out[1]~16\) # (GND)))
-- \RegPC|data_out[2]~18\ = CARRY((!\RegPC|data_out[1]~16\) # (!\RegPC|data_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(2),
	datad => VCC,
	cin => \RegPC|data_out[1]~16\,
	combout => \RegPC|data_out[2]~17_combout\,
	cout => \RegPC|data_out[2]~18\);

-- Location: FF_X13_Y22_N5
\RegPC|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[2]~17_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst6|inst3|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(2));

-- Location: LCCOMB_X13_Y22_N6
\RegPC|data_out[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[3]~19_combout\ = (\RegPC|data_out\(3) & (\RegPC|data_out[2]~18\ $ (GND))) # (!\RegPC|data_out\(3) & (!\RegPC|data_out[2]~18\ & VCC))
-- \RegPC|data_out[3]~20\ = CARRY((\RegPC|data_out\(3) & !\RegPC|data_out[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(3),
	datad => VCC,
	cin => \RegPC|data_out[2]~18\,
	combout => \RegPC|data_out[3]~19_combout\,
	cout => \RegPC|data_out[3]~20\);

-- Location: FF_X13_Y22_N7
\RegPC|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[3]~19_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst6|inst3|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(3));

-- Location: LCCOMB_X13_Y22_N8
\RegPC|data_out[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[4]~21_combout\ = (\RegPC|data_out\(4) & (!\RegPC|data_out[3]~20\)) # (!\RegPC|data_out\(4) & ((\RegPC|data_out[3]~20\) # (GND)))
-- \RegPC|data_out[4]~22\ = CARRY((!\RegPC|data_out[3]~20\) # (!\RegPC|data_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(4),
	datad => VCC,
	cin => \RegPC|data_out[3]~20\,
	combout => \RegPC|data_out[4]~21_combout\,
	cout => \RegPC|data_out[4]~22\);

-- Location: FF_X13_Y22_N9
\RegPC|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[4]~21_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst6|inst3|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(4));

-- Location: LCCOMB_X13_Y22_N10
\RegPC|data_out[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[5]~23_combout\ = (\RegPC|data_out\(5) & (\RegPC|data_out[4]~22\ $ (GND))) # (!\RegPC|data_out\(5) & (!\RegPC|data_out[4]~22\ & VCC))
-- \RegPC|data_out[5]~24\ = CARRY((\RegPC|data_out\(5) & !\RegPC|data_out[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(5),
	datad => VCC,
	cin => \RegPC|data_out[4]~22\,
	combout => \RegPC|data_out[5]~23_combout\,
	cout => \RegPC|data_out[5]~24\);

-- Location: FF_X13_Y22_N11
\RegPC|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[5]~23_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst6|inst3|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(5));

-- Location: LCCOMB_X13_Y23_N12
\dir|valor_interno[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dir|valor_interno[5]~feeder_combout\ = \RegPC|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegPC|data_out\(5),
	combout => \dir|valor_interno[5]~feeder_combout\);

-- Location: FF_X13_Y23_N13
\dir|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst3|nCBD~clkctrl_outclk\,
	d => \dir|valor_interno[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(5));

-- Location: LCCOMB_X13_Y22_N12
\RegPC|data_out[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[6]~25_combout\ = (\RegPC|data_out\(6) & (!\RegPC|data_out[5]~24\)) # (!\RegPC|data_out\(6) & ((\RegPC|data_out[5]~24\) # (GND)))
-- \RegPC|data_out[6]~26\ = CARRY((!\RegPC|data_out[5]~24\) # (!\RegPC|data_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(6),
	datad => VCC,
	cin => \RegPC|data_out[5]~24\,
	combout => \RegPC|data_out[6]~25_combout\,
	cout => \RegPC|data_out[6]~26\);

-- Location: FF_X13_Y22_N13
\RegPC|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[6]~25_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst6|inst3|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(6));

-- Location: LCCOMB_X13_Y23_N18
\dir|valor_interno[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dir|valor_interno[6]~feeder_combout\ = \RegPC|data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegPC|data_out\(6),
	combout => \dir|valor_interno[6]~feeder_combout\);

-- Location: FF_X13_Y23_N19
\dir|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst3|nCBD~clkctrl_outclk\,
	d => \dir|valor_interno[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(6));

-- Location: LCCOMB_X13_Y23_N30
\dir|valor_interno[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dir|valor_interno[4]~feeder_combout\ = \RegPC|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegPC|data_out\(4),
	combout => \dir|valor_interno[4]~feeder_combout\);

-- Location: FF_X13_Y23_N31
\dir|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst3|nCBD~clkctrl_outclk\,
	d => \dir|valor_interno[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(4));

-- Location: LCCOMB_X13_Y22_N14
\RegPC|data_out[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[7]~27_combout\ = (\RegPC|data_out\(7) & (\RegPC|data_out[6]~26\ $ (GND))) # (!\RegPC|data_out\(7) & (!\RegPC|data_out[6]~26\ & VCC))
-- \RegPC|data_out[7]~28\ = CARRY((\RegPC|data_out\(7) & !\RegPC|data_out[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(7),
	datad => VCC,
	cin => \RegPC|data_out[6]~26\,
	combout => \RegPC|data_out[7]~27_combout\,
	cout => \RegPC|data_out[7]~28\);

-- Location: FF_X13_Y22_N15
\RegPC|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[7]~27_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst6|inst3|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(7));

-- Location: LCCOMB_X13_Y23_N28
\dir|valor_interno[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dir|valor_interno[7]~feeder_combout\ = \RegPC|data_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegPC|data_out\(7),
	combout => \dir|valor_interno[7]~feeder_combout\);

-- Location: FF_X13_Y23_N29
\dir|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst3|nCBD~clkctrl_outclk\,
	d => \dir|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(7));

-- Location: LCCOMB_X13_Y23_N24
\inst|data_out[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data_out[4]~0_combout\ = (!\dir|valor_interno\(5) & (!\dir|valor_interno\(6) & (!\dir|valor_interno\(4) & !\dir|valor_interno\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(5),
	datab => \dir|valor_interno\(6),
	datac => \dir|valor_interno\(4),
	datad => \dir|valor_interno\(7),
	combout => \inst|data_out[4]~0_combout\);

-- Location: LCCOMB_X9_Y23_N24
\dir|valor_interno[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dir|valor_interno[1]~feeder_combout\ = \RegPC|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegPC|data_out\(1),
	combout => \dir|valor_interno[1]~feeder_combout\);

-- Location: FF_X9_Y23_N25
\dir|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst3|nCBD~clkctrl_outclk\,
	d => \dir|valor_interno[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(1));

-- Location: LCCOMB_X9_Y23_N4
\dir|valor_interno[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dir|valor_interno[3]~feeder_combout\ = \RegPC|data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(3),
	combout => \dir|valor_interno[3]~feeder_combout\);

-- Location: FF_X9_Y23_N5
\dir|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst3|nCBD~clkctrl_outclk\,
	d => \dir|valor_interno[3]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(3));

-- Location: LCCOMB_X9_Y23_N18
\dir|valor_interno[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dir|valor_interno[0]~feeder_combout\ = \RegPC|data_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegPC|data_out\(0),
	combout => \dir|valor_interno[0]~feeder_combout\);

-- Location: FF_X9_Y23_N19
\dir|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst3|nCBD~clkctrl_outclk\,
	d => \dir|valor_interno[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(0));

-- Location: LCCOMB_X9_Y23_N0
\inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (!\dir|valor_interno\(0) & ((\dir|valor_interno\(2) & (!\dir|valor_interno\(1) & !\dir|valor_interno\(3))) # (!\dir|valor_interno\(2) & (\dir|valor_interno\(1) $ (\dir|valor_interno\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(2),
	datab => \dir|valor_interno\(1),
	datac => \dir|valor_interno\(3),
	datad => \dir|valor_interno\(0),
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X9_Y22_N28
\inst7|PortL[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|PortL[6]~1_combout\ = (\inst6|inst3|X[2]~0_combout\) # (((\inst|data_out[4]~0_combout\ & \inst|Mux1~0_combout\)) # (!\inst6|inst3|PC[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst3|X[2]~0_combout\,
	datab => \inst|data_out[4]~0_combout\,
	datac => \inst6|inst3|PC[0]~4_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \inst7|PortL[6]~1_combout\);

-- Location: FF_X9_Y22_N11
\inst11|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst3|nCRI~clkctrl_outclk\,
	asdata => \inst7|PortL[6]~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(10));

-- Location: LCCOMB_X9_Y22_N10
\inst6|inst8[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst8[10]~1_combout\ = (!\inst6|inst3|instruccion\(0) & ((\inst11|valor_interno\(10)) # (!\inst6|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst3|instruccion\(0),
	datac => \inst11|valor_interno\(10),
	datad => \inst6|inst3|instruccion\(1),
	combout => \inst6|inst8[10]~1_combout\);

-- Location: LCCOMB_X9_Y22_N6
\inst6|inst5|$00000|auto_generated|result_node[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst5|$00000|auto_generated|result_node[10]~10_combout\ = (\inst6|inst1|SELECTOR~0_combout\ & ((\inst6|inst8[10]~1_combout\))) # (!\inst6|inst1|SELECTOR~0_combout\ & (\inst6|inst2|valor_interno\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|SELECTOR~0_combout\,
	datac => \inst6|inst2|valor_interno\(10),
	datad => \inst6|inst8[10]~1_combout\,
	combout => \inst6|inst5|$00000|auto_generated|result_node[10]~10_combout\);

-- Location: LCCOMB_X9_Y22_N0
\inst6|inst|Equal14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|Equal14~1_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[10]~10_combout\ & (\inst6|inst|Equal3~1_combout\ & \inst6|inst|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datac => \inst6|inst|Equal3~1_combout\,
	datad => \inst6|inst|Equal3~0_combout\,
	combout => \inst6|inst|Equal14~1_combout\);

-- Location: LCCOMB_X9_Y22_N30
\inst6|inst|data[86]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|data[86]~17_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\ & (\inst6|inst|Equal14~1_combout\ & ((!\inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\) # (!\inst6|inst|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Equal0~3_combout\,
	datab => \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datac => \inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datad => \inst6|inst|Equal14~1_combout\,
	combout => \inst6|inst|data[86]~17_combout\);

-- Location: LCCOMB_X8_Y22_N0
\inst6|inst|data[86]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|data[86]~18_combout\ = (\inst6|inst|data[86]~16_combout\ & (\inst6|inst|data[86]~17_combout\ & \inst6|inst3|nAS~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|data[86]~16_combout\,
	datac => \inst6|inst|data[86]~17_combout\,
	datad => \inst6|inst3|nAS~1_combout\,
	combout => \inst6|inst|data[86]~18_combout\);

-- Location: LCCOMB_X8_Y22_N14
\inst6|inst|data[27]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|data[27]~19_combout\ = (\inst6|inst|data~13_combout\ & ((!\inst6|inst|data[86]~18_combout\) # (!\inst6|inst|data[87]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|data~13_combout\,
	datac => \inst6|inst|data[87]~14_combout\,
	datad => \inst6|inst|data[86]~18_combout\,
	combout => \inst6|inst|data[27]~19_combout\);

-- Location: LCCOMB_X8_Y22_N4
\inst6|inst|Equal14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|Equal14~3_combout\ = (\inst6|inst|Equal14~1_combout\ & (!\inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\ & \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst|Equal14~1_combout\,
	datac => \inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datad => \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	combout => \inst6|inst|Equal14~3_combout\);

-- Location: LCCOMB_X3_Y22_N14
\inst6|inst|data[27]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|data[27]~23_combout\ = (\inst6|inst|Equal0~3_combout\ & (((!\inst6|inst|Equal0~2_combout\ & !\inst6|inst|Equal14~3_combout\)))) # (!\inst6|inst|Equal0~3_combout\ & (((!\inst6|inst|Equal14~3_combout\)) # (!\inst6|inst|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Equal0~3_combout\,
	datab => \inst6|inst|Equal2~0_combout\,
	datac => \inst6|inst|Equal0~2_combout\,
	datad => \inst6|inst|Equal14~3_combout\,
	combout => \inst6|inst|data[27]~23_combout\);

-- Location: LCCOMB_X7_Y22_N18
\inst6|inst|data[87]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|data[87]~25_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\) # ((\inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\) # ((!\inst6|inst|Equal3~2_combout\ & !\inst6|inst|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst6|inst|Equal3~2_combout\,
	datac => \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst6|inst|Equal11~0_combout\,
	combout => \inst6|inst|data[87]~25_combout\);

-- Location: LCCOMB_X3_Y22_N30
\inst6|inst3|nCBD\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst3|nCBD~combout\ = LCELL(((\inst6|inst|data[27]~19_combout\ & (\inst6|inst|data[27]~23_combout\ & \inst6|inst|data[87]~25_combout\))) # (!\RESET~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst6|inst|data[27]~19_combout\,
	datac => \inst6|inst|data[27]~23_combout\,
	datad => \inst6|inst|data[87]~25_combout\,
	combout => \inst6|inst3|nCBD~combout\);

-- Location: CLKCTRL_G2
\inst6|inst3|nCBD~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|inst3|nCBD~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|inst3|nCBD~clkctrl_outclk\);

-- Location: FF_X9_Y23_N23
\dir|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst3|nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(2));

-- Location: LCCOMB_X9_Y23_N8
\inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\dir|valor_interno\(2) & (!\dir|valor_interno\(3) & (\dir|valor_interno\(1) $ (!\dir|valor_interno\(0))))) # (!\dir|valor_interno\(2) & (!\dir|valor_interno\(1) & (\dir|valor_interno\(3) & !\dir|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(2),
	datab => \dir|valor_interno\(1),
	datac => \dir|valor_interno\(3),
	datad => \dir|valor_interno\(0),
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X11_Y22_N12
\inst7|PortL[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|PortL[3]~4_combout\ = ((\inst6|inst3|X[2]~0_combout\) # ((\inst|Mux4~0_combout\ & \inst|data_out[4]~0_combout\))) # (!\inst6|inst3|PC[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~0_combout\,
	datab => \inst|data_out[4]~0_combout\,
	datac => \inst6|inst3|PC[0]~4_combout\,
	datad => \inst6|inst3|X[2]~0_combout\,
	combout => \inst7|PortL[3]~4_combout\);

-- Location: FF_X11_Y22_N15
\inst11|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst3|nCRI~clkctrl_outclk\,
	asdata => \inst7|PortL[3]~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(7));

-- Location: LCCOMB_X11_Y22_N14
\inst6|inst8[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst8[7]~4_combout\ = (!\inst6|inst3|instruccion\(0) & ((\inst11|valor_interno\(7)) # (!\inst6|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst3|instruccion\(0),
	datac => \inst11|valor_interno\(7),
	datad => \inst6|inst3|instruccion\(1),
	combout => \inst6|inst8[7]~4_combout\);

-- Location: LCCOMB_X10_Y22_N12
\inst6|inst2|valor_interno[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst2|valor_interno[6]~21_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[6]~6_combout\ & (!\inst6|inst2|valor_interno[5]~20\)) # (!\inst6|inst5|$00000|auto_generated|result_node[6]~6_combout\ & ((\inst6|inst2|valor_interno[5]~20\) # 
-- (GND)))
-- \inst6|inst2|valor_interno[6]~22\ = CARRY((!\inst6|inst2|valor_interno[5]~20\) # (!\inst6|inst5|$00000|auto_generated|result_node[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	datad => VCC,
	cin => \inst6|inst2|valor_interno[5]~20\,
	combout => \inst6|inst2|valor_interno[6]~21_combout\,
	cout => \inst6|inst2|valor_interno[6]~22\);

-- Location: LCCOMB_X10_Y22_N14
\inst6|inst2|valor_interno[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst2|valor_interno[7]~23_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (\inst6|inst2|valor_interno[6]~22\ $ (GND))) # (!\inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (!\inst6|inst2|valor_interno[6]~22\ 
-- & VCC))
-- \inst6|inst2|valor_interno[7]~24\ = CARRY((\inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\ & !\inst6|inst2|valor_interno[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datad => VCC,
	cin => \inst6|inst2|valor_interno[6]~22\,
	combout => \inst6|inst2|valor_interno[7]~23_combout\,
	cout => \inst6|inst2|valor_interno[7]~24\);

-- Location: FF_X10_Y22_N15
\inst6|inst2|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst6|inst2|valor_interno[7]~23_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst2|valor_interno\(7));

-- Location: LCCOMB_X11_Y22_N22
\inst6|inst5|$00000|auto_generated|result_node[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\ = (\inst6|inst1|SELECTOR~0_combout\ & (\inst6|inst8[7]~4_combout\)) # (!\inst6|inst1|SELECTOR~0_combout\ & ((\inst6|inst2|valor_interno\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|SELECTOR~0_combout\,
	datac => \inst6|inst8[7]~4_combout\,
	datad => \inst6|inst2|valor_interno\(7),
	combout => \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\);

-- Location: FF_X10_Y22_N17
\inst6|inst2|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst6|inst2|valor_interno[8]~25_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst2|valor_interno\(8));

-- Location: LCCOMB_X9_Y23_N26
\inst|data_out[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data_out[4]~1_combout\ = (\dir|valor_interno\(2) & (\dir|valor_interno\(1) & (!\dir|valor_interno\(3) & \dir|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(2),
	datab => \dir|valor_interno\(1),
	datac => \dir|valor_interno\(3),
	datad => \dir|valor_interno\(0),
	combout => \inst|data_out[4]~1_combout\);

-- Location: LCCOMB_X8_Y22_N10
\inst7|PortL[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|PortL[4]~3_combout\ = (\inst6|inst3|X[2]~0_combout\) # (((\inst|data_out[4]~0_combout\ & \inst|data_out[4]~1_combout\)) # (!\inst6|inst3|PC[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst3|X[2]~0_combout\,
	datab => \inst6|inst3|PC[0]~4_combout\,
	datac => \inst|data_out[4]~0_combout\,
	datad => \inst|data_out[4]~1_combout\,
	combout => \inst7|PortL[4]~3_combout\);

-- Location: FF_X8_Y22_N27
\inst11|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst3|nCRI~combout\,
	asdata => \inst7|PortL[4]~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(8));

-- Location: LCCOMB_X9_Y22_N14
\inst6|inst8[8]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst8[8]~3_combout\ = (!\inst6|inst3|instruccion\(0) & ((\inst11|valor_interno\(8)) # (!\inst6|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst3|instruccion\(0),
	datac => \inst11|valor_interno\(8),
	datad => \inst6|inst3|instruccion\(1),
	combout => \inst6|inst8[8]~3_combout\);

-- Location: LCCOMB_X10_Y22_N28
\inst6|inst5|$00000|auto_generated|result_node[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst5|$00000|auto_generated|result_node[8]~8_combout\ = (\inst6|inst1|SELECTOR~0_combout\ & ((\inst6|inst8[8]~3_combout\))) # (!\inst6|inst1|SELECTOR~0_combout\ & (\inst6|inst2|valor_interno\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|SELECTOR~0_combout\,
	datab => \inst6|inst2|valor_interno\(8),
	datad => \inst6|inst8[8]~3_combout\,
	combout => \inst6|inst5|$00000|auto_generated|result_node[8]~8_combout\);

-- Location: LCCOMB_X8_Y22_N26
\inst6|inst|Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|Equal12~0_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[8]~8_combout\ & (\inst6|inst|Equal0~1_combout\ & \inst6|inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	datab => \inst6|inst|Equal0~1_combout\,
	datad => \inst6|inst|Equal0~0_combout\,
	combout => \inst6|inst|Equal12~0_combout\);

-- Location: LCCOMB_X11_Y22_N4
\inst6|inst|data[73]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|data[73]~22_combout\ = (((!\inst6|inst|Equal1~0_combout\) # (!\inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\)) # (!\inst6|inst|Equal12~0_combout\)) # (!\inst6|inst|data[87]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|data[87]~14_combout\,
	datab => \inst6|inst|Equal12~0_combout\,
	datac => \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datad => \inst6|inst|Equal1~0_combout\,
	combout => \inst6|inst|data[73]~22_combout\);

-- Location: LCCOMB_X12_Y22_N8
\inst6|inst3|nCRI\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst3|nCRI~combout\ = LCELL(((\inst6|inst|data[73]~22_combout\ & ((!\inst6|inst|Equal0~2_combout\) # (!\inst6|inst|Equal1~0_combout\)))) # (!\RESET~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst6|inst|Equal1~0_combout\,
	datac => \inst6|inst|data[73]~22_combout\,
	datad => \inst6|inst|Equal0~2_combout\,
	combout => \inst6|inst3|nCRI~combout\);

-- Location: CLKCTRL_G0
\inst6|inst3|nCRI~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|inst3|nCRI~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|inst3|nCRI~clkctrl_outclk\);

-- Location: LCCOMB_X9_Y23_N12
\inst|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\dir|valor_interno\(2) & (!\dir|valor_interno\(3) & (\dir|valor_interno\(1) $ (\dir|valor_interno\(0))))) # (!\dir|valor_interno\(2) & (\dir|valor_interno\(1) & (\dir|valor_interno\(3) $ (\dir|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(2),
	datab => \dir|valor_interno\(1),
	datac => \dir|valor_interno\(3),
	datad => \dir|valor_interno\(0),
	combout => \inst|Mux7~0_combout\);

-- Location: LCCOMB_X6_Y22_N4
\inst7|PortL[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|PortL[0]~6_combout\ = ((\inst6|inst3|X[2]~0_combout\) # ((\inst|data_out[4]~0_combout\ & \inst|Mux7~0_combout\))) # (!\inst6|inst3|PC[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_out[4]~0_combout\,
	datab => \inst6|inst3|PC[0]~4_combout\,
	datac => \inst|Mux7~0_combout\,
	datad => \inst6|inst3|X[2]~0_combout\,
	combout => \inst7|PortL[0]~6_combout\);

-- Location: FF_X6_Y22_N25
\inst11|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst3|nCRI~clkctrl_outclk\,
	asdata => \inst7|PortL[0]~6_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(4));

-- Location: LCCOMB_X6_Y22_N24
\inst6|inst8[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst8[4]~7_combout\ = (!\inst6|inst3|instruccion\(0) & ((\inst11|valor_interno\(4)) # (!\inst6|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst3|instruccion\(0),
	datac => \inst11|valor_interno\(4),
	datad => \inst6|inst3|instruccion\(1),
	combout => \inst6|inst8[4]~7_combout\);

-- Location: LCCOMB_X6_Y22_N6
\inst6|inst5|$00000|auto_generated|result_node[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst5|$00000|auto_generated|result_node[4]~4_combout\ = (\inst6|inst1|SELECTOR~0_combout\ & ((\inst6|inst8[4]~7_combout\))) # (!\inst6|inst1|SELECTOR~0_combout\ & (\inst6|inst2|valor_interno\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|SELECTOR~0_combout\,
	datac => \inst6|inst2|valor_interno\(4),
	datad => \inst6|inst8[4]~7_combout\,
	combout => \inst6|inst5|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X10_Y22_N10
\inst6|inst2|valor_interno[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst2|valor_interno[5]~19_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[5]~5_combout\ & (\inst6|inst2|valor_interno[4]~18\ $ (GND))) # (!\inst6|inst5|$00000|auto_generated|result_node[5]~5_combout\ & (!\inst6|inst2|valor_interno[4]~18\ 
-- & VCC))
-- \inst6|inst2|valor_interno[5]~20\ = CARRY((\inst6|inst5|$00000|auto_generated|result_node[5]~5_combout\ & !\inst6|inst2|valor_interno[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[5]~5_combout\,
	datad => VCC,
	cin => \inst6|inst2|valor_interno[4]~18\,
	combout => \inst6|inst2|valor_interno[5]~19_combout\,
	cout => \inst6|inst2|valor_interno[5]~20\);

-- Location: FF_X10_Y22_N11
\inst6|inst2|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst6|inst2|valor_interno[5]~19_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst2|valor_interno\(5));

-- Location: LCCOMB_X9_Y23_N30
\inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\dir|valor_interno\(0)) # ((\dir|valor_interno\(2) & ((\dir|valor_interno\(1)) # (\dir|valor_interno\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(2),
	datab => \dir|valor_interno\(1),
	datac => \dir|valor_interno\(3),
	datad => \dir|valor_interno\(0),
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X9_Y22_N20
\inst7|PortL[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|PortL[1]~5_combout\ = (\inst6|inst3|X[2]~0_combout\) # (((\inst|data_out[4]~0_combout\ & !\inst|Mux6~0_combout\)) # (!\inst6|inst3|PC[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst3|X[2]~0_combout\,
	datab => \inst|data_out[4]~0_combout\,
	datac => \inst6|inst3|PC[0]~4_combout\,
	datad => \inst|Mux6~0_combout\,
	combout => \inst7|PortL[1]~5_combout\);

-- Location: FF_X9_Y22_N9
\inst11|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst3|nCRI~clkctrl_outclk\,
	asdata => \inst7|PortL[1]~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(5));

-- Location: LCCOMB_X9_Y22_N8
\inst6|inst8[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst8[5]~6_combout\ = (!\inst6|inst3|instruccion\(0) & ((\inst11|valor_interno\(5)) # (!\inst6|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst3|instruccion\(1),
	datac => \inst11|valor_interno\(5),
	datad => \inst6|inst3|instruccion\(0),
	combout => \inst6|inst8[5]~6_combout\);

-- Location: LCCOMB_X10_Y22_N24
\inst6|inst5|$00000|auto_generated|result_node[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst5|$00000|auto_generated|result_node[5]~5_combout\ = (\inst6|inst1|SELECTOR~0_combout\ & ((\inst6|inst8[5]~6_combout\))) # (!\inst6|inst1|SELECTOR~0_combout\ & (\inst6|inst2|valor_interno\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst2|valor_interno\(5),
	datab => \inst6|inst1|SELECTOR~0_combout\,
	datad => \inst6|inst8[5]~6_combout\,
	combout => \inst6|inst5|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: FF_X10_Y22_N13
\inst6|inst2|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst6|inst2|valor_interno[6]~21_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst2|valor_interno\(6));

-- Location: LCCOMB_X9_Y23_N6
\inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\dir|valor_interno\(0)) # ((\dir|valor_interno\(2) & ((\dir|valor_interno\(1)) # (\dir|valor_interno\(3)))) # (!\dir|valor_interno\(2) & (\dir|valor_interno\(1) & \dir|valor_interno\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(2),
	datab => \dir|valor_interno\(1),
	datac => \dir|valor_interno\(3),
	datad => \dir|valor_interno\(0),
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y22_N4
\inst7|PortL[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|PortL[7]~0_combout\ = (\inst6|inst3|X[2]~0_combout\) # (((\inst|data_out[4]~0_combout\ & !\inst|Mux0~0_combout\)) # (!\inst6|inst3|PC[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst3|X[2]~0_combout\,
	datab => \inst|data_out[4]~0_combout\,
	datac => \inst6|inst3|PC[0]~4_combout\,
	datad => \inst|Mux0~0_combout\,
	combout => \inst7|PortL[7]~0_combout\);

-- Location: FF_X9_Y22_N23
\inst11|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst3|nCRI~clkctrl_outclk\,
	asdata => \inst7|PortL[7]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(6));

-- Location: LCCOMB_X9_Y22_N22
\inst6|inst8[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst8[6]~5_combout\ = (!\inst6|inst3|instruccion\(0) & ((\inst11|valor_interno\(6)) # (!\inst6|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst3|instruccion\(0),
	datac => \inst11|valor_interno\(6),
	datad => \inst6|inst3|instruccion\(1),
	combout => \inst6|inst8[6]~5_combout\);

-- Location: LCCOMB_X10_Y22_N26
\inst6|inst5|$00000|auto_generated|result_node[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst5|$00000|auto_generated|result_node[6]~6_combout\ = (\inst6|inst1|SELECTOR~0_combout\ & ((\inst6|inst8[6]~5_combout\))) # (!\inst6|inst1|SELECTOR~0_combout\ & (\inst6|inst2|valor_interno\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst2|valor_interno\(6),
	datab => \inst6|inst1|SELECTOR~0_combout\,
	datad => \inst6|inst8[6]~5_combout\,
	combout => \inst6|inst5|$00000|auto_generated|result_node[6]~6_combout\);

-- Location: LCCOMB_X7_Y22_N12
\inst6|inst|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|Equal3~1_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[6]~6_combout\ & (!\inst6|inst5|$00000|auto_generated|result_node[8]~8_combout\ & \inst6|inst5|$00000|auto_generated|result_node[11]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	datab => \inst6|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	datad => \inst6|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	combout => \inst6|inst|Equal3~1_combout\);

-- Location: LCCOMB_X7_Y22_N20
\inst6|inst|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|Equal3~2_combout\ = (\inst6|inst|Equal3~1_combout\ & (!\inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\ & (!\inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\ & \inst6|inst|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Equal3~1_combout\,
	datab => \inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datac => \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datad => \inst6|inst|Equal3~0_combout\,
	combout => \inst6|inst|Equal3~2_combout\);

-- Location: LCCOMB_X7_Y22_N14
\inst6|inst3|PC[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst3|PC[0]~2_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\) # ((!\inst6|inst|Equal3~2_combout\) # (!\inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst6|inst|Equal3~2_combout\,
	combout => \inst6|inst3|PC[0]~2_combout\);

-- Location: LCCOMB_X7_Y22_N8
\inst6|inst|data[87]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|data[87]~26_combout\ = ((\inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\) # ((!\inst6|inst|Equal3~2_combout\ & !\inst6|inst|Equal0~2_combout\))) # (!\inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst6|inst|Equal3~2_combout\,
	datac => \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst6|inst|Equal0~2_combout\,
	combout => \inst6|inst|data[87]~26_combout\);

-- Location: LCCOMB_X7_Y22_N2
\inst6|inst|data[87]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|data[87]~12_combout\ = (\inst6|inst3|PC[0]~2_combout\ & (\inst6|inst|data[87]~26_combout\ & \inst6|inst|data[87]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst3|PC[0]~2_combout\,
	datac => \inst6|inst|data[87]~26_combout\,
	datad => \inst6|inst|data[87]~25_combout\,
	combout => \inst6|inst|data[87]~12_combout\);

-- Location: LCCOMB_X3_Y22_N4
\inst6|inst|data~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|data~21_combout\ = ((\inst6|inst|data[87]~12_combout\ & \inst6|inst|data[86]~18_combout\)) # (!\inst6|inst|data~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|data[87]~12_combout\,
	datab => \inst6|inst|data~13_combout\,
	datac => \inst6|inst|data[86]~18_combout\,
	combout => \inst6|inst|data~21_combout\);

-- Location: FF_X3_Y22_N7
\inst6|inst3|prueba[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst6|inst|data~21_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst3|prueba\(4));

-- Location: LCCOMB_X6_Y22_N0
\inst9|R0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|R0~0_combout\ = (\inst6|inst|Equal14~0_combout\ & (\inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\ & \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Equal14~0_combout\,
	datab => \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	combout => \inst9|R0~0_combout\);

-- Location: IOIBUF_X0_Y23_N22
\ENAY~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENAY,
	o => \ENAY~input_o\);

-- Location: LCCOMB_X6_Y22_N28
\inst13|data_out[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_out[0]~1_combout\ = (\RESET~input_o\ & (!\ENAY~input_o\ & \inst6|inst|Equal17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \ENAY~input_o\,
	datad => \inst6|inst|Equal17~0_combout\,
	combout => \inst13|data_out[0]~1_combout\);

-- Location: FF_X6_Y22_N1
\inst9|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst7|PortL[0]~6_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(0));

-- Location: LCCOMB_X1_Y23_N28
\inst9|R0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|R0~1_combout\ = (\inst9|data_out\(0)) # ((\ENAY~input_o\) # ((\inst9|R0~0_combout\ & \RESET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|R0~0_combout\,
	datab => \RESET~input_o\,
	datac => \inst9|data_out\(0),
	datad => \ENAY~input_o\,
	combout => \inst9|R0~1_combout\);

-- Location: LCCOMB_X12_Y22_N4
\AcumuladorA|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[7]~0_combout\ = (\inst6|inst|Equal1~0_combout\ & (\RESET~input_o\ & (\inst6|inst|Equal3~2_combout\ & !\inst6|inst5|$00000|auto_generated|result_node[10]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Equal1~0_combout\,
	datab => \RESET~input_o\,
	datac => \inst6|inst|Equal3~2_combout\,
	datad => \inst6|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	combout => \AcumuladorA|data_out[7]~0_combout\);

-- Location: FF_X9_Y22_N19
\AcumuladorA|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst7|PortL[7]~0_combout\,
	sload => VCC,
	ena => \AcumuladorA|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(7));

-- Location: FF_X3_Y22_N21
\upa|Banderas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \AcumuladorA|data_out\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Banderas\(2));

-- Location: LCCOMB_X3_Y22_N28
\inst6|inst|Equal18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|Equal18~0_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (\inst6|inst|Equal14~1_combout\ & (\inst6|inst|Equal0~3_combout\ & \inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datab => \inst6|inst|Equal14~1_combout\,
	datac => \inst6|inst|Equal0~3_combout\,
	datad => \inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \inst6|inst|Equal18~0_combout\);

-- Location: LCCOMB_X3_Y22_N18
\inst6|inst|data[86]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|data[86]~29_combout\ = (\inst6|inst|Equal18~0_combout\) # ((\inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst6|inst|Equal3~2_combout\ & !\inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst6|inst|Equal18~0_combout\,
	datac => \inst6|inst|Equal3~2_combout\,
	datad => \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst6|inst|data[86]~29_combout\);

-- Location: FF_X3_Y22_N19
\inst6|inst3|prueba[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst6|inst|data[86]~29_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst3|prueba\(0));

-- Location: LCCOMB_X3_Y22_N20
\inst6|inst6|$00001|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst6|$00001|auto_generated|result_node[0]~0_combout\ = (\inst6|inst3|prueba\(0) & ((\upa|Banderas\(2)))) # (!\inst6|inst3|prueba\(0) & (\inst9|R0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|R0~1_combout\,
	datac => \upa|Banderas\(2),
	datad => \inst6|inst3|prueba\(0),
	combout => \inst6|inst6|$00001|auto_generated|result_node[0]~0_combout\);

-- Location: FF_X3_Y22_N13
\inst6|inst3|vf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst6|inst|data~28_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst3|vf~q\);

-- Location: LCCOMB_X3_Y22_N12
\inst6|inst7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst7~combout\ = \inst6|inst3|vf~q\ $ (((\inst6|inst3|prueba\(4) & (\inst6|inst6|$00001|auto_generated|result_node[0]~0_combout\ & \inst6|inst3|instruccion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst3|prueba\(4),
	datab => \inst6|inst6|$00001|auto_generated|result_node[0]~0_combout\,
	datac => \inst6|inst3|vf~q\,
	datad => \inst6|inst3|instruccion\(0),
	combout => \inst6|inst7~combout\);

-- Location: LCCOMB_X9_Y22_N18
\inst6|inst1|SELECTOR~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst1|SELECTOR~3_combout\ = (!\inst6|inst3|instruccion\(0) & \inst6|inst3|instruccion\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst3|instruccion\(0),
	datad => \inst6|inst3|instruccion\(1),
	combout => \inst6|inst1|SELECTOR~3_combout\);

-- Location: LCCOMB_X6_Y22_N16
\inst6|inst1|SELECTOR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst1|SELECTOR~0_combout\ = (\inst6|inst7~combout\ & (\inst6|inst1|SELECTOR~3_combout\)) # (!\inst6|inst7~combout\ & ((\inst6|inst1|SELECTOR~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst7~combout\,
	datac => \inst6|inst1|SELECTOR~3_combout\,
	datad => \inst6|inst1|SELECTOR~2_combout\,
	combout => \inst6|inst1|SELECTOR~0_combout\);

-- Location: FF_X10_Y22_N7
\inst6|inst2|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst6|inst2|valor_interno[3]~15_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst2|valor_interno\(3));

-- Location: LCCOMB_X7_Y22_N26
\inst6|inst5|$00000|auto_generated|result_node[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst5|$00000|auto_generated|result_node[3]~3_combout\ = (\inst6|inst1|SELECTOR~0_combout\ & (!\inst6|inst1|SELECTOR~2_combout\)) # (!\inst6|inst1|SELECTOR~0_combout\ & ((\inst6|inst2|valor_interno\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|SELECTOR~0_combout\,
	datab => \inst6|inst1|SELECTOR~2_combout\,
	datad => \inst6|inst2|valor_interno\(3),
	combout => \inst6|inst5|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X7_Y22_N30
\inst6|inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|Equal0~0_combout\ = (!\inst6|inst5|$00000|auto_generated|result_node[3]~3_combout\ & (!\inst6|inst5|$00000|auto_generated|result_node[4]~4_combout\ & (!\inst6|inst5|$00000|auto_generated|result_node[9]~9_combout\ & 
-- !\inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datab => \inst6|inst5|$00000|auto_generated|result_node[4]~4_combout\,
	datac => \inst6|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	datad => \inst6|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \inst6|inst|Equal0~0_combout\);

-- Location: LCCOMB_X7_Y22_N10
\inst6|inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|Equal0~2_combout\ = (\inst6|inst|Equal0~0_combout\ & (!\inst6|inst5|$00000|auto_generated|result_node[8]~8_combout\ & (!\inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\ & \inst6|inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Equal0~0_combout\,
	datab => \inst6|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	datac => \inst6|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datad => \inst6|inst|Equal0~1_combout\,
	combout => \inst6|inst|Equal0~2_combout\);

-- Location: LCCOMB_X8_Y22_N30
\inst6|inst|data[87]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|data[87]~14_combout\ = (\inst6|inst|data~13_combout\ & (\inst6|inst|data[87]~12_combout\ & ((!\inst6|inst|Equal0~3_combout\) # (!\inst6|inst|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Equal0~2_combout\,
	datab => \inst6|inst|Equal0~3_combout\,
	datac => \inst6|inst|data~13_combout\,
	datad => \inst6|inst|data[87]~12_combout\,
	combout => \inst6|inst|data[87]~14_combout\);

-- Location: LCCOMB_X6_Y22_N8
\inst6|inst|data[87]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|data[87]~27_combout\ = ((\inst6|inst|Equal11~0_combout\ & (!\inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\ & \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\))) # (!\inst6|inst|data[87]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Equal11~0_combout\,
	datab => \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst6|inst|data[87]~26_combout\,
	datad => \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst6|inst|data[87]~27_combout\);

-- Location: LCCOMB_X8_Y22_N12
\inst6|inst|data[87]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|data[87]~15_combout\ = (\inst6|inst|data[87]~27_combout\) # ((\inst6|inst|data[87]~14_combout\ & (\inst6|inst|data[87]~24_combout\ & \inst6|inst|Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|data[87]~14_combout\,
	datab => \inst6|inst|data[87]~24_combout\,
	datac => \inst6|inst|data[87]~27_combout\,
	datad => \inst6|inst|Equal18~0_combout\,
	combout => \inst6|inst|data[87]~15_combout\);

-- Location: FF_X8_Y22_N13
\inst6|inst3|instruccion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst6|inst|data[87]~15_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst3|instruccion\(1));

-- Location: LCCOMB_X7_Y22_N4
\inst6|inst1|SELECTOR~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst1|SELECTOR~2_combout\ = (\inst6|inst3|instruccion\(1)) # (\inst6|inst3|instruccion\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst3|instruccion\(1),
	datad => \inst6|inst3|instruccion\(0),
	combout => \inst6|inst1|SELECTOR~2_combout\);

-- Location: FF_X10_Y22_N3
\inst6|inst2|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst6|inst2|valor_interno[1]~11_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst2|valor_interno\(1));

-- Location: LCCOMB_X6_Y22_N12
\inst6|inst5|$00000|auto_generated|result_node[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\ = (\inst6|inst1|SELECTOR~0_combout\ & (!\inst6|inst1|SELECTOR~2_combout\)) # (!\inst6|inst1|SELECTOR~0_combout\ & ((\inst6|inst2|valor_interno\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|SELECTOR~2_combout\,
	datab => \inst6|inst2|valor_interno\(1),
	datad => \inst6|inst1|SELECTOR~0_combout\,
	combout => \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X3_Y22_N22
\inst6|inst|data~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|data~28_combout\ = (\inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (!\inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\ & \inst6|inst|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst6|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst6|inst|Equal3~2_combout\,
	combout => \inst6|inst|data~28_combout\);

-- Location: LCCOMB_X8_Y22_N18
\inst6|inst|data[86]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst|data[86]~20_combout\ = (\inst6|inst|data~28_combout\) # ((\inst6|inst|Equal18~0_combout\) # (!\inst6|inst|data[27]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst|data~28_combout\,
	datac => \inst6|inst|data[27]~19_combout\,
	datad => \inst6|inst|Equal18~0_combout\,
	combout => \inst6|inst|data[86]~20_combout\);

-- Location: FF_X8_Y22_N19
\inst6|inst3|instruccion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst6|inst|data[86]~20_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst3|instruccion\(0));

-- Location: FF_X9_Y22_N3
\inst11|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst3|nCRI~clkctrl_outclk\,
	asdata => \inst7|PortL[7]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(11));

-- Location: LCCOMB_X9_Y22_N2
\inst6|inst8[11]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst8[11]~0_combout\ = (!\inst6|inst3|instruccion\(0) & ((\inst11|valor_interno\(11)) # (!\inst6|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst3|instruccion\(0),
	datac => \inst11|valor_interno\(11),
	datad => \inst6|inst3|instruccion\(1),
	combout => \inst6|inst8[11]~0_combout\);

-- Location: LCCOMB_X9_Y22_N24
\AcumuladorA|data_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[6]~feeder_combout\ = \inst7|PortL[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[6]~1_combout\,
	combout => \AcumuladorA|data_out[6]~feeder_combout\);

-- Location: FF_X9_Y22_N25
\AcumuladorA|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[6]~feeder_combout\,
	ena => \AcumuladorA|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(6));

-- Location: LCCOMB_X1_Y9_N16
\upa|Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[6]~feeder_combout\ = \AcumuladorA|data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AcumuladorA|data_out\(6),
	combout => \upa|Q[6]~feeder_combout\);

-- Location: FF_X1_Y9_N17
\upa|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(6));

-- Location: LCCOMB_X12_Y22_N18
\AcumuladorA|data_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[5]~feeder_combout\ = \inst7|PortL[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[7]~2_combout\,
	combout => \AcumuladorA|data_out[5]~feeder_combout\);

-- Location: FF_X12_Y22_N19
\AcumuladorA|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[5]~feeder_combout\,
	ena => \AcumuladorA|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(5));

-- Location: LCCOMB_X21_Y1_N0
\upa|Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[5]~feeder_combout\ = \AcumuladorA|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AcumuladorA|data_out\(5),
	combout => \upa|Q[5]~feeder_combout\);

-- Location: FF_X21_Y1_N1
\upa|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(5));

-- Location: LCCOMB_X12_Y22_N16
\AcumuladorA|data_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[4]~feeder_combout\ = \inst7|PortL[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[4]~3_combout\,
	combout => \AcumuladorA|data_out[4]~feeder_combout\);

-- Location: FF_X12_Y22_N17
\AcumuladorA|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[4]~feeder_combout\,
	ena => \AcumuladorA|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(4));

-- Location: LCCOMB_X21_Y1_N14
\upa|Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[4]~feeder_combout\ = \AcumuladorA|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AcumuladorA|data_out\(4),
	combout => \upa|Q[4]~feeder_combout\);

-- Location: FF_X21_Y1_N15
\upa|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(4));

-- Location: LCCOMB_X12_Y22_N30
\AcumuladorA|data_out[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[3]~feeder_combout\ = \inst7|PortL[3]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[3]~4_combout\,
	combout => \AcumuladorA|data_out[3]~feeder_combout\);

-- Location: FF_X12_Y22_N31
\AcumuladorA|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[3]~feeder_combout\,
	ena => \AcumuladorA|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(3));

-- Location: LCCOMB_X21_Y1_N20
\upa|Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[3]~feeder_combout\ = \AcumuladorA|data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AcumuladorA|data_out\(3),
	combout => \upa|Q[3]~feeder_combout\);

-- Location: FF_X21_Y1_N21
\upa|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(3));

-- Location: LCCOMB_X9_Y22_N12
\AcumuladorA|data_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[2]~feeder_combout\ = \inst7|PortL[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|PortL[7]~0_combout\,
	combout => \AcumuladorA|data_out[2]~feeder_combout\);

-- Location: FF_X9_Y22_N13
\AcumuladorA|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[2]~feeder_combout\,
	ena => \AcumuladorA|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(2));

-- Location: LCCOMB_X1_Y9_N18
\upa|Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[2]~feeder_combout\ = \AcumuladorA|data_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AcumuladorA|data_out\(2),
	combout => \upa|Q[2]~feeder_combout\);

-- Location: FF_X1_Y9_N19
\upa|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(2));

-- Location: LCCOMB_X9_Y22_N26
\AcumuladorA|data_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[1]~feeder_combout\ = \inst7|PortL[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[1]~5_combout\,
	combout => \AcumuladorA|data_out[1]~feeder_combout\);

-- Location: FF_X9_Y22_N27
\AcumuladorA|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[1]~feeder_combout\,
	ena => \AcumuladorA|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(1));

-- Location: LCCOMB_X1_Y9_N8
\upa|Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[1]~feeder_combout\ = \AcumuladorA|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AcumuladorA|data_out\(1),
	combout => \upa|Q[1]~feeder_combout\);

-- Location: FF_X1_Y9_N9
\upa|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(1));

-- Location: LCCOMB_X12_Y22_N0
\AcumuladorA|data_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[0]~feeder_combout\ = \inst7|PortL[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[0]~6_combout\,
	combout => \AcumuladorA|data_out[0]~feeder_combout\);

-- Location: FF_X12_Y22_N1
\AcumuladorA|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[0]~feeder_combout\,
	ena => \AcumuladorA|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(0));

-- Location: LCCOMB_X20_Y1_N4
\upa|Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[0]~feeder_combout\ = \AcumuladorA|data_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AcumuladorA|data_out\(0),
	combout => \upa|Q[0]~feeder_combout\);

-- Location: FF_X20_Y1_N5
\upa|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(0));

-- Location: LCCOMB_X1_Y9_N10
\upa|Yupa_interno[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa_interno[6]~feeder_combout\ = \AcumuladorA|data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AcumuladorA|data_out\(6),
	combout => \upa|Yupa_interno[6]~feeder_combout\);

-- Location: FF_X1_Y9_N11
\upa|Yupa_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa_interno[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(6));

-- Location: LCCOMB_X21_Y1_N10
\upa|Yupa_interno[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa_interno[5]~feeder_combout\ = \AcumuladorA|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AcumuladorA|data_out\(5),
	combout => \upa|Yupa_interno[5]~feeder_combout\);

-- Location: FF_X21_Y1_N11
\upa|Yupa_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa_interno[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(5));

-- Location: LCCOMB_X21_Y1_N12
\upa|Yupa_interno[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa_interno[4]~feeder_combout\ = \AcumuladorA|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AcumuladorA|data_out\(4),
	combout => \upa|Yupa_interno[4]~feeder_combout\);

-- Location: FF_X21_Y1_N13
\upa|Yupa_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa_interno[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(4));

-- Location: LCCOMB_X21_Y1_N30
\upa|Yupa_interno[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa_interno[3]~feeder_combout\ = \AcumuladorA|data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AcumuladorA|data_out\(3),
	combout => \upa|Yupa_interno[3]~feeder_combout\);

-- Location: FF_X21_Y1_N31
\upa|Yupa_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa_interno[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(3));

-- Location: LCCOMB_X1_Y9_N12
\upa|Yupa_interno[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa_interno[2]~feeder_combout\ = \AcumuladorA|data_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AcumuladorA|data_out\(2),
	combout => \upa|Yupa_interno[2]~feeder_combout\);

-- Location: FF_X1_Y9_N13
\upa|Yupa_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa_interno[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(2));

-- Location: LCCOMB_X1_Y9_N14
\upa|Yupa_interno[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa_interno[1]~feeder_combout\ = \AcumuladorA|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AcumuladorA|data_out\(1),
	combout => \upa|Yupa_interno[1]~feeder_combout\);

-- Location: FF_X1_Y9_N15
\upa|Yupa_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa_interno[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(1));

-- Location: LCCOMB_X12_Y22_N20
\AcumuladorB|data_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[7]~feeder_combout\ = \inst7|PortL[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[7]~0_combout\,
	combout => \AcumuladorB|data_out[7]~feeder_combout\);

-- Location: LCCOMB_X12_Y22_N12
\AcumuladorB|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[7]~0_combout\ = (\inst6|inst|Equal1~0_combout\ & (\RESET~input_o\ & (\inst6|inst5|$00000|auto_generated|result_node[10]~10_combout\ & \inst6|inst|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Equal1~0_combout\,
	datab => \RESET~input_o\,
	datac => \inst6|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst6|inst|Equal3~2_combout\,
	combout => \AcumuladorB|data_out[7]~0_combout\);

-- Location: FF_X12_Y22_N21
\AcumuladorB|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[7]~feeder_combout\,
	ena => \AcumuladorB|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(7));

-- Location: LCCOMB_X12_Y22_N2
\AcumuladorB|data_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[6]~feeder_combout\ = \inst7|PortL[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[6]~1_combout\,
	combout => \AcumuladorB|data_out[6]~feeder_combout\);

-- Location: FF_X12_Y22_N3
\AcumuladorB|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[6]~feeder_combout\,
	ena => \AcumuladorB|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(6));

-- Location: LCCOMB_X12_Y22_N26
\AcumuladorB|data_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[5]~feeder_combout\ = \inst7|PortL[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[7]~2_combout\,
	combout => \AcumuladorB|data_out[5]~feeder_combout\);

-- Location: FF_X12_Y22_N27
\AcumuladorB|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[5]~feeder_combout\,
	ena => \AcumuladorB|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(5));

-- Location: LCCOMB_X12_Y22_N28
\AcumuladorB|data_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[4]~feeder_combout\ = \inst7|PortL[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[4]~3_combout\,
	combout => \AcumuladorB|data_out[4]~feeder_combout\);

-- Location: FF_X12_Y22_N29
\AcumuladorB|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[4]~feeder_combout\,
	ena => \AcumuladorB|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(4));

-- Location: LCCOMB_X12_Y22_N24
\AcumuladorB|data_out[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[3]~feeder_combout\ = \inst7|PortL[3]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[3]~4_combout\,
	combout => \AcumuladorB|data_out[3]~feeder_combout\);

-- Location: FF_X12_Y22_N25
\AcumuladorB|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[3]~feeder_combout\,
	ena => \AcumuladorB|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(3));

-- Location: LCCOMB_X12_Y22_N10
\AcumuladorB|data_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[2]~feeder_combout\ = \inst7|PortL[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[7]~0_combout\,
	combout => \AcumuladorB|data_out[2]~feeder_combout\);

-- Location: FF_X12_Y22_N11
\AcumuladorB|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[2]~feeder_combout\,
	ena => \AcumuladorB|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(2));

-- Location: LCCOMB_X12_Y22_N14
\AcumuladorB|data_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[1]~feeder_combout\ = \inst7|PortL[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[1]~5_combout\,
	combout => \AcumuladorB|data_out[1]~feeder_combout\);

-- Location: FF_X12_Y22_N15
\AcumuladorB|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[1]~feeder_combout\,
	ena => \AcumuladorB|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(1));

-- Location: LCCOMB_X12_Y22_N22
\AcumuladorB|data_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[0]~feeder_combout\ = \inst7|PortL[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[0]~6_combout\,
	combout => \AcumuladorB|data_out[0]~feeder_combout\);

-- Location: FF_X12_Y22_N23
\AcumuladorB|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[0]~feeder_combout\,
	ena => \AcumuladorB|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(0));

-- Location: LCCOMB_X4_Y22_N10
\inst1|PortL[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortL[7]~0_combout\ = (((!\inst|Mux0~0_combout\ & \inst|data_out[4]~0_combout\)) # (!\inst6|inst3|PC[0]~4_combout\)) # (!\inst6|inst3|X[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~0_combout\,
	datab => \inst|data_out[4]~0_combout\,
	datac => \inst6|inst3|X[2]~0_combout\,
	datad => \inst6|inst3|PC[0]~4_combout\,
	combout => \inst1|PortL[7]~0_combout\);

-- Location: LCCOMB_X4_Y22_N0
\inst9|data_out[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|data_out[15]~feeder_combout\ = \inst1|PortL[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PortL[7]~0_combout\,
	combout => \inst9|data_out[15]~feeder_combout\);

-- Location: LCCOMB_X6_Y22_N2
\inst13|data_out[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_out[8]~0_combout\ = (!\ENAY~input_o\ & \inst6|inst3|X[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENAY~input_o\,
	datac => \inst6|inst3|X[2]~0_combout\,
	combout => \inst13|data_out[8]~0_combout\);

-- Location: FF_X4_Y22_N1
\inst9|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|data_out[15]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(15));

-- Location: LCCOMB_X11_Y22_N10
\inst1|PortL[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortL[6]~1_combout\ = (((\inst|Mux1~0_combout\ & \inst|data_out[4]~0_combout\)) # (!\inst6|inst3|X[2]~0_combout\)) # (!\inst6|inst3|PC[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~0_combout\,
	datab => \inst|data_out[4]~0_combout\,
	datac => \inst6|inst3|PC[0]~4_combout\,
	datad => \inst6|inst3|X[2]~0_combout\,
	combout => \inst1|PortL[6]~1_combout\);

-- Location: LCCOMB_X11_Y22_N8
\inst9|data_out[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|data_out[14]~feeder_combout\ = \inst1|PortL[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PortL[6]~1_combout\,
	combout => \inst9|data_out[14]~feeder_combout\);

-- Location: FF_X11_Y22_N9
\inst9|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|data_out[14]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(14));

-- Location: LCCOMB_X11_Y22_N18
\inst1|PortL[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortL[7]~2_combout\ = (!\inst6|inst3|X[2]~0_combout\) # (!\inst6|inst3|PC[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst3|PC[0]~4_combout\,
	datad => \inst6|inst3|X[2]~0_combout\,
	combout => \inst1|PortL[7]~2_combout\);

-- Location: LCCOMB_X11_Y22_N2
\inst9|data_out[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|data_out[13]~feeder_combout\ = \inst1|PortL[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PortL[7]~2_combout\,
	combout => \inst9|data_out[13]~feeder_combout\);

-- Location: FF_X11_Y22_N3
\inst9|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|data_out[13]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(13));

-- Location: LCCOMB_X11_Y22_N28
\inst1|PortL[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortL[4]~3_combout\ = (((\inst|data_out[4]~1_combout\ & \inst|data_out[4]~0_combout\)) # (!\inst6|inst3|X[2]~0_combout\)) # (!\inst6|inst3|PC[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_out[4]~1_combout\,
	datab => \inst|data_out[4]~0_combout\,
	datac => \inst6|inst3|PC[0]~4_combout\,
	datad => \inst6|inst3|X[2]~0_combout\,
	combout => \inst1|PortL[4]~3_combout\);

-- Location: LCCOMB_X11_Y22_N30
\inst9|data_out[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|data_out[12]~feeder_combout\ = \inst1|PortL[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PortL[4]~3_combout\,
	combout => \inst9|data_out[12]~feeder_combout\);

-- Location: FF_X11_Y22_N31
\inst9|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|data_out[12]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(12));

-- Location: LCCOMB_X11_Y22_N24
\inst1|PortL[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortL[3]~4_combout\ = (((\inst|Mux4~0_combout\ & \inst|data_out[4]~0_combout\)) # (!\inst6|inst3|X[2]~0_combout\)) # (!\inst6|inst3|PC[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~0_combout\,
	datab => \inst|data_out[4]~0_combout\,
	datac => \inst6|inst3|PC[0]~4_combout\,
	datad => \inst6|inst3|X[2]~0_combout\,
	combout => \inst1|PortL[3]~4_combout\);

-- Location: LCCOMB_X11_Y22_N6
\inst9|data_out[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|data_out[11]~feeder_combout\ = \inst1|PortL[3]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PortL[3]~4_combout\,
	combout => \inst9|data_out[11]~feeder_combout\);

-- Location: FF_X11_Y22_N7
\inst9|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|data_out[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(11));

-- Location: LCCOMB_X4_Y22_N22
\inst9|data_out[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|data_out[10]~feeder_combout\ = \inst1|PortL[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PortL[7]~0_combout\,
	combout => \inst9|data_out[10]~feeder_combout\);

-- Location: FF_X4_Y22_N23
\inst9|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|data_out[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(10));

-- Location: LCCOMB_X9_Y22_N16
\inst1|PortL[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortL[1]~5_combout\ = (((!\inst|Mux6~0_combout\ & \inst|data_out[4]~0_combout\)) # (!\inst6|inst3|PC[0]~4_combout\)) # (!\inst6|inst3|X[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~0_combout\,
	datab => \inst|data_out[4]~0_combout\,
	datac => \inst6|inst3|X[2]~0_combout\,
	datad => \inst6|inst3|PC[0]~4_combout\,
	combout => \inst1|PortL[1]~5_combout\);

-- Location: LCCOMB_X4_Y22_N4
\inst9|data_out[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|data_out[9]~feeder_combout\ = \inst1|PortL[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PortL[1]~5_combout\,
	combout => \inst9|data_out[9]~feeder_combout\);

-- Location: FF_X4_Y22_N5
\inst9|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|data_out[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(9));

-- Location: LCCOMB_X4_Y22_N16
\inst1|PortL[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortL[0]~6_combout\ = (((\inst|Mux7~0_combout\ & \inst|data_out[4]~0_combout\)) # (!\inst6|inst3|PC[0]~4_combout\)) # (!\inst6|inst3|X[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~0_combout\,
	datab => \inst|data_out[4]~0_combout\,
	datac => \inst6|inst3|X[2]~0_combout\,
	datad => \inst6|inst3|PC[0]~4_combout\,
	combout => \inst1|PortL[0]~6_combout\);

-- Location: LCCOMB_X4_Y22_N2
\inst9|data_out[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|data_out[8]~feeder_combout\ = \inst1|PortL[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PortL[0]~6_combout\,
	combout => \inst9|data_out[8]~feeder_combout\);

-- Location: FF_X4_Y22_N3
\inst9|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|data_out[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(8));

-- Location: LCCOMB_X14_Y22_N28
\inst9|data_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|data_out[7]~feeder_combout\ = \inst7|PortL[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[7]~0_combout\,
	combout => \inst9|data_out[7]~feeder_combout\);

-- Location: FF_X14_Y22_N29
\inst9|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|data_out[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(7));

-- Location: LCCOMB_X4_Y22_N8
\inst9|data_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|data_out[6]~feeder_combout\ = \inst7|PortL[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[6]~1_combout\,
	combout => \inst9|data_out[6]~feeder_combout\);

-- Location: FF_X4_Y22_N9
\inst9|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|data_out[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(6));

-- Location: FF_X7_Y22_N5
\inst9|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst7|PortL[7]~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(5));

-- Location: FF_X7_Y22_N29
\inst9|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst7|PortL[4]~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(4));

-- Location: FF_X10_Y22_N27
\inst9|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst7|PortL[3]~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(3));

-- Location: FF_X7_Y22_N23
\inst9|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst7|PortL[7]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(2));

-- Location: FF_X7_Y22_N27
\inst9|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst7|PortL[1]~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(1));

-- Location: LCCOMB_X4_Y22_N30
\inst13|data_out[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_out[15]~feeder_combout\ = \inst1|PortL[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PortL[7]~0_combout\,
	combout => \inst13|data_out[15]~feeder_combout\);

-- Location: FF_X4_Y22_N31
\inst13|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|data_out[15]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(15));

-- Location: LCCOMB_X11_Y22_N26
\inst13|data_out[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_out[14]~feeder_combout\ = \inst1|PortL[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PortL[6]~1_combout\,
	combout => \inst13|data_out[14]~feeder_combout\);

-- Location: FF_X11_Y22_N27
\inst13|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|data_out[14]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(14));

-- Location: FF_X11_Y22_N19
\inst13|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|PortL[7]~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(13));

-- Location: LCCOMB_X11_Y22_N16
\inst13|data_out[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_out[12]~feeder_combout\ = \inst1|PortL[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PortL[4]~3_combout\,
	combout => \inst13|data_out[12]~feeder_combout\);

-- Location: FF_X11_Y22_N17
\inst13|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|data_out[12]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(12));

-- Location: LCCOMB_X11_Y22_N20
\inst13|data_out[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_out[11]~feeder_combout\ = \inst1|PortL[3]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PortL[3]~4_combout\,
	combout => \inst13|data_out[11]~feeder_combout\);

-- Location: FF_X11_Y22_N21
\inst13|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|data_out[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(11));

-- Location: LCCOMB_X4_Y22_N28
\inst13|data_out[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_out[10]~feeder_combout\ = \inst1|PortL[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PortL[7]~0_combout\,
	combout => \inst13|data_out[10]~feeder_combout\);

-- Location: FF_X4_Y22_N29
\inst13|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|data_out[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(10));

-- Location: LCCOMB_X4_Y22_N26
\inst13|data_out[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_out[9]~feeder_combout\ = \inst1|PortL[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PortL[1]~5_combout\,
	combout => \inst13|data_out[9]~feeder_combout\);

-- Location: FF_X4_Y22_N27
\inst13|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|data_out[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(9));

-- Location: LCCOMB_X4_Y22_N20
\inst13|data_out[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_out[8]~feeder_combout\ = \inst1|PortL[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PortL[0]~6_combout\,
	combout => \inst13|data_out[8]~feeder_combout\);

-- Location: FF_X4_Y22_N21
\inst13|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|data_out[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(8));

-- Location: LCCOMB_X14_Y22_N14
\inst13|data_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_out[7]~feeder_combout\ = \inst7|PortL[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[7]~0_combout\,
	combout => \inst13|data_out[7]~feeder_combout\);

-- Location: FF_X14_Y22_N15
\inst13|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|data_out[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(7));

-- Location: LCCOMB_X4_Y22_N18
\inst13|data_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_out[6]~feeder_combout\ = \inst7|PortL[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[6]~1_combout\,
	combout => \inst13|data_out[6]~feeder_combout\);

-- Location: FF_X4_Y22_N19
\inst13|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|data_out[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(6));

-- Location: FF_X7_Y22_N25
\inst13|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|PortL[7]~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(5));

-- Location: FF_X7_Y22_N13
\inst13|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst7|PortL[4]~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(4));

-- Location: FF_X10_Y22_N31
\inst13|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst7|PortL[3]~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(3));

-- Location: FF_X10_Y22_N29
\inst13|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst7|PortL[7]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(2));

-- Location: FF_X10_Y22_N25
\inst13|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst7|PortL[1]~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(1));

-- Location: LCCOMB_X4_Y22_N24
\inst13|data_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_out[0]~feeder_combout\ = \inst7|PortL[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PortL[0]~6_combout\,
	combout => \inst13|data_out[0]~feeder_combout\);

-- Location: FF_X4_Y22_N25
\inst13|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|data_out[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(0));

-- Location: LCCOMB_X13_Y22_N16
\RegPC|data_out[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[8]~29_combout\ = (\RegPC|data_out\(8) & (!\RegPC|data_out[7]~28\)) # (!\RegPC|data_out\(8) & ((\RegPC|data_out[7]~28\) # (GND)))
-- \RegPC|data_out[8]~30\ = CARRY((!\RegPC|data_out[7]~28\) # (!\RegPC|data_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(8),
	datad => VCC,
	cin => \RegPC|data_out[7]~28\,
	combout => \RegPC|data_out[8]~29_combout\,
	cout => \RegPC|data_out[8]~30\);

-- Location: FF_X13_Y22_N17
\RegPC|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[8]~29_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst6|inst3|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(8));

-- Location: LCCOMB_X13_Y22_N18
\RegPC|data_out[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[9]~31_combout\ = (\RegPC|data_out\(9) & (\RegPC|data_out[8]~30\ $ (GND))) # (!\RegPC|data_out\(9) & (!\RegPC|data_out[8]~30\ & VCC))
-- \RegPC|data_out[9]~32\ = CARRY((\RegPC|data_out\(9) & !\RegPC|data_out[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(9),
	datad => VCC,
	cin => \RegPC|data_out[8]~30\,
	combout => \RegPC|data_out[9]~31_combout\,
	cout => \RegPC|data_out[9]~32\);

-- Location: FF_X13_Y22_N19
\RegPC|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[9]~31_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst6|inst3|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(9));

-- Location: LCCOMB_X13_Y22_N20
\RegPC|data_out[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[10]~33_combout\ = (\RegPC|data_out\(10) & (!\RegPC|data_out[9]~32\)) # (!\RegPC|data_out\(10) & ((\RegPC|data_out[9]~32\) # (GND)))
-- \RegPC|data_out[10]~34\ = CARRY((!\RegPC|data_out[9]~32\) # (!\RegPC|data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(10),
	datad => VCC,
	cin => \RegPC|data_out[9]~32\,
	combout => \RegPC|data_out[10]~33_combout\,
	cout => \RegPC|data_out[10]~34\);

-- Location: FF_X13_Y22_N21
\RegPC|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[10]~33_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst6|inst3|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(10));

-- Location: LCCOMB_X13_Y22_N22
\RegPC|data_out[11]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[11]~35_combout\ = (\RegPC|data_out\(11) & (\RegPC|data_out[10]~34\ $ (GND))) # (!\RegPC|data_out\(11) & (!\RegPC|data_out[10]~34\ & VCC))
-- \RegPC|data_out[11]~36\ = CARRY((\RegPC|data_out\(11) & !\RegPC|data_out[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(11),
	datad => VCC,
	cin => \RegPC|data_out[10]~34\,
	combout => \RegPC|data_out[11]~35_combout\,
	cout => \RegPC|data_out[11]~36\);

-- Location: FF_X13_Y22_N23
\RegPC|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[11]~35_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst6|inst3|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(11));

-- Location: LCCOMB_X13_Y22_N24
\RegPC|data_out[12]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[12]~37_combout\ = (\RegPC|data_out\(12) & (!\RegPC|data_out[11]~36\)) # (!\RegPC|data_out\(12) & ((\RegPC|data_out[11]~36\) # (GND)))
-- \RegPC|data_out[12]~38\ = CARRY((!\RegPC|data_out[11]~36\) # (!\RegPC|data_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(12),
	datad => VCC,
	cin => \RegPC|data_out[11]~36\,
	combout => \RegPC|data_out[12]~37_combout\,
	cout => \RegPC|data_out[12]~38\);

-- Location: FF_X13_Y22_N25
\RegPC|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[12]~37_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst6|inst3|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(12));

-- Location: LCCOMB_X13_Y22_N26
\RegPC|data_out[13]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[13]~39_combout\ = (\RegPC|data_out\(13) & (\RegPC|data_out[12]~38\ $ (GND))) # (!\RegPC|data_out\(13) & (!\RegPC|data_out[12]~38\ & VCC))
-- \RegPC|data_out[13]~40\ = CARRY((\RegPC|data_out\(13) & !\RegPC|data_out[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(13),
	datad => VCC,
	cin => \RegPC|data_out[12]~38\,
	combout => \RegPC|data_out[13]~39_combout\,
	cout => \RegPC|data_out[13]~40\);

-- Location: FF_X13_Y22_N27
\RegPC|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[13]~39_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst6|inst3|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(13));

-- Location: LCCOMB_X13_Y22_N28
\RegPC|data_out[14]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[14]~41_combout\ = (\RegPC|data_out\(14) & (!\RegPC|data_out[13]~40\)) # (!\RegPC|data_out\(14) & ((\RegPC|data_out[13]~40\) # (GND)))
-- \RegPC|data_out[14]~42\ = CARRY((!\RegPC|data_out[13]~40\) # (!\RegPC|data_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(14),
	datad => VCC,
	cin => \RegPC|data_out[13]~40\,
	combout => \RegPC|data_out[14]~41_combout\,
	cout => \RegPC|data_out[14]~42\);

-- Location: FF_X13_Y22_N29
\RegPC|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[14]~41_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst6|inst3|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(14));

-- Location: LCCOMB_X13_Y22_N30
\RegPC|data_out[15]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[15]~43_combout\ = \RegPC|data_out\(15) $ (!\RegPC|data_out[14]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(15),
	cin => \RegPC|data_out[14]~42\,
	combout => \RegPC|data_out[15]~43_combout\);

-- Location: FF_X13_Y22_N31
\RegPC|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[15]~43_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst6|inst3|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(15));

-- Location: IOIBUF_X74_Y54_N1
\IRQn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRQn,
	o => \IRQn~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\XIRQn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XIRQn,
	o => \XIRQn~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Z <= \Z~output_o\;

ww_N <= \N~output_o\;

ww_CurrentState(11) <= \CurrentState[11]~output_o\;

ww_CurrentState(10) <= \CurrentState[10]~output_o\;

ww_CurrentState(9) <= \CurrentState[9]~output_o\;

ww_CurrentState(8) <= \CurrentState[8]~output_o\;

ww_CurrentState(7) <= \CurrentState[7]~output_o\;

ww_CurrentState(6) <= \CurrentState[6]~output_o\;

ww_CurrentState(5) <= \CurrentState[5]~output_o\;

ww_CurrentState(4) <= \CurrentState[4]~output_o\;

ww_CurrentState(3) <= \CurrentState[3]~output_o\;

ww_CurrentState(2) <= \CurrentState[2]~output_o\;

ww_CurrentState(1) <= \CurrentState[1]~output_o\;

ww_CurrentState(0) <= \CurrentState[0]~output_o\;

ww_Debug_Q(7) <= \Debug_Q[7]~output_o\;

ww_Debug_Q(6) <= \Debug_Q[6]~output_o\;

ww_Debug_Q(5) <= \Debug_Q[5]~output_o\;

ww_Debug_Q(4) <= \Debug_Q[4]~output_o\;

ww_Debug_Q(3) <= \Debug_Q[3]~output_o\;

ww_Debug_Q(2) <= \Debug_Q[2]~output_o\;

ww_Debug_Q(1) <= \Debug_Q[1]~output_o\;

ww_Debug_Q(0) <= \Debug_Q[0]~output_o\;

ww_Debug_Yupa(7) <= \Debug_Yupa[7]~output_o\;

ww_Debug_Yupa(6) <= \Debug_Yupa[6]~output_o\;

ww_Debug_Yupa(5) <= \Debug_Yupa[5]~output_o\;

ww_Debug_Yupa(4) <= \Debug_Yupa[4]~output_o\;

ww_Debug_Yupa(3) <= \Debug_Yupa[3]~output_o\;

ww_Debug_Yupa(2) <= \Debug_Yupa[2]~output_o\;

ww_Debug_Yupa(1) <= \Debug_Yupa[1]~output_o\;

ww_Debug_Yupa(0) <= \Debug_Yupa[0]~output_o\;

ww_DebugACUMA(7) <= \DebugACUMA[7]~output_o\;

ww_DebugACUMA(6) <= \DebugACUMA[6]~output_o\;

ww_DebugACUMA(5) <= \DebugACUMA[5]~output_o\;

ww_DebugACUMA(4) <= \DebugACUMA[4]~output_o\;

ww_DebugACUMA(3) <= \DebugACUMA[3]~output_o\;

ww_DebugACUMA(2) <= \DebugACUMA[2]~output_o\;

ww_DebugACUMA(1) <= \DebugACUMA[1]~output_o\;

ww_DebugACUMA(0) <= \DebugACUMA[0]~output_o\;

ww_DebugACUMB(7) <= \DebugACUMB[7]~output_o\;

ww_DebugACUMB(6) <= \DebugACUMB[6]~output_o\;

ww_DebugACUMB(5) <= \DebugACUMB[5]~output_o\;

ww_DebugACUMB(4) <= \DebugACUMB[4]~output_o\;

ww_DebugACUMB(3) <= \DebugACUMB[3]~output_o\;

ww_DebugACUMB(2) <= \DebugACUMB[2]~output_o\;

ww_DebugACUMB(1) <= \DebugACUMB[1]~output_o\;

ww_DebugACUMB(0) <= \DebugACUMB[0]~output_o\;

ww_DebugAP(15) <= \DebugAP[15]~output_o\;

ww_DebugAP(14) <= \DebugAP[14]~output_o\;

ww_DebugAP(13) <= \DebugAP[13]~output_o\;

ww_DebugAP(12) <= \DebugAP[12]~output_o\;

ww_DebugAP(11) <= \DebugAP[11]~output_o\;

ww_DebugAP(10) <= \DebugAP[10]~output_o\;

ww_DebugAP(9) <= \DebugAP[9]~output_o\;

ww_DebugAP(8) <= \DebugAP[8]~output_o\;

ww_DebugAP(7) <= \DebugAP[7]~output_o\;

ww_DebugAP(6) <= \DebugAP[6]~output_o\;

ww_DebugAP(5) <= \DebugAP[5]~output_o\;

ww_DebugAP(4) <= \DebugAP[4]~output_o\;

ww_DebugAP(3) <= \DebugAP[3]~output_o\;

ww_DebugAP(2) <= \DebugAP[2]~output_o\;

ww_DebugAP(1) <= \DebugAP[1]~output_o\;

ww_DebugAP(0) <= \DebugAP[0]~output_o\;

ww_DebugIX(15) <= \DebugIX[15]~output_o\;

ww_DebugIX(14) <= \DebugIX[14]~output_o\;

ww_DebugIX(13) <= \DebugIX[13]~output_o\;

ww_DebugIX(12) <= \DebugIX[12]~output_o\;

ww_DebugIX(11) <= \DebugIX[11]~output_o\;

ww_DebugIX(10) <= \DebugIX[10]~output_o\;

ww_DebugIX(9) <= \DebugIX[9]~output_o\;

ww_DebugIX(8) <= \DebugIX[8]~output_o\;

ww_DebugIX(7) <= \DebugIX[7]~output_o\;

ww_DebugIX(6) <= \DebugIX[6]~output_o\;

ww_DebugIX(5) <= \DebugIX[5]~output_o\;

ww_DebugIX(4) <= \DebugIX[4]~output_o\;

ww_DebugIX(3) <= \DebugIX[3]~output_o\;

ww_DebugIX(2) <= \DebugIX[2]~output_o\;

ww_DebugIX(1) <= \DebugIX[1]~output_o\;

ww_DebugIX(0) <= \DebugIX[0]~output_o\;

ww_DebugIY(15) <= \DebugIY[15]~output_o\;

ww_DebugIY(14) <= \DebugIY[14]~output_o\;

ww_DebugIY(13) <= \DebugIY[13]~output_o\;

ww_DebugIY(12) <= \DebugIY[12]~output_o\;

ww_DebugIY(11) <= \DebugIY[11]~output_o\;

ww_DebugIY(10) <= \DebugIY[10]~output_o\;

ww_DebugIY(9) <= \DebugIY[9]~output_o\;

ww_DebugIY(8) <= \DebugIY[8]~output_o\;

ww_DebugIY(7) <= \DebugIY[7]~output_o\;

ww_DebugIY(6) <= \DebugIY[6]~output_o\;

ww_DebugIY(5) <= \DebugIY[5]~output_o\;

ww_DebugIY(4) <= \DebugIY[4]~output_o\;

ww_DebugIY(3) <= \DebugIY[3]~output_o\;

ww_DebugIY(2) <= \DebugIY[2]~output_o\;

ww_DebugIY(1) <= \DebugIY[1]~output_o\;

ww_DebugIY(0) <= \DebugIY[0]~output_o\;

ww_DebugPC(15) <= \DebugPC[15]~output_o\;

ww_DebugPC(14) <= \DebugPC[14]~output_o\;

ww_DebugPC(13) <= \DebugPC[13]~output_o\;

ww_DebugPC(12) <= \DebugPC[12]~output_o\;

ww_DebugPC(11) <= \DebugPC[11]~output_o\;

ww_DebugPC(10) <= \DebugPC[10]~output_o\;

ww_DebugPC(9) <= \DebugPC[9]~output_o\;

ww_DebugPC(8) <= \DebugPC[8]~output_o\;

ww_DebugPC(7) <= \DebugPC[7]~output_o\;

ww_DebugPC(6) <= \DebugPC[6]~output_o\;

ww_DebugPC(5) <= \DebugPC[5]~output_o\;

ww_DebugPC(4) <= \DebugPC[4]~output_o\;

ww_DebugPC(3) <= \DebugPC[3]~output_o\;

ww_DebugPC(2) <= \DebugPC[2]~output_o\;

ww_DebugPC(1) <= \DebugPC[1]~output_o\;

ww_DebugPC(0) <= \DebugPC[0]~output_o\;

ww_DebugRA(15) <= \DebugRA[15]~output_o\;

ww_DebugRA(14) <= \DebugRA[14]~output_o\;

ww_DebugRA(13) <= \DebugRA[13]~output_o\;

ww_DebugRA(12) <= \DebugRA[12]~output_o\;

ww_DebugRA(11) <= \DebugRA[11]~output_o\;

ww_DebugRA(10) <= \DebugRA[10]~output_o\;

ww_DebugRA(9) <= \DebugRA[9]~output_o\;

ww_DebugRA(8) <= \DebugRA[8]~output_o\;

ww_DebugRA(7) <= \DebugRA[7]~output_o\;

ww_DebugRA(6) <= \DebugRA[6]~output_o\;

ww_DebugRA(5) <= \DebugRA[5]~output_o\;

ww_DebugRA(4) <= \DebugRA[4]~output_o\;

ww_DebugRA(3) <= \DebugRA[3]~output_o\;

ww_DebugRA(2) <= \DebugRA[2]~output_o\;

ww_DebugRA(1) <= \DebugRA[1]~output_o\;

ww_DebugRA(0) <= \DebugRA[0]~output_o\;

ww_regInstr(11) <= \regInstr[11]~output_o\;

ww_regInstr(10) <= \regInstr[10]~output_o\;

ww_regInstr(9) <= \regInstr[9]~output_o\;

ww_regInstr(8) <= \regInstr[8]~output_o\;

ww_regInstr(7) <= \regInstr[7]~output_o\;

ww_regInstr(6) <= \regInstr[6]~output_o\;

ww_regInstr(5) <= \regInstr[5]~output_o\;

ww_regInstr(4) <= \regInstr[4]~output_o\;

ww_regInstr(3) <= \regInstr[3]~output_o\;

ww_regInstr(2) <= \regInstr[2]~output_o\;

ww_regInstr(1) <= \regInstr[1]~output_o\;

ww_regInstr(0) <= \regInstr[0]~output_o\;
END structure;


