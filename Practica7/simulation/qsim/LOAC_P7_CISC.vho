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

-- DATE "10/22/2019 21:45:36"

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
-- Z	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRQn	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XIRQn	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[11]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[10]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[9]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[8]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[7]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[6]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[4]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[3]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[1]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[7]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[6]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[5]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[4]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[3]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[2]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[7]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[6]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[5]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[4]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[1]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[0]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[7]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[6]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[5]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[4]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[2]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[7]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[6]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[5]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[4]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[3]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[1]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[15]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[14]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[13]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[12]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[11]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[9]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[8]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[7]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[6]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[1]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[15]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[14]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[13]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[12]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[11]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[10]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[9]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[8]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[7]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[5]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[4]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[3]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[15]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[14]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[13]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[12]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[11]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[10]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[9]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[8]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[7]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[6]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[5]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[4]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[3]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[2]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[0]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[15]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[14]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[13]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[12]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[11]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[10]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[9]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[8]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[7]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[6]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[5]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[4]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[2]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[0]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[15]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[14]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[13]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[12]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[11]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[10]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[9]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[8]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[7]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[6]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[5]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[3]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[2]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[11]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[10]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[9]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[8]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[7]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[6]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[4]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[0]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \inst1|inst3|nCRI~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|inst3|nCBD~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst1|inst2|valor_interno[0]~33_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[1]~12\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[2]~13_combout\ : std_logic;
SIGNAL \inst1|inst8[11]~8_combout\ : std_logic;
SIGNAL \inst1|inst5|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[2]~14\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[3]~15_combout\ : std_logic;
SIGNAL \inst1|inst5|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[3]~16\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[4]~17_combout\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[6]~22\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[7]~24\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[8]~25_combout\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[8]~26\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[9]~28\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[10]~30\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[11]~31_combout\ : std_logic;
SIGNAL \inst1|inst5|$00000|auto_generated|result_node[11]~11_combout\ : std_logic;
SIGNAL \inst1|inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst1|inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst1|inst|Equal8~0_combout\ : std_logic;
SIGNAL \upa|Yupa[5]~31_combout\ : std_logic;
SIGNAL \inst1|inst|Equal3~1_combout\ : std_logic;
SIGNAL \inst1|inst3|UPA[0]~6_combout\ : std_logic;
SIGNAL \inst1|inst3|UPA[0]~4_combout\ : std_logic;
SIGNAL \inst1|inst|Equal3~2_combout\ : std_logic;
SIGNAL \inst1|inst3|nDUPA~5_combout\ : std_logic;
SIGNAL \inst1|inst3|UPA[0]~5_combout\ : std_logic;
SIGNAL \inst1|inst|Equal11~3_combout\ : std_logic;
SIGNAL \inst1|inst|Equal4~1_combout\ : std_logic;
SIGNAL \inst1|inst3|EA[0]~2_combout\ : std_logic;
SIGNAL \inst1|inst|Equal10~0_combout\ : std_logic;
SIGNAL \inst1|inst|data[87]~8_combout\ : std_logic;
SIGNAL \inst1|inst3|EA[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst3|EA[0]~1_combout\ : std_logic;
SIGNAL \inst1|inst3|EA[0]~3_combout\ : std_logic;
SIGNAL \inst1|inst3|EA[0]~4_combout\ : std_logic;
SIGNAL \inst1|inst|Equal12~0_combout\ : std_logic;
SIGNAL \inst1|inst3|nWA~0_combout\ : std_logic;
SIGNAL \AcumuladorA|C[5]~2_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[5]~3_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[0]~1_combout\ : std_logic;
SIGNAL \AcumuladorA|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|inst|Equal17~0_combout\ : std_logic;
SIGNAL \inst1|inst|Equal16~0_combout\ : std_logic;
SIGNAL \inst1|inst3|PC[0]~1_combout\ : std_logic;
SIGNAL \inst1|inst|Equal13~0_combout\ : std_logic;
SIGNAL \inst1|inst3|PC[0]~2_combout\ : std_logic;
SIGNAL \inst1|inst3|PC[0]~3_combout\ : std_logic;
SIGNAL \inst1|inst3|PC[0]~4_combout\ : std_logic;
SIGNAL \RegAux|TRI_STATE_D~3_combout\ : std_logic;
SIGNAL \RegAux|TRI_STATE_D~2_combout\ : std_logic;
SIGNAL \RegAux|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst3|RA[0]~0_combout\ : std_logic;
SIGNAL \upa|Yupa[5]~13_combout\ : std_logic;
SIGNAL \inst1|inst3|nDUPA~4_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~8_combout\ : std_logic;
SIGNAL \inst1|inst|Equal12~1_combout\ : std_logic;
SIGNAL \inst1|inst|data~9_combout\ : std_logic;
SIGNAL \inst1|inst3|nAS~0_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~7_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~9_combout\ : std_logic;
SIGNAL \inst1|inst3|PC[0]~5_combout\ : std_logic;
SIGNAL \RegPC|Equal0~0_combout\ : std_logic;
SIGNAL \RegPC|Add0~0_combout\ : std_logic;
SIGNAL \RegPC|Add0~1\ : std_logic;
SIGNAL \RegPC|Add0~2_combout\ : std_logic;
SIGNAL \RegAux|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \AcumuladorA|C[1]~6_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[1]~7_combout\ : std_logic;
SIGNAL \upa|Yupa[1]~27_combout\ : std_logic;
SIGNAL \upa|Mux29~0_combout\ : std_logic;
SIGNAL \upa|Mux27~0_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[0]~8_combout\ : std_logic;
SIGNAL \AcumuladorA|C[0]~7_combout\ : std_logic;
SIGNAL \inst1|inst3|CC~combout\ : std_logic;
SIGNAL \upa|Yupa[7]~4_combout\ : std_logic;
SIGNAL \upa|Mux35~0_combout\ : std_logic;
SIGNAL \upa|Mux34~0_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[6]~2_combout\ : std_logic;
SIGNAL \AcumuladorA|C[6]~1_combout\ : std_logic;
SIGNAL \upa|Mux33~0_combout\ : std_logic;
SIGNAL \upa|Mux32~0_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[4]~4_combout\ : std_logic;
SIGNAL \AcumuladorA|C[4]~3_combout\ : std_logic;
SIGNAL \AcumuladorB|TRI_STATE~0_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[3]~5_combout\ : std_logic;
SIGNAL \AcumuladorA|C[3]~4_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[2]~6_combout\ : std_logic;
SIGNAL \AcumuladorA|C[2]~5_combout\ : std_logic;
SIGNAL \upa|Add0~5\ : std_logic;
SIGNAL \upa|Add0~6_combout\ : std_logic;
SIGNAL \RegPC|Add0~5\ : std_logic;
SIGNAL \RegPC|Add0~6_combout\ : std_logic;
SIGNAL \RegPC|Add0~44_combout\ : std_logic;
SIGNAL \inst1|inst|data[86]~20_combout\ : std_logic;
SIGNAL \inst1|inst3|PC[0]~6_combout\ : std_logic;
SIGNAL \RegPC|Add0~7\ : std_logic;
SIGNAL \RegPC|Add0~8_combout\ : std_logic;
SIGNAL \RegPC|Add0~43_combout\ : std_logic;
SIGNAL \RegPC|Add0~9\ : std_logic;
SIGNAL \RegPC|Add0~10_combout\ : std_logic;
SIGNAL \RegPC|Add0~42_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \RegPC|Add0~11\ : std_logic;
SIGNAL \RegPC|Add0~12_combout\ : std_logic;
SIGNAL \RegPC|Add0~41_combout\ : std_logic;
SIGNAL \RegPC|Add0~13\ : std_logic;
SIGNAL \RegPC|Add0~14_combout\ : std_logic;
SIGNAL \RegPC|Add0~40_combout\ : std_logic;
SIGNAL \dir|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst|data_out[2]~3_combout\ : std_logic;
SIGNAL \upa|Yupa[2]~24_combout\ : std_logic;
SIGNAL \upa|Yupa[2]~25_combout\ : std_logic;
SIGNAL \RegAux|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \upa|Yupa[2]~23_combout\ : std_logic;
SIGNAL \upa|Yupa[2]~26_combout\ : std_logic;
SIGNAL \upa|Mux30~0_combout\ : std_logic;
SIGNAL \upa|Add0~7\ : std_logic;
SIGNAL \upa|Add0~8_combout\ : std_logic;
SIGNAL \upa|Yupa[3]~20_combout\ : std_logic;
SIGNAL \upa|Yupa[3]~21_combout\ : std_logic;
SIGNAL \RegAux|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \upa|Yupa[3]~19_combout\ : std_logic;
SIGNAL \upa|Yupa[3]~22_combout\ : std_logic;
SIGNAL \upa|Mux31~0_combout\ : std_logic;
SIGNAL \upa|Add0~9\ : std_logic;
SIGNAL \upa|Add0~11\ : std_logic;
SIGNAL \upa|Add0~13\ : std_logic;
SIGNAL \upa|Add0~15\ : std_logic;
SIGNAL \upa|Add0~16_combout\ : std_logic;
SIGNAL \inst|data_out[7]~1_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~5_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~6_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~10_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[7]~0_combout\ : std_logic;
SIGNAL \AcumuladorA|C[7]~0_combout\ : std_logic;
SIGNAL \upa|Add0~17\ : std_logic;
SIGNAL \upa|Add0~18_combout\ : std_logic;
SIGNAL \flags|tCC|valor_interno~q\ : std_logic;
SIGNAL \upa|Add0~1_cout\ : std_logic;
SIGNAL \upa|Add0~3\ : std_logic;
SIGNAL \upa|Add0~4_combout\ : std_logic;
SIGNAL \upa|Yupa[1]~35_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \upa|Yupa[1]~36_combout\ : std_logic;
SIGNAL \upa|Yupa[1]~28_combout\ : std_logic;
SIGNAL \RegPC|Add0~46_combout\ : std_logic;
SIGNAL \RegPC|Add0~3\ : std_logic;
SIGNAL \RegPC|Add0~4_combout\ : std_logic;
SIGNAL \RegPC|Add0~45_combout\ : std_logic;
SIGNAL \inst|data_out[0]~2_combout\ : std_logic;
SIGNAL \upa|Add0~2_combout\ : std_logic;
SIGNAL \upa|Yupa[0]~33_combout\ : std_logic;
SIGNAL \upa|Yupa[0]~34_combout\ : std_logic;
SIGNAL \upa|Yupa[0]~29_combout\ : std_logic;
SIGNAL \upa|Yupa[0]~30_combout\ : std_logic;
SIGNAL \RegPC|Add0~47_combout\ : std_logic;
SIGNAL \upa|Add0~12_combout\ : std_logic;
SIGNAL \upa|Yupa2[5]~12_combout\ : std_logic;
SIGNAL \upa|Yupa[5]~14_combout\ : std_logic;
SIGNAL \upa|Yupa[5]~15_combout\ : std_logic;
SIGNAL \inst1|inst8[9]~2_combout\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[9]~27_combout\ : std_logic;
SIGNAL \inst1|inst5|$00000|auto_generated|result_node[9]~9_combout\ : std_logic;
SIGNAL \inst1|inst|Equal14~1_combout\ : std_logic;
SIGNAL \inst1|inst|Equal14~2_combout\ : std_logic;
SIGNAL \inst1|inst|data[27]~15_combout\ : std_logic;
SIGNAL \inst1|inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|inst|Equal19~0_combout\ : std_logic;
SIGNAL \inst1|inst|data~19_combout\ : std_logic;
SIGNAL \inst1|inst|data[27]~12_combout\ : std_logic;
SIGNAL \inst1|inst3|nCBD~combout\ : std_logic;
SIGNAL \inst1|inst3|nCBD~clkctrl_outclk\ : std_logic;
SIGNAL \inst|data_out[0]~0_combout\ : std_logic;
SIGNAL \upa|Add0~14_combout\ : std_logic;
SIGNAL \upa|Yupa[6]~37_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \upa|Yupa[6]~38_combout\ : std_logic;
SIGNAL \RegAux|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \upa|Yupa[6]~11_combout\ : std_logic;
SIGNAL \upa|Yupa[6]~12_combout\ : std_logic;
SIGNAL \inst1|inst8[10]~1_combout\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[10]~29_combout\ : std_logic;
SIGNAL \inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\ : std_logic;
SIGNAL \inst1|inst3|PC[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst3|EB[0]~0_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[0]~0_combout\ : std_logic;
SIGNAL \upa|Yupa[4]~32_combout\ : std_logic;
SIGNAL \upa|Add0~10_combout\ : std_logic;
SIGNAL \upa|Yupa[4]~17_combout\ : std_logic;
SIGNAL \upa|Yupa[4]~16_combout\ : std_logic;
SIGNAL \upa|Yupa[4]~18_combout\ : std_logic;
SIGNAL \inst1|inst8[8]~3_combout\ : std_logic;
SIGNAL \inst1|inst5|$00000|auto_generated|result_node[8]~8_combout\ : std_logic;
SIGNAL \inst1|inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst1|inst|Equal11~0_combout\ : std_logic;
SIGNAL \inst1|inst|Equal2~1_combout\ : std_logic;
SIGNAL \inst1|inst3|nCRI~combout\ : std_logic;
SIGNAL \inst1|inst3|nCRI~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst8[4]~7_combout\ : std_logic;
SIGNAL \inst1|inst5|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[4]~18\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[5]~19_combout\ : std_logic;
SIGNAL \inst1|inst8[5]~6_combout\ : std_logic;
SIGNAL \inst1|inst5|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[5]~20\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[6]~21_combout\ : std_logic;
SIGNAL \inst1|inst8[6]~5_combout\ : std_logic;
SIGNAL \inst1|inst5|$00000|auto_generated|result_node[6]~6_combout\ : std_logic;
SIGNAL \inst1|inst|Equal14~0_combout\ : std_logic;
SIGNAL \inst1|inst|Equal14~3_combout\ : std_logic;
SIGNAL \inst1|inst|Equal18~0_combout\ : std_logic;
SIGNAL \inst1|inst|data~10_combout\ : std_logic;
SIGNAL \inst1|inst|data~13_combout\ : std_logic;
SIGNAL \inst1|inst|data~14_combout\ : std_logic;
SIGNAL \inst1|inst|data~16_combout\ : std_logic;
SIGNAL \inst12[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[1]~11_combout\ : std_logic;
SIGNAL \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst|data[87]~11_combout\ : std_logic;
SIGNAL \RegAux|Equal7~0_combout\ : std_logic;
SIGNAL \inst1|inst|Equal15~0_combout\ : std_logic;
SIGNAL \RegAux|TRI_STATE_C~0_combout\ : std_logic;
SIGNAL \RegAux|TRI_STATE_C~1_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~8_combout\ : std_logic;
SIGNAL \RegAux|data_out[15]~0_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~9_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~10_combout\ : std_logic;
SIGNAL \RegAux|R15~2_combout\ : std_logic;
SIGNAL \inst1|inst6|$00001|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst|data[87]~17_combout\ : std_logic;
SIGNAL \inst1|inst7~0_combout\ : std_logic;
SIGNAL \inst1|inst1|SELECTOR~2_combout\ : std_logic;
SIGNAL \inst1|inst1|SELECTOR~3_combout\ : std_logic;
SIGNAL \inst1|inst1|SELECTOR~4_combout\ : std_logic;
SIGNAL \inst1|inst7~1_combout\ : std_logic;
SIGNAL \inst1|inst1|SELECTOR~0_combout\ : std_logic;
SIGNAL \inst1|inst2|valor_interno[7]~23_combout\ : std_logic;
SIGNAL \inst1|inst8[7]~4_combout\ : std_logic;
SIGNAL \inst1|inst5|$00000|auto_generated|result_node[7]~7_combout\ : std_logic;
SIGNAL \inst1|inst|Equal11~1_combout\ : std_logic;
SIGNAL \inst1|inst|Equal11~2_combout\ : std_logic;
SIGNAL \inst1|inst|data~18_combout\ : std_logic;
SIGNAL \inst1|inst|data[86]~21_combout\ : std_logic;
SIGNAL \inst1|inst8[11]~0_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~2_combout\ : std_logic;
SIGNAL \upa|Yupa2[5]~23_combout\ : std_logic;
SIGNAL \upa|Yupa2[5]~13_combout\ : std_logic;
SIGNAL \upa|Yupa2[4]~14_combout\ : std_logic;
SIGNAL \upa|Yupa2[4]~15_combout\ : std_logic;
SIGNAL \upa|Yupa2[6]~22_combout\ : std_logic;
SIGNAL \upa|Yupa2[6]~11_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~0_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~3_combout\ : std_logic;
SIGNAL \upa|Yupa2[0]~25_combout\ : std_logic;
SIGNAL \upa|Yupa2[0]~21_combout\ : std_logic;
SIGNAL \upa|Yupa2[1]~24_combout\ : std_logic;
SIGNAL \upa|Yupa2[1]~20_combout\ : std_logic;
SIGNAL \upa|Yupa2[3]~16_combout\ : std_logic;
SIGNAL \upa|Yupa2[3]~17_combout\ : std_logic;
SIGNAL \upa|Yupa2[2]~18_combout\ : std_logic;
SIGNAL \upa|Yupa2[2]~19_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~1_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~4_combout\ : std_logic;
SIGNAL \upa|Q[6]~feeder_combout\ : std_logic;
SIGNAL \upa|Q[5]~feeder_combout\ : std_logic;
SIGNAL \upa|Q[4]~feeder_combout\ : std_logic;
SIGNAL \upa|Q[3]~feeder_combout\ : std_logic;
SIGNAL \upa|Q[2]~feeder_combout\ : std_logic;
SIGNAL \RegPC|Add0~15\ : std_logic;
SIGNAL \RegPC|Add0~16_combout\ : std_logic;
SIGNAL \RegPC|Add0~39_combout\ : std_logic;
SIGNAL \RegPC|data_out~0_combout\ : std_logic;
SIGNAL \RegPC|Add0~17\ : std_logic;
SIGNAL \RegPC|Add0~18_combout\ : std_logic;
SIGNAL \RegPC|Add0~38_combout\ : std_logic;
SIGNAL \RegPC|Add0~19\ : std_logic;
SIGNAL \RegPC|Add0~20_combout\ : std_logic;
SIGNAL \RegPC|Add0~37_combout\ : std_logic;
SIGNAL \RegPC|Add0~21\ : std_logic;
SIGNAL \RegPC|Add0~22_combout\ : std_logic;
SIGNAL \RegPC|Add0~36_combout\ : std_logic;
SIGNAL \RegPC|Add0~23\ : std_logic;
SIGNAL \RegPC|Add0~24_combout\ : std_logic;
SIGNAL \RegPC|Add0~35_combout\ : std_logic;
SIGNAL \RegPC|Add0~25\ : std_logic;
SIGNAL \RegPC|Add0~26_combout\ : std_logic;
SIGNAL \RegPC|Add0~34_combout\ : std_logic;
SIGNAL \RegPC|Add0~27\ : std_logic;
SIGNAL \RegPC|Add0~28_combout\ : std_logic;
SIGNAL \RegPC|Add0~33_combout\ : std_logic;
SIGNAL \RegPC|Add0~29\ : std_logic;
SIGNAL \RegPC|Add0~30_combout\ : std_logic;
SIGNAL \RegPC|Add0~32_combout\ : std_logic;
SIGNAL \inst1|inst2|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \upa|Banderas\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|inst3|instruccion\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \RegAux|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst11|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|inst3|liga\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \upa|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \upa|Yupa_interno\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \AcumuladorA|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \AcumuladorB|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegPC|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dir|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|inst3|prueba\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|ALT_INV_inst8[11]~8_combout\ : std_logic;
SIGNAL \RegAux|ALT_INV_WideOr0~4_combout\ : std_logic;

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

\inst1|inst3|nCRI~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|inst3|nCRI~combout\);

\inst1|inst3|nCBD~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|inst3|nCBD~combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst1|ALT_INV_inst8[11]~8_combout\ <= NOT \inst1|inst8[11]~8_combout\;
\RegAux|ALT_INV_WideOr0~4_combout\ <= NOT \RegAux|WideOr0~4_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X0_Y12_N23
\regInstr[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst8[11]~0_combout\,
	oe => \inst1|inst8[11]~8_combout\,
	devoe => ww_devoe,
	o => \regInstr[11]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\regInstr[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst8[10]~1_combout\,
	oe => \inst1|inst8[11]~8_combout\,
	devoe => ww_devoe,
	o => \regInstr[10]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\regInstr[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst8[9]~2_combout\,
	oe => \inst1|inst8[11]~8_combout\,
	devoe => ww_devoe,
	o => \regInstr[9]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\regInstr[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst8[8]~3_combout\,
	oe => \inst1|inst8[11]~8_combout\,
	devoe => ww_devoe,
	o => \regInstr[8]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\regInstr[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst8[7]~4_combout\,
	oe => \inst1|inst8[11]~8_combout\,
	devoe => ww_devoe,
	o => \regInstr[7]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\regInstr[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst8[6]~5_combout\,
	oe => \inst1|inst8[11]~8_combout\,
	devoe => ww_devoe,
	o => \regInstr[6]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\regInstr[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst8[5]~6_combout\,
	oe => \inst1|inst8[11]~8_combout\,
	devoe => ww_devoe,
	o => \regInstr[5]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\regInstr[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst8[4]~7_combout\,
	oe => \inst1|inst8[11]~8_combout\,
	devoe => ww_devoe,
	o => \regInstr[4]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\regInstr[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_inst8[11]~8_combout\,
	devoe => ww_devoe,
	o => \regInstr[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\regInstr[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_inst8[11]~8_combout\,
	devoe => ww_devoe,
	o => \regInstr[2]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\regInstr[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_inst8[11]~8_combout\,
	devoe => ww_devoe,
	o => \regInstr[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\regInstr[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12[0]~0_combout\,
	oe => \inst1|inst8[11]~8_combout\,
	devoe => ww_devoe,
	o => \regInstr[0]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\Z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAux|ALT_INV_WideOr0~4_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\N~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAux|data_out\(15),
	devoe => ww_devoe,
	o => \N~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\CurrentState[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	devoe => ww_devoe,
	o => \CurrentState[11]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\CurrentState[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	devoe => ww_devoe,
	o => \CurrentState[10]~output_o\);

-- Location: IOOBUF_X0_Y16_N9
\CurrentState[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	devoe => ww_devoe,
	o => \CurrentState[9]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\CurrentState[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	devoe => ww_devoe,
	o => \CurrentState[8]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\CurrentState[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	devoe => ww_devoe,
	o => \CurrentState[7]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\CurrentState[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	devoe => ww_devoe,
	o => \CurrentState[6]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\CurrentState[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|$00000|auto_generated|result_node[5]~5_combout\,
	devoe => ww_devoe,
	o => \CurrentState[5]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\CurrentState[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|$00000|auto_generated|result_node[4]~4_combout\,
	devoe => ww_devoe,
	o => \CurrentState[4]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\CurrentState[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	devoe => ww_devoe,
	o => \CurrentState[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\CurrentState[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	devoe => ww_devoe,
	o => \CurrentState[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N2
\CurrentState[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => \CurrentState[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\CurrentState[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	devoe => ww_devoe,
	o => \CurrentState[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N9
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X26_Y0_N9
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

-- Location: IOOBUF_X18_Y0_N16
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X22_Y0_N23
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

-- Location: IOOBUF_X0_Y25_N16
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X14_Y0_N16
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

-- Location: IOOBUF_X0_Y26_N16
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

-- Location: IOOBUF_X22_Y0_N16
\Debug_Yupa[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Banderas\(4),
	devoe => ww_devoe,
	o => \Debug_Yupa[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X0_Y15_N2
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

-- Location: IOOBUF_X0_Y25_N2
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

-- Location: IOOBUF_X0_Y27_N2
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

-- Location: IOOBUF_X0_Y9_N2
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

-- Location: IOOBUF_X20_Y0_N30
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

-- Location: IOOBUF_X0_Y13_N2
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X0_Y29_N2
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

-- Location: IOOBUF_X24_Y0_N9
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

-- Location: IOOBUF_X0_Y3_N23
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

-- Location: IOOBUF_X0_Y27_N9
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

-- Location: IOOBUF_X22_Y0_N2
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

-- Location: IOOBUF_X20_Y0_N23
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

-- Location: IOOBUF_X20_Y39_N16
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

-- Location: IOOBUF_X16_Y0_N30
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X78_Y16_N9
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

-- Location: IOOBUF_X34_Y39_N16
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

-- Location: IOOBUF_X20_Y39_N9
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

-- Location: IOOBUF_X58_Y0_N2
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

-- Location: IOOBUF_X78_Y21_N23
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

-- Location: IOOBUF_X78_Y44_N16
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

-- Location: IOOBUF_X54_Y54_N2
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

-- Location: IOOBUF_X26_Y39_N30
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

-- Location: IOOBUF_X78_Y33_N9
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

-- Location: IOOBUF_X71_Y54_N30
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

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X36_Y39_N16
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

-- Location: IOOBUF_X66_Y54_N16
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

-- Location: IOOBUF_X69_Y0_N2
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

-- Location: IOOBUF_X38_Y0_N30
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

-- Location: IOOBUF_X78_Y44_N9
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

-- Location: IOOBUF_X40_Y0_N16
\DebugIX[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIX[15]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\DebugIX[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIX[14]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\DebugIX[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIX[13]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\DebugIX[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIX[12]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\DebugIX[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIX[11]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\DebugIX[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIX[10]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\DebugIX[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIX[9]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\DebugIX[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIX[8]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\DebugIX[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIX[7]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\DebugIX[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIX[6]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\DebugIX[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIX[5]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\DebugIX[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIX[4]~output_o\);

-- Location: IOOBUF_X78_Y17_N2
\DebugIX[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIX[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\DebugIX[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIX[2]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\DebugIX[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIX[1]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\DebugIX[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIX[0]~output_o\);

-- Location: IOOBUF_X78_Y15_N2
\DebugIY[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIY[15]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\DebugIY[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIY[14]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\DebugIY[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIY[13]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\DebugIY[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIY[12]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\DebugIY[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIY[11]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\DebugIY[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIY[10]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\DebugIY[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIY[9]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\DebugIY[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIY[8]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\DebugIY[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIY[7]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\DebugIY[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIY[6]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\DebugIY[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIY[5]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\DebugIY[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIY[4]~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\DebugIY[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIY[3]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\DebugIY[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIY[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\DebugIY[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIY[1]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\DebugIY[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugIY[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
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

-- Location: IOOBUF_X0_Y15_N16
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

-- Location: IOOBUF_X0_Y15_N9
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

-- Location: IOOBUF_X0_Y34_N23
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

-- Location: IOOBUF_X29_Y0_N9
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

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X0_Y3_N16
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

-- Location: IOOBUF_X0_Y15_N23
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

-- Location: IOOBUF_X0_Y10_N23
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

-- Location: IOOBUF_X0_Y3_N9
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

-- Location: IOOBUF_X0_Y10_N2
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

-- Location: IOOBUF_X0_Y23_N9
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

-- Location: IOOBUF_X0_Y9_N23
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

-- Location: IOOBUF_X0_Y10_N9
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

-- Location: IOOBUF_X0_Y9_N16
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

-- Location: IOOBUF_X0_Y9_N9
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

-- Location: IOOBUF_X20_Y0_N9
\DebugRA[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAux|data_out\(15),
	devoe => ww_devoe,
	o => \DebugRA[15]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\DebugRA[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAux|data_out\(14),
	devoe => ww_devoe,
	o => \DebugRA[14]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\DebugRA[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAux|data_out\(13),
	devoe => ww_devoe,
	o => \DebugRA[13]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\DebugRA[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAux|data_out\(12),
	devoe => ww_devoe,
	o => \DebugRA[12]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\DebugRA[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAux|data_out\(11),
	devoe => ww_devoe,
	o => \DebugRA[11]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\DebugRA[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAux|data_out\(10),
	devoe => ww_devoe,
	o => \DebugRA[10]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\DebugRA[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAux|data_out\(9),
	devoe => ww_devoe,
	o => \DebugRA[9]~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\DebugRA[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAux|data_out\(8),
	devoe => ww_devoe,
	o => \DebugRA[8]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\DebugRA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAux|data_out\(7),
	devoe => ww_devoe,
	o => \DebugRA[7]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\DebugRA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAux|data_out\(6),
	devoe => ww_devoe,
	o => \DebugRA[6]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\DebugRA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAux|data_out\(5),
	devoe => ww_devoe,
	o => \DebugRA[5]~output_o\);

-- Location: IOOBUF_X0_Y29_N9
\DebugRA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAux|data_out\(4),
	devoe => ww_devoe,
	o => \DebugRA[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\DebugRA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAux|data_out\(3),
	devoe => ww_devoe,
	o => \DebugRA[3]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\DebugRA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAux|data_out\(2),
	devoe => ww_devoe,
	o => \DebugRA[2]~output_o\);

-- Location: IOOBUF_X0_Y30_N23
\DebugRA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAux|data_out\(1),
	devoe => ww_devoe,
	o => \DebugRA[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\DebugRA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAux|data_out\(0),
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

-- Location: LCCOMB_X2_Y16_N6
\inst1|inst2|valor_interno[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst2|valor_interno[0]~33_combout\ = !\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst1|inst2|valor_interno[0]~33_combout\);

-- Location: IOIBUF_X0_Y16_N1
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

-- Location: FF_X2_Y16_N7
\inst1|inst2|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|inst2|valor_interno[0]~33_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|valor_interno\(0));

-- Location: LCCOMB_X4_Y16_N0
\inst1|inst2|valor_interno[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst2|valor_interno[1]~11_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ $ (VCC))) # (!\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & 
-- (\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & VCC))
-- \inst1|inst2|valor_interno[1]~12\ = CARRY((\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => VCC,
	combout => \inst1|inst2|valor_interno[1]~11_combout\,
	cout => \inst1|inst2|valor_interno[1]~12\);

-- Location: LCCOMB_X4_Y16_N2
\inst1|inst2|valor_interno[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst2|valor_interno[2]~13_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[2]~2_combout\ & (!\inst1|inst2|valor_interno[1]~12\)) # (!\inst1|inst5|$00000|auto_generated|result_node[2]~2_combout\ & ((\inst1|inst2|valor_interno[1]~12\) # 
-- (GND)))
-- \inst1|inst2|valor_interno[2]~14\ = CARRY((!\inst1|inst2|valor_interno[1]~12\) # (!\inst1|inst5|$00000|auto_generated|result_node[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datad => VCC,
	cin => \inst1|inst2|valor_interno[1]~12\,
	combout => \inst1|inst2|valor_interno[2]~13_combout\,
	cout => \inst1|inst2|valor_interno[2]~14\);

-- Location: FF_X4_Y16_N3
\inst1|inst2|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|inst2|valor_interno[2]~13_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|valor_interno\(2));

-- Location: LCCOMB_X6_Y16_N12
\inst1|inst8[11]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst8[11]~8_combout\ = (\inst1|inst3|instruccion\(1)) # (\inst1|inst3|instruccion\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|instruccion\(1),
	datac => \inst1|inst3|instruccion\(0),
	combout => \inst1|inst8[11]~8_combout\);

-- Location: LCCOMB_X7_Y16_N6
\inst1|inst5|$00000|auto_generated|result_node[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|$00000|auto_generated|result_node[2]~2_combout\ = (\inst1|inst1|SELECTOR~0_combout\ & ((!\inst1|inst8[11]~8_combout\))) # (!\inst1|inst1|SELECTOR~0_combout\ & (\inst1|inst2|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|SELECTOR~0_combout\,
	datac => \inst1|inst2|valor_interno\(2),
	datad => \inst1|inst8[11]~8_combout\,
	combout => \inst1|inst5|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X4_Y16_N4
\inst1|inst2|valor_interno[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst2|valor_interno[3]~15_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[3]~3_combout\ & (\inst1|inst2|valor_interno[2]~14\ $ (GND))) # (!\inst1|inst5|$00000|auto_generated|result_node[3]~3_combout\ & (!\inst1|inst2|valor_interno[2]~14\ 
-- & VCC))
-- \inst1|inst2|valor_interno[3]~16\ = CARRY((\inst1|inst5|$00000|auto_generated|result_node[3]~3_combout\ & !\inst1|inst2|valor_interno[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datad => VCC,
	cin => \inst1|inst2|valor_interno[2]~14\,
	combout => \inst1|inst2|valor_interno[3]~15_combout\,
	cout => \inst1|inst2|valor_interno[3]~16\);

-- Location: FF_X4_Y16_N5
\inst1|inst2|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|inst2|valor_interno[3]~15_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|valor_interno\(3));

-- Location: LCCOMB_X6_Y16_N6
\inst1|inst5|$00000|auto_generated|result_node[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|$00000|auto_generated|result_node[3]~3_combout\ = (\inst1|inst1|SELECTOR~0_combout\ & ((!\inst1|inst8[11]~8_combout\))) # (!\inst1|inst1|SELECTOR~0_combout\ & (\inst1|inst2|valor_interno\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|SELECTOR~0_combout\,
	datac => \inst1|inst2|valor_interno\(3),
	datad => \inst1|inst8[11]~8_combout\,
	combout => \inst1|inst5|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X4_Y16_N6
\inst1|inst2|valor_interno[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst2|valor_interno[4]~17_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[4]~4_combout\ & (!\inst1|inst2|valor_interno[3]~16\)) # (!\inst1|inst5|$00000|auto_generated|result_node[4]~4_combout\ & ((\inst1|inst2|valor_interno[3]~16\) # 
-- (GND)))
-- \inst1|inst2|valor_interno[4]~18\ = CARRY((!\inst1|inst2|valor_interno[3]~16\) # (!\inst1|inst5|$00000|auto_generated|result_node[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[4]~4_combout\,
	datad => VCC,
	cin => \inst1|inst2|valor_interno[3]~16\,
	combout => \inst1|inst2|valor_interno[4]~17_combout\,
	cout => \inst1|inst2|valor_interno[4]~18\);

-- Location: FF_X4_Y16_N7
\inst1|inst2|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|inst2|valor_interno[4]~17_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|valor_interno\(4));

-- Location: LCCOMB_X4_Y16_N10
\inst1|inst2|valor_interno[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst2|valor_interno[6]~21_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[6]~6_combout\ & (!\inst1|inst2|valor_interno[5]~20\)) # (!\inst1|inst5|$00000|auto_generated|result_node[6]~6_combout\ & ((\inst1|inst2|valor_interno[5]~20\) # 
-- (GND)))
-- \inst1|inst2|valor_interno[6]~22\ = CARRY((!\inst1|inst2|valor_interno[5]~20\) # (!\inst1|inst5|$00000|auto_generated|result_node[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	datad => VCC,
	cin => \inst1|inst2|valor_interno[5]~20\,
	combout => \inst1|inst2|valor_interno[6]~21_combout\,
	cout => \inst1|inst2|valor_interno[6]~22\);

-- Location: LCCOMB_X4_Y16_N12
\inst1|inst2|valor_interno[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst2|valor_interno[7]~23_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (\inst1|inst2|valor_interno[6]~22\ $ (GND))) # (!\inst1|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (!\inst1|inst2|valor_interno[6]~22\ 
-- & VCC))
-- \inst1|inst2|valor_interno[7]~24\ = CARRY((\inst1|inst5|$00000|auto_generated|result_node[7]~7_combout\ & !\inst1|inst2|valor_interno[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datad => VCC,
	cin => \inst1|inst2|valor_interno[6]~22\,
	combout => \inst1|inst2|valor_interno[7]~23_combout\,
	cout => \inst1|inst2|valor_interno[7]~24\);

-- Location: LCCOMB_X4_Y16_N14
\inst1|inst2|valor_interno[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst2|valor_interno[8]~25_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[8]~8_combout\ & (!\inst1|inst2|valor_interno[7]~24\)) # (!\inst1|inst5|$00000|auto_generated|result_node[8]~8_combout\ & ((\inst1|inst2|valor_interno[7]~24\) # 
-- (GND)))
-- \inst1|inst2|valor_interno[8]~26\ = CARRY((!\inst1|inst2|valor_interno[7]~24\) # (!\inst1|inst5|$00000|auto_generated|result_node[8]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	datad => VCC,
	cin => \inst1|inst2|valor_interno[7]~24\,
	combout => \inst1|inst2|valor_interno[8]~25_combout\,
	cout => \inst1|inst2|valor_interno[8]~26\);

-- Location: FF_X4_Y16_N15
\inst1|inst2|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|inst2|valor_interno[8]~25_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|valor_interno\(8));

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

-- Location: LCCOMB_X4_Y16_N16
\inst1|inst2|valor_interno[9]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst2|valor_interno[9]~27_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[9]~9_combout\ & (\inst1|inst2|valor_interno[8]~26\ $ (GND))) # (!\inst1|inst5|$00000|auto_generated|result_node[9]~9_combout\ & (!\inst1|inst2|valor_interno[8]~26\ 
-- & VCC))
-- \inst1|inst2|valor_interno[9]~28\ = CARRY((\inst1|inst5|$00000|auto_generated|result_node[9]~9_combout\ & !\inst1|inst2|valor_interno[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	datad => VCC,
	cin => \inst1|inst2|valor_interno[8]~26\,
	combout => \inst1|inst2|valor_interno[9]~27_combout\,
	cout => \inst1|inst2|valor_interno[9]~28\);

-- Location: LCCOMB_X4_Y16_N18
\inst1|inst2|valor_interno[10]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst2|valor_interno[10]~29_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\ & (!\inst1|inst2|valor_interno[9]~28\)) # (!\inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\ & ((\inst1|inst2|valor_interno[9]~28\) 
-- # (GND)))
-- \inst1|inst2|valor_interno[10]~30\ = CARRY((!\inst1|inst2|valor_interno[9]~28\) # (!\inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => VCC,
	cin => \inst1|inst2|valor_interno[9]~28\,
	combout => \inst1|inst2|valor_interno[10]~29_combout\,
	cout => \inst1|inst2|valor_interno[10]~30\);

-- Location: LCCOMB_X4_Y16_N20
\inst1|inst2|valor_interno[11]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst2|valor_interno[11]~31_combout\ = \inst1|inst5|$00000|auto_generated|result_node[11]~11_combout\ $ (!\inst1|inst2|valor_interno[10]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	cin => \inst1|inst2|valor_interno[10]~30\,
	combout => \inst1|inst2|valor_interno[11]~31_combout\);

-- Location: FF_X4_Y16_N21
\inst1|inst2|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|inst2|valor_interno[11]~31_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|valor_interno\(11));

-- Location: LCCOMB_X8_Y16_N8
\inst1|inst5|$00000|auto_generated|result_node[11]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|$00000|auto_generated|result_node[11]~11_combout\ = (\inst1|inst1|SELECTOR~0_combout\ & ((\inst1|inst8[11]~0_combout\))) # (!\inst1|inst1|SELECTOR~0_combout\ & (\inst1|inst2|valor_interno\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|SELECTOR~0_combout\,
	datac => \inst1|inst2|valor_interno\(11),
	datad => \inst1|inst8[11]~0_combout\,
	combout => \inst1|inst5|$00000|auto_generated|result_node[11]~11_combout\);

-- Location: LCCOMB_X7_Y16_N0
\inst1|inst|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal3~0_combout\ = (!\inst1|inst5|$00000|auto_generated|result_node[2]~2_combout\ & (!\inst1|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (!\inst1|inst5|$00000|auto_generated|result_node[9]~9_combout\ & 
-- !\inst1|inst5|$00000|auto_generated|result_node[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	combout => \inst1|inst|Equal3~0_combout\);

-- Location: LCCOMB_X7_Y16_N22
\inst1|inst|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal4~0_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst1|inst|Equal14~0_combout\ & (\inst1|inst5|$00000|auto_generated|result_node[11]~11_combout\ & \inst1|inst|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst1|inst|Equal14~0_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	datad => \inst1|inst|Equal3~0_combout\,
	combout => \inst1|inst|Equal4~0_combout\);

-- Location: LCCOMB_X12_Y16_N8
\inst1|inst|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal8~0_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\) # ((!\inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\) # (!\inst1|inst|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst1|inst|Equal4~0_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	combout => \inst1|inst|Equal8~0_combout\);

-- Location: FF_X3_Y16_N7
\AcumuladorB|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa[5]~15_combout\,
	sload => VCC,
	ena => \AcumuladorB|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(5));

-- Location: LCCOMB_X13_Y16_N18
\upa|Yupa[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[5]~31_combout\ = ((\inst1|inst|Equal8~0_combout\) # ((\AcumuladorB|data_out\(5)) # (\RESET~input_o\))) # (!\inst1|inst3|EB[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|EB[0]~0_combout\,
	datab => \inst1|inst|Equal8~0_combout\,
	datac => \AcumuladorB|data_out\(5),
	datad => \RESET~input_o\,
	combout => \upa|Yupa[5]~31_combout\);

-- Location: LCCOMB_X7_Y16_N16
\inst1|inst|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal3~1_combout\ = (!\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst1|inst|Equal14~0_combout\ & (\inst1|inst5|$00000|auto_generated|result_node[11]~11_combout\ & \inst1|inst|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst1|inst|Equal14~0_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	datad => \inst1|inst|Equal3~0_combout\,
	combout => \inst1|inst|Equal3~1_combout\);

-- Location: LCCOMB_X9_Y16_N14
\inst1|inst3|UPA[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|UPA[0]~6_combout\ = (!\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & ((\inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\ & ((!\inst1|inst|Equal3~1_combout\))) # 
-- (!\inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\ & (!\inst1|inst|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal4~0_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst1|inst|Equal3~1_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	combout => \inst1|inst3|UPA[0]~6_combout\);

-- Location: LCCOMB_X8_Y17_N4
\inst1|inst3|UPA[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|UPA[0]~4_combout\ = (!\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\RESET~input_o\ & ((!\inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\) # (!\inst1|inst|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \RESET~input_o\,
	datac => \inst1|inst|Equal4~0_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	combout => \inst1|inst3|UPA[0]~4_combout\);

-- Location: LCCOMB_X12_Y16_N26
\inst1|inst|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal3~2_combout\ = (!\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (!\inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\ & \inst1|inst|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst1|inst|Equal3~1_combout\,
	combout => \inst1|inst|Equal3~2_combout\);

-- Location: LCCOMB_X12_Y16_N22
\inst1|inst3|nDUPA~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|nDUPA~5_combout\ = (!\inst1|inst|Equal3~2_combout\ & (((\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\)) # (!\inst1|inst|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst1|inst|Equal3~2_combout\,
	datad => \inst1|inst|Equal2~1_combout\,
	combout => \inst1|inst3|nDUPA~5_combout\);

-- Location: LCCOMB_X9_Y16_N30
\inst1|inst3|UPA[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|UPA[0]~5_combout\ = (\inst1|inst|Equal11~2_combout\ & (\inst1|inst3|UPA[0]~6_combout\ & (\inst1|inst3|UPA[0]~4_combout\ & \inst1|inst3|nDUPA~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal11~2_combout\,
	datab => \inst1|inst3|UPA[0]~6_combout\,
	datac => \inst1|inst3|UPA[0]~4_combout\,
	datad => \inst1|inst3|nDUPA~5_combout\,
	combout => \inst1|inst3|UPA[0]~5_combout\);

-- Location: LCCOMB_X11_Y16_N22
\inst1|inst|Equal11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal11~3_combout\ = (!\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst1|inst|Equal11~2_combout\ & !\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst1|inst|Equal11~2_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst1|inst|Equal11~3_combout\);

-- Location: LCCOMB_X6_Y16_N14
\inst1|inst|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal4~1_combout\ = (!\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (!\inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\ & \inst1|inst|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst1|inst|Equal4~0_combout\,
	combout => \inst1|inst|Equal4~1_combout\);

-- Location: LCCOMB_X11_Y16_N14
\inst1|inst3|EA[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|EA[0]~2_combout\ = (\RESET~input_o\ & ((\inst1|inst|Equal11~3_combout\) # (\inst1|inst|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|Equal11~3_combout\,
	datac => \RESET~input_o\,
	datad => \inst1|inst|Equal4~1_combout\,
	combout => \inst1|inst3|EA[0]~2_combout\);

-- Location: LCCOMB_X11_Y16_N20
\inst1|inst|Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal10~0_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\ & (\inst1|inst|Equal4~0_combout\ & \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datac => \inst1|inst|Equal4~0_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst1|inst|Equal10~0_combout\);

-- Location: LCCOMB_X7_Y16_N4
\inst1|inst|data[87]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|data[87]~8_combout\ = ((\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\)) # (!\inst1|inst|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst1|inst|Equal2~1_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst1|inst|data[87]~8_combout\);

-- Location: LCCOMB_X7_Y16_N8
\inst1|inst3|EA[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|EA[0]~0_combout\ = ((\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & ((!\inst1|inst|Equal3~1_combout\))) # (!\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (!\inst1|inst|Equal4~0_combout\))) # 
-- (!\inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datac => \inst1|inst|Equal4~0_combout\,
	datad => \inst1|inst|Equal3~1_combout\,
	combout => \inst1|inst3|EA[0]~0_combout\);

-- Location: LCCOMB_X10_Y16_N0
\inst1|inst3|EA[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|EA[0]~1_combout\ = (\inst1|inst|data[87]~8_combout\ & (\inst1|inst3|EA[0]~0_combout\ & (\inst1|inst3|PC[0]~0_combout\ & !\inst1|inst|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data[87]~8_combout\,
	datab => \inst1|inst3|EA[0]~0_combout\,
	datac => \inst1|inst3|PC[0]~0_combout\,
	datad => \inst1|inst|Equal3~2_combout\,
	combout => \inst1|inst3|EA[0]~1_combout\);

-- Location: LCCOMB_X3_Y16_N4
\inst1|inst3|EA[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|EA[0]~3_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\RESET~input_o\ & (!\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & \inst1|inst|Equal11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \RESET~input_o\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst1|inst|Equal11~2_combout\,
	combout => \inst1|inst3|EA[0]~3_combout\);

-- Location: LCCOMB_X10_Y16_N8
\inst1|inst3|EA[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|EA[0]~4_combout\ = (\inst1|inst3|EA[0]~2_combout\) # ((!\inst1|inst|Equal10~0_combout\ & (\inst1|inst3|EA[0]~1_combout\ & \inst1|inst3|EA[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|EA[0]~2_combout\,
	datab => \inst1|inst|Equal10~0_combout\,
	datac => \inst1|inst3|EA[0]~1_combout\,
	datad => \inst1|inst3|EA[0]~3_combout\,
	combout => \inst1|inst3|EA[0]~4_combout\);

-- Location: LCCOMB_X12_Y16_N18
\inst1|inst|Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal12~0_combout\ = (\inst1|inst|Equal11~2_combout\ & (!\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|Equal11~2_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst1|inst|Equal12~0_combout\);

-- Location: LCCOMB_X12_Y16_N12
\inst1|inst3|nWA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|nWA~0_combout\ = (((!\inst1|inst|Equal12~0_combout\ & !\inst1|inst|Equal4~1_combout\)) # (!\inst1|inst3|nDUPA~5_combout\)) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst1|inst3|nDUPA~5_combout\,
	datac => \inst1|inst|Equal12~0_combout\,
	datad => \inst1|inst|Equal4~1_combout\,
	combout => \inst1|inst3|nWA~0_combout\);

-- Location: LCCOMB_X10_Y16_N24
\AcumuladorA|C[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[5]~2_combout\ = (\AcumuladorA|data_out\(5)) # (((!\inst1|inst3|UPA[0]~5_combout\) # (!\inst1|inst3|nWA~0_combout\)) # (!\inst1|inst3|EA[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(5),
	datab => \inst1|inst3|EA[0]~4_combout\,
	datac => \inst1|inst3|nWA~0_combout\,
	datad => \inst1|inst3|UPA[0]~5_combout\,
	combout => \AcumuladorA|C[5]~2_combout\);

-- Location: LCCOMB_X10_Y16_N22
\AcumuladorA|data_out[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[5]~3_combout\ = (\inst1|inst3|UPA[0]~5_combout\ & ((\AcumuladorA|C[5]~2_combout\))) # (!\inst1|inst3|UPA[0]~5_combout\ & (\upa|Yupa[5]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3|UPA[0]~5_combout\,
	datac => \upa|Yupa[5]~15_combout\,
	datad => \AcumuladorA|C[5]~2_combout\,
	combout => \AcumuladorA|data_out[5]~3_combout\);

-- Location: LCCOMB_X10_Y16_N26
\AcumuladorA|data_out[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[0]~1_combout\ = (!\inst1|inst3|nWA~0_combout\ & ((\inst1|inst3|EA[0]~4_combout\) # (\inst1|inst3|UPA[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|EA[0]~4_combout\,
	datab => \inst1|inst3|nWA~0_combout\,
	datad => \inst1|inst3|UPA[0]~5_combout\,
	combout => \AcumuladorA|data_out[0]~1_combout\);

-- Location: FF_X10_Y16_N23
\AcumuladorA|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[5]~3_combout\,
	ena => \AcumuladorA|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(5));

-- Location: LCCOMB_X9_Y16_N18
\AcumuladorA|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|Equal0~0_combout\ = (!\inst1|inst3|UPA[0]~5_combout\ & (\inst1|inst3|EA[0]~4_combout\ & \inst1|inst3|nWA~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|UPA[0]~5_combout\,
	datab => \inst1|inst3|EA[0]~4_combout\,
	datad => \inst1|inst3|nWA~0_combout\,
	combout => \AcumuladorA|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y16_N2
\inst1|inst|Equal17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal17~0_combout\ = (\inst1|inst|Equal14~2_combout\ & (\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal14~2_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst1|inst|Equal17~0_combout\);

-- Location: LCCOMB_X3_Y16_N14
\inst1|inst|Equal16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal16~0_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (!\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & \inst1|inst|Equal14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst1|inst|Equal14~2_combout\,
	combout => \inst1|inst|Equal16~0_combout\);

-- Location: LCCOMB_X6_Y16_N28
\inst1|inst3|PC[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|PC[0]~1_combout\ = (!\inst1|inst|Equal4~1_combout\ & ((\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\) # ((!\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\) # (!\inst1|inst|Equal14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst1|inst|Equal14~2_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst1|inst|Equal4~1_combout\,
	combout => \inst1|inst3|PC[0]~1_combout\);

-- Location: LCCOMB_X11_Y16_N8
\inst1|inst|Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal13~0_combout\ = (!\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst1|inst|Equal11~2_combout\ & \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst1|inst|Equal11~2_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst1|inst|Equal13~0_combout\);

-- Location: LCCOMB_X11_Y16_N28
\inst1|inst3|PC[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|PC[0]~2_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\) # ((\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (!\inst1|inst|Equal11~2_combout\)) # 
-- (!\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & ((!\inst1|inst|Equal14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst1|inst|Equal11~2_combout\,
	datad => \inst1|inst|Equal14~2_combout\,
	combout => \inst1|inst3|PC[0]~2_combout\);

-- Location: LCCOMB_X11_Y16_N18
\inst1|inst3|PC[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|PC[0]~3_combout\ = (!\inst1|inst|Equal11~3_combout\ & (!\inst1|inst|Equal10~0_combout\ & (!\inst1|inst|Equal13~0_combout\ & \inst1|inst3|PC[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal11~3_combout\,
	datab => \inst1|inst|Equal10~0_combout\,
	datac => \inst1|inst|Equal13~0_combout\,
	datad => \inst1|inst3|PC[0]~2_combout\,
	combout => \inst1|inst3|PC[0]~3_combout\);

-- Location: LCCOMB_X10_Y16_N4
\inst1|inst3|PC[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|PC[0]~4_combout\ = (!\inst1|inst|Equal16~0_combout\ & (\inst1|inst3|EA[0]~1_combout\ & (\inst1|inst3|PC[0]~1_combout\ & \inst1|inst3|PC[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal16~0_combout\,
	datab => \inst1|inst3|EA[0]~1_combout\,
	datac => \inst1|inst3|PC[0]~1_combout\,
	datad => \inst1|inst3|PC[0]~3_combout\,
	combout => \inst1|inst3|PC[0]~4_combout\);

-- Location: LCCOMB_X3_Y16_N30
\RegAux|TRI_STATE_D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|TRI_STATE_D~3_combout\ = (\RESET~input_o\ & ((!\inst1|inst|Equal14~2_combout\) # (!\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \RESET~input_o\,
	datad => \inst1|inst|Equal14~2_combout\,
	combout => \RegAux|TRI_STATE_D~3_combout\);

-- Location: LCCOMB_X9_Y16_N4
\RegAux|TRI_STATE_D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|TRI_STATE_D~2_combout\ = (\inst1|inst3|PC[0]~4_combout\ & (\RegAux|TRI_STATE_D~3_combout\ & ((\inst1|inst|Equal17~0_combout\) # (\inst1|inst|Equal18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal17~0_combout\,
	datab => \inst1|inst|Equal18~0_combout\,
	datac => \inst1|inst3|PC[0]~4_combout\,
	datad => \RegAux|TRI_STATE_D~3_combout\,
	combout => \RegAux|TRI_STATE_D~2_combout\);

-- Location: LCCOMB_X4_Y18_N4
\RegAux|data_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out[5]~feeder_combout\ = \upa|Yupa[5]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Yupa[5]~15_combout\,
	combout => \RegAux|data_out[5]~feeder_combout\);

-- Location: LCCOMB_X8_Y18_N24
\inst1|inst3|RA[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|RA[0]~0_combout\ = (\inst1|inst|Equal14~2_combout\ & (\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & \RESET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal14~2_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \RESET~input_o\,
	combout => \inst1|inst3|RA[0]~0_combout\);

-- Location: FF_X4_Y18_N5
\RegAux|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out[5]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst1|inst3|RA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(5));

-- Location: LCCOMB_X9_Y16_N6
\upa|Yupa[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[5]~13_combout\ = (\AcumuladorA|data_out\(5) & (((\RegAux|data_out\(5)) # (!\RegAux|TRI_STATE_D~2_combout\)))) # (!\AcumuladorA|data_out\(5) & (!\AcumuladorA|Equal0~0_combout\ & ((\RegAux|data_out\(5)) # (!\RegAux|TRI_STATE_D~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(5),
	datab => \AcumuladorA|Equal0~0_combout\,
	datac => \RegAux|TRI_STATE_D~2_combout\,
	datad => \RegAux|data_out\(5),
	combout => \upa|Yupa[5]~13_combout\);

-- Location: LCCOMB_X12_Y16_N16
\inst1|inst3|nDUPA~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|nDUPA~4_combout\ = (((\inst1|inst|Equal4~1_combout\) # (!\RESET~input_o\)) # (!\inst1|inst|Equal12~0_combout\)) # (!\inst1|inst3|nDUPA~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|nDUPA~5_combout\,
	datab => \inst1|inst|Equal12~0_combout\,
	datac => \RESET~input_o\,
	datad => \inst1|inst|Equal4~1_combout\,
	combout => \inst1|inst3|nDUPA~4_combout\);

-- Location: LCCOMB_X12_Y16_N6
\upa|Yupa[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~8_combout\ = ((!\inst1|inst|Equal8~0_combout\ & (!\RESET~input_o\ & \inst1|inst3|EB[0]~0_combout\))) # (!\inst1|inst3|nDUPA~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal8~0_combout\,
	datab => \RESET~input_o\,
	datac => \inst1|inst3|EB[0]~0_combout\,
	datad => \inst1|inst3|nDUPA~4_combout\,
	combout => \upa|Yupa[7]~8_combout\);

-- Location: LCCOMB_X2_Y16_N12
\inst1|inst|Equal12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal12~1_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & !\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst1|inst|Equal12~1_combout\);

-- Location: LCCOMB_X6_Y16_N16
\inst1|inst|data~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|data~9_combout\ = (\inst1|inst3|PC[0]~1_combout\ & (\inst1|inst|Equal8~0_combout\ & ((!\inst1|inst|Equal2~1_combout\) # (!\inst1|inst|Equal12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal12~1_combout\,
	datab => \inst1|inst|Equal2~1_combout\,
	datac => \inst1|inst3|PC[0]~1_combout\,
	datad => \inst1|inst|Equal8~0_combout\,
	combout => \inst1|inst|data~9_combout\);

-- Location: LCCOMB_X10_Y16_N20
\inst1|inst3|nAS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|nAS~0_combout\ = ((\inst1|inst|data~9_combout\ & ((!\inst1|inst3|PC[0]~4_combout\) # (!\inst1|inst|Equal17~0_combout\)))) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data~9_combout\,
	datab => \inst1|inst|Equal17~0_combout\,
	datac => \inst1|inst3|PC[0]~4_combout\,
	datad => \RESET~input_o\,
	combout => \inst1|inst3|nAS~0_combout\);

-- Location: LCCOMB_X9_Y16_N0
\upa|Yupa[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~7_combout\ = (!\inst1|inst3|UPA[0]~5_combout\ & (\inst1|inst3|EA[0]~4_combout\ & \inst1|inst3|nWA~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|UPA[0]~5_combout\,
	datab => \inst1|inst3|EA[0]~4_combout\,
	datad => \inst1|inst3|nWA~0_combout\,
	combout => \upa|Yupa[7]~7_combout\);

-- Location: LCCOMB_X9_Y16_N28
\upa|Yupa[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~9_combout\ = (\upa|Yupa[7]~8_combout\) # (((\RegAux|TRI_STATE_D~2_combout\) # (\upa|Yupa[7]~7_combout\)) # (!\inst1|inst3|nAS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[7]~8_combout\,
	datab => \inst1|inst3|nAS~0_combout\,
	datac => \RegAux|TRI_STATE_D~2_combout\,
	datad => \upa|Yupa[7]~7_combout\,
	combout => \upa|Yupa[7]~9_combout\);

-- Location: LCCOMB_X6_Y16_N20
\inst1|inst3|PC[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|PC[0]~5_combout\ = (\RESET~input_o\ & ((\inst1|inst3|PC[0]~4_combout\ & ((\inst1|inst|Equal17~0_combout\))) # (!\inst1|inst3|PC[0]~4_combout\ & (!\inst1|inst|data~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst1|inst|data~9_combout\,
	datac => \inst1|inst3|PC[0]~4_combout\,
	datad => \inst1|inst|Equal17~0_combout\,
	combout => \inst1|inst3|PC[0]~5_combout\);

-- Location: LCCOMB_X7_Y15_N2
\RegPC|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Equal0~0_combout\ = (\inst1|inst3|PC[0]~5_combout\ & ((!\inst1|inst|Equal18~0_combout\) # (!\RESET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \inst1|inst3|PC[0]~5_combout\,
	datad => \inst1|inst|Equal18~0_combout\,
	combout => \RegPC|Equal0~0_combout\);

-- Location: LCCOMB_X6_Y15_N0
\RegPC|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~0_combout\ = \RegPC|data_out\(0) $ (VCC)
-- \RegPC|Add0~1\ = CARRY(\RegPC|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(0),
	datad => VCC,
	combout => \RegPC|Add0~0_combout\,
	cout => \RegPC|Add0~1\);

-- Location: LCCOMB_X6_Y15_N2
\RegPC|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~2_combout\ = (\RegPC|data_out\(1) & (!\RegPC|Add0~1\)) # (!\RegPC|data_out\(1) & ((\RegPC|Add0~1\) # (GND)))
-- \RegPC|Add0~3\ = CARRY((!\RegPC|Add0~1\) # (!\RegPC|data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(1),
	datad => VCC,
	cin => \RegPC|Add0~1\,
	combout => \RegPC|Add0~2_combout\,
	cout => \RegPC|Add0~3\);

-- Location: LCCOMB_X8_Y18_N26
\RegAux|data_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out[1]~feeder_combout\ = \upa|Yupa[1]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Yupa[1]~28_combout\,
	combout => \RegAux|data_out[1]~feeder_combout\);

-- Location: FF_X8_Y18_N27
\RegAux|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out[1]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst1|inst3|RA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(1));

-- Location: LCCOMB_X10_Y16_N2
\AcumuladorA|C[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[1]~6_combout\ = ((\AcumuladorA|data_out\(1)) # ((!\inst1|inst3|UPA[0]~5_combout\) # (!\inst1|inst3|nWA~0_combout\))) # (!\inst1|inst3|EA[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|EA[0]~4_combout\,
	datab => \AcumuladorA|data_out\(1),
	datac => \inst1|inst3|nWA~0_combout\,
	datad => \inst1|inst3|UPA[0]~5_combout\,
	combout => \AcumuladorA|C[1]~6_combout\);

-- Location: LCCOMB_X9_Y15_N18
\AcumuladorA|data_out[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[1]~7_combout\ = (\inst1|inst3|UPA[0]~5_combout\ & (\AcumuladorA|C[1]~6_combout\)) # (!\inst1|inst3|UPA[0]~5_combout\ & ((\upa|Yupa[1]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[1]~6_combout\,
	datac => \inst1|inst3|UPA[0]~5_combout\,
	datad => \upa|Yupa[1]~28_combout\,
	combout => \AcumuladorA|data_out[1]~7_combout\);

-- Location: FF_X9_Y15_N19
\AcumuladorA|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[1]~7_combout\,
	ena => \AcumuladorA|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(1));

-- Location: LCCOMB_X9_Y15_N10
\upa|Yupa[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[1]~27_combout\ = (\AcumuladorA|Equal0~0_combout\ & (\AcumuladorA|data_out\(1) & ((\RegAux|data_out\(1)) # (!\RegAux|TRI_STATE_D~2_combout\)))) # (!\AcumuladorA|Equal0~0_combout\ & ((\RegAux|data_out\(1)) # ((!\RegAux|TRI_STATE_D~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|Equal0~0_combout\,
	datab => \RegAux|data_out\(1),
	datac => \RegAux|TRI_STATE_D~2_combout\,
	datad => \AcumuladorA|data_out\(1),
	combout => \upa|Yupa[1]~27_combout\);

-- Location: FF_X9_Y15_N21
\AcumuladorB|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa[1]~28_combout\,
	ena => \AcumuladorB|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(1));

-- Location: LCCOMB_X12_Y16_N20
\upa|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux29~0_combout\ = (\inst1|inst|Equal11~3_combout\ & (\AcumuladorB|data_out\(1) & (\inst1|inst3|EB[0]~0_combout\ & \inst1|inst|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal11~3_combout\,
	datab => \AcumuladorB|data_out\(1),
	datac => \inst1|inst3|EB[0]~0_combout\,
	datad => \inst1|inst|Equal8~0_combout\,
	combout => \upa|Mux29~0_combout\);

-- Location: FF_X9_Y16_N25
\AcumuladorB|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa[0]~30_combout\,
	sload => VCC,
	ena => \AcumuladorB|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(0));

-- Location: LCCOMB_X12_Y16_N24
\upa|Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux27~0_combout\ = (\inst1|inst|Equal11~3_combout\ & (\AcumuladorB|data_out\(0) & (\inst1|inst3|EB[0]~0_combout\ & \inst1|inst|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal11~3_combout\,
	datab => \AcumuladorB|data_out\(0),
	datac => \inst1|inst3|EB[0]~0_combout\,
	datad => \inst1|inst|Equal8~0_combout\,
	combout => \upa|Mux27~0_combout\);

-- Location: LCCOMB_X13_Y16_N30
\AcumuladorA|data_out[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[0]~8_combout\ = (\inst1|inst3|UPA[0]~5_combout\ & (\AcumuladorA|C[0]~7_combout\)) # (!\inst1|inst3|UPA[0]~5_combout\ & ((\upa|Yupa[0]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AcumuladorA|C[0]~7_combout\,
	datac => \inst1|inst3|UPA[0]~5_combout\,
	datad => \upa|Yupa[0]~30_combout\,
	combout => \AcumuladorA|data_out[0]~8_combout\);

-- Location: FF_X13_Y16_N31
\AcumuladorA|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[0]~8_combout\,
	ena => \AcumuladorA|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(0));

-- Location: LCCOMB_X10_Y16_N12
\AcumuladorA|C[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[0]~7_combout\ = (\AcumuladorA|data_out\(0)) # (((!\inst1|inst3|UPA[0]~5_combout\) # (!\inst1|inst3|EA[0]~4_combout\)) # (!\inst1|inst3|nWA~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(0),
	datab => \inst1|inst3|nWA~0_combout\,
	datac => \inst1|inst3|EA[0]~4_combout\,
	datad => \inst1|inst3|UPA[0]~5_combout\,
	combout => \AcumuladorA|C[0]~7_combout\);

-- Location: LCCOMB_X3_Y16_N24
\inst1|inst3|CC\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|CC~combout\ = LCELL((!\inst1|inst|Equal4~1_combout\ & (\inst1|inst3|EA[0]~3_combout\ & \inst1|inst3|EA[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|Equal4~1_combout\,
	datac => \inst1|inst3|EA[0]~3_combout\,
	datad => \inst1|inst3|EA[0]~1_combout\,
	combout => \inst1|inst3|CC~combout\);

-- Location: FF_X7_Y16_N5
\RegAux|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa[7]~10_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst1|inst3|RA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(7));

-- Location: LCCOMB_X9_Y16_N10
\upa|Yupa[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~4_combout\ = (\AcumuladorA|data_out\(7) & (((\RegAux|data_out\(7))) # (!\RegAux|TRI_STATE_D~2_combout\))) # (!\AcumuladorA|data_out\(7) & (!\AcumuladorA|Equal0~0_combout\ & ((\RegAux|data_out\(7)) # (!\RegAux|TRI_STATE_D~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(7),
	datab => \RegAux|TRI_STATE_D~2_combout\,
	datac => \AcumuladorA|Equal0~0_combout\,
	datad => \RegAux|data_out\(7),
	combout => \upa|Yupa[7]~4_combout\);

-- Location: FF_X9_Y16_N21
\AcumuladorB|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa[7]~10_combout\,
	ena => \AcumuladorB|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(7));

-- Location: LCCOMB_X12_Y16_N28
\upa|Mux35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux35~0_combout\ = (\inst1|inst|Equal11~3_combout\ & (\AcumuladorB|data_out\(7) & (\inst1|inst3|EB[0]~0_combout\ & \inst1|inst|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal11~3_combout\,
	datab => \AcumuladorB|data_out\(7),
	datac => \inst1|inst3|EB[0]~0_combout\,
	datad => \inst1|inst|Equal8~0_combout\,
	combout => \upa|Mux35~0_combout\);

-- Location: FF_X8_Y15_N31
\AcumuladorB|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa[6]~12_combout\,
	ena => \AcumuladorB|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(6));

-- Location: LCCOMB_X12_Y15_N30
\upa|Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux34~0_combout\ = (\AcumuladorB|data_out\(6) & (\inst1|inst|Equal8~0_combout\ & (\inst1|inst|Equal11~3_combout\ & \inst1|inst3|EB[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(6),
	datab => \inst1|inst|Equal8~0_combout\,
	datac => \inst1|inst|Equal11~3_combout\,
	datad => \inst1|inst3|EB[0]~0_combout\,
	combout => \upa|Mux34~0_combout\);

-- Location: LCCOMB_X9_Y15_N24
\AcumuladorA|data_out[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[6]~2_combout\ = (\inst1|inst3|UPA[0]~5_combout\ & (\AcumuladorA|C[6]~1_combout\)) # (!\inst1|inst3|UPA[0]~5_combout\ & ((\upa|Yupa[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|UPA[0]~5_combout\,
	datac => \AcumuladorA|C[6]~1_combout\,
	datad => \upa|Yupa[6]~12_combout\,
	combout => \AcumuladorA|data_out[6]~2_combout\);

-- Location: FF_X9_Y15_N25
\AcumuladorA|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[6]~2_combout\,
	ena => \AcumuladorA|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(6));

-- Location: LCCOMB_X9_Y15_N28
\AcumuladorA|C[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[6]~1_combout\ = ((\AcumuladorA|data_out\(6)) # ((!\inst1|inst3|EA[0]~4_combout\) # (!\inst1|inst3|nWA~0_combout\))) # (!\inst1|inst3|UPA[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|UPA[0]~5_combout\,
	datab => \AcumuladorA|data_out\(6),
	datac => \inst1|inst3|nWA~0_combout\,
	datad => \inst1|inst3|EA[0]~4_combout\,
	combout => \AcumuladorA|C[6]~1_combout\);

-- Location: LCCOMB_X12_Y16_N2
\upa|Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux33~0_combout\ = (\inst1|inst|Equal11~3_combout\ & (\AcumuladorB|data_out\(5) & (\inst1|inst3|EB[0]~0_combout\ & \inst1|inst|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal11~3_combout\,
	datab => \AcumuladorB|data_out\(5),
	datac => \inst1|inst3|EB[0]~0_combout\,
	datad => \inst1|inst|Equal8~0_combout\,
	combout => \upa|Mux33~0_combout\);

-- Location: LCCOMB_X12_Y16_N14
\upa|Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux32~0_combout\ = (\inst1|inst|Equal11~3_combout\ & (\AcumuladorB|data_out\(4) & (\inst1|inst3|EB[0]~0_combout\ & \inst1|inst|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal11~3_combout\,
	datab => \AcumuladorB|data_out\(4),
	datac => \inst1|inst3|EB[0]~0_combout\,
	datad => \inst1|inst|Equal8~0_combout\,
	combout => \upa|Mux32~0_combout\);

-- Location: LCCOMB_X10_Y16_N28
\AcumuladorA|data_out[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[4]~4_combout\ = (\inst1|inst3|UPA[0]~5_combout\ & (\AcumuladorA|C[4]~3_combout\)) # (!\inst1|inst3|UPA[0]~5_combout\ & ((\upa|Yupa[4]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[4]~3_combout\,
	datab => \inst1|inst3|UPA[0]~5_combout\,
	datad => \upa|Yupa[4]~18_combout\,
	combout => \AcumuladorA|data_out[4]~4_combout\);

-- Location: FF_X10_Y16_N29
\AcumuladorA|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[4]~4_combout\,
	ena => \AcumuladorA|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(4));

-- Location: LCCOMB_X10_Y16_N30
\AcumuladorA|C[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[4]~3_combout\ = ((\AcumuladorA|data_out\(4)) # ((!\inst1|inst3|UPA[0]~5_combout\) # (!\inst1|inst3|nWA~0_combout\))) # (!\inst1|inst3|EA[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|EA[0]~4_combout\,
	datab => \AcumuladorA|data_out\(4),
	datac => \inst1|inst3|nWA~0_combout\,
	datad => \inst1|inst3|UPA[0]~5_combout\,
	combout => \AcumuladorA|C[4]~3_combout\);

-- Location: LCCOMB_X12_Y16_N30
\AcumuladorB|TRI_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|TRI_STATE~0_combout\ = (!\RESET~input_o\ & (\inst1|inst3|EB[0]~0_combout\ & !\inst1|inst|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \inst1|inst3|EB[0]~0_combout\,
	datad => \inst1|inst|Equal8~0_combout\,
	combout => \AcumuladorB|TRI_STATE~0_combout\);

-- Location: LCCOMB_X9_Y15_N22
\AcumuladorA|data_out[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[3]~5_combout\ = (\inst1|inst3|UPA[0]~5_combout\ & (\AcumuladorA|C[3]~4_combout\)) # (!\inst1|inst3|UPA[0]~5_combout\ & ((\upa|Yupa[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|UPA[0]~5_combout\,
	datab => \AcumuladorA|C[3]~4_combout\,
	datad => \upa|Yupa[3]~22_combout\,
	combout => \AcumuladorA|data_out[3]~5_combout\);

-- Location: FF_X9_Y15_N23
\AcumuladorA|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[3]~5_combout\,
	ena => \AcumuladorA|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(3));

-- Location: LCCOMB_X11_Y15_N28
\AcumuladorA|C[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[3]~4_combout\ = (\AcumuladorA|data_out\(3)) # (((!\inst1|inst3|nWA~0_combout\) # (!\inst1|inst3|EA[0]~4_combout\)) # (!\inst1|inst3|UPA[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(3),
	datab => \inst1|inst3|UPA[0]~5_combout\,
	datac => \inst1|inst3|EA[0]~4_combout\,
	datad => \inst1|inst3|nWA~0_combout\,
	combout => \AcumuladorA|C[3]~4_combout\);

-- Location: LCCOMB_X9_Y15_N16
\AcumuladorA|data_out[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[2]~6_combout\ = (\inst1|inst3|UPA[0]~5_combout\ & (\AcumuladorA|C[2]~5_combout\)) # (!\inst1|inst3|UPA[0]~5_combout\ & ((\upa|Yupa[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|UPA[0]~5_combout\,
	datab => \AcumuladorA|C[2]~5_combout\,
	datad => \upa|Yupa[2]~26_combout\,
	combout => \AcumuladorA|data_out[2]~6_combout\);

-- Location: FF_X9_Y15_N17
\AcumuladorA|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[2]~6_combout\,
	ena => \AcumuladorA|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(2));

-- Location: LCCOMB_X9_Y15_N14
\AcumuladorA|C[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[2]~5_combout\ = ((\AcumuladorA|data_out\(2)) # ((!\inst1|inst3|EA[0]~4_combout\) # (!\inst1|inst3|nWA~0_combout\))) # (!\inst1|inst3|UPA[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|UPA[0]~5_combout\,
	datab => \AcumuladorA|data_out\(2),
	datac => \inst1|inst3|nWA~0_combout\,
	datad => \inst1|inst3|EA[0]~4_combout\,
	combout => \AcumuladorA|C[2]~5_combout\);

-- Location: LCCOMB_X11_Y15_N8
\upa|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~4_combout\ = ((\upa|Mux29~0_combout\ $ (\AcumuladorA|C[1]~6_combout\ $ (!\upa|Add0~3\)))) # (GND)
-- \upa|Add0~5\ = CARRY((\upa|Mux29~0_combout\ & ((\AcumuladorA|C[1]~6_combout\) # (!\upa|Add0~3\))) # (!\upa|Mux29~0_combout\ & (\AcumuladorA|C[1]~6_combout\ & !\upa|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux29~0_combout\,
	datab => \AcumuladorA|C[1]~6_combout\,
	datad => VCC,
	cin => \upa|Add0~3\,
	combout => \upa|Add0~4_combout\,
	cout => \upa|Add0~5\);

-- Location: LCCOMB_X11_Y15_N10
\upa|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~6_combout\ = (\upa|Mux30~0_combout\ & ((\AcumuladorA|C[2]~5_combout\ & (\upa|Add0~5\ & VCC)) # (!\AcumuladorA|C[2]~5_combout\ & (!\upa|Add0~5\)))) # (!\upa|Mux30~0_combout\ & ((\AcumuladorA|C[2]~5_combout\ & (!\upa|Add0~5\)) # 
-- (!\AcumuladorA|C[2]~5_combout\ & ((\upa|Add0~5\) # (GND)))))
-- \upa|Add0~7\ = CARRY((\upa|Mux30~0_combout\ & (!\AcumuladorA|C[2]~5_combout\ & !\upa|Add0~5\)) # (!\upa|Mux30~0_combout\ & ((!\upa|Add0~5\) # (!\AcumuladorA|C[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux30~0_combout\,
	datab => \AcumuladorA|C[2]~5_combout\,
	datad => VCC,
	cin => \upa|Add0~5\,
	combout => \upa|Add0~6_combout\,
	cout => \upa|Add0~7\);

-- Location: FF_X11_Y15_N11
\upa|Yupa_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~6_combout\,
	ena => \inst1|inst3|nDUPA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(2));

-- Location: LCCOMB_X6_Y15_N4
\RegPC|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~4_combout\ = (\RegPC|data_out\(2) & (\RegPC|Add0~3\ $ (GND))) # (!\RegPC|data_out\(2) & (!\RegPC|Add0~3\ & VCC))
-- \RegPC|Add0~5\ = CARRY((\RegPC|data_out\(2) & !\RegPC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(2),
	datad => VCC,
	cin => \RegPC|Add0~3\,
	combout => \RegPC|Add0~4_combout\,
	cout => \RegPC|Add0~5\);

-- Location: LCCOMB_X6_Y15_N6
\RegPC|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~6_combout\ = (\RegPC|data_out\(3) & (!\RegPC|Add0~5\)) # (!\RegPC|data_out\(3) & ((\RegPC|Add0~5\) # (GND)))
-- \RegPC|Add0~7\ = CARRY((!\RegPC|Add0~5\) # (!\RegPC|data_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(3),
	datad => VCC,
	cin => \RegPC|Add0~5\,
	combout => \RegPC|Add0~6_combout\,
	cout => \RegPC|Add0~7\);

-- Location: LCCOMB_X7_Y15_N4
\RegPC|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~44_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~6_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Add0~6_combout\,
	datab => \RegPC|Equal0~0_combout\,
	datac => \upa|Yupa[3]~22_combout\,
	combout => \RegPC|Add0~44_combout\);

-- Location: LCCOMB_X6_Y16_N2
\inst1|inst|data[86]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|data[86]~20_combout\ = (\inst1|inst3|PC[0]~4_combout\ & (((!\inst1|inst|Equal14~2_combout\) # (!\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\)) # (!\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst1|inst3|PC[0]~4_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst1|inst|Equal14~2_combout\,
	combout => \inst1|inst|data[86]~20_combout\);

-- Location: LCCOMB_X6_Y16_N18
\inst1|inst3|PC[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|PC[0]~6_combout\ = (\inst1|inst3|PC[0]~5_combout\) # ((\RESET~input_o\ & (\inst1|inst|data[86]~20_combout\ & \inst1|inst|Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst1|inst3|PC[0]~5_combout\,
	datac => \inst1|inst|data[86]~20_combout\,
	datad => \inst1|inst|Equal18~0_combout\,
	combout => \inst1|inst3|PC[0]~6_combout\);

-- Location: FF_X7_Y15_N5
\RegPC|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~44_combout\,
	clrn => \RESET~input_o\,
	ena => \inst1|inst3|PC[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(3));

-- Location: LCCOMB_X6_Y15_N8
\RegPC|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~8_combout\ = (\RegPC|data_out\(4) & (\RegPC|Add0~7\ $ (GND))) # (!\RegPC|data_out\(4) & (!\RegPC|Add0~7\ & VCC))
-- \RegPC|Add0~9\ = CARRY((\RegPC|data_out\(4) & !\RegPC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(4),
	datad => VCC,
	cin => \RegPC|Add0~7\,
	combout => \RegPC|Add0~8_combout\,
	cout => \RegPC|Add0~9\);

-- Location: LCCOMB_X7_Y17_N12
\RegPC|Add0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~43_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~8_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa[4]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|Add0~8_combout\,
	datac => \RegPC|Equal0~0_combout\,
	datad => \upa|Yupa[4]~18_combout\,
	combout => \RegPC|Add0~43_combout\);

-- Location: FF_X7_Y17_N13
\RegPC|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~43_combout\,
	clrn => \RESET~input_o\,
	ena => \inst1|inst3|PC[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(4));

-- Location: LCCOMB_X6_Y15_N10
\RegPC|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~10_combout\ = (\RegPC|data_out\(5) & (!\RegPC|Add0~9\)) # (!\RegPC|data_out\(5) & ((\RegPC|Add0~9\) # (GND)))
-- \RegPC|Add0~11\ = CARRY((!\RegPC|Add0~9\) # (!\RegPC|data_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(5),
	datad => VCC,
	cin => \RegPC|Add0~9\,
	combout => \RegPC|Add0~10_combout\,
	cout => \RegPC|Add0~11\);

-- Location: LCCOMB_X7_Y15_N30
\RegPC|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~42_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~10_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa[5]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Add0~10_combout\,
	datab => \RegPC|Equal0~0_combout\,
	datad => \upa|Yupa[5]~15_combout\,
	combout => \RegPC|Add0~42_combout\);

-- Location: FF_X7_Y15_N31
\RegPC|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~42_combout\,
	clrn => \RESET~input_o\,
	ena => \inst1|inst3|PC[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(5));

-- Location: FF_X7_Y15_N25
\dir|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3|nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(5),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(5));

-- Location: FF_X7_Y15_N29
\dir|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3|nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(3),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(3));

-- Location: LCCOMB_X7_Y15_N20
\inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\dir|valor_interno\(4)) # ((\dir|valor_interno\(3)) # (\dir|valor_interno\(2) $ (\dir|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(2),
	datab => \dir|valor_interno\(0),
	datac => \dir|valor_interno\(4),
	datad => \dir|valor_interno\(3),
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X6_Y15_N12
\RegPC|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~12_combout\ = (\RegPC|data_out\(6) & (\RegPC|Add0~11\ $ (GND))) # (!\RegPC|data_out\(6) & (!\RegPC|Add0~11\ & VCC))
-- \RegPC|Add0~13\ = CARRY((\RegPC|data_out\(6) & !\RegPC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(6),
	datad => VCC,
	cin => \RegPC|Add0~11\,
	combout => \RegPC|Add0~12_combout\,
	cout => \RegPC|Add0~13\);

-- Location: LCCOMB_X7_Y15_N8
\RegPC|Add0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~41_combout\ = (\RegPC|Equal0~0_combout\ & ((\RegPC|Add0~12_combout\))) # (!\RegPC|Equal0~0_combout\ & (\upa|Yupa[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|Equal0~0_combout\,
	datac => \upa|Yupa[6]~12_combout\,
	datad => \RegPC|Add0~12_combout\,
	combout => \RegPC|Add0~41_combout\);

-- Location: FF_X7_Y15_N9
\RegPC|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~41_combout\,
	clrn => \RESET~input_o\,
	ena => \inst1|inst3|PC[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(6));

-- Location: FF_X7_Y15_N19
\dir|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3|nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(6),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(6));

-- Location: LCCOMB_X6_Y15_N14
\RegPC|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~14_combout\ = (\RegPC|data_out\(7) & (!\RegPC|Add0~13\)) # (!\RegPC|data_out\(7) & ((\RegPC|Add0~13\) # (GND)))
-- \RegPC|Add0~15\ = CARRY((!\RegPC|Add0~13\) # (!\RegPC|data_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(7),
	datad => VCC,
	cin => \RegPC|Add0~13\,
	combout => \RegPC|Add0~14_combout\,
	cout => \RegPC|Add0~15\);

-- Location: LCCOMB_X7_Y15_N6
\RegPC|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~40_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~14_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Add0~14_combout\,
	datab => \RegPC|Equal0~0_combout\,
	datad => \upa|Yupa[7]~10_combout\,
	combout => \RegPC|Add0~40_combout\);

-- Location: FF_X7_Y15_N7
\RegPC|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~40_combout\,
	clrn => \RESET~input_o\,
	ena => \inst1|inst3|PC[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(7));

-- Location: LCCOMB_X7_Y15_N16
\dir|valor_interno[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dir|valor_interno[7]~feeder_combout\ = \RegPC|data_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegPC|data_out\(7),
	combout => \dir|valor_interno[7]~feeder_combout\);

-- Location: FF_X7_Y15_N17
\dir|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3|nCBD~clkctrl_outclk\,
	d => \dir|valor_interno[7]~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(7));

-- Location: LCCOMB_X7_Y15_N18
\inst|data_out[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data_out[2]~3_combout\ = (!\dir|valor_interno\(5) & (!\inst|Mux5~0_combout\ & (!\dir|valor_interno\(6) & !\dir|valor_interno\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(5),
	datab => \inst|Mux5~0_combout\,
	datac => \dir|valor_interno\(6),
	datad => \dir|valor_interno\(7),
	combout => \inst|data_out[2]~3_combout\);

-- Location: LCCOMB_X8_Y15_N12
\upa|Yupa[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[2]~24_combout\ = (\inst1|inst3|nDUPA~4_combout\ & (((\inst1|inst3|nAS~0_combout\) # (\inst|data_out[2]~3_combout\)))) # (!\inst1|inst3|nDUPA~4_combout\ & (\upa|Yupa_interno\(2) & ((\inst1|inst3|nAS~0_combout\) # (\inst|data_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|nDUPA~4_combout\,
	datab => \upa|Yupa_interno\(2),
	datac => \inst1|inst3|nAS~0_combout\,
	datad => \inst|data_out[2]~3_combout\,
	combout => \upa|Yupa[2]~24_combout\);

-- Location: LCCOMB_X8_Y15_N22
\upa|Yupa[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[2]~25_combout\ = (\upa|Yupa[2]~24_combout\ & ((\AcumuladorB|data_out\(2)) # (!\AcumuladorB|TRI_STATE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AcumuladorB|TRI_STATE~0_combout\,
	datac => \AcumuladorB|data_out\(2),
	datad => \upa|Yupa[2]~24_combout\,
	combout => \upa|Yupa[2]~25_combout\);

-- Location: LCCOMB_X8_Y18_N0
\RegAux|data_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out[2]~feeder_combout\ = \upa|Yupa[2]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Yupa[2]~26_combout\,
	combout => \RegAux|data_out[2]~feeder_combout\);

-- Location: FF_X8_Y18_N1
\RegAux|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out[2]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst1|inst3|RA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(2));

-- Location: LCCOMB_X8_Y15_N6
\upa|Yupa[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[2]~23_combout\ = (\RegAux|TRI_STATE_D~2_combout\ & (\RegAux|data_out\(2) & ((\AcumuladorA|data_out\(2)) # (!\AcumuladorA|Equal0~0_combout\)))) # (!\RegAux|TRI_STATE_D~2_combout\ & (((\AcumuladorA|data_out\(2)) # 
-- (!\AcumuladorA|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|TRI_STATE_D~2_combout\,
	datab => \RegAux|data_out\(2),
	datac => \AcumuladorA|data_out\(2),
	datad => \AcumuladorA|Equal0~0_combout\,
	combout => \upa|Yupa[2]~23_combout\);

-- Location: LCCOMB_X8_Y15_N8
\upa|Yupa[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[2]~26_combout\ = ((\upa|Yupa[2]~25_combout\ & \upa|Yupa[2]~23_combout\)) # (!\upa|Yupa[7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[2]~25_combout\,
	datab => \upa|Yupa[2]~23_combout\,
	datad => \upa|Yupa[7]~9_combout\,
	combout => \upa|Yupa[2]~26_combout\);

-- Location: FF_X8_Y15_N9
\AcumuladorB|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa[2]~26_combout\,
	ena => \AcumuladorB|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(2));

-- Location: LCCOMB_X12_Y16_N10
\upa|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux30~0_combout\ = (\inst1|inst|Equal11~3_combout\ & (\AcumuladorB|data_out\(2) & (\inst1|inst3|EB[0]~0_combout\ & \inst1|inst|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal11~3_combout\,
	datab => \AcumuladorB|data_out\(2),
	datac => \inst1|inst3|EB[0]~0_combout\,
	datad => \inst1|inst|Equal8~0_combout\,
	combout => \upa|Mux30~0_combout\);

-- Location: LCCOMB_X11_Y15_N12
\upa|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~8_combout\ = ((\upa|Mux31~0_combout\ $ (\AcumuladorA|C[3]~4_combout\ $ (!\upa|Add0~7\)))) # (GND)
-- \upa|Add0~9\ = CARRY((\upa|Mux31~0_combout\ & ((\AcumuladorA|C[3]~4_combout\) # (!\upa|Add0~7\))) # (!\upa|Mux31~0_combout\ & (\AcumuladorA|C[3]~4_combout\ & !\upa|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux31~0_combout\,
	datab => \AcumuladorA|C[3]~4_combout\,
	datad => VCC,
	cin => \upa|Add0~7\,
	combout => \upa|Add0~8_combout\,
	cout => \upa|Add0~9\);

-- Location: FF_X11_Y15_N13
\upa|Yupa_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~8_combout\,
	ena => \inst1|inst3|nDUPA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(3));

-- Location: LCCOMB_X9_Y16_N22
\upa|Yupa[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[3]~20_combout\ = (\inst|data_out[0]~2_combout\ & (((\inst1|inst3|nDUPA~4_combout\) # (\upa|Yupa_interno\(3))))) # (!\inst|data_out[0]~2_combout\ & (\inst1|inst3|nAS~0_combout\ & ((\inst1|inst3|nDUPA~4_combout\) # (\upa|Yupa_interno\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_out[0]~2_combout\,
	datab => \inst1|inst3|nAS~0_combout\,
	datac => \inst1|inst3|nDUPA~4_combout\,
	datad => \upa|Yupa_interno\(3),
	combout => \upa|Yupa[3]~20_combout\);

-- Location: LCCOMB_X9_Y16_N12
\upa|Yupa[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[3]~21_combout\ = (\upa|Yupa[3]~20_combout\ & ((\AcumuladorB|data_out\(3)) # (!\AcumuladorB|TRI_STATE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(3),
	datab => \AcumuladorB|TRI_STATE~0_combout\,
	datac => \upa|Yupa[3]~20_combout\,
	combout => \upa|Yupa[3]~21_combout\);

-- Location: LCCOMB_X8_Y18_N10
\RegAux|data_out[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out[3]~feeder_combout\ = \upa|Yupa[3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \upa|Yupa[3]~22_combout\,
	combout => \RegAux|data_out[3]~feeder_combout\);

-- Location: FF_X8_Y18_N11
\RegAux|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out[3]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst1|inst3|RA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(3));

-- Location: LCCOMB_X9_Y16_N16
\upa|Yupa[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[3]~19_combout\ = (\RegAux|data_out\(3) & (((\AcumuladorA|data_out\(3)) # (!\AcumuladorA|Equal0~0_combout\)))) # (!\RegAux|data_out\(3) & (!\RegAux|TRI_STATE_D~2_combout\ & ((\AcumuladorA|data_out\(3)) # (!\AcumuladorA|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(3),
	datab => \RegAux|TRI_STATE_D~2_combout\,
	datac => \AcumuladorA|Equal0~0_combout\,
	datad => \AcumuladorA|data_out\(3),
	combout => \upa|Yupa[3]~19_combout\);

-- Location: LCCOMB_X9_Y16_N26
\upa|Yupa[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[3]~22_combout\ = ((\upa|Yupa[3]~21_combout\ & \upa|Yupa[3]~19_combout\)) # (!\upa|Yupa[7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[3]~21_combout\,
	datab => \upa|Yupa[3]~19_combout\,
	datad => \upa|Yupa[7]~9_combout\,
	combout => \upa|Yupa[3]~22_combout\);

-- Location: FF_X9_Y16_N27
\AcumuladorB|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa[3]~22_combout\,
	ena => \AcumuladorB|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(3));

-- Location: LCCOMB_X12_Y16_N0
\upa|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux31~0_combout\ = (\inst1|inst|Equal11~3_combout\ & (\AcumuladorB|data_out\(3) & (\inst1|inst3|EB[0]~0_combout\ & \inst1|inst|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal11~3_combout\,
	datab => \AcumuladorB|data_out\(3),
	datac => \inst1|inst3|EB[0]~0_combout\,
	datad => \inst1|inst|Equal8~0_combout\,
	combout => \upa|Mux31~0_combout\);

-- Location: LCCOMB_X11_Y15_N14
\upa|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~10_combout\ = (\upa|Mux32~0_combout\ & ((\AcumuladorA|C[4]~3_combout\ & (\upa|Add0~9\ & VCC)) # (!\AcumuladorA|C[4]~3_combout\ & (!\upa|Add0~9\)))) # (!\upa|Mux32~0_combout\ & ((\AcumuladorA|C[4]~3_combout\ & (!\upa|Add0~9\)) # 
-- (!\AcumuladorA|C[4]~3_combout\ & ((\upa|Add0~9\) # (GND)))))
-- \upa|Add0~11\ = CARRY((\upa|Mux32~0_combout\ & (!\AcumuladorA|C[4]~3_combout\ & !\upa|Add0~9\)) # (!\upa|Mux32~0_combout\ & ((!\upa|Add0~9\) # (!\AcumuladorA|C[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux32~0_combout\,
	datab => \AcumuladorA|C[4]~3_combout\,
	datad => VCC,
	cin => \upa|Add0~9\,
	combout => \upa|Add0~10_combout\,
	cout => \upa|Add0~11\);

-- Location: LCCOMB_X11_Y15_N16
\upa|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~12_combout\ = ((\upa|Mux33~0_combout\ $ (\AcumuladorA|C[5]~2_combout\ $ (!\upa|Add0~11\)))) # (GND)
-- \upa|Add0~13\ = CARRY((\upa|Mux33~0_combout\ & ((\AcumuladorA|C[5]~2_combout\) # (!\upa|Add0~11\))) # (!\upa|Mux33~0_combout\ & (\AcumuladorA|C[5]~2_combout\ & !\upa|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux33~0_combout\,
	datab => \AcumuladorA|C[5]~2_combout\,
	datad => VCC,
	cin => \upa|Add0~11\,
	combout => \upa|Add0~12_combout\,
	cout => \upa|Add0~13\);

-- Location: LCCOMB_X11_Y15_N18
\upa|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~14_combout\ = (\upa|Mux34~0_combout\ & ((\AcumuladorA|C[6]~1_combout\ & (\upa|Add0~13\ & VCC)) # (!\AcumuladorA|C[6]~1_combout\ & (!\upa|Add0~13\)))) # (!\upa|Mux34~0_combout\ & ((\AcumuladorA|C[6]~1_combout\ & (!\upa|Add0~13\)) # 
-- (!\AcumuladorA|C[6]~1_combout\ & ((\upa|Add0~13\) # (GND)))))
-- \upa|Add0~15\ = CARRY((\upa|Mux34~0_combout\ & (!\AcumuladorA|C[6]~1_combout\ & !\upa|Add0~13\)) # (!\upa|Mux34~0_combout\ & ((!\upa|Add0~13\) # (!\AcumuladorA|C[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux34~0_combout\,
	datab => \AcumuladorA|C[6]~1_combout\,
	datad => VCC,
	cin => \upa|Add0~13\,
	combout => \upa|Add0~14_combout\,
	cout => \upa|Add0~15\);

-- Location: LCCOMB_X11_Y15_N20
\upa|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~16_combout\ = ((\AcumuladorA|C[7]~0_combout\ $ (\upa|Mux35~0_combout\ $ (!\upa|Add0~15\)))) # (GND)
-- \upa|Add0~17\ = CARRY((\AcumuladorA|C[7]~0_combout\ & ((\upa|Mux35~0_combout\) # (!\upa|Add0~15\))) # (!\AcumuladorA|C[7]~0_combout\ & (\upa|Mux35~0_combout\ & !\upa|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[7]~0_combout\,
	datab => \upa|Mux35~0_combout\,
	datad => VCC,
	cin => \upa|Add0~15\,
	combout => \upa|Add0~16_combout\,
	cout => \upa|Add0~17\);

-- Location: FF_X11_Y15_N21
\upa|Banderas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \upa|Add0~16_combout\,
	ena => \inst1|inst3|nDUPA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Banderas\(2));

-- Location: LCCOMB_X7_Y15_N28
\inst|data_out[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data_out[7]~1_combout\ = (!\dir|valor_interno\(2) & (!\dir|valor_interno\(0) & (!\dir|valor_interno\(3) & \inst|data_out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(2),
	datab => \dir|valor_interno\(0),
	datac => \dir|valor_interno\(3),
	datad => \inst|data_out[0]~0_combout\,
	combout => \inst|data_out[7]~1_combout\);

-- Location: LCCOMB_X9_Y16_N8
\upa|Yupa[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~5_combout\ = (\upa|Banderas\(2) & ((\inst1|inst3|nAS~0_combout\) # ((\inst|data_out[7]~1_combout\)))) # (!\upa|Banderas\(2) & (\inst1|inst3|nDUPA~4_combout\ & ((\inst1|inst3|nAS~0_combout\) # (\inst|data_out[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Banderas\(2),
	datab => \inst1|inst3|nAS~0_combout\,
	datac => \inst1|inst3|nDUPA~4_combout\,
	datad => \inst|data_out[7]~1_combout\,
	combout => \upa|Yupa[7]~5_combout\);

-- Location: LCCOMB_X9_Y16_N2
\upa|Yupa[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~6_combout\ = (\upa|Yupa[7]~5_combout\ & ((\AcumuladorB|data_out\(7)) # (!\AcumuladorB|TRI_STATE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(7),
	datab => \upa|Yupa[7]~5_combout\,
	datac => \AcumuladorB|TRI_STATE~0_combout\,
	combout => \upa|Yupa[7]~6_combout\);

-- Location: LCCOMB_X9_Y16_N20
\upa|Yupa[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~10_combout\ = ((\upa|Yupa[7]~4_combout\ & \upa|Yupa[7]~6_combout\)) # (!\upa|Yupa[7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[7]~4_combout\,
	datab => \upa|Yupa[7]~6_combout\,
	datad => \upa|Yupa[7]~9_combout\,
	combout => \upa|Yupa[7]~10_combout\);

-- Location: LCCOMB_X10_Y16_N14
\AcumuladorA|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[7]~0_combout\ = (\inst1|inst3|UPA[0]~5_combout\ & (\AcumuladorA|C[7]~0_combout\)) # (!\inst1|inst3|UPA[0]~5_combout\ & ((\upa|Yupa[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[7]~0_combout\,
	datac => \inst1|inst3|UPA[0]~5_combout\,
	datad => \upa|Yupa[7]~10_combout\,
	combout => \AcumuladorA|data_out[7]~0_combout\);

-- Location: FF_X10_Y16_N15
\AcumuladorA|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[7]~0_combout\,
	ena => \AcumuladorA|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(7));

-- Location: LCCOMB_X10_Y16_N6
\AcumuladorA|C[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[7]~0_combout\ = ((\AcumuladorA|data_out\(7)) # ((!\inst1|inst3|UPA[0]~5_combout\) # (!\inst1|inst3|nWA~0_combout\))) # (!\inst1|inst3|EA[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|EA[0]~4_combout\,
	datab => \AcumuladorA|data_out\(7),
	datac => \inst1|inst3|nWA~0_combout\,
	datad => \inst1|inst3|UPA[0]~5_combout\,
	combout => \AcumuladorA|C[7]~0_combout\);

-- Location: LCCOMB_X11_Y15_N22
\upa|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~18_combout\ = \upa|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \upa|Add0~17\,
	combout => \upa|Add0~18_combout\);

-- Location: FF_X11_Y15_N23
\upa|Banderas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~18_combout\,
	ena => \inst1|inst3|nDUPA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Banderas\(1));

-- Location: FF_X6_Y16_N9
\flags|tCC|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3|CC~combout\,
	asdata => \upa|Banderas\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flags|tCC|valor_interno~q\);

-- Location: LCCOMB_X11_Y15_N4
\upa|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~1_cout\ = CARRY((\flags|tCC|valor_interno~q\ & !\inst1|inst3|UPA[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flags|tCC|valor_interno~q\,
	datab => \inst1|inst3|UPA[0]~5_combout\,
	datad => VCC,
	cout => \upa|Add0~1_cout\);

-- Location: LCCOMB_X11_Y15_N6
\upa|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~2_combout\ = (\upa|Mux27~0_combout\ & ((\AcumuladorA|C[0]~7_combout\ & (\upa|Add0~1_cout\ & VCC)) # (!\AcumuladorA|C[0]~7_combout\ & (!\upa|Add0~1_cout\)))) # (!\upa|Mux27~0_combout\ & ((\AcumuladorA|C[0]~7_combout\ & (!\upa|Add0~1_cout\)) # 
-- (!\AcumuladorA|C[0]~7_combout\ & ((\upa|Add0~1_cout\) # (GND)))))
-- \upa|Add0~3\ = CARRY((\upa|Mux27~0_combout\ & (!\AcumuladorA|C[0]~7_combout\ & !\upa|Add0~1_cout\)) # (!\upa|Mux27~0_combout\ & ((!\upa|Add0~1_cout\) # (!\AcumuladorA|C[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux27~0_combout\,
	datab => \AcumuladorA|C[0]~7_combout\,
	datad => VCC,
	cin => \upa|Add0~1_cout\,
	combout => \upa|Add0~2_combout\,
	cout => \upa|Add0~3\);

-- Location: FF_X11_Y15_N9
\upa|Yupa_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~4_combout\,
	ena => \inst1|inst3|nDUPA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(1));

-- Location: LCCOMB_X9_Y15_N30
\upa|Yupa[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[1]~35_combout\ = (\inst1|inst3|nDUPA~4_combout\ & ((\AcumuladorB|data_out\(1)) # ((!\AcumuladorB|TRI_STATE~0_combout\)))) # (!\inst1|inst3|nDUPA~4_combout\ & (\upa|Yupa_interno\(1) & ((\AcumuladorB|data_out\(1)) # 
-- (!\AcumuladorB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|nDUPA~4_combout\,
	datab => \AcumuladorB|data_out\(1),
	datac => \upa|Yupa_interno\(1),
	datad => \AcumuladorB|TRI_STATE~0_combout\,
	combout => \upa|Yupa[1]~35_combout\);

-- Location: FF_X7_Y15_N1
\dir|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3|nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(1),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(1));

-- Location: LCCOMB_X7_Y15_N12
\inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\dir|valor_interno\(3)) # ((\dir|valor_interno\(1) & ((\dir|valor_interno\(0)) # (\dir|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(0),
	datab => \dir|valor_interno\(3),
	datac => \dir|valor_interno\(2),
	datad => \dir|valor_interno\(1),
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X9_Y15_N12
\upa|Yupa[1]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[1]~36_combout\ = (\upa|Yupa[1]~35_combout\ & ((\inst1|inst3|nAS~0_combout\) # ((\inst|data_out[0]~0_combout\ & !\inst|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_out[0]~0_combout\,
	datab => \upa|Yupa[1]~35_combout\,
	datac => \inst|Mux6~0_combout\,
	datad => \inst1|inst3|nAS~0_combout\,
	combout => \upa|Yupa[1]~36_combout\);

-- Location: LCCOMB_X9_Y15_N20
\upa|Yupa[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[1]~28_combout\ = ((\upa|Yupa[1]~27_combout\ & \upa|Yupa[1]~36_combout\)) # (!\upa|Yupa[7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[1]~27_combout\,
	datab => \upa|Yupa[1]~36_combout\,
	datad => \upa|Yupa[7]~9_combout\,
	combout => \upa|Yupa[1]~28_combout\);

-- Location: LCCOMB_X7_Y15_N14
\RegPC|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~46_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~2_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa[1]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|Equal0~0_combout\,
	datac => \RegPC|Add0~2_combout\,
	datad => \upa|Yupa[1]~28_combout\,
	combout => \RegPC|Add0~46_combout\);

-- Location: FF_X7_Y15_N15
\RegPC|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~46_combout\,
	clrn => \RESET~input_o\,
	ena => \inst1|inst3|PC[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(1));

-- Location: LCCOMB_X7_Y15_N26
\RegPC|Add0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~45_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~4_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|Equal0~0_combout\,
	datac => \RegPC|Add0~4_combout\,
	datad => \upa|Yupa[2]~26_combout\,
	combout => \RegPC|Add0~45_combout\);

-- Location: FF_X7_Y15_N27
\RegPC|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~45_combout\,
	clrn => \RESET~input_o\,
	ena => \inst1|inst3|PC[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(2));

-- Location: FF_X7_Y15_N13
\dir|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3|nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(2),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(2));

-- Location: LCCOMB_X7_Y15_N0
\inst|data_out[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data_out[0]~2_combout\ = (\dir|valor_interno\(2) & (!\dir|valor_interno\(3) & (!\dir|valor_interno\(1) & \inst|data_out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(2),
	datab => \dir|valor_interno\(3),
	datac => \dir|valor_interno\(1),
	datad => \inst|data_out[0]~0_combout\,
	combout => \inst|data_out[0]~2_combout\);

-- Location: FF_X11_Y15_N7
\upa|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~2_combout\,
	ena => \inst1|inst3|nDUPA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(0));

-- Location: LCCOMB_X9_Y16_N24
\upa|Yupa[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[0]~33_combout\ = (\inst1|inst3|nDUPA~4_combout\ & (((\AcumuladorB|data_out\(0))) # (!\AcumuladorB|TRI_STATE~0_combout\))) # (!\inst1|inst3|nDUPA~4_combout\ & (\upa|Q\(0) & ((\AcumuladorB|data_out\(0)) # (!\AcumuladorB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|nDUPA~4_combout\,
	datab => \AcumuladorB|TRI_STATE~0_combout\,
	datac => \AcumuladorB|data_out\(0),
	datad => \upa|Q\(0),
	combout => \upa|Yupa[0]~33_combout\);

-- Location: LCCOMB_X8_Y16_N30
\upa|Yupa[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[0]~34_combout\ = (\upa|Yupa[0]~33_combout\ & ((\inst1|inst3|nAS~0_combout\) # ((!\dir|valor_interno\(0) & \inst|data_out[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|nAS~0_combout\,
	datab => \dir|valor_interno\(0),
	datac => \inst|data_out[0]~2_combout\,
	datad => \upa|Yupa[0]~33_combout\,
	combout => \upa|Yupa[0]~34_combout\);

-- Location: FF_X9_Y16_N19
\RegAux|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa[0]~30_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst1|inst3|RA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(0));

-- Location: LCCOMB_X8_Y16_N22
\upa|Yupa[0]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[0]~29_combout\ = (\AcumuladorA|data_out\(0) & (((\RegAux|data_out\(0)) # (!\RegAux|TRI_STATE_D~2_combout\)))) # (!\AcumuladorA|data_out\(0) & (!\AcumuladorA|Equal0~0_combout\ & ((\RegAux|data_out\(0)) # (!\RegAux|TRI_STATE_D~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(0),
	datab => \AcumuladorA|Equal0~0_combout\,
	datac => \RegAux|TRI_STATE_D~2_combout\,
	datad => \RegAux|data_out\(0),
	combout => \upa|Yupa[0]~29_combout\);

-- Location: LCCOMB_X8_Y16_N16
\upa|Yupa[0]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[0]~30_combout\ = ((\upa|Yupa[0]~34_combout\ & \upa|Yupa[0]~29_combout\)) # (!\upa|Yupa[7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upa|Yupa[7]~9_combout\,
	datac => \upa|Yupa[0]~34_combout\,
	datad => \upa|Yupa[0]~29_combout\,
	combout => \upa|Yupa[0]~30_combout\);

-- Location: LCCOMB_X7_Y15_N22
\RegPC|Add0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~47_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~0_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa[0]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|Equal0~0_combout\,
	datac => \RegPC|Add0~0_combout\,
	datad => \upa|Yupa[0]~30_combout\,
	combout => \RegPC|Add0~47_combout\);

-- Location: FF_X7_Y15_N23
\RegPC|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~47_combout\,
	clrn => \RESET~input_o\,
	ena => \inst1|inst3|PC[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(0));

-- Location: FF_X7_Y15_N11
\dir|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3|nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(0),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(0));

-- Location: FF_X11_Y15_N17
\upa|Yupa_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~12_combout\,
	ena => \inst1|inst3|nDUPA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(5));

-- Location: LCCOMB_X10_Y16_N18
\upa|Yupa2[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[5]~12_combout\ = (\upa|Yupa_interno\(5)) # (\inst1|inst3|nDUPA~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \upa|Yupa_interno\(5),
	datad => \inst1|inst3|nDUPA~4_combout\,
	combout => \upa|Yupa2[5]~12_combout\);

-- Location: LCCOMB_X10_Y16_N10
\upa|Yupa[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[5]~14_combout\ = (\upa|Yupa2[5]~12_combout\ & ((\inst1|inst3|nAS~0_combout\) # ((\dir|valor_interno\(0) & \inst|data_out[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(0),
	datab => \inst|data_out[0]~2_combout\,
	datac => \inst1|inst3|nAS~0_combout\,
	datad => \upa|Yupa2[5]~12_combout\,
	combout => \upa|Yupa[5]~14_combout\);

-- Location: LCCOMB_X4_Y16_N30
\upa|Yupa[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[5]~15_combout\ = ((\upa|Yupa[5]~31_combout\ & (\upa|Yupa[5]~13_combout\ & \upa|Yupa[5]~14_combout\))) # (!\upa|Yupa[7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[5]~31_combout\,
	datab => \upa|Yupa[5]~13_combout\,
	datac => \upa|Yupa[7]~9_combout\,
	datad => \upa|Yupa[5]~14_combout\,
	combout => \upa|Yupa[5]~15_combout\);

-- Location: FF_X4_Y16_N25
\inst11|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3|nCRI~clkctrl_outclk\,
	asdata => \upa|Yupa[5]~15_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(9));

-- Location: LCCOMB_X4_Y16_N24
\inst1|inst8[9]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst8[9]~2_combout\ = (!\inst1|inst3|instruccion\(0) & ((\inst11|valor_interno\(9)) # (!\inst1|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|instruccion\(1),
	datac => \inst11|valor_interno\(9),
	datad => \inst1|inst3|instruccion\(0),
	combout => \inst1|inst8[9]~2_combout\);

-- Location: FF_X4_Y16_N17
\inst1|inst2|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|inst2|valor_interno[9]~27_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|valor_interno\(9));

-- Location: LCCOMB_X4_Y16_N22
\inst1|inst5|$00000|auto_generated|result_node[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|$00000|auto_generated|result_node[9]~9_combout\ = (\inst1|inst1|SELECTOR~0_combout\ & (\inst1|inst8[9]~2_combout\)) # (!\inst1|inst1|SELECTOR~0_combout\ & ((\inst1|inst2|valor_interno\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst8[9]~2_combout\,
	datac => \inst1|inst1|SELECTOR~0_combout\,
	datad => \inst1|inst2|valor_interno\(9),
	combout => \inst1|inst5|$00000|auto_generated|result_node[9]~9_combout\);

-- Location: LCCOMB_X3_Y16_N20
\inst1|inst|Equal14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal14~1_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\ & (\inst1|inst5|$00000|auto_generated|result_node[9]~9_combout\ & (\inst1|inst5|$00000|auto_generated|result_node[7]~7_combout\ & 
-- \inst1|inst5|$00000|auto_generated|result_node[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	combout => \inst1|inst|Equal14~1_combout\);

-- Location: LCCOMB_X3_Y16_N10
\inst1|inst|Equal14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal14~2_combout\ = (\inst1|inst|Equal14~1_combout\ & (\inst1|inst|Equal14~0_combout\ & (!\inst1|inst5|$00000|auto_generated|result_node[2]~2_combout\ & !\inst1|inst5|$00000|auto_generated|result_node[11]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal14~1_combout\,
	datab => \inst1|inst|Equal14~0_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	combout => \inst1|inst|Equal14~2_combout\);

-- Location: LCCOMB_X3_Y16_N0
\inst1|inst|data[27]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|data[27]~15_combout\ = (\inst1|inst|Equal14~2_combout\ & (\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & ((\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\) # (!\inst1|inst|Equal3~1_combout\)))) # 
-- (!\inst1|inst|Equal14~2_combout\ & (((\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\)) # (!\inst1|inst|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal14~2_combout\,
	datab => \inst1|inst|Equal3~1_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst1|inst|data[27]~15_combout\);

-- Location: LCCOMB_X6_Y17_N4
\inst1|inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal0~0_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\) # ((\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\) # (!\inst1|inst|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst1|inst|Equal2~1_combout\,
	combout => \inst1|inst|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y16_N12
\inst1|inst|Equal19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal19~0_combout\ = (\inst1|inst|Equal14~3_combout\ & (\inst1|inst5|$00000|auto_generated|result_node[2]~2_combout\ & (!\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & 
-- \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal14~3_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst1|inst|Equal19~0_combout\);

-- Location: LCCOMB_X3_Y16_N18
\inst1|inst|data~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|data~19_combout\ = ((!\inst1|inst|Equal4~0_combout\ & ((\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\) # (!\inst1|inst|Equal11~2_combout\)))) # (!\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal11~2_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst1|inst|Equal4~0_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst1|inst|data~19_combout\);

-- Location: LCCOMB_X6_Y16_N0
\inst1|inst|data[27]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|data[27]~12_combout\ = (\inst1|inst|data~19_combout\ & ((\inst1|inst|Equal18~0_combout\) # ((!\inst1|inst|data[86]~20_combout\) # (!\inst1|inst|Equal19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal18~0_combout\,
	datab => \inst1|inst|Equal19~0_combout\,
	datac => \inst1|inst|data~19_combout\,
	datad => \inst1|inst|data[86]~20_combout\,
	combout => \inst1|inst|data[27]~12_combout\);

-- Location: LCCOMB_X6_Y17_N26
\inst1|inst3|nCBD\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|nCBD~combout\ = LCELL(((\inst1|inst|data[27]~15_combout\ & (\inst1|inst|Equal0~0_combout\ & \inst1|inst|data[27]~12_combout\))) # (!\RESET~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data[27]~15_combout\,
	datab => \RESET~input_o\,
	datac => \inst1|inst|Equal0~0_combout\,
	datad => \inst1|inst|data[27]~12_combout\,
	combout => \inst1|inst3|nCBD~combout\);

-- Location: CLKCTRL_G2
\inst1|inst3|nCBD~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|inst3|nCBD~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|inst3|nCBD~clkctrl_outclk\);

-- Location: FF_X7_Y15_N21
\dir|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3|nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(4),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(4));

-- Location: LCCOMB_X7_Y15_N24
\inst|data_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data_out[0]~0_combout\ = (!\dir|valor_interno\(4) & (!\dir|valor_interno\(6) & (!\dir|valor_interno\(5) & !\dir|valor_interno\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(4),
	datab => \dir|valor_interno\(6),
	datac => \dir|valor_interno\(5),
	datad => \dir|valor_interno\(7),
	combout => \inst|data_out[0]~0_combout\);

-- Location: FF_X11_Y15_N19
\upa|Yupa_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~14_combout\,
	ena => \inst1|inst3|nDUPA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(6));

-- Location: LCCOMB_X8_Y15_N16
\upa|Yupa[6]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[6]~37_combout\ = (\AcumuladorB|data_out\(6) & ((\upa|Yupa_interno\(6)) # ((\inst1|inst3|nDUPA~4_combout\)))) # (!\AcumuladorB|data_out\(6) & (!\AcumuladorB|TRI_STATE~0_combout\ & ((\upa|Yupa_interno\(6)) # (\inst1|inst3|nDUPA~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(6),
	datab => \upa|Yupa_interno\(6),
	datac => \AcumuladorB|TRI_STATE~0_combout\,
	datad => \inst1|inst3|nDUPA~4_combout\,
	combout => \upa|Yupa[6]~37_combout\);

-- Location: LCCOMB_X7_Y15_N10
\inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\dir|valor_interno\(1)) # ((\dir|valor_interno\(3)) # (\dir|valor_interno\(2) $ (\dir|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(2),
	datab => \dir|valor_interno\(1),
	datac => \dir|valor_interno\(0),
	datad => \dir|valor_interno\(3),
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X8_Y15_N14
\upa|Yupa[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[6]~38_combout\ = (\upa|Yupa[6]~37_combout\ & ((\inst1|inst3|nAS~0_combout\) # ((\inst|data_out[0]~0_combout\ & !\inst|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_out[0]~0_combout\,
	datab => \inst1|inst3|nAS~0_combout\,
	datac => \upa|Yupa[6]~37_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \upa|Yupa[6]~38_combout\);

-- Location: LCCOMB_X8_Y18_N30
\RegAux|data_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out[6]~feeder_combout\ = \upa|Yupa[6]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \upa|Yupa[6]~12_combout\,
	combout => \RegAux|data_out[6]~feeder_combout\);

-- Location: FF_X8_Y18_N31
\RegAux|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out[6]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst1|inst3|RA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(6));

-- Location: LCCOMB_X8_Y15_N26
\upa|Yupa[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[6]~11_combout\ = (\AcumuladorA|data_out\(6) & ((\RegAux|data_out\(6)) # ((!\RegAux|TRI_STATE_D~2_combout\)))) # (!\AcumuladorA|data_out\(6) & (!\AcumuladorA|Equal0~0_combout\ & ((\RegAux|data_out\(6)) # (!\RegAux|TRI_STATE_D~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(6),
	datab => \RegAux|data_out\(6),
	datac => \RegAux|TRI_STATE_D~2_combout\,
	datad => \AcumuladorA|Equal0~0_combout\,
	combout => \upa|Yupa[6]~11_combout\);

-- Location: LCCOMB_X8_Y15_N30
\upa|Yupa[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[6]~12_combout\ = ((\upa|Yupa[6]~38_combout\ & \upa|Yupa[6]~11_combout\)) # (!\upa|Yupa[7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[6]~38_combout\,
	datab => \upa|Yupa[6]~11_combout\,
	datac => \upa|Yupa[7]~9_combout\,
	combout => \upa|Yupa[6]~12_combout\);

-- Location: FF_X4_Y16_N27
\inst11|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3|nCRI~clkctrl_outclk\,
	asdata => \upa|Yupa[6]~12_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(10));

-- Location: LCCOMB_X4_Y16_N26
\inst1|inst8[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst8[10]~1_combout\ = (!\inst1|inst3|instruccion\(0) & ((\inst11|valor_interno\(10)) # (!\inst1|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|instruccion\(1),
	datac => \inst11|valor_interno\(10),
	datad => \inst1|inst3|instruccion\(0),
	combout => \inst1|inst8[10]~1_combout\);

-- Location: FF_X4_Y16_N19
\inst1|inst2|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|inst2|valor_interno[10]~29_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|valor_interno\(10));

-- Location: LCCOMB_X4_Y16_N28
\inst1|inst5|$00000|auto_generated|result_node[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\ = (\inst1|inst1|SELECTOR~0_combout\ & (\inst1|inst8[10]~1_combout\)) # (!\inst1|inst1|SELECTOR~0_combout\ & ((\inst1|inst2|valor_interno\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|SELECTOR~0_combout\,
	datac => \inst1|inst8[10]~1_combout\,
	datad => \inst1|inst2|valor_interno\(10),
	combout => \inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\);

-- Location: LCCOMB_X7_Y16_N14
\inst1|inst3|PC[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|PC[0]~0_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & ((\inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\) # ((!\inst1|inst|Equal4~0_combout\ & !\inst1|inst|Equal3~1_combout\)))) # 
-- (!\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (((!\inst1|inst|Equal3~1_combout\)) # (!\inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datac => \inst1|inst|Equal4~0_combout\,
	datad => \inst1|inst|Equal3~1_combout\,
	combout => \inst1|inst3|PC[0]~0_combout\);

-- Location: LCCOMB_X12_Y16_N4
\inst1|inst3|EB[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|EB[0]~0_combout\ = (\inst1|inst3|PC[0]~0_combout\ & (\RESET~input_o\ & (\inst1|inst3|nDUPA~5_combout\ & !\inst1|inst|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|PC[0]~0_combout\,
	datab => \RESET~input_o\,
	datac => \inst1|inst3|nDUPA~5_combout\,
	datad => \inst1|inst|Equal4~1_combout\,
	combout => \inst1|inst3|EB[0]~0_combout\);

-- Location: LCCOMB_X9_Y15_N0
\AcumuladorB|data_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[0]~0_combout\ = (\inst1|inst3|EB[0]~0_combout\ & (!\inst1|inst|Equal8~0_combout\ & \RESET~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|EB[0]~0_combout\,
	datac => \inst1|inst|Equal8~0_combout\,
	datad => \RESET~input_o\,
	combout => \AcumuladorB|data_out[0]~0_combout\);

-- Location: FF_X13_Y16_N25
\AcumuladorB|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa[4]~18_combout\,
	ena => \AcumuladorB|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(4));

-- Location: LCCOMB_X13_Y16_N20
\upa|Yupa[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[4]~32_combout\ = (\AcumuladorB|data_out\(4)) # (((\inst1|inst|Equal8~0_combout\) # (\RESET~input_o\)) # (!\inst1|inst3|EB[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(4),
	datab => \inst1|inst3|EB[0]~0_combout\,
	datac => \inst1|inst|Equal8~0_combout\,
	datad => \RESET~input_o\,
	combout => \upa|Yupa[4]~32_combout\);

-- Location: FF_X11_Y15_N15
\upa|Banderas[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~10_combout\,
	ena => \inst1|inst3|nDUPA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Banderas\(4));

-- Location: LCCOMB_X13_Y16_N28
\upa|Yupa[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[4]~17_combout\ = (\inst|data_out[0]~2_combout\ & ((\inst1|inst3|nDUPA~4_combout\) # ((\upa|Banderas\(4))))) # (!\inst|data_out[0]~2_combout\ & (\inst1|inst3|nAS~0_combout\ & ((\inst1|inst3|nDUPA~4_combout\) # (\upa|Banderas\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_out[0]~2_combout\,
	datab => \inst1|inst3|nDUPA~4_combout\,
	datac => \inst1|inst3|nAS~0_combout\,
	datad => \upa|Banderas\(4),
	combout => \upa|Yupa[4]~17_combout\);

-- Location: FF_X9_Y16_N1
\RegAux|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa[4]~18_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst1|inst3|RA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(4));

-- Location: LCCOMB_X13_Y16_N6
\upa|Yupa[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[4]~16_combout\ = (\AcumuladorA|data_out\(4) & ((\RegAux|data_out\(4)) # ((!\RegAux|TRI_STATE_D~2_combout\)))) # (!\AcumuladorA|data_out\(4) & (!\AcumuladorA|Equal0~0_combout\ & ((\RegAux|data_out\(4)) # (!\RegAux|TRI_STATE_D~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(4),
	datab => \RegAux|data_out\(4),
	datac => \AcumuladorA|Equal0~0_combout\,
	datad => \RegAux|TRI_STATE_D~2_combout\,
	combout => \upa|Yupa[4]~16_combout\);

-- Location: LCCOMB_X13_Y16_N24
\upa|Yupa[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[4]~18_combout\ = ((\upa|Yupa[4]~32_combout\ & (\upa|Yupa[4]~17_combout\ & \upa|Yupa[4]~16_combout\))) # (!\upa|Yupa[7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[4]~32_combout\,
	datab => \upa|Yupa[4]~17_combout\,
	datac => \upa|Yupa[4]~16_combout\,
	datad => \upa|Yupa[7]~9_combout\,
	combout => \upa|Yupa[4]~18_combout\);

-- Location: FF_X8_Y16_N25
\inst11|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3|nCRI~clkctrl_outclk\,
	asdata => \upa|Yupa[4]~18_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(8));

-- Location: LCCOMB_X8_Y16_N24
\inst1|inst8[8]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst8[8]~3_combout\ = (!\inst1|inst3|instruccion\(0) & ((\inst11|valor_interno\(8)) # (!\inst1|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|instruccion\(0),
	datac => \inst11|valor_interno\(8),
	datad => \inst1|inst3|instruccion\(1),
	combout => \inst1|inst8[8]~3_combout\);

-- Location: LCCOMB_X8_Y16_N26
\inst1|inst5|$00000|auto_generated|result_node[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|$00000|auto_generated|result_node[8]~8_combout\ = (\inst1|inst1|SELECTOR~0_combout\ & ((\inst1|inst8[8]~3_combout\))) # (!\inst1|inst1|SELECTOR~0_combout\ & (\inst1|inst2|valor_interno\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|SELECTOR~0_combout\,
	datac => \inst1|inst2|valor_interno\(8),
	datad => \inst1|inst8[8]~3_combout\,
	combout => \inst1|inst5|$00000|auto_generated|result_node[8]~8_combout\);

-- Location: LCCOMB_X8_Y16_N4
\inst1|inst|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal2~0_combout\ = (!\inst1|inst5|$00000|auto_generated|result_node[4]~4_combout\ & (!\inst1|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (!\inst1|inst5|$00000|auto_generated|result_node[8]~8_combout\ & 
-- !\inst1|inst5|$00000|auto_generated|result_node[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[4]~4_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \inst1|inst|Equal2~0_combout\);

-- Location: LCCOMB_X7_Y16_N24
\inst1|inst|Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal11~0_combout\ = (!\inst1|inst5|$00000|auto_generated|result_node[3]~3_combout\ & (!\inst1|inst5|$00000|auto_generated|result_node[6]~6_combout\ & (!\inst1|inst5|$00000|auto_generated|result_node[9]~9_combout\ & 
-- !\inst1|inst5|$00000|auto_generated|result_node[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \inst1|inst|Equal11~0_combout\);

-- Location: LCCOMB_X7_Y16_N18
\inst1|inst|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal2~1_combout\ = (\inst1|inst|Equal2~0_combout\ & (!\inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\ & (!\inst1|inst5|$00000|auto_generated|result_node[11]~11_combout\ & \inst1|inst|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal2~0_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	datad => \inst1|inst|Equal11~0_combout\,
	combout => \inst1|inst|Equal2~1_combout\);

-- Location: LCCOMB_X7_Y18_N26
\inst1|inst3|nCRI\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|nCRI~combout\ = LCELL(((\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\) # ((!\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\) # (!\RESET~input_o\))) # (!\inst1|inst|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal2~1_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \RESET~input_o\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst1|inst3|nCRI~combout\);

-- Location: CLKCTRL_G0
\inst1|inst3|nCRI~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|inst3|nCRI~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|inst3|nCRI~clkctrl_outclk\);

-- Location: FF_X8_Y16_N3
\inst11|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3|nCRI~clkctrl_outclk\,
	asdata => \upa|Yupa[0]~30_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(4));

-- Location: LCCOMB_X8_Y16_N2
\inst1|inst8[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst8[4]~7_combout\ = (!\inst1|inst3|instruccion\(0) & ((\inst11|valor_interno\(4)) # (!\inst1|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|instruccion\(0),
	datac => \inst11|valor_interno\(4),
	datad => \inst1|inst3|instruccion\(1),
	combout => \inst1|inst8[4]~7_combout\);

-- Location: LCCOMB_X8_Y16_N6
\inst1|inst5|$00000|auto_generated|result_node[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|$00000|auto_generated|result_node[4]~4_combout\ = (\inst1|inst1|SELECTOR~0_combout\ & ((\inst1|inst8[4]~7_combout\))) # (!\inst1|inst1|SELECTOR~0_combout\ & (\inst1|inst2|valor_interno\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|SELECTOR~0_combout\,
	datac => \inst1|inst2|valor_interno\(4),
	datad => \inst1|inst8[4]~7_combout\,
	combout => \inst1|inst5|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X4_Y16_N8
\inst1|inst2|valor_interno[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst2|valor_interno[5]~19_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[5]~5_combout\ & (\inst1|inst2|valor_interno[4]~18\ $ (GND))) # (!\inst1|inst5|$00000|auto_generated|result_node[5]~5_combout\ & (!\inst1|inst2|valor_interno[4]~18\ 
-- & VCC))
-- \inst1|inst2|valor_interno[5]~20\ = CARRY((\inst1|inst5|$00000|auto_generated|result_node[5]~5_combout\ & !\inst1|inst2|valor_interno[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|$00000|auto_generated|result_node[5]~5_combout\,
	datad => VCC,
	cin => \inst1|inst2|valor_interno[4]~18\,
	combout => \inst1|inst2|valor_interno[5]~19_combout\,
	cout => \inst1|inst2|valor_interno[5]~20\);

-- Location: FF_X4_Y16_N9
\inst1|inst2|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|inst2|valor_interno[5]~19_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|valor_interno\(5));

-- Location: FF_X8_Y16_N19
\inst11|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3|nCRI~clkctrl_outclk\,
	asdata => \upa|Yupa[1]~28_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(5));

-- Location: LCCOMB_X8_Y16_N18
\inst1|inst8[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst8[5]~6_combout\ = (!\inst1|inst3|instruccion\(0) & ((\inst11|valor_interno\(5)) # (!\inst1|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|instruccion\(0),
	datac => \inst11|valor_interno\(5),
	datad => \inst1|inst3|instruccion\(1),
	combout => \inst1|inst8[5]~6_combout\);

-- Location: LCCOMB_X8_Y16_N12
\inst1|inst5|$00000|auto_generated|result_node[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|$00000|auto_generated|result_node[5]~5_combout\ = (\inst1|inst1|SELECTOR~0_combout\ & ((\inst1|inst8[5]~6_combout\))) # (!\inst1|inst1|SELECTOR~0_combout\ & (\inst1|inst2|valor_interno\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|SELECTOR~0_combout\,
	datac => \inst1|inst2|valor_interno\(5),
	datad => \inst1|inst8[5]~6_combout\,
	combout => \inst1|inst5|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: FF_X4_Y16_N11
\inst1|inst2|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|inst2|valor_interno[6]~21_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|valor_interno\(6));

-- Location: FF_X8_Y15_N29
\inst11|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3|nCRI~clkctrl_outclk\,
	asdata => \upa|Yupa[2]~26_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(6));

-- Location: LCCOMB_X8_Y15_N28
\inst1|inst8[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst8[6]~5_combout\ = (!\inst1|inst3|instruccion\(0) & ((\inst11|valor_interno\(6)) # (!\inst1|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|instruccion\(0),
	datac => \inst11|valor_interno\(6),
	datad => \inst1|inst3|instruccion\(1),
	combout => \inst1|inst8[6]~5_combout\);

-- Location: LCCOMB_X8_Y15_N0
\inst1|inst5|$00000|auto_generated|result_node[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|$00000|auto_generated|result_node[6]~6_combout\ = (\inst1|inst1|SELECTOR~0_combout\ & ((\inst1|inst8[6]~5_combout\))) # (!\inst1|inst1|SELECTOR~0_combout\ & (\inst1|inst2|valor_interno\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|SELECTOR~0_combout\,
	datac => \inst1|inst2|valor_interno\(6),
	datad => \inst1|inst8[6]~5_combout\,
	combout => \inst1|inst5|$00000|auto_generated|result_node[6]~6_combout\);

-- Location: LCCOMB_X7_Y16_N28
\inst1|inst|Equal14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal14~0_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[6]~6_combout\ & (!\inst1|inst5|$00000|auto_generated|result_node[3]~3_combout\ & (\inst1|inst5|$00000|auto_generated|result_node[5]~5_combout\ & 
-- !\inst1|inst5|$00000|auto_generated|result_node[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[5]~5_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \inst1|inst|Equal14~0_combout\);

-- Location: LCCOMB_X8_Y16_N0
\inst1|inst|Equal14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal14~3_combout\ = (\inst1|inst|Equal14~0_combout\ & (!\inst1|inst5|$00000|auto_generated|result_node[11]~11_combout\ & \inst1|inst|Equal14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|Equal14~0_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	datad => \inst1|inst|Equal14~1_combout\,
	combout => \inst1|inst|Equal14~3_combout\);

-- Location: LCCOMB_X8_Y16_N14
\inst1|inst|Equal18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal18~0_combout\ = (!\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst1|inst|Equal14~3_combout\ & (\inst1|inst5|$00000|auto_generated|result_node[2]~2_combout\ & 
-- !\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst1|inst|Equal14~3_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst1|inst|Equal18~0_combout\);

-- Location: LCCOMB_X3_Y16_N16
\inst1|inst|data~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|data~10_combout\ = (\inst1|inst|data~18_combout\ & !\inst1|inst|Equal18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data~18_combout\,
	datab => \inst1|inst|Equal18~0_combout\,
	combout => \inst1|inst|data~10_combout\);

-- Location: LCCOMB_X2_Y16_N30
\inst1|inst|data~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|data~13_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\) # ((\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & ((!\inst1|inst|Equal2~1_combout\))) # 
-- (!\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (!\inst1|inst|Equal11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst1|inst|Equal11~2_combout\,
	datad => \inst1|inst|Equal2~1_combout\,
	combout => \inst1|inst|data~13_combout\);

-- Location: LCCOMB_X7_Y16_N12
\inst1|inst|data~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|data~14_combout\ = (\inst1|inst|data~13_combout\ & (\inst1|inst|Equal19~0_combout\ & (\inst1|inst|data~9_combout\ & !\inst1|inst|Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data~13_combout\,
	datab => \inst1|inst|Equal19~0_combout\,
	datac => \inst1|inst|data~9_combout\,
	datad => \inst1|inst|Equal17~0_combout\,
	combout => \inst1|inst|data~14_combout\);

-- Location: LCCOMB_X7_Y16_N26
\inst1|inst|data~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|data~16_combout\ = ((\inst1|inst|data~10_combout\ & (\inst1|inst|data[27]~15_combout\ & \inst1|inst|data~14_combout\))) # (!\inst1|inst|data~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data~10_combout\,
	datab => \inst1|inst|data[27]~15_combout\,
	datac => \inst1|inst|data~19_combout\,
	datad => \inst1|inst|data~14_combout\,
	combout => \inst1|inst|data~16_combout\);

-- Location: FF_X7_Y16_N21
\inst1|inst3|liga[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst1|inst|data~16_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|liga\(0));

-- Location: LCCOMB_X7_Y16_N20
\inst12[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[0]~0_combout\ = (!\inst1|inst3|instruccion\(1) & ((\inst1|inst3|liga\(0)) # (!\inst1|inst3|instruccion\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3|instruccion\(0),
	datac => \inst1|inst3|liga\(0),
	datad => \inst1|inst3|instruccion\(1),
	combout => \inst12[0]~0_combout\);

-- Location: LCCOMB_X7_Y16_N30
\inst1|inst5|$00000|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ = (\inst1|inst1|SELECTOR~0_combout\ & ((\inst12[0]~0_combout\))) # (!\inst1|inst1|SELECTOR~0_combout\ & (\inst1|inst2|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|SELECTOR~0_combout\,
	datac => \inst1|inst2|valor_interno\(0),
	datad => \inst12[0]~0_combout\,
	combout => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: FF_X4_Y16_N1
\inst1|inst2|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|inst2|valor_interno[1]~11_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|valor_interno\(1));

-- Location: LCCOMB_X6_Y16_N10
\inst1|inst5|$00000|auto_generated|result_node[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ = (\inst1|inst1|SELECTOR~0_combout\ & ((!\inst1|inst8[11]~8_combout\))) # (!\inst1|inst1|SELECTOR~0_combout\ & (\inst1|inst2|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|valor_interno\(1),
	datac => \inst1|inst8[11]~8_combout\,
	datad => \inst1|inst1|SELECTOR~0_combout\,
	combout => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X6_Y16_N22
\inst1|inst|data[87]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|data[87]~11_combout\ = (\inst1|inst|Equal2~1_combout\ & (\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & ((!\inst1|inst|data~10_combout\) # (!\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\)))) # 
-- (!\inst1|inst|Equal2~1_combout\ & (((!\inst1|inst|data~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst1|inst|Equal2~1_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst1|inst|data~10_combout\,
	combout => \inst1|inst|data[87]~11_combout\);

-- Location: FF_X6_Y16_N23
\inst1|inst3|instruccion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|inst|data[87]~11_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|instruccion\(1));

-- Location: LCCOMB_X3_Y16_N6
\RegAux|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|Equal7~0_combout\ = ((!\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\) # (!\RESET~input_o\)) # (!\inst1|inst|Equal14~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal14~2_combout\,
	datab => \RESET~input_o\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \RegAux|Equal7~0_combout\);

-- Location: LCCOMB_X3_Y16_N22
\inst1|inst|Equal15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal15~0_combout\ = (!\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & \inst1|inst|Equal14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst1|inst|Equal14~2_combout\,
	combout => \inst1|inst|Equal15~0_combout\);

-- Location: LCCOMB_X11_Y16_N4
\RegAux|TRI_STATE_C~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|TRI_STATE_C~0_combout\ = (\inst1|inst3|PC[0]~1_combout\ & (\inst1|inst3|PC[0]~3_combout\ & (\inst1|inst3|EA[0]~1_combout\ & \inst1|inst|Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|PC[0]~1_combout\,
	datab => \inst1|inst3|PC[0]~3_combout\,
	datac => \inst1|inst3|EA[0]~1_combout\,
	datad => \inst1|inst|Equal18~0_combout\,
	combout => \RegAux|TRI_STATE_C~0_combout\);

-- Location: LCCOMB_X11_Y16_N0
\RegAux|TRI_STATE_C~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|TRI_STATE_C~1_combout\ = (\RESET~input_o\ & (\RegAux|Equal7~0_combout\ & ((\inst1|inst|Equal15~0_combout\) # (\RegAux|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \RegAux|Equal7~0_combout\,
	datac => \inst1|inst|Equal15~0_combout\,
	datad => \RegAux|TRI_STATE_C~0_combout\,
	combout => \RegAux|TRI_STATE_C~1_combout\);

-- Location: LCCOMB_X11_Y16_N6
\upa|Yupa2[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~8_combout\ = (\upa|Banderas\(2) & (((\RegAux|data_out\(15))) # (!\RegAux|TRI_STATE_C~1_combout\))) # (!\upa|Banderas\(2) & (\inst1|inst3|nDUPA~4_combout\ & ((\RegAux|data_out\(15)) # (!\RegAux|TRI_STATE_C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Banderas\(2),
	datab => \RegAux|TRI_STATE_C~1_combout\,
	datac => \RegAux|data_out\(15),
	datad => \inst1|inst3|nDUPA~4_combout\,
	combout => \upa|Yupa2[7]~8_combout\);

-- Location: LCCOMB_X3_Y16_N28
\RegAux|data_out[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out[15]~0_combout\ = (\inst1|inst|Equal14~2_combout\ & (\RESET~input_o\ & (\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & !\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal14~2_combout\,
	datab => \RESET~input_o\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \RegAux|data_out[15]~0_combout\);

-- Location: LCCOMB_X11_Y16_N16
\upa|Yupa2[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~9_combout\ = (\RegAux|TRI_STATE_C~1_combout\) # (((\inst1|inst|Equal15~0_combout\ & \RESET~input_o\)) # (!\inst1|inst3|nDUPA~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal15~0_combout\,
	datab => \RESET~input_o\,
	datac => \RegAux|TRI_STATE_C~1_combout\,
	datad => \inst1|inst3|nDUPA~4_combout\,
	combout => \upa|Yupa2[7]~9_combout\);

-- Location: LCCOMB_X10_Y16_N16
\upa|Yupa2[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~10_combout\ = ((\upa|Yupa2[7]~8_combout\ & ((\upa|Yupa[7]~10_combout\) # (!\RegAux|data_out[15]~0_combout\)))) # (!\upa|Yupa2[7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~8_combout\,
	datab => \RegAux|data_out[15]~0_combout\,
	datac => \upa|Yupa2[7]~9_combout\,
	datad => \upa|Yupa[7]~10_combout\,
	combout => \upa|Yupa2[7]~10_combout\);

-- Location: FF_X10_Y16_N27
\RegAux|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \upa|Yupa2[7]~10_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \RegAux|data_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(15));

-- Location: LCCOMB_X1_Y16_N0
\RegAux|R15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|R15~2_combout\ = (\RegAux|data_out\(15)) # ((\inst1|inst|Equal14~2_combout\ & (\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\ & \RESET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal14~2_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \RegAux|data_out\(15),
	datad => \RESET~input_o\,
	combout => \RegAux|R15~2_combout\);

-- Location: LCCOMB_X8_Y15_N20
\inst1|inst6|$00001|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst6|$00001|auto_generated|result_node[0]~0_combout\ = (\inst1|inst3|instruccion\(0) & ((\upa|Banderas\(2)))) # (!\inst1|inst3|instruccion\(0) & (\RegAux|R15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|instruccion\(0),
	datac => \RegAux|R15~2_combout\,
	datad => \upa|Banderas\(2),
	combout => \inst1|inst6|$00001|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X3_Y16_N26
\inst1|inst|data[87]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|data[87]~17_combout\ = (\inst1|inst|data[87]~8_combout\ & ((\inst1|inst|Equal18~0_combout\) # (!\inst1|inst|data~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|data~18_combout\,
	datac => \inst1|inst|data[87]~8_combout\,
	datad => \inst1|inst|Equal18~0_combout\,
	combout => \inst1|inst|data[87]~17_combout\);

-- Location: FF_X3_Y16_N27
\inst1|inst3|prueba[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|inst|data[87]~17_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|prueba\(0));

-- Location: FF_X7_Y16_N27
\inst1|inst3|prueba[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|inst|data~16_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|prueba\(4));

-- Location: LCCOMB_X6_Y16_N4
\inst1|inst7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst7~0_combout\ = (\inst1|inst3|prueba\(0) & (((\inst1|inst3|prueba\(4)) # (!\flags|tCC|valor_interno~q\)) # (!\inst1|inst3|instruccion\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|instruccion\(0),
	datab => \inst1|inst3|prueba\(0),
	datac => \flags|tCC|valor_interno~q\,
	datad => \inst1|inst3|prueba\(4),
	combout => \inst1|inst7~0_combout\);

-- Location: LCCOMB_X6_Y16_N26
\inst1|inst1|SELECTOR~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst1|SELECTOR~2_combout\ = (((\inst1|inst6|$00001|auto_generated|result_node[0]~0_combout\ & \inst1|inst3|prueba\(4))) # (!\inst1|inst7~0_combout\)) # (!\inst1|inst3|instruccion\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|instruccion\(1),
	datab => \inst1|inst6|$00001|auto_generated|result_node[0]~0_combout\,
	datac => \inst1|inst7~0_combout\,
	datad => \inst1|inst3|prueba\(4),
	combout => \inst1|inst1|SELECTOR~2_combout\);

-- Location: LCCOMB_X2_Y16_N10
\inst1|inst1|SELECTOR~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst1|SELECTOR~3_combout\ = (\inst1|inst3|instruccion\(0) & (!\inst1|inst1|SELECTOR~2_combout\)) # (!\inst1|inst3|instruccion\(0) & ((!\inst1|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|SELECTOR~2_combout\,
	datac => \inst1|inst3|instruccion\(1),
	datad => \inst1|inst3|instruccion\(0),
	combout => \inst1|inst1|SELECTOR~3_combout\);

-- Location: LCCOMB_X6_Y17_N30
\inst1|inst1|SELECTOR~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst1|SELECTOR~4_combout\ = (\inst1|inst3|instruccion\(1) & !\inst1|inst3|instruccion\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst3|instruccion\(1),
	datad => \inst1|inst3|instruccion\(0),
	combout => \inst1|inst1|SELECTOR~4_combout\);

-- Location: LCCOMB_X6_Y16_N8
\inst1|inst7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst7~1_combout\ = (\inst1|inst7~0_combout\ & ((!\inst1|inst3|prueba\(4)) # (!\inst1|inst6|$00001|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|$00001|auto_generated|result_node[0]~0_combout\,
	datab => \inst1|inst7~0_combout\,
	datad => \inst1|inst3|prueba\(4),
	combout => \inst1|inst7~1_combout\);

-- Location: LCCOMB_X6_Y16_N24
\inst1|inst1|SELECTOR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst1|SELECTOR~0_combout\ = (\inst1|inst7~1_combout\ & ((\inst1|inst1|SELECTOR~4_combout\))) # (!\inst1|inst7~1_combout\ & (!\inst1|inst1|SELECTOR~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|SELECTOR~3_combout\,
	datac => \inst1|inst1|SELECTOR~4_combout\,
	datad => \inst1|inst7~1_combout\,
	combout => \inst1|inst1|SELECTOR~0_combout\);

-- Location: FF_X4_Y16_N13
\inst1|inst2|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|inst2|valor_interno[7]~23_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|valor_interno\(7));

-- Location: FF_X8_Y16_N29
\inst11|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3|nCRI~combout\,
	asdata => \upa|Yupa[3]~22_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(7));

-- Location: LCCOMB_X8_Y16_N28
\inst1|inst8[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst8[7]~4_combout\ = (!\inst1|inst3|instruccion\(0) & ((\inst11|valor_interno\(7)) # (!\inst1|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|instruccion\(0),
	datac => \inst11|valor_interno\(7),
	datad => \inst1|inst3|instruccion\(1),
	combout => \inst1|inst8[7]~4_combout\);

-- Location: LCCOMB_X8_Y16_N10
\inst1|inst5|$00000|auto_generated|result_node[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|$00000|auto_generated|result_node[7]~7_combout\ = (\inst1|inst1|SELECTOR~0_combout\ & ((\inst1|inst8[7]~4_combout\))) # (!\inst1|inst1|SELECTOR~0_combout\ & (\inst1|inst2|valor_interno\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|SELECTOR~0_combout\,
	datac => \inst1|inst2|valor_interno\(7),
	datad => \inst1|inst8[7]~4_combout\,
	combout => \inst1|inst5|$00000|auto_generated|result_node[7]~7_combout\);

-- Location: LCCOMB_X7_Y16_N10
\inst1|inst|Equal11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal11~1_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (\inst1|inst5|$00000|auto_generated|result_node[8]~8_combout\ & (\inst1|inst5|$00000|auto_generated|result_node[5]~5_combout\ & 
-- \inst1|inst5|$00000|auto_generated|result_node[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[5]~5_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \inst1|inst|Equal11~1_combout\);

-- Location: LCCOMB_X7_Y16_N2
\inst1|inst|Equal11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal11~2_combout\ = (\inst1|inst|Equal11~1_combout\ & (!\inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\ & (!\inst1|inst5|$00000|auto_generated|result_node[11]~11_combout\ & \inst1|inst|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal11~1_combout\,
	datab => \inst1|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	datad => \inst1|inst|Equal11~0_combout\,
	combout => \inst1|inst|Equal11~2_combout\);

-- Location: LCCOMB_X3_Y16_N8
\inst1|inst|data~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|data~18_combout\ = (\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (((!\inst1|inst|Equal3~1_combout\)))) # (!\inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\ & 
-- (((!\inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\)) # (!\inst1|inst|Equal11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Equal11~2_combout\,
	datab => \inst1|inst|Equal3~1_combout\,
	datac => \inst1|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst1|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst1|inst|data~18_combout\);

-- Location: LCCOMB_X6_Y16_N30
\inst1|inst|data[86]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|data[86]~21_combout\ = ((\inst1|inst|Equal18~0_combout\) # (!\inst1|inst|data[27]~12_combout\)) # (!\inst1|inst|data~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data~18_combout\,
	datab => \inst1|inst|Equal18~0_combout\,
	datad => \inst1|inst|data[27]~12_combout\,
	combout => \inst1|inst|data[86]~21_combout\);

-- Location: FF_X6_Y16_N31
\inst1|inst3|instruccion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|inst|data[86]~21_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|instruccion\(0));

-- Location: FF_X8_Y16_N21
\inst11|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3|nCRI~clkctrl_outclk\,
	asdata => \upa|Yupa[7]~10_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(11));

-- Location: LCCOMB_X8_Y16_N20
\inst1|inst8[11]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst8[11]~0_combout\ = (!\inst1|inst3|instruccion\(0) & ((\inst11|valor_interno\(11)) # (!\inst1|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|instruccion\(0),
	datac => \inst11|valor_interno\(11),
	datad => \inst1|inst3|instruccion\(1),
	combout => \inst1|inst8[11]~0_combout\);

-- Location: LCCOMB_X8_Y18_N12
\RegAux|WideOr0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~2_combout\ = (\RegAux|data_out\(5)) # ((\RegAux|data_out\(4)) # ((\RegAux|data_out\(6)) # (\RegAux|data_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(5),
	datab => \RegAux|data_out\(4),
	datac => \RegAux|data_out\(6),
	datad => \RegAux|data_out\(7),
	combout => \RegAux|WideOr0~2_combout\);

-- Location: LCCOMB_X10_Y15_N6
\upa|Yupa2[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[5]~23_combout\ = (\RegAux|data_out\(13) & ((\upa|Yupa_interno\(5)) # ((\inst1|inst3|nDUPA~4_combout\)))) # (!\RegAux|data_out\(13) & (!\RegAux|TRI_STATE_C~1_combout\ & ((\upa|Yupa_interno\(5)) # (\inst1|inst3|nDUPA~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(13),
	datab => \upa|Yupa_interno\(5),
	datac => \RegAux|TRI_STATE_C~1_combout\,
	datad => \inst1|inst3|nDUPA~4_combout\,
	combout => \upa|Yupa2[5]~23_combout\);

-- Location: LCCOMB_X10_Y15_N2
\upa|Yupa2[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[5]~13_combout\ = ((\upa|Yupa2[5]~23_combout\ & ((\upa|Yupa[5]~15_combout\) # (!\RegAux|data_out[15]~0_combout\)))) # (!\upa|Yupa2[7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~9_combout\,
	datab => \upa|Yupa2[5]~23_combout\,
	datac => \RegAux|data_out[15]~0_combout\,
	datad => \upa|Yupa[5]~15_combout\,
	combout => \upa|Yupa2[5]~13_combout\);

-- Location: FF_X10_Y15_N3
\RegAux|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa2[5]~13_combout\,
	clrn => \RESET~input_o\,
	ena => \RegAux|data_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(13));

-- Location: LCCOMB_X11_Y16_N10
\upa|Yupa2[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[4]~14_combout\ = (\RegAux|data_out\(12) & ((\upa|Banderas\(4)) # ((\inst1|inst3|nDUPA~4_combout\)))) # (!\RegAux|data_out\(12) & (!\RegAux|TRI_STATE_C~1_combout\ & ((\upa|Banderas\(4)) # (\inst1|inst3|nDUPA~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(12),
	datab => \upa|Banderas\(4),
	datac => \RegAux|TRI_STATE_C~1_combout\,
	datad => \inst1|inst3|nDUPA~4_combout\,
	combout => \upa|Yupa2[4]~14_combout\);

-- Location: LCCOMB_X11_Y16_N12
\upa|Yupa2[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[4]~15_combout\ = ((\upa|Yupa2[4]~14_combout\ & ((\upa|Yupa[4]~18_combout\) # (!\RegAux|data_out[15]~0_combout\)))) # (!\upa|Yupa2[7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~9_combout\,
	datab => \upa|Yupa2[4]~14_combout\,
	datac => \RegAux|data_out[15]~0_combout\,
	datad => \upa|Yupa[4]~18_combout\,
	combout => \upa|Yupa2[4]~15_combout\);

-- Location: FF_X11_Y16_N13
\RegAux|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa2[4]~15_combout\,
	clrn => \RESET~input_o\,
	ena => \RegAux|data_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(12));

-- Location: LCCOMB_X10_Y15_N12
\upa|Yupa2[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[6]~22_combout\ = (\upa|Yupa_interno\(6) & ((\RegAux|data_out\(14)) # ((!\RegAux|TRI_STATE_C~1_combout\)))) # (!\upa|Yupa_interno\(6) & (\inst1|inst3|nDUPA~4_combout\ & ((\RegAux|data_out\(14)) # (!\RegAux|TRI_STATE_C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa_interno\(6),
	datab => \RegAux|data_out\(14),
	datac => \RegAux|TRI_STATE_C~1_combout\,
	datad => \inst1|inst3|nDUPA~4_combout\,
	combout => \upa|Yupa2[6]~22_combout\);

-- Location: LCCOMB_X10_Y15_N24
\upa|Yupa2[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[6]~11_combout\ = ((\upa|Yupa2[6]~22_combout\ & ((\upa|Yupa[6]~12_combout\) # (!\RegAux|data_out[15]~0_combout\)))) # (!\upa|Yupa2[7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~9_combout\,
	datab => \upa|Yupa2[6]~22_combout\,
	datac => \RegAux|data_out[15]~0_combout\,
	datad => \upa|Yupa[6]~12_combout\,
	combout => \upa|Yupa2[6]~11_combout\);

-- Location: FF_X10_Y15_N25
\RegAux|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa2[6]~11_combout\,
	clrn => \RESET~input_o\,
	ena => \RegAux|data_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(14));

-- Location: LCCOMB_X8_Y18_N16
\RegAux|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~0_combout\ = (\RegAux|data_out\(13)) # ((\RegAux|data_out\(15)) # ((\RegAux|data_out\(12)) # (\RegAux|data_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(13),
	datab => \RegAux|data_out\(15),
	datac => \RegAux|data_out\(12),
	datad => \RegAux|data_out\(14),
	combout => \RegAux|WideOr0~0_combout\);

-- Location: LCCOMB_X8_Y18_N8
\RegAux|WideOr0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~3_combout\ = (\RegAux|data_out\(1)) # ((\RegAux|data_out\(2)) # ((\RegAux|data_out\(0)) # (\RegAux|data_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(1),
	datab => \RegAux|data_out\(2),
	datac => \RegAux|data_out\(0),
	datad => \RegAux|data_out\(3),
	combout => \RegAux|WideOr0~3_combout\);

-- Location: LCCOMB_X10_Y15_N22
\upa|Yupa2[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[0]~25_combout\ = (\upa|Q\(0) & ((\RegAux|data_out\(8)) # ((!\RegAux|TRI_STATE_C~1_combout\)))) # (!\upa|Q\(0) & (\inst1|inst3|nDUPA~4_combout\ & ((\RegAux|data_out\(8)) # (!\RegAux|TRI_STATE_C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Q\(0),
	datab => \RegAux|data_out\(8),
	datac => \RegAux|TRI_STATE_C~1_combout\,
	datad => \inst1|inst3|nDUPA~4_combout\,
	combout => \upa|Yupa2[0]~25_combout\);

-- Location: LCCOMB_X10_Y15_N20
\upa|Yupa2[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[0]~21_combout\ = ((\upa|Yupa2[0]~25_combout\ & ((\upa|Yupa[0]~30_combout\) # (!\RegAux|data_out[15]~0_combout\)))) # (!\upa|Yupa2[7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~9_combout\,
	datab => \upa|Yupa2[0]~25_combout\,
	datac => \RegAux|data_out[15]~0_combout\,
	datad => \upa|Yupa[0]~30_combout\,
	combout => \upa|Yupa2[0]~21_combout\);

-- Location: FF_X10_Y15_N21
\RegAux|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa2[0]~21_combout\,
	clrn => \RESET~input_o\,
	ena => \RegAux|data_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(8));

-- Location: LCCOMB_X10_Y15_N16
\upa|Yupa2[1]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[1]~24_combout\ = (\RegAux|data_out\(9) & ((\upa|Yupa_interno\(1)) # ((\inst1|inst3|nDUPA~4_combout\)))) # (!\RegAux|data_out\(9) & (!\RegAux|TRI_STATE_C~1_combout\ & ((\upa|Yupa_interno\(1)) # (\inst1|inst3|nDUPA~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(9),
	datab => \upa|Yupa_interno\(1),
	datac => \RegAux|TRI_STATE_C~1_combout\,
	datad => \inst1|inst3|nDUPA~4_combout\,
	combout => \upa|Yupa2[1]~24_combout\);

-- Location: LCCOMB_X10_Y15_N10
\upa|Yupa2[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[1]~20_combout\ = ((\upa|Yupa2[1]~24_combout\ & ((\upa|Yupa[1]~28_combout\) # (!\RegAux|data_out[15]~0_combout\)))) # (!\upa|Yupa2[7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[1]~24_combout\,
	datab => \RegAux|data_out[15]~0_combout\,
	datac => \upa|Yupa2[7]~9_combout\,
	datad => \upa|Yupa[1]~28_combout\,
	combout => \upa|Yupa2[1]~20_combout\);

-- Location: FF_X10_Y15_N11
\RegAux|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa2[1]~20_combout\,
	clrn => \RESET~input_o\,
	ena => \RegAux|data_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(9));

-- Location: LCCOMB_X11_Y16_N2
\upa|Yupa2[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[3]~16_combout\ = (\RegAux|data_out\(11) & ((\upa|Yupa_interno\(3)) # ((\inst1|inst3|nDUPA~4_combout\)))) # (!\RegAux|data_out\(11) & (!\RegAux|TRI_STATE_C~1_combout\ & ((\upa|Yupa_interno\(3)) # (\inst1|inst3|nDUPA~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(11),
	datab => \upa|Yupa_interno\(3),
	datac => \RegAux|TRI_STATE_C~1_combout\,
	datad => \inst1|inst3|nDUPA~4_combout\,
	combout => \upa|Yupa2[3]~16_combout\);

-- Location: LCCOMB_X11_Y16_N26
\upa|Yupa2[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[3]~17_combout\ = ((\upa|Yupa2[3]~16_combout\ & ((\upa|Yupa[3]~22_combout\) # (!\RegAux|data_out[15]~0_combout\)))) # (!\upa|Yupa2[7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~9_combout\,
	datab => \upa|Yupa2[3]~16_combout\,
	datac => \upa|Yupa[3]~22_combout\,
	datad => \RegAux|data_out[15]~0_combout\,
	combout => \upa|Yupa2[3]~17_combout\);

-- Location: FF_X11_Y16_N27
\RegAux|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa2[3]~17_combout\,
	clrn => \RESET~input_o\,
	ena => \RegAux|data_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(11));

-- Location: LCCOMB_X12_Y15_N12
\upa|Yupa2[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[2]~18_combout\ = (\RegAux|data_out\(10) & (((\inst1|inst3|nDUPA~4_combout\) # (\upa|Yupa_interno\(2))))) # (!\RegAux|data_out\(10) & (!\RegAux|TRI_STATE_C~1_combout\ & ((\inst1|inst3|nDUPA~4_combout\) # (\upa|Yupa_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(10),
	datab => \RegAux|TRI_STATE_C~1_combout\,
	datac => \inst1|inst3|nDUPA~4_combout\,
	datad => \upa|Yupa_interno\(2),
	combout => \upa|Yupa2[2]~18_combout\);

-- Location: LCCOMB_X10_Y15_N28
\upa|Yupa2[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[2]~19_combout\ = ((\upa|Yupa2[2]~18_combout\ & ((\upa|Yupa[2]~26_combout\) # (!\RegAux|data_out[15]~0_combout\)))) # (!\upa|Yupa2[7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~9_combout\,
	datab => \upa|Yupa2[2]~18_combout\,
	datac => \RegAux|data_out[15]~0_combout\,
	datad => \upa|Yupa[2]~26_combout\,
	combout => \upa|Yupa2[2]~19_combout\);

-- Location: FF_X10_Y15_N29
\RegAux|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa2[2]~19_combout\,
	clrn => \RESET~input_o\,
	ena => \RegAux|data_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(10));

-- Location: LCCOMB_X13_Y16_N12
\RegAux|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~1_combout\ = (\RegAux|data_out\(8)) # ((\RegAux|data_out\(9)) # ((\RegAux|data_out\(11)) # (\RegAux|data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(8),
	datab => \RegAux|data_out\(9),
	datac => \RegAux|data_out\(11),
	datad => \RegAux|data_out\(10),
	combout => \RegAux|WideOr0~1_combout\);

-- Location: LCCOMB_X8_Y18_N2
\RegAux|WideOr0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~4_combout\ = (\RegAux|WideOr0~2_combout\) # ((\RegAux|WideOr0~0_combout\) # ((\RegAux|WideOr0~3_combout\) # (\RegAux|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|WideOr0~2_combout\,
	datab => \RegAux|WideOr0~0_combout\,
	datac => \RegAux|WideOr0~3_combout\,
	datad => \RegAux|WideOr0~1_combout\,
	combout => \RegAux|WideOr0~4_combout\);

-- Location: LCCOMB_X11_Y15_N0
\upa|Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[6]~feeder_combout\ = \upa|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upa|Add0~14_combout\,
	combout => \upa|Q[6]~feeder_combout\);

-- Location: FF_X11_Y15_N1
\upa|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[6]~feeder_combout\,
	ena => \inst1|inst3|nDUPA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(6));

-- Location: LCCOMB_X11_Y15_N30
\upa|Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[5]~feeder_combout\ = \upa|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upa|Add0~12_combout\,
	combout => \upa|Q[5]~feeder_combout\);

-- Location: FF_X11_Y15_N31
\upa|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[5]~feeder_combout\,
	ena => \inst1|inst3|nDUPA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(5));

-- Location: LCCOMB_X11_Y15_N2
\upa|Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[4]~feeder_combout\ = \upa|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upa|Add0~10_combout\,
	combout => \upa|Q[4]~feeder_combout\);

-- Location: FF_X11_Y15_N3
\upa|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[4]~feeder_combout\,
	ena => \inst1|inst3|nDUPA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(4));

-- Location: LCCOMB_X11_Y15_N26
\upa|Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[3]~feeder_combout\ = \upa|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Add0~8_combout\,
	combout => \upa|Q[3]~feeder_combout\);

-- Location: FF_X11_Y15_N27
\upa|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[3]~feeder_combout\,
	ena => \inst1|inst3|nDUPA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(3));

-- Location: LCCOMB_X11_Y15_N24
\upa|Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[2]~feeder_combout\ = \upa|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Add0~6_combout\,
	combout => \upa|Q[2]~feeder_combout\);

-- Location: FF_X11_Y15_N25
\upa|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[2]~feeder_combout\,
	ena => \inst1|inst3|nDUPA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(2));

-- Location: FF_X11_Y15_N5
\upa|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Add0~4_combout\,
	sload => VCC,
	ena => \inst1|inst3|nDUPA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(1));

-- Location: LCCOMB_X6_Y15_N16
\RegPC|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~16_combout\ = (\RegPC|data_out\(8) & (\RegPC|Add0~15\ $ (GND))) # (!\RegPC|data_out\(8) & (!\RegPC|Add0~15\ & VCC))
-- \RegPC|Add0~17\ = CARRY((\RegPC|data_out\(8) & !\RegPC|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(8),
	datad => VCC,
	cin => \RegPC|Add0~15\,
	combout => \RegPC|Add0~16_combout\,
	cout => \RegPC|Add0~17\);

-- Location: LCCOMB_X10_Y15_N8
\RegPC|Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~39_combout\ = (\RegPC|Equal0~0_combout\ & ((\RegPC|Add0~16_combout\))) # (!\RegPC|Equal0~0_combout\ & (\upa|Yupa2[0]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[0]~21_combout\,
	datac => \RegPC|Equal0~0_combout\,
	datad => \RegPC|Add0~16_combout\,
	combout => \RegPC|Add0~39_combout\);

-- Location: LCCOMB_X10_Y15_N30
\RegPC|data_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out~0_combout\ = (\inst1|inst3|PC[0]~5_combout\) # ((\RESET~input_o\ & \inst1|inst|Equal18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \inst1|inst|Equal18~0_combout\,
	datad => \inst1|inst3|PC[0]~5_combout\,
	combout => \RegPC|data_out~0_combout\);

-- Location: FF_X10_Y15_N9
\RegPC|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~39_combout\,
	clrn => \RESET~input_o\,
	ena => \RegPC|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(8));

-- Location: LCCOMB_X6_Y15_N18
\RegPC|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~18_combout\ = (\RegPC|data_out\(9) & (!\RegPC|Add0~17\)) # (!\RegPC|data_out\(9) & ((\RegPC|Add0~17\) # (GND)))
-- \RegPC|Add0~19\ = CARRY((!\RegPC|Add0~17\) # (!\RegPC|data_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(9),
	datad => VCC,
	cin => \RegPC|Add0~17\,
	combout => \RegPC|Add0~18_combout\,
	cout => \RegPC|Add0~19\);

-- Location: LCCOMB_X10_Y15_N18
\RegPC|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~38_combout\ = (\RegPC|Equal0~0_combout\ & ((\RegPC|Add0~18_combout\))) # (!\RegPC|Equal0~0_combout\ & (\upa|Yupa2[1]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upa|Yupa2[1]~20_combout\,
	datac => \RegPC|Equal0~0_combout\,
	datad => \RegPC|Add0~18_combout\,
	combout => \RegPC|Add0~38_combout\);

-- Location: FF_X10_Y15_N19
\RegPC|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~38_combout\,
	clrn => \RESET~input_o\,
	ena => \RegPC|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(9));

-- Location: LCCOMB_X6_Y15_N20
\RegPC|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~20_combout\ = (\RegPC|data_out\(10) & (\RegPC|Add0~19\ $ (GND))) # (!\RegPC|data_out\(10) & (!\RegPC|Add0~19\ & VCC))
-- \RegPC|Add0~21\ = CARRY((\RegPC|data_out\(10) & !\RegPC|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(10),
	datad => VCC,
	cin => \RegPC|Add0~19\,
	combout => \RegPC|Add0~20_combout\,
	cout => \RegPC|Add0~21\);

-- Location: LCCOMB_X10_Y15_N0
\RegPC|Add0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~37_combout\ = (\RegPC|Equal0~0_combout\ & ((\RegPC|Add0~20_combout\))) # (!\RegPC|Equal0~0_combout\ & (\upa|Yupa2[2]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[2]~19_combout\,
	datab => \RegPC|Add0~20_combout\,
	datac => \RegPC|Equal0~0_combout\,
	combout => \RegPC|Add0~37_combout\);

-- Location: FF_X10_Y15_N1
\RegPC|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~37_combout\,
	clrn => \RESET~input_o\,
	ena => \RegPC|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(10));

-- Location: LCCOMB_X6_Y15_N22
\RegPC|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~22_combout\ = (\RegPC|data_out\(11) & (!\RegPC|Add0~21\)) # (!\RegPC|data_out\(11) & ((\RegPC|Add0~21\) # (GND)))
-- \RegPC|Add0~23\ = CARRY((!\RegPC|Add0~21\) # (!\RegPC|data_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(11),
	datad => VCC,
	cin => \RegPC|Add0~21\,
	combout => \RegPC|Add0~22_combout\,
	cout => \RegPC|Add0~23\);

-- Location: LCCOMB_X11_Y16_N24
\RegPC|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~36_combout\ = (\RegPC|Equal0~0_combout\ & ((\RegPC|Add0~22_combout\))) # (!\RegPC|Equal0~0_combout\ & (\upa|Yupa2[3]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Equal0~0_combout\,
	datab => \upa|Yupa2[3]~17_combout\,
	datad => \RegPC|Add0~22_combout\,
	combout => \RegPC|Add0~36_combout\);

-- Location: FF_X11_Y16_N25
\RegPC|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~36_combout\,
	clrn => \RESET~input_o\,
	ena => \RegPC|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(11));

-- Location: LCCOMB_X6_Y15_N24
\RegPC|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~24_combout\ = (\RegPC|data_out\(12) & (\RegPC|Add0~23\ $ (GND))) # (!\RegPC|data_out\(12) & (!\RegPC|Add0~23\ & VCC))
-- \RegPC|Add0~25\ = CARRY((\RegPC|data_out\(12) & !\RegPC|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(12),
	datad => VCC,
	cin => \RegPC|Add0~23\,
	combout => \RegPC|Add0~24_combout\,
	cout => \RegPC|Add0~25\);

-- Location: LCCOMB_X11_Y16_N30
\RegPC|Add0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~35_combout\ = (\RegPC|Equal0~0_combout\ & ((\RegPC|Add0~24_combout\))) # (!\RegPC|Equal0~0_combout\ & (\upa|Yupa2[4]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Equal0~0_combout\,
	datab => \upa|Yupa2[4]~15_combout\,
	datad => \RegPC|Add0~24_combout\,
	combout => \RegPC|Add0~35_combout\);

-- Location: FF_X11_Y16_N31
\RegPC|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~35_combout\,
	clrn => \RESET~input_o\,
	ena => \RegPC|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(12));

-- Location: LCCOMB_X6_Y15_N26
\RegPC|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~26_combout\ = (\RegPC|data_out\(13) & (!\RegPC|Add0~25\)) # (!\RegPC|data_out\(13) & ((\RegPC|Add0~25\) # (GND)))
-- \RegPC|Add0~27\ = CARRY((!\RegPC|Add0~25\) # (!\RegPC|data_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(13),
	datad => VCC,
	cin => \RegPC|Add0~25\,
	combout => \RegPC|Add0~26_combout\,
	cout => \RegPC|Add0~27\);

-- Location: LCCOMB_X10_Y15_N26
\RegPC|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~34_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~26_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa2[5]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Add0~26_combout\,
	datab => \upa|Yupa2[5]~13_combout\,
	datac => \RegPC|Equal0~0_combout\,
	combout => \RegPC|Add0~34_combout\);

-- Location: FF_X10_Y15_N27
\RegPC|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~34_combout\,
	clrn => \RESET~input_o\,
	ena => \RegPC|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(13));

-- Location: LCCOMB_X6_Y15_N28
\RegPC|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~28_combout\ = (\RegPC|data_out\(14) & (\RegPC|Add0~27\ $ (GND))) # (!\RegPC|data_out\(14) & (!\RegPC|Add0~27\ & VCC))
-- \RegPC|Add0~29\ = CARRY((\RegPC|data_out\(14) & !\RegPC|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(14),
	datad => VCC,
	cin => \RegPC|Add0~27\,
	combout => \RegPC|Add0~28_combout\,
	cout => \RegPC|Add0~29\);

-- Location: LCCOMB_X10_Y15_N4
\RegPC|Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~33_combout\ = (\RegPC|Equal0~0_combout\ & ((\RegPC|Add0~28_combout\))) # (!\RegPC|Equal0~0_combout\ & (\upa|Yupa2[6]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[6]~11_combout\,
	datab => \RegPC|Add0~28_combout\,
	datac => \RegPC|Equal0~0_combout\,
	combout => \RegPC|Add0~33_combout\);

-- Location: FF_X10_Y15_N5
\RegPC|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~33_combout\,
	clrn => \RESET~input_o\,
	ena => \RegPC|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(14));

-- Location: LCCOMB_X6_Y15_N30
\RegPC|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~30_combout\ = \RegPC|Add0~29\ $ (\RegPC|data_out\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RegPC|data_out\(15),
	cin => \RegPC|Add0~29\,
	combout => \RegPC|Add0~30_combout\);

-- Location: LCCOMB_X10_Y15_N14
\RegPC|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~32_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~30_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa2[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Equal0~0_combout\,
	datab => \RegPC|Add0~30_combout\,
	datac => \upa|Yupa2[7]~10_combout\,
	combout => \RegPC|Add0~32_combout\);

-- Location: FF_X10_Y15_N15
\RegPC|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~32_combout\,
	clrn => \RESET~input_o\,
	ena => \RegPC|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(15));

-- Location: IOIBUF_X49_Y54_N29
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

-- Location: IOIBUF_X36_Y39_N29
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


