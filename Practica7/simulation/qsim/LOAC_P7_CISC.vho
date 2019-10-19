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

-- DATE "10/19/2019 15:41:39"

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
	DebugRA : OUT std_logic_vector(15 DOWNTO 0)
	);
END LOAC_P7_CISC;

-- Design Ports Information
-- Z	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRQn	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XIRQn	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[11]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[10]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[9]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[8]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[7]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[6]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[5]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[4]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[0]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[7]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[1]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[0]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[7]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[6]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[2]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[7]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[5]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[4]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[3]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[1]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[0]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[7]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[5]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[4]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[1]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[0]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[15]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[14]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[13]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[12]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[11]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[10]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[9]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[8]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[7]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[3]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[0]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[15]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[14]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[13]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[12]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[11]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[10]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[9]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[8]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[7]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[5]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[4]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[3]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[2]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[0]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[15]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[14]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[13]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[12]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[11]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[10]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[9]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[8]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[4]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[3]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[2]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[1]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[0]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[15]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[14]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[13]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[12]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[11]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[10]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[9]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[8]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[7]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[6]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[5]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[4]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[2]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[1]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[15]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[14]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[13]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[12]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[11]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[10]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[9]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[8]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[7]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[5]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[2]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[1]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[0]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sec|inst3|nCRI~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sec|inst3|nCBD~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IRQn~input_o\ : std_logic;
SIGNAL \XIRQn~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
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
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \sec|inst2|valor_interno[0]~33_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \sec|inst2|valor_interno[1]~12\ : std_logic;
SIGNAL \sec|inst2|valor_interno[2]~13_combout\ : std_logic;
SIGNAL \sec|inst2|valor_interno[2]~14\ : std_logic;
SIGNAL \sec|inst2|valor_interno[3]~15_combout\ : std_logic;
SIGNAL \sec|inst2|valor_interno[3]~16\ : std_logic;
SIGNAL \sec|inst2|valor_interno[4]~17_combout\ : std_logic;
SIGNAL \sec|inst|Equal1~0_combout\ : std_logic;
SIGNAL \sec|inst3|nCRI~q\ : std_logic;
SIGNAL \sec|inst3|nCRI~clkctrl_outclk\ : std_logic;
SIGNAL \sec|inst|data[27]~34_combout\ : std_logic;
SIGNAL \sec|inst5|$00000|auto_generated|result_node[2]~17_combout\ : std_logic;
SIGNAL \sec|inst5|$00000|auto_generated|result_node[3]~16_combout\ : std_logic;
SIGNAL \sec|inst|Equal3~0_combout\ : std_logic;
SIGNAL \sec|inst|Equal14~0_combout\ : std_logic;
SIGNAL \sec|inst|Equal16~0_combout\ : std_logic;
SIGNAL \sec|inst|Equal17~0_combout\ : std_logic;
SIGNAL \sec|inst|Equal8~0_combout\ : std_logic;
SIGNAL \sec|inst|Equal4~0_combout\ : std_logic;
SIGNAL \sec|inst|data[26]~31_combout\ : std_logic;
SIGNAL \sec|inst|Equal9~0_combout\ : std_logic;
SIGNAL \sec|inst|Equal11~0_combout\ : std_logic;
SIGNAL \sec|inst|Equal11~1_combout\ : std_logic;
SIGNAL \sec|inst|Equal11~2_combout\ : std_logic;
SIGNAL \sec|inst|data[74]~14_combout\ : std_logic;
SIGNAL \sec|inst|Equal3~3_combout\ : std_logic;
SIGNAL \sec|inst|Equal7~0_combout\ : std_logic;
SIGNAL \sec|inst|data[86]~12_combout\ : std_logic;
SIGNAL \sec|inst|Equal0~3_combout\ : std_logic;
SIGNAL \sec|inst|data[27]~32_combout\ : std_logic;
SIGNAL \sec|inst|Equal14~2_combout\ : std_logic;
SIGNAL \sec|inst|Equal14~3_combout\ : std_logic;
SIGNAL \sec|inst|data[86]~15_combout\ : std_logic;
SIGNAL \sec|inst|Equal13~0_combout\ : std_logic;
SIGNAL \sec|inst|data[27]~16_combout\ : std_logic;
SIGNAL \sec|inst|data[26]~33_combout\ : std_logic;
SIGNAL \sec|inst|data[26]~35_combout\ : std_logic;
SIGNAL \sec|inst3|nAS~q\ : std_logic;
SIGNAL \sec|inst|Equal14~1_combout\ : std_logic;
SIGNAL \sec|inst|data[27]~37_combout\ : std_logic;
SIGNAL \sec|inst|data[86]~11_combout\ : std_logic;
SIGNAL \sec|inst|data[27]~38_combout\ : std_logic;
SIGNAL \sec|inst|data[27]~39_combout\ : std_logic;
SIGNAL \sec|inst3|nCBD~q\ : std_logic;
SIGNAL \sec|inst3|nCBD~clkctrl_outclk\ : std_logic;
SIGNAL \RegPC|Add0~16_combout\ : std_logic;
SIGNAL \sec|inst|Equal18~0_combout\ : std_logic;
SIGNAL \sec|inst3|liga[0]~2_combout\ : std_logic;
SIGNAL \sec|inst|data[87]~6_combout\ : std_logic;
SIGNAL \sec|inst3|liga[0]~0_combout\ : std_logic;
SIGNAL \sec|inst3|liga[0]~1_combout\ : std_logic;
SIGNAL \sec|inst3|liga[0]~3_combout\ : std_logic;
SIGNAL \sec|inst|data[28]~36_combout\ : std_logic;
SIGNAL \RegPC|Add0~55_combout\ : std_logic;
SIGNAL \sec|inst|Equal11~3_combout\ : std_logic;
SIGNAL \sec|inst|data[69]~24_combout\ : std_logic;
SIGNAL \sec|inst3|nWB~q\ : std_logic;
SIGNAL \AcumuladorB|C[2]~5_combout\ : std_logic;
SIGNAL \sec|inst|data[44]~21_combout\ : std_logic;
SIGNAL \sec|inst|data[44]~22_combout\ : std_logic;
SIGNAL \sec|inst3|nERA1~q\ : std_logic;
SIGNAL \sec|inst|Equal12~0_combout\ : std_logic;
SIGNAL \sec|inst|data[86]~40_combout\ : std_logic;
SIGNAL \sec|inst|data[54]~25_combout\ : std_logic;
SIGNAL \sec|inst3|nDUPA~q\ : std_logic;
SIGNAL \sec|inst3|RA[0]~feeder_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~2_combout\ : std_logic;
SIGNAL \sec|inst|data[67]~29_combout\ : std_logic;
SIGNAL \sec|inst3|nWA~q\ : std_logic;
SIGNAL \sec|inst|Equal10~0_combout\ : std_logic;
SIGNAL \sec|inst|data[9]~26_combout\ : std_logic;
SIGNAL \sec|inst|data[68]~27_combout\ : std_logic;
SIGNAL \sec|inst|data[68]~28_combout\ : std_logic;
SIGNAL \AcumuladorA|B[7]~0_combout\ : std_logic;
SIGNAL \AcumuladorB|B[7]~0_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~3_combout\ : std_logic;
SIGNAL \AcumuladorA|C[3]~4_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[3]~4_combout\ : std_logic;
SIGNAL \AcumuladorB|TRI_STATE~0_combout\ : std_logic;
SIGNAL \AcumuladorA|TRI_STATE~0_combout\ : std_logic;
SIGNAL \sec|inst|data[43]~30_combout\ : std_logic;
SIGNAL \sec|inst3|nERA0~q\ : std_logic;
SIGNAL \upa|Yupa[7]~3_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~4_combout\ : std_logic;
SIGNAL \RegAux|TRI_STATE_D~0_combout\ : std_logic;
SIGNAL \upa|Yupa[3]~16_combout\ : std_logic;
SIGNAL \AcumuladorB|C[3]~4_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[3]~4_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[0]~8_combout\ : std_logic;
SIGNAL \upa|Mux31~0_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[2]~5_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[0]~8_combout\ : std_logic;
SIGNAL \AcumuladorA|C[2]~5_combout\ : std_logic;
SIGNAL \RegAux|data_out~6_combout\ : std_logic;
SIGNAL \RegAux|C[1]~6_combout\ : std_logic;
SIGNAL \AcumuladorB|C[1]~6_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[1]~6_combout\ : std_logic;
SIGNAL \upa|Yupa[1]~23_combout\ : std_logic;
SIGNAL \RegAux|data_out~14_combout\ : std_logic;
SIGNAL \RegAux|D[1]~3_combout\ : std_logic;
SIGNAL \RegPC|Add0~23\ : std_logic;
SIGNAL \RegPC|Add0~24_combout\ : std_logic;
SIGNAL \AcumuladorB|C[4]~3_combout\ : std_logic;
SIGNAL \AcumuladorA|C[4]~3_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[4]~3_combout\ : std_logic;
SIGNAL \upa|Mux32~0_combout\ : std_logic;
SIGNAL \upa|Add0~9\ : std_logic;
SIGNAL \upa|Add0~10_combout\ : std_logic;
SIGNAL \upa|Yupa2[4]~11_combout\ : std_logic;
SIGNAL \AcumuladorB|C[0]~7_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[0]~7_combout\ : std_logic;
SIGNAL \upa|Mux27~0_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[0]~7_combout\ : std_logic;
SIGNAL \AcumuladorA|C[0]~7_combout\ : std_logic;
SIGNAL \sec|inst|data[9]~41_combout\ : std_logic;
SIGNAL \sec|inst3|CC~q\ : std_logic;
SIGNAL \AcumuladorA|data_out[7]~0_combout\ : std_logic;
SIGNAL \AcumuladorA|C[7]~0_combout\ : std_logic;
SIGNAL \AcumuladorB|C[6]~1_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[6]~1_combout\ : std_logic;
SIGNAL \upa|Yupa[6]~7_combout\ : std_logic;
SIGNAL \RegAux|data_out~9_combout\ : std_logic;
SIGNAL \RegAux|D[6]~1_combout\ : std_logic;
SIGNAL \AcumuladorA|A[6]~1_combout\ : std_logic;
SIGNAL \RegPC|Add0~17\ : std_logic;
SIGNAL \RegPC|Add0~18_combout\ : std_logic;
SIGNAL \RegPC|Add0~54_combout\ : std_logic;
SIGNAL \dir|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \upa|Yupa[6]~6_combout\ : std_logic;
SIGNAL \upa|Yupa[6]~8_combout\ : std_logic;
SIGNAL \upa|Mux34~0_combout\ : std_logic;
SIGNAL \RegAux|C[5]~2_combout\ : std_logic;
SIGNAL \upa|Yupa2[5]~8_combout\ : std_logic;
SIGNAL \AcumuladorB|C[5]~2_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[5]~2_combout\ : std_logic;
SIGNAL \AcumuladorA|A[5]~2_combout\ : std_logic;
SIGNAL \upa|Yupa[5]~10_combout\ : std_logic;
SIGNAL \upa|Mux33~0_combout\ : std_logic;
SIGNAL \upa|Add0~11\ : std_logic;
SIGNAL \upa|Add0~12_combout\ : std_logic;
SIGNAL \upa|Yupa[5]~9_combout\ : std_logic;
SIGNAL \RegAux|data_out~10_combout\ : std_logic;
SIGNAL \RegAux|D[5]~2_combout\ : std_logic;
SIGNAL \upa|Yupa[5]~11_combout\ : std_logic;
SIGNAL \inst|data_out[0]~2_combout\ : std_logic;
SIGNAL \inst|data_out[5]~3_combout\ : std_logic;
SIGNAL \upa|Yupa[5]~12_combout\ : std_logic;
SIGNAL \upa|Yupa2[5]~9_combout\ : std_logic;
SIGNAL \upa|Yupa2[5]~10_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[5]~2_combout\ : std_logic;
SIGNAL \AcumuladorA|C[5]~2_combout\ : std_logic;
SIGNAL \upa|Add0~13\ : std_logic;
SIGNAL \upa|Add0~14_combout\ : std_logic;
SIGNAL \upa|Yupa2[6]~5_combout\ : std_logic;
SIGNAL \RegAux|C[6]~1_combout\ : std_logic;
SIGNAL \upa|Yupa2[6]~6_combout\ : std_logic;
SIGNAL \upa|Yupa2[6]~7_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[6]~1_combout\ : std_logic;
SIGNAL \AcumuladorA|C[6]~1_combout\ : std_logic;
SIGNAL \upa|Add0~15\ : std_logic;
SIGNAL \upa|Add0~17\ : std_logic;
SIGNAL \upa|Add0~18_combout\ : std_logic;
SIGNAL \flags|tCC|valor_interno~q\ : std_logic;
SIGNAL \upa|Add0~1_cout\ : std_logic;
SIGNAL \upa|Add0~2_combout\ : std_logic;
SIGNAL \upa|Yupa[0]~25_combout\ : std_logic;
SIGNAL \RegAux|C[0]~7_combout\ : std_logic;
SIGNAL \upa|Yupa2[0]~23_combout\ : std_logic;
SIGNAL \upa|Yupa2[0]~24_combout\ : std_logic;
SIGNAL \upa|Yupa2[0]~25_combout\ : std_logic;
SIGNAL \RegAux|data_out~7_combout\ : std_logic;
SIGNAL \RegAux|data_out~8_combout\ : std_logic;
SIGNAL \RegAux|D[7]~0_combout\ : std_logic;
SIGNAL \AcumuladorA|A[7]~0_combout\ : std_logic;
SIGNAL \AcumuladorB|C[7]~0_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[7]~0_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~1_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~0_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~2_combout\ : std_logic;
SIGNAL \inst|data_out[7]~1_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~5_combout\ : std_logic;
SIGNAL \RegAux|C[7]~0_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~0_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~1_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~4_combout\ : std_logic;
SIGNAL \RegAux|data_out~0_combout\ : std_logic;
SIGNAL \RegAux|data_out~1_combout\ : std_logic;
SIGNAL \RegAux|data_out~2_combout\ : std_logic;
SIGNAL \RegAux|data_out~3_combout\ : std_logic;
SIGNAL \RegAux|C[4]~3_combout\ : std_logic;
SIGNAL \upa|Yupa2[4]~12_combout\ : std_logic;
SIGNAL \upa|Yupa2[4]~13_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[4]~3_combout\ : std_logic;
SIGNAL \upa|Yupa[4]~14_combout\ : std_logic;
SIGNAL \RegAux|data_out~11_combout\ : std_logic;
SIGNAL \upa|Yupa[4]~13_combout\ : std_logic;
SIGNAL \inst|data[4]~0_combout\ : std_logic;
SIGNAL \upa|Yupa[4]~15_combout\ : std_logic;
SIGNAL \RegPC|Add0~51_combout\ : std_logic;
SIGNAL \dir|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \RegPC|Add0~25\ : std_logic;
SIGNAL \RegPC|Add0~26_combout\ : std_logic;
SIGNAL \RegPC|Add0~50_combout\ : std_logic;
SIGNAL \RegPC|Add0~27\ : std_logic;
SIGNAL \RegPC|Add0~28_combout\ : std_logic;
SIGNAL \RegPC|Add0~49_combout\ : std_logic;
SIGNAL \dir|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \RegPC|Add0~29\ : std_logic;
SIGNAL \RegPC|Add0~30_combout\ : std_logic;
SIGNAL \RegPC|Add0~48_combout\ : std_logic;
SIGNAL \inst|data_out[0]~0_combout\ : std_logic;
SIGNAL \AcumuladorA|A[1]~3_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \upa|Yupa[1]~22_combout\ : std_logic;
SIGNAL \upa|Yupa[1]~24_combout\ : std_logic;
SIGNAL \upa|Mux29~0_combout\ : std_logic;
SIGNAL \upa|Add0~3\ : std_logic;
SIGNAL \upa|Add0~4_combout\ : std_logic;
SIGNAL \upa|Yupa2[1]~20_combout\ : std_logic;
SIGNAL \upa|Yupa2[1]~21_combout\ : std_logic;
SIGNAL \upa|Yupa2[1]~22_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[1]~6_combout\ : std_logic;
SIGNAL \AcumuladorA|C[1]~6_combout\ : std_logic;
SIGNAL \upa|Add0~5\ : std_logic;
SIGNAL \upa|Add0~7\ : std_logic;
SIGNAL \upa|Add0~8_combout\ : std_logic;
SIGNAL \upa|Yupa[3]~17_combout\ : std_logic;
SIGNAL \upa|Yupa[3]~18_combout\ : std_logic;
SIGNAL \RegAux|C[3]~4_combout\ : std_logic;
SIGNAL \upa|Yupa2[3]~14_combout\ : std_logic;
SIGNAL \upa|Yupa2[3]~15_combout\ : std_logic;
SIGNAL \upa|Yupa2[3]~16_combout\ : std_logic;
SIGNAL \RegAux|data_out~4_combout\ : std_logic;
SIGNAL \RegAux|data_out~5_combout\ : std_logic;
SIGNAL \RegAux|C[2]~5_combout\ : std_logic;
SIGNAL \upa|Yupa2[2]~17_combout\ : std_logic;
SIGNAL \upa|Yupa2[2]~18_combout\ : std_logic;
SIGNAL \upa|Yupa2[2]~19_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[2]~5_combout\ : std_logic;
SIGNAL \upa|Mux30~0_combout\ : std_logic;
SIGNAL \upa|Add0~6_combout\ : std_logic;
SIGNAL \upa|Yupa[2]~20_combout\ : std_logic;
SIGNAL \upa|Yupa[2]~19_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|data_out[2]~4_combout\ : std_logic;
SIGNAL \inst|data[2]~1_combout\ : std_logic;
SIGNAL \upa|Yupa[2]~21_combout\ : std_logic;
SIGNAL \RegPC|Add0~19\ : std_logic;
SIGNAL \RegPC|Add0~20_combout\ : std_logic;
SIGNAL \RegPC|Add0~53_combout\ : std_logic;
SIGNAL \RegPC|Add0~21\ : std_logic;
SIGNAL \RegPC|Add0~22_combout\ : std_logic;
SIGNAL \RegPC|Add0~52_combout\ : std_logic;
SIGNAL \inst|data_out[0]~5_combout\ : std_logic;
SIGNAL \upa|Yupa[0]~26_combout\ : std_logic;
SIGNAL \AcumuladorA|A[0]~4_combout\ : std_logic;
SIGNAL \RegAux|data_out~15_combout\ : std_logic;
SIGNAL \RegAux|D[0]~4_combout\ : std_logic;
SIGNAL \upa|Yupa[0]~27_combout\ : std_logic;
SIGNAL \upa|Yupa[0]~28_combout\ : std_logic;
SIGNAL \inst11|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \sec|inst5|$00000|auto_generated|result_node[4]~13_combout\ : std_logic;
SIGNAL \sec|inst2|valor_interno[4]~18\ : std_logic;
SIGNAL \sec|inst2|valor_interno[5]~19_combout\ : std_logic;
SIGNAL \inst11|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \sec|inst5|$00000|auto_generated|result_node[5]~12_combout\ : std_logic;
SIGNAL \sec|inst2|valor_interno[5]~20\ : std_logic;
SIGNAL \sec|inst2|valor_interno[6]~21_combout\ : std_logic;
SIGNAL \inst11|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \sec|inst5|$00000|auto_generated|result_node[6]~11_combout\ : std_logic;
SIGNAL \sec|inst2|valor_interno[6]~22\ : std_logic;
SIGNAL \sec|inst2|valor_interno[7]~24\ : std_logic;
SIGNAL \sec|inst2|valor_interno[8]~25_combout\ : std_logic;
SIGNAL \inst11|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \sec|inst5|$00000|auto_generated|result_node[8]~9_combout\ : std_logic;
SIGNAL \sec|inst2|valor_interno[8]~26\ : std_logic;
SIGNAL \sec|inst2|valor_interno[9]~27_combout\ : std_logic;
SIGNAL \inst11|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \sec|inst5|$00000|auto_generated|result_node[9]~8_combout\ : std_logic;
SIGNAL \sec|inst2|valor_interno[9]~28\ : std_logic;
SIGNAL \sec|inst2|valor_interno[10]~30\ : std_logic;
SIGNAL \sec|inst2|valor_interno[11]~31_combout\ : std_logic;
SIGNAL \inst11|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \sec|inst5|$00000|auto_generated|result_node[11]~6_combout\ : std_logic;
SIGNAL \sec|inst|Equal3~1_combout\ : std_logic;
SIGNAL \sec|inst|Equal3~2_combout\ : std_logic;
SIGNAL \sec|inst|Equal6~0_combout\ : std_logic;
SIGNAL \sec|inst3|instruccion[1]~0_combout\ : std_logic;
SIGNAL \sec|inst|data[71]~23_combout\ : std_logic;
SIGNAL \upa|Mux35~0_combout\ : std_logic;
SIGNAL \upa|Add0~16_combout\ : std_logic;
SIGNAL \sec|inst|data~7_combout\ : std_logic;
SIGNAL \sec|inst|data[87]~8_combout\ : std_logic;
SIGNAL \sec|inst|Equal19~0_combout\ : std_logic;
SIGNAL \sec|inst|data[86]~18_combout\ : std_logic;
SIGNAL \sec|inst|data[74]~20_combout\ : std_logic;
SIGNAL \sec|inst1|SELECTOR~1_combout\ : std_logic;
SIGNAL \sec|inst1|SELECTOR~2_combout\ : std_logic;
SIGNAL \inst11|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \sec|inst2|valor_interno[7]~23_combout\ : std_logic;
SIGNAL \sec|inst5|$00000|auto_generated|result_node[7]~10_combout\ : std_logic;
SIGNAL \sec|inst|Equal0~0_combout\ : std_logic;
SIGNAL \sec|inst|Equal0~1_combout\ : std_logic;
SIGNAL \sec|inst|Equal0~2_combout\ : std_logic;
SIGNAL \sec|inst|data[87]~9_combout\ : std_logic;
SIGNAL \sec|inst1|SELECTOR~0_combout\ : std_logic;
SIGNAL \sec|inst2|valor_interno[10]~29_combout\ : std_logic;
SIGNAL \inst11|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \sec|inst5|$00000|auto_generated|result_node[10]~7_combout\ : std_logic;
SIGNAL \sec|inst|Equal5~0_combout\ : std_logic;
SIGNAL \sec|inst|data[86]~10_combout\ : std_logic;
SIGNAL \sec|inst|data[86]~13_combout\ : std_logic;
SIGNAL \sec|inst|data[86]~17_combout\ : std_logic;
SIGNAL \sec|inst|data[86]~19_combout\ : std_logic;
SIGNAL \sec|inst5|$00000|auto_generated|result_node[0]~14_combout\ : std_logic;
SIGNAL \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \sec|inst2|valor_interno[1]~11_combout\ : std_logic;
SIGNAL \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ : std_logic;
SIGNAL \sec|inst|Equal15~0_combout\ : std_logic;
SIGNAL \sec|inst3|BD~q\ : std_logic;
SIGNAL \RegAux|data_out~12_combout\ : std_logic;
SIGNAL \RegAux|data_out~13_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~3_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~1_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~2_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~0_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~4_combout\ : std_logic;
SIGNAL \upa|Q[6]~feeder_combout\ : std_logic;
SIGNAL \upa|Q[5]~feeder_combout\ : std_logic;
SIGNAL \upa|Q[3]~feeder_combout\ : std_logic;
SIGNAL \upa|Q[1]~feeder_combout\ : std_logic;
SIGNAL \RegPC|data_out[15]~0_combout\ : std_logic;
SIGNAL \RegPC|data_out[14]~1_combout\ : std_logic;
SIGNAL \RegPC|data_out[13]~2_combout\ : std_logic;
SIGNAL \RegPC|data_out[12]~3_combout\ : std_logic;
SIGNAL \RegPC|data_out[11]~4_combout\ : std_logic;
SIGNAL \RegPC|data_out[10]~5_combout\ : std_logic;
SIGNAL \RegPC|data_out[9]~6_combout\ : std_logic;
SIGNAL \RegPC|data_out[8]~7_combout\ : std_logic;
SIGNAL \RegPC|Add0~31\ : std_logic;
SIGNAL \RegPC|Add0~32_combout\ : std_logic;
SIGNAL \RegPC|Equal0~0_combout\ : std_logic;
SIGNAL \RegPC|Add0~33\ : std_logic;
SIGNAL \RegPC|Add0~34_combout\ : std_logic;
SIGNAL \RegPC|Add0~35\ : std_logic;
SIGNAL \RegPC|Add0~36_combout\ : std_logic;
SIGNAL \RegPC|Add0~37\ : std_logic;
SIGNAL \RegPC|Add0~38_combout\ : std_logic;
SIGNAL \RegPC|Add0~39\ : std_logic;
SIGNAL \RegPC|Add0~40_combout\ : std_logic;
SIGNAL \RegPC|Add0~41\ : std_logic;
SIGNAL \RegPC|Add0~42_combout\ : std_logic;
SIGNAL \RegPC|Add0~43\ : std_logic;
SIGNAL \RegPC|Add0~44_combout\ : std_logic;
SIGNAL \RegPC|Add0~45\ : std_logic;
SIGNAL \RegPC|Add0~46_combout\ : std_logic;
SIGNAL \sec|inst2|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \sec|inst3|instruccion\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \upa|Banderas\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RegAux|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst11|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \AcumuladorA|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \AcumuladorB|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sec|inst3|EA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \RegPC|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \sec|inst3|liga\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \sec|inst3|prueba\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \upa|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \upa|Yupa_interno\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sec|inst3|RA\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sec|inst3|EB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \dir|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \sec|inst3|PC\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sec|inst3|ALT_INV_nCBD~clkctrl_outclk\ : std_logic;
SIGNAL \sec|inst3|ALT_INV_nCRI~clkctrl_outclk\ : std_logic;
SIGNAL \sec|inst3|ALT_INV_nDUPA~q\ : std_logic;
SIGNAL \sec|inst3|ALT_INV_EA\ : std_logic_vector(1 DOWNTO 1);
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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\sec|inst3|nCRI~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sec|inst3|nCRI~q\);

\sec|inst3|nCBD~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sec|inst3|nCBD~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);
\sec|inst3|ALT_INV_nCBD~clkctrl_outclk\ <= NOT \sec|inst3|nCBD~clkctrl_outclk\;
\sec|inst3|ALT_INV_nCRI~clkctrl_outclk\ <= NOT \sec|inst3|nCRI~clkctrl_outclk\;
\sec|inst3|ALT_INV_nDUPA~q\ <= NOT \sec|inst3|nDUPA~q\;
\sec|inst3|ALT_INV_EA\(1) <= NOT \sec|inst3|EA\(1);
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

-- Location: IOOBUF_X0_Y25_N16
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

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X24_Y39_N2
\CurrentState[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sec|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	devoe => ww_devoe,
	o => \CurrentState[11]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\CurrentState[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sec|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	devoe => ww_devoe,
	o => \CurrentState[10]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\CurrentState[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sec|inst5|$00000|auto_generated|result_node[9]~8_combout\,
	devoe => ww_devoe,
	o => \CurrentState[9]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\CurrentState[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sec|inst5|$00000|auto_generated|result_node[8]~9_combout\,
	devoe => ww_devoe,
	o => \CurrentState[8]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\CurrentState[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sec|inst5|$00000|auto_generated|result_node[7]~10_combout\,
	devoe => ww_devoe,
	o => \CurrentState[7]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\CurrentState[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sec|inst5|$00000|auto_generated|result_node[6]~11_combout\,
	devoe => ww_devoe,
	o => \CurrentState[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\CurrentState[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sec|inst5|$00000|auto_generated|result_node[5]~12_combout\,
	devoe => ww_devoe,
	o => \CurrentState[5]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\CurrentState[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sec|inst5|$00000|auto_generated|result_node[4]~13_combout\,
	devoe => ww_devoe,
	o => \CurrentState[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\CurrentState[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sec|inst5|$00000|auto_generated|result_node[3]~16_combout\,
	devoe => ww_devoe,
	o => \CurrentState[3]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\CurrentState[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sec|inst5|$00000|auto_generated|result_node[2]~17_combout\,
	devoe => ww_devoe,
	o => \CurrentState[2]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\CurrentState[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	devoe => ww_devoe,
	o => \CurrentState[1]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\CurrentState[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	devoe => ww_devoe,
	o => \CurrentState[0]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
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

-- Location: IOOBUF_X29_Y39_N2
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

-- Location: IOOBUF_X46_Y54_N2
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

-- Location: IOOBUF_X36_Y39_N23
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

-- Location: IOOBUF_X29_Y39_N9
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

-- Location: IOOBUF_X26_Y39_N16
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

-- Location: IOOBUF_X78_Y34_N24
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

-- Location: IOOBUF_X0_Y23_N23
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

-- Location: IOOBUF_X31_Y39_N23
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

-- Location: IOOBUF_X0_Y26_N9
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

-- Location: IOOBUF_X24_Y39_N9
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

-- Location: IOOBUF_X34_Y39_N30
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

-- Location: IOOBUF_X36_Y39_N30
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

-- Location: IOOBUF_X34_Y39_N9
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

-- Location: IOOBUF_X0_Y23_N16
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

-- Location: IOOBUF_X0_Y18_N9
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

-- Location: IOOBUF_X0_Y26_N2
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

-- Location: IOOBUF_X31_Y39_N9
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

-- Location: IOOBUF_X0_Y29_N9
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

-- Location: IOOBUF_X0_Y35_N23
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

-- Location: IOOBUF_X0_Y35_N9
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

-- Location: IOOBUF_X34_Y39_N2
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

-- Location: IOOBUF_X0_Y18_N2
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

-- Location: IOOBUF_X0_Y35_N16
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

-- Location: IOOBUF_X0_Y25_N2
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

-- Location: IOOBUF_X0_Y27_N16
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

-- Location: IOOBUF_X0_Y25_N9
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

-- Location: IOOBUF_X26_Y39_N2
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

-- Location: IOOBUF_X26_Y39_N9
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

-- Location: IOOBUF_X31_Y39_N16
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

-- Location: IOOBUF_X0_Y26_N16
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

-- Location: IOOBUF_X0_Y35_N2
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

-- Location: IOOBUF_X0_Y9_N16
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

-- Location: IOOBUF_X78_Y40_N16
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

-- Location: IOOBUF_X18_Y0_N16
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X78_Y29_N9
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

-- Location: IOOBUF_X78_Y33_N9
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

-- Location: IOOBUF_X38_Y0_N23
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

-- Location: IOOBUF_X58_Y0_N16
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

-- Location: IOOBUF_X62_Y0_N30
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

-- Location: IOOBUF_X74_Y54_N9
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

-- Location: IOOBUF_X51_Y54_N16
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

-- Location: IOOBUF_X69_Y54_N2
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

-- Location: IOOBUF_X0_Y10_N9
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

-- Location: IOOBUF_X60_Y54_N2
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

-- Location: IOOBUF_X58_Y54_N23
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

-- Location: IOOBUF_X22_Y0_N9
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

-- Location: IOOBUF_X0_Y3_N16
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

-- Location: IOOBUF_X46_Y54_N9
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

-- Location: IOOBUF_X49_Y0_N2
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

-- Location: IOOBUF_X46_Y0_N9
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

-- Location: IOOBUF_X51_Y54_N2
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

-- Location: IOOBUF_X54_Y54_N2
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

-- Location: IOOBUF_X54_Y54_N30
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X20_Y0_N16
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

-- Location: IOOBUF_X31_Y0_N16
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

-- Location: IOOBUF_X78_Y30_N23
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

-- Location: IOOBUF_X74_Y54_N23
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

-- Location: IOOBUF_X60_Y54_N16
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X58_Y54_N30
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

-- Location: IOOBUF_X0_Y9_N9
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

-- Location: IOOBUF_X78_Y29_N23
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

-- Location: IOOBUF_X60_Y54_N23
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

-- Location: IOOBUF_X78_Y31_N23
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

-- Location: IOOBUF_X31_Y0_N23
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

-- Location: IOOBUF_X56_Y54_N2
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

-- Location: IOOBUF_X78_Y20_N24
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

-- Location: IOOBUF_X40_Y0_N9
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

-- Location: IOOBUF_X78_Y16_N9
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

-- Location: IOOBUF_X49_Y0_N16
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

-- Location: IOOBUF_X46_Y54_N16
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

-- Location: IOOBUF_X78_Y21_N23
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X0_Y3_N9
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

-- Location: IOOBUF_X18_Y0_N9
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

-- Location: IOOBUF_X78_Y35_N23
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

-- Location: IOOBUF_X74_Y54_N16
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

-- Location: IOOBUF_X0_Y30_N23
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

-- Location: IOOBUF_X24_Y39_N30
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

-- Location: IOOBUF_X36_Y39_N16
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

-- Location: IOOBUF_X0_Y37_N23
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

-- Location: IOOBUF_X20_Y39_N2
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

-- Location: IOOBUF_X0_Y37_N2
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

-- Location: IOOBUF_X0_Y37_N9
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

-- Location: IOOBUF_X24_Y39_N23
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

-- Location: IOOBUF_X20_Y39_N9
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

-- Location: IOOBUF_X0_Y37_N16
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

-- Location: IOOBUF_X0_Y36_N2
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

-- Location: IOOBUF_X0_Y36_N23
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

-- Location: IOOBUF_X20_Y39_N16
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

-- Location: IOOBUF_X0_Y36_N16
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

-- Location: IOOBUF_X0_Y36_N9
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

-- Location: IOOBUF_X31_Y39_N2
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X0_Y26_N23
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

-- Location: IOOBUF_X0_Y27_N23
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

-- Location: IOOBUF_X0_Y27_N2
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

-- Location: IOOBUF_X24_Y39_N16
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

-- Location: IOOBUF_X26_Y39_N30
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

-- Location: IOOBUF_X0_Y27_N9
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

-- Location: IOOBUF_X0_Y28_N9
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

-- Location: IOOBUF_X0_Y29_N2
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

-- Location: IOOBUF_X0_Y25_N23
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

-- Location: IOOBUF_X29_Y39_N16
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

-- Location: IOOBUF_X26_Y39_N23
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

-- Location: IOOBUF_X34_Y39_N23
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

-- Location: IOOBUF_X0_Y23_N9
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

-- Location: IOOBUF_X0_Y28_N2
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

-- Location: IOOBUF_X0_Y23_N2
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

-- Location: LCCOMB_X12_Y34_N16
\sec|inst2|valor_interno[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst2|valor_interno[0]~33_combout\ = !\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	combout => \sec|inst2|valor_interno[0]~33_combout\);

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

-- Location: FF_X12_Y34_N17
\sec|inst2|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst2|valor_interno[0]~33_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst2|valor_interno\(0));

-- Location: LCCOMB_X13_Y34_N2
\sec|inst2|valor_interno[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst2|valor_interno[1]~11_combout\ = (\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ & (\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ $ (VCC))) # (!\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ & 
-- (\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & VCC))
-- \sec|inst2|valor_interno[1]~12\ = CARRY((\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ & \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datad => VCC,
	combout => \sec|inst2|valor_interno[1]~11_combout\,
	cout => \sec|inst2|valor_interno[1]~12\);

-- Location: LCCOMB_X13_Y34_N4
\sec|inst2|valor_interno[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst2|valor_interno[2]~13_combout\ = (\sec|inst2|valor_interno[1]~12\ & (((\sec|inst1|SELECTOR~2_combout\)) # (!\sec|inst2|valor_interno\(2)))) # (!\sec|inst2|valor_interno[1]~12\ & (((\sec|inst2|valor_interno\(2) & !\sec|inst1|SELECTOR~2_combout\)) 
-- # (GND)))
-- \sec|inst2|valor_interno[2]~14\ = CARRY(((\sec|inst1|SELECTOR~2_combout\) # (!\sec|inst2|valor_interno[1]~12\)) # (!\sec|inst2|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst2|valor_interno\(2),
	datab => \sec|inst1|SELECTOR~2_combout\,
	datad => VCC,
	cin => \sec|inst2|valor_interno[1]~12\,
	combout => \sec|inst2|valor_interno[2]~13_combout\,
	cout => \sec|inst2|valor_interno[2]~14\);

-- Location: FF_X13_Y34_N5
\sec|inst2|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst2|valor_interno[2]~13_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst2|valor_interno\(2));

-- Location: LCCOMB_X13_Y34_N6
\sec|inst2|valor_interno[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst2|valor_interno[3]~15_combout\ = (\sec|inst2|valor_interno[2]~14\ & (\sec|inst2|valor_interno\(3) & (!\sec|inst1|SELECTOR~2_combout\ & VCC))) # (!\sec|inst2|valor_interno[2]~14\ & ((((\sec|inst2|valor_interno\(3) & 
-- !\sec|inst1|SELECTOR~2_combout\)))))
-- \sec|inst2|valor_interno[3]~16\ = CARRY((\sec|inst2|valor_interno\(3) & (!\sec|inst1|SELECTOR~2_combout\ & !\sec|inst2|valor_interno[2]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst2|valor_interno\(3),
	datab => \sec|inst1|SELECTOR~2_combout\,
	datad => VCC,
	cin => \sec|inst2|valor_interno[2]~14\,
	combout => \sec|inst2|valor_interno[3]~15_combout\,
	cout => \sec|inst2|valor_interno[3]~16\);

-- Location: FF_X13_Y34_N7
\sec|inst2|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst2|valor_interno[3]~15_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst2|valor_interno\(3));

-- Location: LCCOMB_X13_Y34_N8
\sec|inst2|valor_interno[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst2|valor_interno[4]~17_combout\ = (\sec|inst5|$00000|auto_generated|result_node[4]~13_combout\ & (!\sec|inst2|valor_interno[3]~16\)) # (!\sec|inst5|$00000|auto_generated|result_node[4]~13_combout\ & ((\sec|inst2|valor_interno[3]~16\) # (GND)))
-- \sec|inst2|valor_interno[4]~18\ = CARRY((!\sec|inst2|valor_interno[3]~16\) # (!\sec|inst5|$00000|auto_generated|result_node[4]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[4]~13_combout\,
	datad => VCC,
	cin => \sec|inst2|valor_interno[3]~16\,
	combout => \sec|inst2|valor_interno[4]~17_combout\,
	cout => \sec|inst2|valor_interno[4]~18\);

-- Location: FF_X13_Y34_N9
\sec|inst2|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst2|valor_interno[4]~17_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst2|valor_interno\(4));

-- Location: LCCOMB_X15_Y34_N4
\sec|inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal1~0_combout\ = (!\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & (\sec|inst|Equal0~2_combout\ & \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datab => \sec|inst|Equal0~2_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	combout => \sec|inst|Equal1~0_combout\);

-- Location: FF_X15_Y34_N5
\sec|inst3|nCRI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst|Equal1~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|nCRI~q\);

-- Location: CLKCTRL_G0
\sec|inst3|nCRI~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sec|inst3|nCRI~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sec|inst3|nCRI~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y34_N18
\sec|inst|data[27]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[27]~34_combout\ = (!\sec|inst|Equal5~0_combout\ & (((\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\) # (!\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\)) # (!\sec|inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|Equal0~2_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datac => \sec|inst|Equal5~0_combout\,
	datad => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	combout => \sec|inst|data[27]~34_combout\);

-- Location: LCCOMB_X16_Y34_N30
\sec|inst5|$00000|auto_generated|result_node[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst5|$00000|auto_generated|result_node[2]~17_combout\ = (\sec|inst2|valor_interno\(2) & ((\sec|inst3|instruccion\(0) & ((!\sec|inst1|SELECTOR~1_combout\))) # (!\sec|inst3|instruccion\(0) & (!\sec|inst3|instruccion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst2|valor_interno\(2),
	datab => \sec|inst3|instruccion\(1),
	datac => \sec|inst3|instruccion\(0),
	datad => \sec|inst1|SELECTOR~1_combout\,
	combout => \sec|inst5|$00000|auto_generated|result_node[2]~17_combout\);

-- Location: LCCOMB_X14_Y34_N2
\sec|inst5|$00000|auto_generated|result_node[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst5|$00000|auto_generated|result_node[3]~16_combout\ = (\sec|inst2|valor_interno\(3) & ((\sec|inst3|instruccion\(0) & ((!\sec|inst1|SELECTOR~1_combout\))) # (!\sec|inst3|instruccion\(0) & (!\sec|inst3|instruccion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|instruccion\(0),
	datab => \sec|inst3|instruccion\(1),
	datac => \sec|inst2|valor_interno\(3),
	datad => \sec|inst1|SELECTOR~1_combout\,
	combout => \sec|inst5|$00000|auto_generated|result_node[3]~16_combout\);

-- Location: LCCOMB_X14_Y34_N6
\sec|inst|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal3~0_combout\ = (\sec|inst5|$00000|auto_generated|result_node[5]~12_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[3]~16_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[4]~13_combout\ & 
-- \sec|inst5|$00000|auto_generated|result_node[6]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[5]~12_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[3]~16_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[4]~13_combout\,
	datad => \sec|inst5|$00000|auto_generated|result_node[6]~11_combout\,
	combout => \sec|inst|Equal3~0_combout\);

-- Location: LCCOMB_X15_Y34_N2
\sec|inst|Equal14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal14~0_combout\ = (!\sec|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (\sec|inst5|$00000|auto_generated|result_node[10]~7_combout\ & (\sec|inst5|$00000|auto_generated|result_node[8]~9_combout\ & 
-- \sec|inst5|$00000|auto_generated|result_node[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[8]~9_combout\,
	datad => \sec|inst5|$00000|auto_generated|result_node[7]~10_combout\,
	combout => \sec|inst|Equal14~0_combout\);

-- Location: LCCOMB_X19_Y34_N28
\sec|inst|Equal16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal16~0_combout\ = (\sec|inst5|$00000|auto_generated|result_node[9]~8_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[2]~17_combout\ & (\sec|inst|Equal3~0_combout\ & \sec|inst|Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[9]~8_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[2]~17_combout\,
	datac => \sec|inst|Equal3~0_combout\,
	datad => \sec|inst|Equal14~0_combout\,
	combout => \sec|inst|Equal16~0_combout\);

-- Location: LCCOMB_X19_Y34_N18
\sec|inst|Equal17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal17~0_combout\ = (\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & (\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ & \sec|inst|Equal16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \sec|inst|Equal16~0_combout\,
	combout => \sec|inst|Equal17~0_combout\);

-- Location: LCCOMB_X14_Y34_N0
\sec|inst|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal8~0_combout\ = (!\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & (\sec|inst5|$00000|auto_generated|result_node[10]~7_combout\ & (\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ & \sec|inst|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \sec|inst|Equal3~2_combout\,
	combout => \sec|inst|Equal8~0_combout\);

-- Location: LCCOMB_X14_Y34_N22
\sec|inst|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal4~0_combout\ = (!\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[10]~7_combout\ & (\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ & \sec|inst|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \sec|inst|Equal3~2_combout\,
	combout => \sec|inst|Equal4~0_combout\);

-- Location: LCCOMB_X18_Y34_N26
\sec|inst|data[26]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[26]~31_combout\ = (!\sec|inst|Equal8~0_combout\ & (!\sec|inst|Equal4~0_combout\ & (!\sec|inst|Equal15~0_combout\ & !\sec|inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|Equal8~0_combout\,
	datab => \sec|inst|Equal4~0_combout\,
	datac => \sec|inst|Equal15~0_combout\,
	datad => \sec|inst|Equal1~0_combout\,
	combout => \sec|inst|data[26]~31_combout\);

-- Location: LCCOMB_X14_Y34_N24
\sec|inst|Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal9~0_combout\ = (\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & (\sec|inst5|$00000|auto_generated|result_node[10]~7_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ & \sec|inst|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \sec|inst|Equal3~2_combout\,
	combout => \sec|inst|Equal9~0_combout\);

-- Location: LCCOMB_X14_Y34_N10
\sec|inst|Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal11~0_combout\ = (!\sec|inst5|$00000|auto_generated|result_node[2]~17_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[3]~16_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[10]~7_combout\ & 
-- \sec|inst5|$00000|auto_generated|result_node[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[2]~17_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[3]~16_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datad => \sec|inst5|$00000|auto_generated|result_node[7]~10_combout\,
	combout => \sec|inst|Equal11~0_combout\);

-- Location: LCCOMB_X14_Y34_N16
\sec|inst|Equal11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal11~1_combout\ = (((\sec|inst5|$00000|auto_generated|result_node[6]~11_combout\) # (!\sec|inst|Equal11~0_combout\)) # (!\sec|inst5|$00000|auto_generated|result_node[8]~9_combout\)) # 
-- (!\sec|inst5|$00000|auto_generated|result_node[5]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[5]~12_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[8]~9_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[6]~11_combout\,
	datad => \sec|inst|Equal11~0_combout\,
	combout => \sec|inst|Equal11~1_combout\);

-- Location: LCCOMB_X13_Y34_N26
\sec|inst|Equal11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal11~2_combout\ = (\sec|inst5|$00000|auto_generated|result_node[4]~13_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[9]~8_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[11]~6_combout\ & !\sec|inst|Equal11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[4]~13_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[9]~8_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datad => \sec|inst|Equal11~1_combout\,
	combout => \sec|inst|Equal11~2_combout\);

-- Location: LCCOMB_X14_Y34_N28
\sec|inst|data[74]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[74]~14_combout\ = (!\sec|inst|Equal9~0_combout\ & ((\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\) # (!\sec|inst|Equal11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst|Equal9~0_combout\,
	datac => \sec|inst|Equal11~2_combout\,
	datad => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	combout => \sec|inst|data[74]~14_combout\);

-- Location: LCCOMB_X14_Y34_N20
\sec|inst|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal3~3_combout\ = (!\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[10]~7_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ & \sec|inst|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \sec|inst|Equal3~2_combout\,
	combout => \sec|inst|Equal3~3_combout\);

-- Location: LCCOMB_X14_Y34_N30
\sec|inst|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal7~0_combout\ = (!\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & (\sec|inst5|$00000|auto_generated|result_node[10]~7_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ & \sec|inst|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \sec|inst|Equal3~2_combout\,
	combout => \sec|inst|Equal7~0_combout\);

-- Location: LCCOMB_X18_Y34_N22
\sec|inst|data[86]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[86]~12_combout\ = (!\sec|inst|Equal7~0_combout\ & (((\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\) # (!\sec|inst|Equal16~0_combout\)) # (!\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datac => \sec|inst|Equal7~0_combout\,
	datad => \sec|inst|Equal16~0_combout\,
	combout => \sec|inst|data[86]~12_combout\);

-- Location: LCCOMB_X18_Y34_N6
\sec|inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal0~3_combout\ = (!\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & (\sec|inst|Equal0~2_combout\ & !\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datac => \sec|inst|Equal0~2_combout\,
	datad => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	combout => \sec|inst|Equal0~3_combout\);

-- Location: LCCOMB_X18_Y34_N8
\sec|inst|data[27]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[27]~32_combout\ = (!\sec|inst|Equal3~3_combout\ & (\sec|inst|data[86]~12_combout\ & !\sec|inst|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst|Equal3~3_combout\,
	datac => \sec|inst|data[86]~12_combout\,
	datad => \sec|inst|Equal0~3_combout\,
	combout => \sec|inst|data[27]~32_combout\);

-- Location: LCCOMB_X15_Y34_N12
\sec|inst|Equal14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal14~2_combout\ = (\sec|inst5|$00000|auto_generated|result_node[9]~8_combout\ & (\sec|inst|Equal14~0_combout\ & \sec|inst|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[9]~8_combout\,
	datab => \sec|inst|Equal14~0_combout\,
	datad => \sec|inst|Equal3~0_combout\,
	combout => \sec|inst|Equal14~2_combout\);

-- Location: LCCOMB_X15_Y34_N16
\sec|inst|Equal14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal14~3_combout\ = (!\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[2]~17_combout\ & \sec|inst|Equal14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[2]~17_combout\,
	datad => \sec|inst|Equal14~2_combout\,
	combout => \sec|inst|Equal14~3_combout\);

-- Location: LCCOMB_X17_Y34_N14
\sec|inst|data[86]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[86]~15_combout\ = ((!\sec|inst|Equal3~2_combout\) # (!\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\)) # (!\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \sec|inst|Equal3~2_combout\,
	combout => \sec|inst|data[86]~15_combout\);

-- Location: LCCOMB_X17_Y34_N6
\sec|inst|Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal13~0_combout\ = (\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ & \sec|inst|Equal11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \sec|inst|Equal11~2_combout\,
	combout => \sec|inst|Equal13~0_combout\);

-- Location: LCCOMB_X17_Y34_N8
\sec|inst|data[27]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[27]~16_combout\ = (!\sec|inst|Equal14~3_combout\ & (\sec|inst|data[86]~15_combout\ & !\sec|inst|Equal13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst|Equal14~3_combout\,
	datac => \sec|inst|data[86]~15_combout\,
	datad => \sec|inst|Equal13~0_combout\,
	combout => \sec|inst|data[27]~16_combout\);

-- Location: LCCOMB_X18_Y34_N10
\sec|inst|data[26]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[26]~33_combout\ = ((!\sec|inst|data[27]~16_combout\) # (!\sec|inst|data[27]~32_combout\)) # (!\sec|inst|data[74]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst|data[74]~14_combout\,
	datac => \sec|inst|data[27]~32_combout\,
	datad => \sec|inst|data[27]~16_combout\,
	combout => \sec|inst|data[26]~33_combout\);

-- Location: LCCOMB_X18_Y34_N30
\sec|inst|data[26]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[26]~35_combout\ = ((\sec|inst|data[27]~34_combout\ & (\sec|inst|Equal17~0_combout\ & !\sec|inst|data[26]~33_combout\))) # (!\sec|inst|data[26]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|data[27]~34_combout\,
	datab => \sec|inst|Equal17~0_combout\,
	datac => \sec|inst|data[26]~31_combout\,
	datad => \sec|inst|data[26]~33_combout\,
	combout => \sec|inst|data[26]~35_combout\);

-- Location: FF_X18_Y34_N31
\sec|inst3|nAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst|data[26]~35_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|nAS~q\);

-- Location: LCCOMB_X16_Y34_N2
\sec|inst|Equal14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal14~1_combout\ = (\sec|inst5|$00000|auto_generated|result_node[9]~8_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & (\sec|inst|Equal3~0_combout\ & \sec|inst|Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[9]~8_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datac => \sec|inst|Equal3~0_combout\,
	datad => \sec|inst|Equal14~0_combout\,
	combout => \sec|inst|Equal14~1_combout\);

-- Location: LCCOMB_X18_Y34_N14
\sec|inst|data[27]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[27]~37_combout\ = (((!\sec|inst|data[27]~34_combout\) # (!\sec|inst|Equal14~1_combout\)) # (!\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\)) # (!\sec|inst5|$00000|auto_generated|result_node[2]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[2]~17_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datac => \sec|inst|Equal14~1_combout\,
	datad => \sec|inst|data[27]~34_combout\,
	combout => \sec|inst|data[27]~37_combout\);

-- Location: LCCOMB_X18_Y34_N16
\sec|inst|data[86]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[86]~11_combout\ = (!\sec|inst|Equal8~0_combout\ & (!\sec|inst|Equal4~0_combout\ & (!\sec|inst|Equal15~0_combout\ & !\sec|inst|Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|Equal8~0_combout\,
	datab => \sec|inst|Equal4~0_combout\,
	datac => \sec|inst|Equal15~0_combout\,
	datad => \sec|inst|Equal17~0_combout\,
	combout => \sec|inst|data[86]~11_combout\);

-- Location: LCCOMB_X18_Y34_N20
\sec|inst|data[27]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[27]~38_combout\ = (\sec|inst|Equal1~0_combout\) # (((\sec|inst|data[27]~37_combout\) # (!\sec|inst|data[86]~11_combout\)) # (!\sec|inst|data[74]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|Equal1~0_combout\,
	datab => \sec|inst|data[74]~14_combout\,
	datac => \sec|inst|data[27]~37_combout\,
	datad => \sec|inst|data[86]~11_combout\,
	combout => \sec|inst|data[27]~38_combout\);

-- Location: LCCOMB_X18_Y34_N4
\sec|inst|data[27]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[27]~39_combout\ = ((!\sec|inst|data[27]~38_combout\) # (!\sec|inst|data[27]~32_combout\)) # (!\sec|inst|data[27]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|data[27]~16_combout\,
	datab => \sec|inst|data[27]~32_combout\,
	datad => \sec|inst|data[27]~38_combout\,
	combout => \sec|inst|data[27]~39_combout\);

-- Location: FF_X18_Y34_N5
\sec|inst3|nCBD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst|data[27]~39_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|nCBD~q\);

-- Location: CLKCTRL_G2
\sec|inst3|nCBD~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sec|inst3|nCBD~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sec|inst3|nCBD~clkctrl_outclk\);

-- Location: LCCOMB_X13_Y36_N0
\RegPC|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~16_combout\ = \RegPC|data_out\(0) $ (VCC)
-- \RegPC|Add0~17\ = CARRY(\RegPC|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(0),
	datad => VCC,
	combout => \RegPC|Add0~16_combout\,
	cout => \RegPC|Add0~17\);

-- Location: LCCOMB_X17_Y34_N28
\sec|inst|Equal18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal18~0_combout\ = (!\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ & (\sec|inst5|$00000|auto_generated|result_node[2]~17_combout\ & \sec|inst|Equal14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[2]~17_combout\,
	datad => \sec|inst|Equal14~1_combout\,
	combout => \sec|inst|Equal18~0_combout\);

-- Location: LCCOMB_X16_Y34_N4
\sec|inst3|liga[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst3|liga[0]~2_combout\ = (\sec|inst5|$00000|auto_generated|result_node[2]~17_combout\) # (((!\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & !\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\)) # 
-- (!\sec|inst|Equal14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[2]~17_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \sec|inst|Equal14~2_combout\,
	combout => \sec|inst3|liga[0]~2_combout\);

-- Location: LCCOMB_X15_Y34_N26
\sec|inst|data[87]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[87]~6_combout\ = ((\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\)) # (!\sec|inst|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \sec|inst|Equal0~2_combout\,
	combout => \sec|inst|data[87]~6_combout\);

-- Location: LCCOMB_X17_Y34_N10
\sec|inst3|liga[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst3|liga[0]~0_combout\ = (!\sec|inst|Equal3~3_combout\ & (!\sec|inst|Equal7~0_combout\ & (!\sec|inst|Equal5~0_combout\ & \sec|inst|data[87]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|Equal3~3_combout\,
	datab => \sec|inst|Equal7~0_combout\,
	datac => \sec|inst|Equal5~0_combout\,
	datad => \sec|inst|data[87]~6_combout\,
	combout => \sec|inst3|liga[0]~0_combout\);

-- Location: LCCOMB_X17_Y34_N12
\sec|inst3|liga[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst3|liga[0]~1_combout\ = (!\sec|inst|Equal8~0_combout\ & (!\sec|inst|Equal4~0_combout\ & \sec|inst3|liga[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|Equal8~0_combout\,
	datac => \sec|inst|Equal4~0_combout\,
	datad => \sec|inst3|liga[0]~0_combout\,
	combout => \sec|inst3|liga[0]~1_combout\);

-- Location: LCCOMB_X17_Y34_N30
\sec|inst3|liga[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst3|liga[0]~3_combout\ = (\sec|inst|data[74]~14_combout\ & (\sec|inst3|liga[0]~2_combout\ & (\sec|inst|data[27]~16_combout\ & \sec|inst3|liga[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|data[74]~14_combout\,
	datab => \sec|inst3|liga[0]~2_combout\,
	datac => \sec|inst|data[27]~16_combout\,
	datad => \sec|inst3|liga[0]~1_combout\,
	combout => \sec|inst3|liga[0]~3_combout\);

-- Location: LCCOMB_X17_Y34_N16
\sec|inst|data[28]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[28]~36_combout\ = (\sec|inst|Equal1~0_combout\) # (((\sec|inst|Equal18~0_combout\ & \sec|inst3|liga[0]~3_combout\)) # (!\sec|inst|data[86]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|Equal1~0_combout\,
	datab => \sec|inst|Equal18~0_combout\,
	datac => \sec|inst3|liga[0]~3_combout\,
	datad => \sec|inst|data[86]~11_combout\,
	combout => \sec|inst|data[28]~36_combout\);

-- Location: FF_X17_Y34_N17
\sec|inst3|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst|data[28]~36_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|PC\(0));

-- Location: FF_X17_Y34_N23
\sec|inst3|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sec|inst|Equal18~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|PC\(2));

-- Location: LCCOMB_X14_Y36_N0
\RegPC|Add0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~55_combout\ = (\sec|inst3|PC\(0) & ((\sec|inst3|PC\(2) & ((\upa|Yupa[0]~28_combout\))) # (!\sec|inst3|PC\(2) & (\RegPC|Add0~16_combout\)))) # (!\sec|inst3|PC\(0) & (((\upa|Yupa[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Add0~16_combout\,
	datab => \sec|inst3|PC\(0),
	datac => \sec|inst3|PC\(2),
	datad => \upa|Yupa[0]~28_combout\,
	combout => \RegPC|Add0~55_combout\);

-- Location: FF_X14_Y36_N1
\RegPC|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~55_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(0));

-- Location: FF_X15_Y36_N29
\dir|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sec|inst3|ALT_INV_nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(0));

-- Location: LCCOMB_X18_Y34_N28
\sec|inst|Equal11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal11~3_combout\ = (!\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ & \sec|inst|Equal11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \sec|inst|Equal11~2_combout\,
	combout => \sec|inst|Equal11~3_combout\);

-- Location: LCCOMB_X17_Y33_N28
\sec|inst|data[69]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[69]~24_combout\ = (!\sec|inst|Equal6~0_combout\ & (\sec|inst|Equal11~3_combout\ & \sec|inst3|liga[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|Equal6~0_combout\,
	datac => \sec|inst|Equal11~3_combout\,
	datad => \sec|inst3|liga[0]~1_combout\,
	combout => \sec|inst|data[69]~24_combout\);

-- Location: FF_X17_Y33_N29
\sec|inst3|EA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst|data[69]~24_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|EA\(1));

-- Location: FF_X17_Y33_N7
\sec|inst3|nWB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sec|inst|Equal8~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|nWB~q\);

-- Location: LCCOMB_X16_Y33_N16
\AcumuladorB|C[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[2]~5_combout\ = (\sec|inst3|nWB~q\) # (((\AcumuladorB|data_out\(2)) # (!\sec|inst3|EB\(0))) # (!\sec|inst3|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nWB~q\,
	datab => \sec|inst3|EA\(1),
	datac => \sec|inst3|EB\(0),
	datad => \AcumuladorB|data_out\(2),
	combout => \AcumuladorB|C[2]~5_combout\);

-- Location: LCCOMB_X17_Y34_N2
\sec|inst|data[44]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[44]~21_combout\ = (((!\sec|inst3|liga[0]~1_combout\) # (!\sec|inst|data[27]~16_combout\)) # (!\sec|inst|Equal18~0_combout\)) # (!\sec|inst|data[74]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|data[74]~14_combout\,
	datab => \sec|inst|Equal18~0_combout\,
	datac => \sec|inst|data[27]~16_combout\,
	datad => \sec|inst3|liga[0]~1_combout\,
	combout => \sec|inst|data[44]~21_combout\);

-- Location: LCCOMB_X18_Y34_N2
\sec|inst|data[44]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[44]~22_combout\ = (\sec|inst|Equal15~0_combout\) # (!\sec|inst|data[44]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sec|inst|Equal15~0_combout\,
	datad => \sec|inst|data[44]~21_combout\,
	combout => \sec|inst|data[44]~22_combout\);

-- Location: FF_X18_Y34_N3
\sec|inst3|nERA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst|data[44]~22_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|nERA1~q\);

-- Location: LCCOMB_X13_Y34_N30
\sec|inst|Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal12~0_combout\ = ((\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\) # (!\sec|inst|Equal11~2_combout\)) # (!\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datac => \sec|inst|Equal11~2_combout\,
	combout => \sec|inst|Equal12~0_combout\);

-- Location: LCCOMB_X18_Y34_N0
\sec|inst|data[86]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[86]~40_combout\ = (!\sec|inst|Equal3~3_combout\ & (((\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\)) # (!\sec|inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datac => \sec|inst|Equal0~2_combout\,
	datad => \sec|inst|Equal3~3_combout\,
	combout => \sec|inst|data[86]~40_combout\);

-- Location: LCCOMB_X17_Y33_N20
\sec|inst|data[54]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[54]~25_combout\ = (!\sec|inst|Equal12~0_combout\ & (!\sec|inst|Equal4~0_combout\ & \sec|inst|data[86]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst|Equal12~0_combout\,
	datac => \sec|inst|Equal4~0_combout\,
	datad => \sec|inst|data[86]~40_combout\,
	combout => \sec|inst|data[54]~25_combout\);

-- Location: FF_X17_Y33_N21
\sec|inst3|nDUPA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst|data[54]~25_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|nDUPA~q\);

-- Location: LCCOMB_X17_Y33_N24
\sec|inst3|RA[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst3|RA[0]~feeder_combout\ = \sec|inst|Equal17~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sec|inst|Equal17~0_combout\,
	combout => \sec|inst3|RA[0]~feeder_combout\);

-- Location: FF_X17_Y33_N25
\sec|inst3|RA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst3|RA[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|RA\(0));

-- Location: LCCOMB_X14_Y32_N10
\upa|Yupa2[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~2_combout\ = (\sec|inst3|nDUPA~q\) # ((\sec|inst3|nERA1~q\ & (!\sec|inst3|RA\(0) & !\sec|inst3|BD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nERA1~q\,
	datab => \sec|inst3|nDUPA~q\,
	datac => \sec|inst3|RA\(0),
	datad => \sec|inst3|BD~q\,
	combout => \upa|Yupa2[7]~2_combout\);

-- Location: LCCOMB_X17_Y33_N4
\sec|inst|data[67]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[67]~29_combout\ = (\sec|inst|data[86]~40_combout\ & ((\sec|inst|Equal4~0_combout\) # (!\sec|inst|Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst|Equal12~0_combout\,
	datac => \sec|inst|Equal4~0_combout\,
	datad => \sec|inst|data[86]~40_combout\,
	combout => \sec|inst|data[67]~29_combout\);

-- Location: FF_X17_Y33_N5
\sec|inst3|nWA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst|data[67]~29_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|nWA~q\);

-- Location: LCCOMB_X18_Y34_N24
\sec|inst|Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal10~0_combout\ = (\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & (\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ & (\sec|inst5|$00000|auto_generated|result_node[10]~7_combout\ & \sec|inst|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datad => \sec|inst|Equal3~2_combout\,
	combout => \sec|inst|Equal10~0_combout\);

-- Location: LCCOMB_X17_Y33_N2
\sec|inst|data[9]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[9]~26_combout\ = (!\sec|inst|Equal6~0_combout\ & (!\sec|inst|Equal12~0_combout\ & !\sec|inst|Equal9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst|Equal6~0_combout\,
	datac => \sec|inst|Equal12~0_combout\,
	datad => \sec|inst|Equal9~0_combout\,
	combout => \sec|inst|data[9]~26_combout\);

-- Location: LCCOMB_X17_Y33_N12
\sec|inst|data[68]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[68]~27_combout\ = (!\sec|inst|Equal10~0_combout\ & (\sec|inst3|liga[0]~0_combout\ & (!\sec|inst|Equal8~0_combout\ & \sec|inst|data[9]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|Equal10~0_combout\,
	datab => \sec|inst3|liga[0]~0_combout\,
	datac => \sec|inst|Equal8~0_combout\,
	datad => \sec|inst|data[9]~26_combout\,
	combout => \sec|inst|data[68]~27_combout\);

-- Location: LCCOMB_X17_Y33_N10
\sec|inst|data[68]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[68]~28_combout\ = (\sec|inst|Equal4~0_combout\) # ((\sec|inst|Equal11~3_combout\) # (\sec|inst|data[68]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst|Equal4~0_combout\,
	datac => \sec|inst|Equal11~3_combout\,
	datad => \sec|inst|data[68]~27_combout\,
	combout => \sec|inst|data[68]~28_combout\);

-- Location: FF_X17_Y33_N11
\sec|inst3|EA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst|data[68]~28_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|EA\(0));

-- Location: LCCOMB_X15_Y32_N20
\AcumuladorA|B[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|B[7]~0_combout\ = ((\sec|inst3|nWA~q\) # (\sec|inst3|EA\(0))) # (!\sec|inst3|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|EA\(1),
	datac => \sec|inst3|nWA~q\,
	datad => \sec|inst3|EA\(0),
	combout => \AcumuladorA|B[7]~0_combout\);

-- Location: LCCOMB_X14_Y33_N30
\AcumuladorB|B[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|B[7]~0_combout\ = (\sec|inst3|EB\(0)) # ((\sec|inst3|nWB~q\) # (!\sec|inst3|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|EB\(0),
	datac => \sec|inst3|nWB~q\,
	datad => \sec|inst3|EA\(1),
	combout => \AcumuladorB|B[7]~0_combout\);

-- Location: LCCOMB_X15_Y32_N26
\upa|Yupa2[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~3_combout\ = (\upa|Yupa2[7]~2_combout\) # (((\sec|inst3|BD~q\) # (!\AcumuladorB|B[7]~0_combout\)) # (!\AcumuladorA|B[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~2_combout\,
	datab => \AcumuladorA|B[7]~0_combout\,
	datac => \AcumuladorB|B[7]~0_combout\,
	datad => \sec|inst3|BD~q\,
	combout => \upa|Yupa2[7]~3_combout\);

-- Location: LCCOMB_X15_Y35_N20
\AcumuladorA|C[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[3]~4_combout\ = (\AcumuladorA|data_out\(3)) # ((\sec|inst3|nWA~q\) # ((!\sec|inst3|EA\(0)) # (!\sec|inst3|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(3),
	datab => \sec|inst3|nWA~q\,
	datac => \sec|inst3|EA\(1),
	datad => \sec|inst3|EA\(0),
	combout => \AcumuladorA|C[3]~4_combout\);

-- Location: LCCOMB_X15_Y35_N26
\AcumuladorA|data_out[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[3]~4_combout\ = (\sec|inst3|EA\(0) & (\AcumuladorA|C[3]~4_combout\)) # (!\sec|inst3|EA\(0) & ((\upa|Yupa2[3]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[3]~4_combout\,
	datab => \sec|inst3|EA\(0),
	datad => \upa|Yupa2[3]~16_combout\,
	combout => \AcumuladorA|data_out[3]~4_combout\);

-- Location: LCCOMB_X17_Y33_N8
\AcumuladorB|TRI_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|TRI_STATE~0_combout\ = (!\sec|inst3|nWB~q\ & (\sec|inst3|EB\(0) & !\sec|inst3|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nWB~q\,
	datac => \sec|inst3|EB\(0),
	datad => \sec|inst3|EA\(1),
	combout => \AcumuladorB|TRI_STATE~0_combout\);

-- Location: LCCOMB_X15_Y33_N4
\AcumuladorA|TRI_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|TRI_STATE~0_combout\ = (!\sec|inst3|nWA~q\ & (!\sec|inst3|EA\(1) & \sec|inst3|EA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|nWA~q\,
	datac => \sec|inst3|EA\(1),
	datad => \sec|inst3|EA\(0),
	combout => \AcumuladorA|TRI_STATE~0_combout\);

-- Location: LCCOMB_X17_Y34_N24
\sec|inst|data[43]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[43]~30_combout\ = (\sec|inst|Equal17~0_combout\) # ((\sec|inst|Equal18~0_combout\ & \sec|inst3|liga[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst|Equal18~0_combout\,
	datac => \sec|inst3|liga[0]~3_combout\,
	datad => \sec|inst|Equal17~0_combout\,
	combout => \sec|inst|data[43]~30_combout\);

-- Location: FF_X17_Y34_N25
\sec|inst3|nERA0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst|data[43]~30_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|nERA0~q\);

-- Location: LCCOMB_X15_Y33_N10
\upa|Yupa[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~3_combout\ = (\sec|inst3|nDUPA~q\) # ((!\sec|inst3|RA\(0) & (!\sec|inst3|BD~q\ & \sec|inst3|nERA0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|RA\(0),
	datab => \sec|inst3|BD~q\,
	datac => \sec|inst3|nDUPA~q\,
	datad => \sec|inst3|nERA0~q\,
	combout => \upa|Yupa[7]~3_combout\);

-- Location: LCCOMB_X15_Y33_N28
\upa|Yupa[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~4_combout\ = (\sec|inst3|nAS~q\) # ((\AcumuladorB|TRI_STATE~0_combout\) # ((\AcumuladorA|TRI_STATE~0_combout\) # (\upa|Yupa[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nAS~q\,
	datab => \AcumuladorB|TRI_STATE~0_combout\,
	datac => \AcumuladorA|TRI_STATE~0_combout\,
	datad => \upa|Yupa[7]~3_combout\,
	combout => \upa|Yupa[7]~4_combout\);

-- Location: LCCOMB_X16_Y35_N18
\RegAux|TRI_STATE_D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|TRI_STATE_D~0_combout\ = (\sec|inst3|RA\(0)) # ((\sec|inst3|BD~q\) # (!\sec|inst3|nERA0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|RA\(0),
	datac => \sec|inst3|nERA0~q\,
	datad => \sec|inst3|BD~q\,
	combout => \RegAux|TRI_STATE_D~0_combout\);

-- Location: LCCOMB_X15_Y35_N0
\upa|Yupa[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[3]~16_combout\ = (\AcumuladorA|data_out\(3) & ((\RegAux|TRI_STATE_D~0_combout\) # ((\RegAux|data_out\(3))))) # (!\AcumuladorA|data_out\(3) & (!\AcumuladorA|TRI_STATE~0_combout\ & ((\RegAux|TRI_STATE_D~0_combout\) # (\RegAux|data_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(3),
	datab => \RegAux|TRI_STATE_D~0_combout\,
	datac => \RegAux|data_out\(3),
	datad => \AcumuladorA|TRI_STATE~0_combout\,
	combout => \upa|Yupa[3]~16_combout\);

-- Location: LCCOMB_X16_Y33_N22
\AcumuladorB|C[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[3]~4_combout\ = (\sec|inst3|nWB~q\) # ((\AcumuladorB|data_out\(3)) # ((!\sec|inst3|EA\(1)) # (!\sec|inst3|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nWB~q\,
	datab => \AcumuladorB|data_out\(3),
	datac => \sec|inst3|EB\(0),
	datad => \sec|inst3|EA\(1),
	combout => \AcumuladorB|C[3]~4_combout\);

-- Location: LCCOMB_X16_Y33_N28
\AcumuladorB|data_out[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[3]~4_combout\ = (\sec|inst3|EB\(0) & (\AcumuladorB|C[3]~4_combout\)) # (!\sec|inst3|EB\(0) & ((\upa|Yupa2[3]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[3]~4_combout\,
	datab => \sec|inst3|EB\(0),
	datad => \upa|Yupa2[3]~16_combout\,
	combout => \AcumuladorB|data_out[3]~4_combout\);

-- Location: LCCOMB_X16_Y33_N20
\AcumuladorB|data_out[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[0]~8_combout\ = (\sec|inst3|nWB~q\ & ((\sec|inst3|EA\(1)) # (\sec|inst3|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EA\(1),
	datac => \sec|inst3|EB\(0),
	datad => \sec|inst3|nWB~q\,
	combout => \AcumuladorB|data_out[0]~8_combout\);

-- Location: FF_X16_Y33_N29
\AcumuladorB|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[3]~4_combout\,
	asdata => \upa|Yupa[3]~18_combout\,
	sload => \sec|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(3));

-- Location: LCCOMB_X16_Y33_N24
\upa|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux31~0_combout\ = (\sec|inst3|EA\(1) & (((\AcumuladorB|data_out\(3)) # (\sec|inst3|nWB~q\)) # (!\sec|inst3|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EB\(0),
	datab => \AcumuladorB|data_out\(3),
	datac => \sec|inst3|EA\(1),
	datad => \sec|inst3|nWB~q\,
	combout => \upa|Mux31~0_combout\);

-- Location: LCCOMB_X16_Y33_N18
\AcumuladorA|data_out[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[2]~5_combout\ = (\sec|inst3|EA\(0) & (\AcumuladorA|C[2]~5_combout\)) # (!\sec|inst3|EA\(0) & ((\upa|Yupa2[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[2]~5_combout\,
	datab => \sec|inst3|EA\(0),
	datad => \upa|Yupa2[2]~19_combout\,
	combout => \AcumuladorA|data_out[2]~5_combout\);

-- Location: LCCOMB_X13_Y35_N6
\AcumuladorA|data_out[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[0]~8_combout\ = (\sec|inst3|nWA~q\ & ((\sec|inst3|EA\(1)) # (\sec|inst3|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EA\(1),
	datab => \sec|inst3|nWA~q\,
	datac => \sec|inst3|EA\(0),
	combout => \AcumuladorA|data_out[0]~8_combout\);

-- Location: FF_X16_Y33_N19
\AcumuladorA|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[2]~5_combout\,
	asdata => \upa|Yupa[2]~21_combout\,
	sload => \sec|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(2));

-- Location: LCCOMB_X16_Y33_N6
\AcumuladorA|C[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[2]~5_combout\ = (\sec|inst3|nWA~q\) # (((\AcumuladorA|data_out\(2)) # (!\sec|inst3|EA\(0))) # (!\sec|inst3|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nWA~q\,
	datab => \sec|inst3|EA\(1),
	datac => \sec|inst3|EA\(0),
	datad => \AcumuladorA|data_out\(2),
	combout => \AcumuladorA|C[2]~5_combout\);

-- Location: LCCOMB_X14_Y32_N0
\RegAux|data_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~6_combout\ = (\sec|inst3|RA\(0) & (\RegAux|data_out\(10))) # (!\sec|inst3|RA\(0) & ((\upa|Yupa2[1]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|RA\(0),
	datac => \RegAux|data_out\(10),
	datad => \upa|Yupa2[1]~22_combout\,
	combout => \RegAux|data_out~6_combout\);

-- Location: FF_X14_Y32_N1
\RegAux|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~6_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(9));

-- Location: LCCOMB_X14_Y32_N20
\RegAux|C[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|C[1]~6_combout\ = ((\sec|inst3|BD~q\) # ((\sec|inst3|RA\(0)) # (\RegAux|data_out\(9)))) # (!\sec|inst3|nERA1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nERA1~q\,
	datab => \sec|inst3|BD~q\,
	datac => \sec|inst3|RA\(0),
	datad => \RegAux|data_out\(9),
	combout => \RegAux|C[1]~6_combout\);

-- Location: LCCOMB_X14_Y35_N4
\AcumuladorB|C[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[1]~6_combout\ = (\sec|inst3|nWB~q\) # (((\AcumuladorB|data_out\(1)) # (!\sec|inst3|EB\(0))) # (!\sec|inst3|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nWB~q\,
	datab => \sec|inst3|EA\(1),
	datac => \AcumuladorB|data_out\(1),
	datad => \sec|inst3|EB\(0),
	combout => \AcumuladorB|C[1]~6_combout\);

-- Location: LCCOMB_X14_Y35_N8
\AcumuladorB|data_out[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[1]~6_combout\ = (\sec|inst3|EB\(0) & (\AcumuladorB|C[1]~6_combout\)) # (!\sec|inst3|EB\(0) & ((\upa|Yupa2[1]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EB\(0),
	datab => \AcumuladorB|C[1]~6_combout\,
	datad => \upa|Yupa2[1]~22_combout\,
	combout => \AcumuladorB|data_out[1]~6_combout\);

-- Location: LCCOMB_X15_Y32_N6
\upa|Yupa[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[1]~23_combout\ = (\sec|inst3|nDUPA~q\ & (\upa|Yupa_interno\(1) & ((\AcumuladorB|data_out\(1)) # (!\AcumuladorB|TRI_STATE~0_combout\)))) # (!\sec|inst3|nDUPA~q\ & ((\AcumuladorB|data_out\(1)) # ((!\AcumuladorB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nDUPA~q\,
	datab => \AcumuladorB|data_out\(1),
	datac => \upa|Yupa_interno\(1),
	datad => \AcumuladorB|TRI_STATE~0_combout\,
	combout => \upa|Yupa[1]~23_combout\);

-- Location: LCCOMB_X14_Y32_N14
\RegAux|data_out~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~14_combout\ = (\sec|inst3|BD~q\ & (\RegAux|data_out\(2))) # (!\sec|inst3|BD~q\ & ((\upa|Yupa[1]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegAux|data_out\(2),
	datac => \upa|Yupa[1]~24_combout\,
	datad => \sec|inst3|BD~q\,
	combout => \RegAux|data_out~14_combout\);

-- Location: FF_X14_Y32_N15
\RegAux|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~14_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(1));

-- Location: LCCOMB_X15_Y32_N8
\RegAux|D[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|D[1]~3_combout\ = (\RegAux|data_out\(1)) # ((\sec|inst3|BD~q\) # ((\sec|inst3|RA\(0)) # (!\sec|inst3|nERA0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(1),
	datab => \sec|inst3|BD~q\,
	datac => \sec|inst3|RA\(0),
	datad => \sec|inst3|nERA0~q\,
	combout => \RegAux|D[1]~3_combout\);

-- Location: LCCOMB_X13_Y36_N6
\RegPC|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~22_combout\ = (\RegPC|data_out\(3) & (!\RegPC|Add0~21\)) # (!\RegPC|data_out\(3) & ((\RegPC|Add0~21\) # (GND)))
-- \RegPC|Add0~23\ = CARRY((!\RegPC|Add0~21\) # (!\RegPC|data_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(3),
	datad => VCC,
	cin => \RegPC|Add0~21\,
	combout => \RegPC|Add0~22_combout\,
	cout => \RegPC|Add0~23\);

-- Location: LCCOMB_X13_Y36_N8
\RegPC|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~24_combout\ = (\RegPC|data_out\(4) & (\RegPC|Add0~23\ $ (GND))) # (!\RegPC|data_out\(4) & (!\RegPC|Add0~23\ & VCC))
-- \RegPC|Add0~25\ = CARRY((\RegPC|data_out\(4) & !\RegPC|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(4),
	datad => VCC,
	cin => \RegPC|Add0~23\,
	combout => \RegPC|Add0~24_combout\,
	cout => \RegPC|Add0~25\);

-- Location: LCCOMB_X14_Y35_N22
\AcumuladorB|C[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[4]~3_combout\ = ((\AcumuladorB|data_out\(4)) # ((\sec|inst3|nWB~q\) # (!\sec|inst3|EA\(1)))) # (!\sec|inst3|EB\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EB\(0),
	datab => \AcumuladorB|data_out\(4),
	datac => \sec|inst3|nWB~q\,
	datad => \sec|inst3|EA\(1),
	combout => \AcumuladorB|C[4]~3_combout\);

-- Location: LCCOMB_X15_Y35_N6
\AcumuladorA|C[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[4]~3_combout\ = (\AcumuladorA|data_out\(4)) # ((\sec|inst3|nWA~q\) # ((!\sec|inst3|EA\(0)) # (!\sec|inst3|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(4),
	datab => \sec|inst3|nWA~q\,
	datac => \sec|inst3|EA\(1),
	datad => \sec|inst3|EA\(0),
	combout => \AcumuladorA|C[4]~3_combout\);

-- Location: LCCOMB_X15_Y35_N12
\AcumuladorA|data_out[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[4]~3_combout\ = (\sec|inst3|EA\(0) & (\AcumuladorA|C[4]~3_combout\)) # (!\sec|inst3|EA\(0) & ((\upa|Yupa2[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[4]~3_combout\,
	datab => \sec|inst3|EA\(0),
	datad => \upa|Yupa2[4]~13_combout\,
	combout => \AcumuladorA|data_out[4]~3_combout\);

-- Location: FF_X15_Y35_N13
\AcumuladorA|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[4]~3_combout\,
	asdata => \upa|Yupa[4]~15_combout\,
	sload => \sec|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(4));

-- Location: LCCOMB_X14_Y35_N0
\upa|Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux32~0_combout\ = (\sec|inst3|EA\(1) & ((\AcumuladorB|data_out\(4)) # ((\sec|inst3|nWB~q\) # (!\sec|inst3|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EA\(1),
	datab => \AcumuladorB|data_out\(4),
	datac => \sec|inst3|nWB~q\,
	datad => \sec|inst3|EB\(0),
	combout => \upa|Mux32~0_combout\);

-- Location: LCCOMB_X16_Y34_N18
\upa|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~8_combout\ = ((\AcumuladorA|C[3]~4_combout\ $ (\upa|Mux31~0_combout\ $ (!\upa|Add0~7\)))) # (GND)
-- \upa|Add0~9\ = CARRY((\AcumuladorA|C[3]~4_combout\ & ((\upa|Mux31~0_combout\) # (!\upa|Add0~7\))) # (!\AcumuladorA|C[3]~4_combout\ & (\upa|Mux31~0_combout\ & !\upa|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[3]~4_combout\,
	datab => \upa|Mux31~0_combout\,
	datad => VCC,
	cin => \upa|Add0~7\,
	combout => \upa|Add0~8_combout\,
	cout => \upa|Add0~9\);

-- Location: LCCOMB_X16_Y34_N20
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

-- Location: FF_X16_Y34_N21
\upa|Banderas[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~10_combout\,
	ena => \sec|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Banderas\(4));

-- Location: LCCOMB_X16_Y35_N14
\upa|Yupa2[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[4]~11_combout\ = (\AcumuladorB|data_out\(4) & ((\upa|Banderas\(4)) # ((!\sec|inst3|nDUPA~q\)))) # (!\AcumuladorB|data_out\(4) & (\AcumuladorB|B[7]~0_combout\ & ((\upa|Banderas\(4)) # (!\sec|inst3|nDUPA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(4),
	datab => \upa|Banderas\(4),
	datac => \AcumuladorB|B[7]~0_combout\,
	datad => \sec|inst3|nDUPA~q\,
	combout => \upa|Yupa2[4]~11_combout\);

-- Location: LCCOMB_X14_Y35_N14
\AcumuladorB|C[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[0]~7_combout\ = (((\sec|inst3|nWB~q\) # (\AcumuladorB|data_out\(0))) # (!\sec|inst3|EA\(1))) # (!\sec|inst3|EB\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EB\(0),
	datab => \sec|inst3|EA\(1),
	datac => \sec|inst3|nWB~q\,
	datad => \AcumuladorB|data_out\(0),
	combout => \AcumuladorB|C[0]~7_combout\);

-- Location: LCCOMB_X14_Y35_N6
\AcumuladorB|data_out[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[0]~7_combout\ = (\sec|inst3|EB\(0) & (\AcumuladorB|C[0]~7_combout\)) # (!\sec|inst3|EB\(0) & ((\upa|Yupa2[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EB\(0),
	datab => \AcumuladorB|C[0]~7_combout\,
	datad => \upa|Yupa2[0]~25_combout\,
	combout => \AcumuladorB|data_out[0]~7_combout\);

-- Location: FF_X14_Y35_N7
\AcumuladorB|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[0]~7_combout\,
	asdata => \upa|Yupa[0]~28_combout\,
	sload => \sec|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(0));

-- Location: LCCOMB_X16_Y35_N30
\upa|Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux27~0_combout\ = (\sec|inst3|EA\(1) & ((\AcumuladorB|data_out\(0)) # ((\sec|inst3|nWB~q\) # (!\sec|inst3|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(0),
	datab => \sec|inst3|EB\(0),
	datac => \sec|inst3|EA\(1),
	datad => \sec|inst3|nWB~q\,
	combout => \upa|Mux27~0_combout\);

-- Location: LCCOMB_X14_Y35_N28
\AcumuladorA|data_out[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[0]~7_combout\ = (\sec|inst3|EA\(0) & (\AcumuladorA|C[0]~7_combout\)) # (!\sec|inst3|EA\(0) & ((\upa|Yupa2[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[0]~7_combout\,
	datab => \sec|inst3|EA\(0),
	datad => \upa|Yupa2[0]~25_combout\,
	combout => \AcumuladorA|data_out[0]~7_combout\);

-- Location: FF_X14_Y35_N29
\AcumuladorA|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[0]~7_combout\,
	asdata => \upa|Yupa[0]~28_combout\,
	sload => \sec|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(0));

-- Location: LCCOMB_X14_Y35_N16
\AcumuladorA|C[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[0]~7_combout\ = ((\AcumuladorA|data_out\(0)) # ((\sec|inst3|nWA~q\) # (!\sec|inst3|EA\(0)))) # (!\sec|inst3|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EA\(1),
	datab => \AcumuladorA|data_out\(0),
	datac => \sec|inst3|EA\(0),
	datad => \sec|inst3|nWA~q\,
	combout => \AcumuladorA|C[0]~7_combout\);

-- Location: LCCOMB_X17_Y33_N0
\sec|inst|data[9]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[9]~41_combout\ = (!\sec|inst|Equal8~0_combout\ & (\sec|inst|data[9]~26_combout\ & (!\sec|inst|Equal4~0_combout\ & \sec|inst3|liga[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|Equal8~0_combout\,
	datab => \sec|inst|data[9]~26_combout\,
	datac => \sec|inst|Equal4~0_combout\,
	datad => \sec|inst3|liga[0]~0_combout\,
	combout => \sec|inst|data[9]~41_combout\);

-- Location: FF_X17_Y33_N1
\sec|inst3|CC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst|data[9]~41_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|CC~q\);

-- Location: LCCOMB_X16_Y33_N12
\AcumuladorA|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[7]~0_combout\ = (\sec|inst3|EA\(0) & (\AcumuladorA|C[7]~0_combout\)) # (!\sec|inst3|EA\(0) & ((\upa|Yupa2[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EA\(0),
	datab => \AcumuladorA|C[7]~0_combout\,
	datad => \upa|Yupa2[7]~4_combout\,
	combout => \AcumuladorA|data_out[7]~0_combout\);

-- Location: FF_X16_Y33_N13
\AcumuladorA|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[7]~0_combout\,
	asdata => \upa|Yupa[7]~5_combout\,
	sload => \sec|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(7));

-- Location: LCCOMB_X16_Y33_N0
\AcumuladorA|C[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[7]~0_combout\ = (\sec|inst3|nWA~q\) # (((\AcumuladorA|data_out\(7)) # (!\sec|inst3|EA\(0))) # (!\sec|inst3|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nWA~q\,
	datab => \sec|inst3|EA\(1),
	datac => \sec|inst3|EA\(0),
	datad => \AcumuladorA|data_out\(7),
	combout => \AcumuladorA|C[7]~0_combout\);

-- Location: LCCOMB_X14_Y33_N6
\AcumuladorB|C[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[6]~1_combout\ = (\AcumuladorB|data_out\(6)) # (((\sec|inst3|nWB~q\) # (!\sec|inst3|EA\(1))) # (!\sec|inst3|EB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(6),
	datab => \sec|inst3|EB\(0),
	datac => \sec|inst3|nWB~q\,
	datad => \sec|inst3|EA\(1),
	combout => \AcumuladorB|C[6]~1_combout\);

-- Location: LCCOMB_X14_Y33_N22
\AcumuladorB|data_out[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[6]~1_combout\ = (\sec|inst3|EB\(0) & (\AcumuladorB|C[6]~1_combout\)) # (!\sec|inst3|EB\(0) & ((\upa|Yupa2[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[6]~1_combout\,
	datab => \sec|inst3|EB\(0),
	datad => \upa|Yupa2[6]~7_combout\,
	combout => \AcumuladorB|data_out[6]~1_combout\);

-- Location: LCCOMB_X15_Y33_N22
\upa|Yupa[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[6]~7_combout\ = (\upa|Yupa_interno\(6) & (((\AcumuladorB|data_out\(6))) # (!\AcumuladorB|TRI_STATE~0_combout\))) # (!\upa|Yupa_interno\(6) & (!\sec|inst3|nDUPA~q\ & ((\AcumuladorB|data_out\(6)) # (!\AcumuladorB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa_interno\(6),
	datab => \AcumuladorB|TRI_STATE~0_combout\,
	datac => \sec|inst3|nDUPA~q\,
	datad => \AcumuladorB|data_out\(6),
	combout => \upa|Yupa[6]~7_combout\);

-- Location: LCCOMB_X14_Y32_N16
\RegAux|data_out~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~9_combout\ = (\sec|inst3|BD~q\ & (\RegAux|data_out\(7))) # (!\sec|inst3|BD~q\ & ((\upa|Yupa[6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(7),
	datab => \sec|inst3|BD~q\,
	datad => \upa|Yupa[6]~8_combout\,
	combout => \RegAux|data_out~9_combout\);

-- Location: FF_X14_Y32_N17
\RegAux|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~9_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(6));

-- Location: LCCOMB_X14_Y32_N8
\RegAux|D[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|D[6]~1_combout\ = ((\RegAux|data_out\(6)) # ((\sec|inst3|RA\(0)) # (\sec|inst3|BD~q\))) # (!\sec|inst3|nERA0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nERA0~q\,
	datab => \RegAux|data_out\(6),
	datac => \sec|inst3|RA\(0),
	datad => \sec|inst3|BD~q\,
	combout => \RegAux|D[6]~1_combout\);

-- Location: LCCOMB_X15_Y33_N18
\AcumuladorA|A[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|A[6]~1_combout\ = (\AcumuladorA|data_out\(6)) # ((\sec|inst3|nWA~q\) # ((\sec|inst3|EA\(1)) # (!\sec|inst3|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(6),
	datab => \sec|inst3|nWA~q\,
	datac => \sec|inst3|EA\(1),
	datad => \sec|inst3|EA\(0),
	combout => \AcumuladorA|A[6]~1_combout\);

-- Location: LCCOMB_X13_Y36_N2
\RegPC|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~18_combout\ = (\RegPC|data_out\(1) & (!\RegPC|Add0~17\)) # (!\RegPC|data_out\(1) & ((\RegPC|Add0~17\) # (GND)))
-- \RegPC|Add0~19\ = CARRY((!\RegPC|Add0~17\) # (!\RegPC|data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(1),
	datad => VCC,
	cin => \RegPC|Add0~17\,
	combout => \RegPC|Add0~18_combout\,
	cout => \RegPC|Add0~19\);

-- Location: LCCOMB_X14_Y36_N14
\RegPC|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~54_combout\ = (\sec|inst3|PC\(2) & (((\upa|Yupa[1]~24_combout\)))) # (!\sec|inst3|PC\(2) & ((\sec|inst3|PC\(0) & (\RegPC|Add0~18_combout\)) # (!\sec|inst3|PC\(0) & ((\upa|Yupa[1]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Add0~18_combout\,
	datab => \sec|inst3|PC\(2),
	datac => \upa|Yupa[1]~24_combout\,
	datad => \sec|inst3|PC\(0),
	combout => \RegPC|Add0~54_combout\);

-- Location: FF_X14_Y36_N15
\RegPC|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~54_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(1));

-- Location: LCCOMB_X15_Y36_N10
\dir|valor_interno[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dir|valor_interno[1]~feeder_combout\ = \RegPC|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegPC|data_out\(1),
	combout => \dir|valor_interno[1]~feeder_combout\);

-- Location: FF_X15_Y36_N11
\dir|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sec|inst3|ALT_INV_nCBD~clkctrl_outclk\,
	d => \dir|valor_interno[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(1));

-- Location: FF_X15_Y36_N19
\dir|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sec|inst3|ALT_INV_nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(2));

-- Location: LCCOMB_X15_Y36_N28
\inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\dir|valor_interno\(1)) # ((\dir|valor_interno\(3)) # (\dir|valor_interno\(2) $ (\dir|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(1),
	datab => \dir|valor_interno\(2),
	datac => \dir|valor_interno\(0),
	datad => \dir|valor_interno\(3),
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X15_Y33_N20
\upa|Yupa[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[6]~6_combout\ = (\AcumuladorA|A[6]~1_combout\ & (((\inst|data_out[0]~0_combout\ & !\inst|Mux1~0_combout\)) # (!\sec|inst3|nAS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nAS~q\,
	datab => \inst|data_out[0]~0_combout\,
	datac => \AcumuladorA|A[6]~1_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \upa|Yupa[6]~6_combout\);

-- Location: LCCOMB_X15_Y33_N24
\upa|Yupa[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[6]~8_combout\ = ((\upa|Yupa[6]~7_combout\ & (\RegAux|D[6]~1_combout\ & \upa|Yupa[6]~6_combout\))) # (!\upa|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[6]~7_combout\,
	datab => \upa|Yupa[7]~4_combout\,
	datac => \RegAux|D[6]~1_combout\,
	datad => \upa|Yupa[6]~6_combout\,
	combout => \upa|Yupa[6]~8_combout\);

-- Location: FF_X14_Y33_N23
\AcumuladorB|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[6]~1_combout\,
	asdata => \upa|Yupa[6]~8_combout\,
	sload => \sec|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(6));

-- Location: LCCOMB_X16_Y33_N30
\upa|Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux34~0_combout\ = (\sec|inst3|EA\(1) & ((\AcumuladorB|data_out\(6)) # ((\sec|inst3|nWB~q\) # (!\sec|inst3|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EA\(1),
	datab => \AcumuladorB|data_out\(6),
	datac => \sec|inst3|EB\(0),
	datad => \sec|inst3|nWB~q\,
	combout => \upa|Mux34~0_combout\);

-- Location: LCCOMB_X13_Y33_N10
\RegAux|C[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|C[5]~2_combout\ = (\sec|inst3|BD~q\) # ((\RegAux|data_out\(13)) # ((\sec|inst3|RA\(0)) # (!\sec|inst3|nERA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|BD~q\,
	datab => \RegAux|data_out\(13),
	datac => \sec|inst3|RA\(0),
	datad => \sec|inst3|nERA1~q\,
	combout => \RegAux|C[5]~2_combout\);

-- Location: LCCOMB_X13_Y33_N12
\upa|Yupa2[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[5]~8_combout\ = (\RegAux|C[5]~2_combout\ & ((\AcumuladorA|data_out\(5)) # (\AcumuladorA|B[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|C[5]~2_combout\,
	datab => \AcumuladorA|data_out\(5),
	datad => \AcumuladorA|B[7]~0_combout\,
	combout => \upa|Yupa2[5]~8_combout\);

-- Location: LCCOMB_X17_Y33_N6
\AcumuladorB|C[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[5]~2_combout\ = (\AcumuladorB|data_out\(5)) # (((\sec|inst3|nWB~q\) # (!\sec|inst3|EA\(1))) # (!\sec|inst3|EB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(5),
	datab => \sec|inst3|EB\(0),
	datac => \sec|inst3|nWB~q\,
	datad => \sec|inst3|EA\(1),
	combout => \AcumuladorB|C[5]~2_combout\);

-- Location: LCCOMB_X14_Y33_N20
\AcumuladorB|data_out[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[5]~2_combout\ = (\sec|inst3|EB\(0) & (\AcumuladorB|C[5]~2_combout\)) # (!\sec|inst3|EB\(0) & ((\upa|Yupa2[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[5]~2_combout\,
	datab => \sec|inst3|EB\(0),
	datad => \upa|Yupa2[5]~10_combout\,
	combout => \AcumuladorB|data_out[5]~2_combout\);

-- Location: LCCOMB_X14_Y33_N10
\AcumuladorA|A[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|A[5]~2_combout\ = (\sec|inst3|nWA~q\) # ((\AcumuladorA|data_out\(5)) # ((\sec|inst3|EA\(1)) # (!\sec|inst3|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nWA~q\,
	datab => \AcumuladorA|data_out\(5),
	datac => \sec|inst3|EA\(0),
	datad => \sec|inst3|EA\(1),
	combout => \AcumuladorA|A[5]~2_combout\);

-- Location: LCCOMB_X14_Y33_N24
\upa|Yupa[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[5]~10_combout\ = (\sec|inst3|EA\(1)) # ((\AcumuladorB|data_out\(5)) # ((\sec|inst3|nWB~q\) # (!\sec|inst3|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EA\(1),
	datab => \AcumuladorB|data_out\(5),
	datac => \sec|inst3|nWB~q\,
	datad => \sec|inst3|EB\(0),
	combout => \upa|Yupa[5]~10_combout\);

-- Location: LCCOMB_X17_Y33_N26
\upa|Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux33~0_combout\ = (\sec|inst3|EA\(1) & ((\AcumuladorB|data_out\(5)) # ((\sec|inst3|nWB~q\) # (!\sec|inst3|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(5),
	datab => \sec|inst3|nWB~q\,
	datac => \sec|inst3|EB\(0),
	datad => \sec|inst3|EA\(1),
	combout => \upa|Mux33~0_combout\);

-- Location: LCCOMB_X16_Y34_N22
\upa|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~12_combout\ = ((\AcumuladorA|C[5]~2_combout\ $ (\upa|Mux33~0_combout\ $ (!\upa|Add0~11\)))) # (GND)
-- \upa|Add0~13\ = CARRY((\AcumuladorA|C[5]~2_combout\ & ((\upa|Mux33~0_combout\) # (!\upa|Add0~11\))) # (!\AcumuladorA|C[5]~2_combout\ & (\upa|Mux33~0_combout\ & !\upa|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[5]~2_combout\,
	datab => \upa|Mux33~0_combout\,
	datad => VCC,
	cin => \upa|Add0~11\,
	combout => \upa|Add0~12_combout\,
	cout => \upa|Add0~13\);

-- Location: FF_X16_Y34_N23
\upa|Yupa_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~12_combout\,
	ena => \sec|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(5));

-- Location: LCCOMB_X14_Y33_N2
\upa|Yupa[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[5]~9_combout\ = (\upa|Yupa_interno\(5)) # (!\sec|inst3|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \upa|Yupa_interno\(5),
	datad => \sec|inst3|nDUPA~q\,
	combout => \upa|Yupa[5]~9_combout\);

-- Location: LCCOMB_X14_Y32_N22
\RegAux|data_out~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~10_combout\ = (\sec|inst3|BD~q\ & (\RegAux|data_out\(6))) # (!\sec|inst3|BD~q\ & ((\upa|Yupa[5]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|BD~q\,
	datac => \RegAux|data_out\(6),
	datad => \upa|Yupa[5]~12_combout\,
	combout => \RegAux|data_out~10_combout\);

-- Location: FF_X14_Y32_N23
\RegAux|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~10_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(5));

-- Location: LCCOMB_X14_Y32_N2
\RegAux|D[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|D[5]~2_combout\ = (\RegAux|data_out\(5)) # (((\sec|inst3|RA\(0)) # (\sec|inst3|BD~q\)) # (!\sec|inst3|nERA0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(5),
	datab => \sec|inst3|nERA0~q\,
	datac => \sec|inst3|RA\(0),
	datad => \sec|inst3|BD~q\,
	combout => \RegAux|D[5]~2_combout\);

-- Location: LCCOMB_X14_Y33_N14
\upa|Yupa[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[5]~11_combout\ = (\AcumuladorA|A[5]~2_combout\ & (\upa|Yupa[5]~10_combout\ & (\upa|Yupa[5]~9_combout\ & \RegAux|D[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|A[5]~2_combout\,
	datab => \upa|Yupa[5]~10_combout\,
	datac => \upa|Yupa[5]~9_combout\,
	datad => \RegAux|D[5]~2_combout\,
	combout => \upa|Yupa[5]~11_combout\);

-- Location: LCCOMB_X15_Y36_N24
\inst|data_out[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data_out[0]~2_combout\ = (!\dir|valor_interno\(1) & \dir|valor_interno\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(1),
	datad => \dir|valor_interno\(2),
	combout => \inst|data_out[0]~2_combout\);

-- Location: LCCOMB_X14_Y33_N12
\inst|data_out[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data_out[5]~3_combout\ = (!\dir|valor_interno\(3) & (\dir|valor_interno\(0) & (\inst|data_out[0]~0_combout\ & \inst|data_out[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(3),
	datab => \dir|valor_interno\(0),
	datac => \inst|data_out[0]~0_combout\,
	datad => \inst|data_out[0]~2_combout\,
	combout => \inst|data_out[5]~3_combout\);

-- Location: LCCOMB_X14_Y33_N18
\upa|Yupa[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[5]~12_combout\ = ((\upa|Yupa[5]~11_combout\ & ((\inst|data_out[5]~3_combout\) # (!\sec|inst3|nAS~q\)))) # (!\upa|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nAS~q\,
	datab => \upa|Yupa[7]~4_combout\,
	datac => \upa|Yupa[5]~11_combout\,
	datad => \inst|data_out[5]~3_combout\,
	combout => \upa|Yupa[5]~12_combout\);

-- Location: FF_X14_Y33_N21
\AcumuladorB|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[5]~2_combout\,
	asdata => \upa|Yupa[5]~12_combout\,
	sload => \sec|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(5));

-- Location: LCCOMB_X14_Y33_N8
\upa|Yupa2[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[5]~9_combout\ = (\upa|Yupa2[5]~8_combout\ & (\upa|Yupa[5]~9_combout\ & ((\AcumuladorB|data_out\(5)) # (\AcumuladorB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[5]~8_combout\,
	datab => \AcumuladorB|data_out\(5),
	datac => \AcumuladorB|B[7]~0_combout\,
	datad => \upa|Yupa[5]~9_combout\,
	combout => \upa|Yupa2[5]~9_combout\);

-- Location: LCCOMB_X14_Y33_N16
\upa|Yupa2[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[5]~10_combout\ = ((\upa|Yupa2[5]~9_combout\ & ((\upa|Yupa[5]~12_combout\) # (!\sec|inst3|BD~q\)))) # (!\upa|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|BD~q\,
	datab => \upa|Yupa2[7]~3_combout\,
	datac => \upa|Yupa2[5]~9_combout\,
	datad => \upa|Yupa[5]~12_combout\,
	combout => \upa|Yupa2[5]~10_combout\);

-- Location: LCCOMB_X13_Y33_N20
\AcumuladorA|data_out[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[5]~2_combout\ = (\sec|inst3|EA\(0) & (\AcumuladorA|C[5]~2_combout\)) # (!\sec|inst3|EA\(0) & ((\upa|Yupa2[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[5]~2_combout\,
	datab => \sec|inst3|EA\(0),
	datad => \upa|Yupa2[5]~10_combout\,
	combout => \AcumuladorA|data_out[5]~2_combout\);

-- Location: FF_X13_Y33_N21
\AcumuladorA|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[5]~2_combout\,
	asdata => \upa|Yupa[5]~12_combout\,
	sload => \sec|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(5));

-- Location: LCCOMB_X16_Y33_N14
\AcumuladorA|C[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[5]~2_combout\ = (\sec|inst3|nWA~q\) # (((\AcumuladorA|data_out\(5)) # (!\sec|inst3|EA\(0))) # (!\sec|inst3|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nWA~q\,
	datab => \sec|inst3|EA\(1),
	datac => \sec|inst3|EA\(0),
	datad => \AcumuladorA|data_out\(5),
	combout => \AcumuladorA|C[5]~2_combout\);

-- Location: LCCOMB_X16_Y34_N24
\upa|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~14_combout\ = (\AcumuladorA|C[6]~1_combout\ & ((\upa|Mux34~0_combout\ & (\upa|Add0~13\ & VCC)) # (!\upa|Mux34~0_combout\ & (!\upa|Add0~13\)))) # (!\AcumuladorA|C[6]~1_combout\ & ((\upa|Mux34~0_combout\ & (!\upa|Add0~13\)) # 
-- (!\upa|Mux34~0_combout\ & ((\upa|Add0~13\) # (GND)))))
-- \upa|Add0~15\ = CARRY((\AcumuladorA|C[6]~1_combout\ & (!\upa|Mux34~0_combout\ & !\upa|Add0~13\)) # (!\AcumuladorA|C[6]~1_combout\ & ((!\upa|Add0~13\) # (!\upa|Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[6]~1_combout\,
	datab => \upa|Mux34~0_combout\,
	datad => VCC,
	cin => \upa|Add0~13\,
	combout => \upa|Add0~14_combout\,
	cout => \upa|Add0~15\);

-- Location: FF_X16_Y34_N25
\upa|Yupa_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~14_combout\,
	ena => \sec|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(6));

-- Location: LCCOMB_X13_Y33_N22
\upa|Yupa2[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[6]~5_combout\ = (\sec|inst3|nDUPA~q\ & (\upa|Yupa_interno\(6) & ((\AcumuladorB|B[7]~0_combout\) # (\AcumuladorB|data_out\(6))))) # (!\sec|inst3|nDUPA~q\ & ((\AcumuladorB|B[7]~0_combout\) # ((\AcumuladorB|data_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nDUPA~q\,
	datab => \AcumuladorB|B[7]~0_combout\,
	datac => \upa|Yupa_interno\(6),
	datad => \AcumuladorB|data_out\(6),
	combout => \upa|Yupa2[6]~5_combout\);

-- Location: LCCOMB_X13_Y33_N0
\RegAux|C[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|C[6]~1_combout\ = (\sec|inst3|BD~q\) # ((\RegAux|data_out\(14)) # ((\sec|inst3|RA\(0)) # (!\sec|inst3|nERA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|BD~q\,
	datab => \RegAux|data_out\(14),
	datac => \sec|inst3|RA\(0),
	datad => \sec|inst3|nERA1~q\,
	combout => \RegAux|C[6]~1_combout\);

-- Location: LCCOMB_X13_Y33_N4
\upa|Yupa2[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[6]~6_combout\ = (\upa|Yupa2[6]~5_combout\ & (\RegAux|C[6]~1_combout\ & ((\AcumuladorA|data_out\(6)) # (\AcumuladorA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[6]~5_combout\,
	datab => \RegAux|C[6]~1_combout\,
	datac => \AcumuladorA|data_out\(6),
	datad => \AcumuladorA|B[7]~0_combout\,
	combout => \upa|Yupa2[6]~6_combout\);

-- Location: LCCOMB_X15_Y33_N26
\upa|Yupa2[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[6]~7_combout\ = ((\upa|Yupa2[6]~6_combout\ & ((\upa|Yupa[6]~8_combout\) # (!\sec|inst3|BD~q\)))) # (!\upa|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~3_combout\,
	datab => \sec|inst3|BD~q\,
	datac => \upa|Yupa2[6]~6_combout\,
	datad => \upa|Yupa[6]~8_combout\,
	combout => \upa|Yupa2[6]~7_combout\);

-- Location: LCCOMB_X15_Y33_N12
\AcumuladorA|data_out[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[6]~1_combout\ = (\sec|inst3|EA\(0) & ((\AcumuladorA|C[6]~1_combout\))) # (!\sec|inst3|EA\(0) & (\upa|Yupa2[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[6]~7_combout\,
	datab => \AcumuladorA|C[6]~1_combout\,
	datad => \sec|inst3|EA\(0),
	combout => \AcumuladorA|data_out[6]~1_combout\);

-- Location: FF_X15_Y33_N13
\AcumuladorA|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[6]~1_combout\,
	asdata => \upa|Yupa[6]~8_combout\,
	sload => \sec|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(6));

-- Location: LCCOMB_X16_Y33_N8
\AcumuladorA|C[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[6]~1_combout\ = (\sec|inst3|nWA~q\) # (((\AcumuladorA|data_out\(6)) # (!\sec|inst3|EA\(0))) # (!\sec|inst3|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nWA~q\,
	datab => \sec|inst3|EA\(1),
	datac => \sec|inst3|EA\(0),
	datad => \AcumuladorA|data_out\(6),
	combout => \AcumuladorA|C[6]~1_combout\);

-- Location: LCCOMB_X16_Y34_N26
\upa|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~16_combout\ = ((\upa|Mux35~0_combout\ $ (\AcumuladorA|C[7]~0_combout\ $ (!\upa|Add0~15\)))) # (GND)
-- \upa|Add0~17\ = CARRY((\upa|Mux35~0_combout\ & ((\AcumuladorA|C[7]~0_combout\) # (!\upa|Add0~15\))) # (!\upa|Mux35~0_combout\ & (\AcumuladorA|C[7]~0_combout\ & !\upa|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux35~0_combout\,
	datab => \AcumuladorA|C[7]~0_combout\,
	datad => VCC,
	cin => \upa|Add0~15\,
	combout => \upa|Add0~16_combout\,
	cout => \upa|Add0~17\);

-- Location: LCCOMB_X16_Y34_N28
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

-- Location: FF_X16_Y34_N29
\upa|Banderas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~18_combout\,
	ena => \sec|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Banderas\(1));

-- Location: FF_X16_Y34_N9
\flags|tCC|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sec|inst3|CC~q\,
	asdata => \upa|Banderas\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flags|tCC|valor_interno~q\);

-- Location: LCCOMB_X16_Y34_N10
\upa|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~1_cout\ = CARRY((\flags|tCC|valor_interno~q\ & !\sec|inst3|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flags|tCC|valor_interno~q\,
	datab => \sec|inst3|EA\(1),
	datad => VCC,
	cout => \upa|Add0~1_cout\);

-- Location: LCCOMB_X16_Y34_N12
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

-- Location: FF_X16_Y34_N13
\upa|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~2_combout\,
	ena => \sec|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(0));

-- Location: LCCOMB_X17_Y33_N14
\upa|Yupa[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[0]~25_combout\ = (\upa|Q\(0)) # (!\sec|inst3|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|nDUPA~q\,
	datad => \upa|Q\(0),
	combout => \upa|Yupa[0]~25_combout\);

-- Location: LCCOMB_X15_Y35_N22
\RegAux|C[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|C[0]~7_combout\ = (\sec|inst3|RA\(0)) # ((\sec|inst3|BD~q\) # ((\RegAux|data_out\(8)) # (!\sec|inst3|nERA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|RA\(0),
	datab => \sec|inst3|BD~q\,
	datac => \RegAux|data_out\(8),
	datad => \sec|inst3|nERA1~q\,
	combout => \RegAux|C[0]~7_combout\);

-- Location: LCCOMB_X16_Y35_N24
\upa|Yupa2[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[0]~23_combout\ = (\RegAux|C[0]~7_combout\ & ((\AcumuladorA|B[7]~0_combout\) # (\AcumuladorA|data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegAux|C[0]~7_combout\,
	datac => \AcumuladorA|B[7]~0_combout\,
	datad => \AcumuladorA|data_out\(0),
	combout => \upa|Yupa2[0]~23_combout\);

-- Location: LCCOMB_X15_Y35_N28
\upa|Yupa2[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[0]~24_combout\ = (\upa|Yupa[0]~25_combout\ & (\upa|Yupa2[0]~23_combout\ & ((\AcumuladorB|B[7]~0_combout\) # (\AcumuladorB|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|B[7]~0_combout\,
	datab => \AcumuladorB|data_out\(0),
	datac => \upa|Yupa[0]~25_combout\,
	datad => \upa|Yupa2[0]~23_combout\,
	combout => \upa|Yupa2[0]~24_combout\);

-- Location: LCCOMB_X14_Y35_N18
\upa|Yupa2[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[0]~25_combout\ = ((\upa|Yupa2[0]~24_combout\ & ((\upa|Yupa[0]~28_combout\) # (!\sec|inst3|BD~q\)))) # (!\upa|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~3_combout\,
	datab => \upa|Yupa2[0]~24_combout\,
	datac => \sec|inst3|BD~q\,
	datad => \upa|Yupa[0]~28_combout\,
	combout => \upa|Yupa2[0]~25_combout\);

-- Location: LCCOMB_X13_Y35_N16
\RegAux|data_out~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~7_combout\ = (\sec|inst3|RA\(0) & (\RegAux|data_out\(9))) # (!\sec|inst3|RA\(0) & ((\upa|Yupa2[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|RA\(0),
	datab => \RegAux|data_out\(9),
	datad => \upa|Yupa2[0]~25_combout\,
	combout => \RegAux|data_out~7_combout\);

-- Location: FF_X13_Y35_N17
\RegAux|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~7_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(8));

-- Location: LCCOMB_X14_Y32_N30
\RegAux|data_out~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~8_combout\ = (\sec|inst3|BD~q\ & (\RegAux|data_out\(8))) # (!\sec|inst3|BD~q\ & ((\upa|Yupa[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(8),
	datab => \sec|inst3|BD~q\,
	datad => \upa|Yupa[7]~5_combout\,
	combout => \RegAux|data_out~8_combout\);

-- Location: FF_X14_Y32_N31
\RegAux|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~8_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(7));

-- Location: LCCOMB_X15_Y33_N30
\RegAux|D[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|D[7]~0_combout\ = (\RegAux|data_out\(7)) # ((\sec|inst3|RA\(0)) # ((\sec|inst3|BD~q\) # (!\sec|inst3|nERA0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(7),
	datab => \sec|inst3|RA\(0),
	datac => \sec|inst3|BD~q\,
	datad => \sec|inst3|nERA0~q\,
	combout => \RegAux|D[7]~0_combout\);

-- Location: LCCOMB_X16_Y33_N26
\AcumuladorA|A[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|A[7]~0_combout\ = (\AcumuladorA|data_out\(7)) # ((\sec|inst3|EA\(1)) # ((\sec|inst3|nWA~q\) # (!\sec|inst3|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(7),
	datab => \sec|inst3|EA\(1),
	datac => \sec|inst3|EA\(0),
	datad => \sec|inst3|nWA~q\,
	combout => \AcumuladorA|A[7]~0_combout\);

-- Location: LCCOMB_X13_Y33_N8
\AcumuladorB|C[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[7]~0_combout\ = ((\AcumuladorB|data_out\(7)) # ((\sec|inst3|nWB~q\) # (!\sec|inst3|EA\(1)))) # (!\sec|inst3|EB\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EB\(0),
	datab => \AcumuladorB|data_out\(7),
	datac => \sec|inst3|nWB~q\,
	datad => \sec|inst3|EA\(1),
	combout => \AcumuladorB|C[7]~0_combout\);

-- Location: LCCOMB_X14_Y33_N28
\AcumuladorB|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[7]~0_combout\ = (\sec|inst3|EB\(0) & (\AcumuladorB|C[7]~0_combout\)) # (!\sec|inst3|EB\(0) & ((\upa|Yupa2[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[7]~0_combout\,
	datab => \sec|inst3|EB\(0),
	datad => \upa|Yupa2[7]~4_combout\,
	combout => \AcumuladorB|data_out[7]~0_combout\);

-- Location: FF_X14_Y33_N29
\AcumuladorB|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[7]~0_combout\,
	asdata => \upa|Yupa[7]~5_combout\,
	sload => \sec|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(7));

-- Location: LCCOMB_X14_Y33_N4
\upa|Yupa[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~1_combout\ = (\sec|inst3|EA\(1)) # ((\AcumuladorB|data_out\(7)) # ((\sec|inst3|nWB~q\) # (!\sec|inst3|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EA\(1),
	datab => \AcumuladorB|data_out\(7),
	datac => \sec|inst3|nWB~q\,
	datad => \sec|inst3|EB\(0),
	combout => \upa|Yupa[7]~1_combout\);

-- Location: LCCOMB_X16_Y33_N4
\upa|Yupa[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~0_combout\ = (\upa|Banderas\(2)) # (!\sec|inst3|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sec|inst3|nDUPA~q\,
	datad => \upa|Banderas\(2),
	combout => \upa|Yupa[7]~0_combout\);

-- Location: LCCOMB_X15_Y33_N8
\upa|Yupa[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~2_combout\ = (\RegAux|D[7]~0_combout\ & (\AcumuladorA|A[7]~0_combout\ & (\upa|Yupa[7]~1_combout\ & \upa|Yupa[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|D[7]~0_combout\,
	datab => \AcumuladorA|A[7]~0_combout\,
	datac => \upa|Yupa[7]~1_combout\,
	datad => \upa|Yupa[7]~0_combout\,
	combout => \upa|Yupa[7]~2_combout\);

-- Location: LCCOMB_X15_Y33_N2
\inst|data_out[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data_out[7]~1_combout\ = (!\dir|valor_interno\(3) & (!\dir|valor_interno\(0) & (!\dir|valor_interno\(2) & \inst|data_out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(3),
	datab => \dir|valor_interno\(0),
	datac => \dir|valor_interno\(2),
	datad => \inst|data_out[0]~0_combout\,
	combout => \inst|data_out[7]~1_combout\);

-- Location: LCCOMB_X15_Y33_N14
\upa|Yupa[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~5_combout\ = ((\upa|Yupa[7]~2_combout\ & ((\inst|data_out[7]~1_combout\) # (!\sec|inst3|nAS~q\)))) # (!\upa|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nAS~q\,
	datab => \upa|Yupa[7]~4_combout\,
	datac => \upa|Yupa[7]~2_combout\,
	datad => \inst|data_out[7]~1_combout\,
	combout => \upa|Yupa[7]~5_combout\);

-- Location: LCCOMB_X13_Y33_N6
\RegAux|C[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|C[7]~0_combout\ = (\sec|inst3|BD~q\) # ((\RegAux|data_out\(15)) # ((\sec|inst3|RA\(0)) # (!\sec|inst3|nERA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|BD~q\,
	datab => \RegAux|data_out\(15),
	datac => \sec|inst3|RA\(0),
	datad => \sec|inst3|nERA1~q\,
	combout => \RegAux|C[7]~0_combout\);

-- Location: LCCOMB_X13_Y33_N24
\upa|Yupa2[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~0_combout\ = (\upa|Banderas\(2) & ((\AcumuladorB|data_out\(7)) # ((\AcumuladorB|B[7]~0_combout\)))) # (!\upa|Banderas\(2) & (!\sec|inst3|nDUPA~q\ & ((\AcumuladorB|data_out\(7)) # (\AcumuladorB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Banderas\(2),
	datab => \AcumuladorB|data_out\(7),
	datac => \AcumuladorB|B[7]~0_combout\,
	datad => \sec|inst3|nDUPA~q\,
	combout => \upa|Yupa2[7]~0_combout\);

-- Location: LCCOMB_X13_Y33_N26
\upa|Yupa2[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~1_combout\ = (\RegAux|C[7]~0_combout\ & (\upa|Yupa2[7]~0_combout\ & ((\AcumuladorA|data_out\(7)) # (\AcumuladorA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|C[7]~0_combout\,
	datab => \upa|Yupa2[7]~0_combout\,
	datac => \AcumuladorA|data_out\(7),
	datad => \AcumuladorA|B[7]~0_combout\,
	combout => \upa|Yupa2[7]~1_combout\);

-- Location: LCCOMB_X15_Y33_N16
\upa|Yupa2[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~4_combout\ = ((\upa|Yupa2[7]~1_combout\ & ((\upa|Yupa[7]~5_combout\) # (!\sec|inst3|BD~q\)))) # (!\upa|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~3_combout\,
	datab => \sec|inst3|BD~q\,
	datac => \upa|Yupa[7]~5_combout\,
	datad => \upa|Yupa2[7]~1_combout\,
	combout => \upa|Yupa2[7]~4_combout\);

-- Location: LCCOMB_X13_Y33_N2
\RegAux|data_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~0_combout\ = (\sec|inst3|RA\(0)) # (\upa|Yupa2[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sec|inst3|RA\(0),
	datad => \upa|Yupa2[7]~4_combout\,
	combout => \RegAux|data_out~0_combout\);

-- Location: FF_X13_Y33_N3
\RegAux|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(15));

-- Location: LCCOMB_X13_Y33_N16
\RegAux|data_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~1_combout\ = (\sec|inst3|RA\(0) & (\RegAux|data_out\(15))) # (!\sec|inst3|RA\(0) & ((\upa|Yupa2[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegAux|data_out\(15),
	datac => \sec|inst3|RA\(0),
	datad => \upa|Yupa2[6]~7_combout\,
	combout => \RegAux|data_out~1_combout\);

-- Location: FF_X13_Y33_N17
\RegAux|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(14));

-- Location: LCCOMB_X13_Y33_N18
\RegAux|data_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~2_combout\ = (\sec|inst3|RA\(0) & (\RegAux|data_out\(14))) # (!\sec|inst3|RA\(0) & ((\upa|Yupa2[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegAux|data_out\(14),
	datac => \sec|inst3|RA\(0),
	datad => \upa|Yupa2[5]~10_combout\,
	combout => \RegAux|data_out~2_combout\);

-- Location: FF_X13_Y33_N19
\RegAux|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(13));

-- Location: LCCOMB_X16_Y35_N12
\RegAux|data_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~3_combout\ = (\sec|inst3|RA\(0) & (\RegAux|data_out\(13))) # (!\sec|inst3|RA\(0) & ((\upa|Yupa2[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(13),
	datac => \sec|inst3|RA\(0),
	datad => \upa|Yupa2[4]~13_combout\,
	combout => \RegAux|data_out~3_combout\);

-- Location: FF_X16_Y35_N13
\RegAux|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(12));

-- Location: LCCOMB_X16_Y35_N28
\RegAux|C[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|C[4]~3_combout\ = (\RegAux|data_out\(12)) # ((\sec|inst3|RA\(0)) # ((\sec|inst3|BD~q\) # (!\sec|inst3|nERA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(12),
	datab => \sec|inst3|RA\(0),
	datac => \sec|inst3|BD~q\,
	datad => \sec|inst3|nERA1~q\,
	combout => \RegAux|C[4]~3_combout\);

-- Location: LCCOMB_X16_Y35_N8
\upa|Yupa2[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[4]~12_combout\ = (\upa|Yupa2[4]~11_combout\ & (\RegAux|C[4]~3_combout\ & ((\AcumuladorA|data_out\(4)) # (\AcumuladorA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(4),
	datab => \upa|Yupa2[4]~11_combout\,
	datac => \AcumuladorA|B[7]~0_combout\,
	datad => \RegAux|C[4]~3_combout\,
	combout => \upa|Yupa2[4]~12_combout\);

-- Location: LCCOMB_X15_Y35_N2
\upa|Yupa2[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[4]~13_combout\ = ((\upa|Yupa2[4]~12_combout\ & ((\upa|Yupa[4]~15_combout\) # (!\sec|inst3|BD~q\)))) # (!\upa|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~3_combout\,
	datab => \sec|inst3|BD~q\,
	datac => \upa|Yupa2[4]~12_combout\,
	datad => \upa|Yupa[4]~15_combout\,
	combout => \upa|Yupa2[4]~13_combout\);

-- Location: LCCOMB_X14_Y35_N2
\AcumuladorB|data_out[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[4]~3_combout\ = (\sec|inst3|EB\(0) & (\AcumuladorB|C[4]~3_combout\)) # (!\sec|inst3|EB\(0) & ((\upa|Yupa2[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EB\(0),
	datab => \AcumuladorB|C[4]~3_combout\,
	datad => \upa|Yupa2[4]~13_combout\,
	combout => \AcumuladorB|data_out[4]~3_combout\);

-- Location: FF_X14_Y35_N3
\AcumuladorB|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[4]~3_combout\,
	asdata => \upa|Yupa[4]~15_combout\,
	sload => \sec|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(4));

-- Location: LCCOMB_X17_Y33_N18
\upa|Yupa[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[4]~14_combout\ = (\sec|inst3|nDUPA~q\ & (\upa|Banderas\(4) & ((\AcumuladorB|data_out\(4)) # (!\AcumuladorB|TRI_STATE~0_combout\)))) # (!\sec|inst3|nDUPA~q\ & (((\AcumuladorB|data_out\(4))) # (!\AcumuladorB|TRI_STATE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nDUPA~q\,
	datab => \AcumuladorB|TRI_STATE~0_combout\,
	datac => \AcumuladorB|data_out\(4),
	datad => \upa|Banderas\(4),
	combout => \upa|Yupa[4]~14_combout\);

-- Location: LCCOMB_X14_Y32_N24
\RegAux|data_out~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~11_combout\ = (\sec|inst3|BD~q\ & (\RegAux|data_out\(5))) # (!\sec|inst3|BD~q\ & ((\upa|Yupa[4]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|BD~q\,
	datac => \RegAux|data_out\(5),
	datad => \upa|Yupa[4]~15_combout\,
	combout => \RegAux|data_out~11_combout\);

-- Location: FF_X14_Y32_N25
\RegAux|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~11_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(4));

-- Location: LCCOMB_X15_Y35_N10
\upa|Yupa[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[4]~13_combout\ = (\AcumuladorA|data_out\(4) & ((\RegAux|TRI_STATE_D~0_combout\) # ((\RegAux|data_out\(4))))) # (!\AcumuladorA|data_out\(4) & (!\AcumuladorA|TRI_STATE~0_combout\ & ((\RegAux|TRI_STATE_D~0_combout\) # (\RegAux|data_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(4),
	datab => \RegAux|TRI_STATE_D~0_combout\,
	datac => \RegAux|data_out\(4),
	datad => \AcumuladorA|TRI_STATE~0_combout\,
	combout => \upa|Yupa[4]~13_combout\);

-- Location: LCCOMB_X15_Y36_N6
\inst|data[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[4]~0_combout\ = ((!\dir|valor_interno\(3) & (\inst|data_out[0]~0_combout\ & \inst|data_out[0]~2_combout\))) # (!\sec|inst3|nAS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nAS~q\,
	datab => \dir|valor_interno\(3),
	datac => \inst|data_out[0]~0_combout\,
	datad => \inst|data_out[0]~2_combout\,
	combout => \inst|data[4]~0_combout\);

-- Location: LCCOMB_X15_Y35_N24
\upa|Yupa[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[4]~15_combout\ = ((\upa|Yupa[4]~14_combout\ & (\upa|Yupa[4]~13_combout\ & \inst|data[4]~0_combout\))) # (!\upa|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[7]~4_combout\,
	datab => \upa|Yupa[4]~14_combout\,
	datac => \upa|Yupa[4]~13_combout\,
	datad => \inst|data[4]~0_combout\,
	combout => \upa|Yupa[4]~15_combout\);

-- Location: LCCOMB_X14_Y36_N12
\RegPC|Add0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~51_combout\ = (\sec|inst3|PC\(2) & (((\upa|Yupa[4]~15_combout\)))) # (!\sec|inst3|PC\(2) & ((\sec|inst3|PC\(0) & (\RegPC|Add0~24_combout\)) # (!\sec|inst3|PC\(0) & ((\upa|Yupa[4]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Add0~24_combout\,
	datab => \sec|inst3|PC\(2),
	datac => \upa|Yupa[4]~15_combout\,
	datad => \sec|inst3|PC\(0),
	combout => \RegPC|Add0~51_combout\);

-- Location: FF_X14_Y36_N13
\RegPC|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~51_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(4));

-- Location: LCCOMB_X15_Y36_N14
\dir|valor_interno[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dir|valor_interno[4]~feeder_combout\ = \RegPC|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegPC|data_out\(4),
	combout => \dir|valor_interno[4]~feeder_combout\);

-- Location: FF_X15_Y36_N15
\dir|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sec|inst3|ALT_INV_nCBD~clkctrl_outclk\,
	d => \dir|valor_interno[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(4));

-- Location: LCCOMB_X13_Y36_N10
\RegPC|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~26_combout\ = (\RegPC|data_out\(5) & (!\RegPC|Add0~25\)) # (!\RegPC|data_out\(5) & ((\RegPC|Add0~25\) # (GND)))
-- \RegPC|Add0~27\ = CARRY((!\RegPC|Add0~25\) # (!\RegPC|data_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(5),
	datad => VCC,
	cin => \RegPC|Add0~25\,
	combout => \RegPC|Add0~26_combout\,
	cout => \RegPC|Add0~27\);

-- Location: LCCOMB_X14_Y36_N26
\RegPC|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~50_combout\ = (\sec|inst3|PC\(2) & (((\upa|Yupa[5]~12_combout\)))) # (!\sec|inst3|PC\(2) & ((\sec|inst3|PC\(0) & (\RegPC|Add0~26_combout\)) # (!\sec|inst3|PC\(0) & ((\upa|Yupa[5]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Add0~26_combout\,
	datab => \sec|inst3|PC\(2),
	datac => \upa|Yupa[5]~12_combout\,
	datad => \sec|inst3|PC\(0),
	combout => \RegPC|Add0~50_combout\);

-- Location: FF_X14_Y36_N27
\RegPC|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~50_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(5));

-- Location: LCCOMB_X13_Y36_N12
\RegPC|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~28_combout\ = (\RegPC|data_out\(6) & (\RegPC|Add0~27\ $ (GND))) # (!\RegPC|data_out\(6) & (!\RegPC|Add0~27\ & VCC))
-- \RegPC|Add0~29\ = CARRY((\RegPC|data_out\(6) & !\RegPC|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(6),
	datad => VCC,
	cin => \RegPC|Add0~27\,
	combout => \RegPC|Add0~28_combout\,
	cout => \RegPC|Add0~29\);

-- Location: LCCOMB_X16_Y36_N26
\RegPC|Add0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~49_combout\ = (\sec|inst3|PC\(0) & ((\sec|inst3|PC\(2) & (\upa|Yupa[6]~8_combout\)) # (!\sec|inst3|PC\(2) & ((\RegPC|Add0~28_combout\))))) # (!\sec|inst3|PC\(0) & (((\upa|Yupa[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|PC\(0),
	datab => \sec|inst3|PC\(2),
	datac => \upa|Yupa[6]~8_combout\,
	datad => \RegPC|Add0~28_combout\,
	combout => \RegPC|Add0~49_combout\);

-- Location: FF_X16_Y36_N27
\RegPC|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~49_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(6));

-- Location: LCCOMB_X15_Y36_N2
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

-- Location: FF_X15_Y36_N3
\dir|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sec|inst3|ALT_INV_nCBD~clkctrl_outclk\,
	d => \dir|valor_interno[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(6));

-- Location: LCCOMB_X13_Y36_N14
\RegPC|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~30_combout\ = (\RegPC|data_out\(7) & (!\RegPC|Add0~29\)) # (!\RegPC|data_out\(7) & ((\RegPC|Add0~29\) # (GND)))
-- \RegPC|Add0~31\ = CARRY((!\RegPC|Add0~29\) # (!\RegPC|data_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(7),
	datad => VCC,
	cin => \RegPC|Add0~29\,
	combout => \RegPC|Add0~30_combout\,
	cout => \RegPC|Add0~31\);

-- Location: LCCOMB_X14_Y36_N4
\RegPC|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~48_combout\ = (\sec|inst3|PC\(0) & ((\sec|inst3|PC\(2) & ((\upa|Yupa[7]~5_combout\))) # (!\sec|inst3|PC\(2) & (\RegPC|Add0~30_combout\)))) # (!\sec|inst3|PC\(0) & (((\upa|Yupa[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Add0~30_combout\,
	datab => \sec|inst3|PC\(0),
	datac => \upa|Yupa[7]~5_combout\,
	datad => \sec|inst3|PC\(2),
	combout => \RegPC|Add0~48_combout\);

-- Location: FF_X14_Y36_N5
\RegPC|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~48_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(7));

-- Location: FF_X15_Y36_N9
\dir|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sec|inst3|ALT_INV_nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(7));

-- Location: FF_X15_Y36_N21
\dir|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sec|inst3|ALT_INV_nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(5));

-- Location: LCCOMB_X15_Y36_N22
\inst|data_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data_out[0]~0_combout\ = (!\dir|valor_interno\(4) & (!\dir|valor_interno\(6) & (!\dir|valor_interno\(7) & !\dir|valor_interno\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(4),
	datab => \dir|valor_interno\(6),
	datac => \dir|valor_interno\(7),
	datad => \dir|valor_interno\(5),
	combout => \inst|data_out[0]~0_combout\);

-- Location: LCCOMB_X15_Y32_N24
\AcumuladorA|A[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|A[1]~3_combout\ = (\sec|inst3|EA\(1)) # ((\AcumuladorA|data_out\(1)) # ((\sec|inst3|nWA~q\) # (!\sec|inst3|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EA\(1),
	datab => \AcumuladorA|data_out\(1),
	datac => \sec|inst3|nWA~q\,
	datad => \sec|inst3|EA\(0),
	combout => \AcumuladorA|A[1]~3_combout\);

-- Location: LCCOMB_X15_Y36_N16
\inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\dir|valor_interno\(3)) # ((\dir|valor_interno\(1) & ((\dir|valor_interno\(0)) # (\dir|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(1),
	datab => \dir|valor_interno\(0),
	datac => \dir|valor_interno\(3),
	datad => \dir|valor_interno\(2),
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X15_Y32_N2
\upa|Yupa[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[1]~22_combout\ = (\AcumuladorA|A[1]~3_combout\ & (((\inst|data_out[0]~0_combout\ & !\inst|Mux6~0_combout\)) # (!\sec|inst3|nAS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nAS~q\,
	datab => \inst|data_out[0]~0_combout\,
	datac => \AcumuladorA|A[1]~3_combout\,
	datad => \inst|Mux6~0_combout\,
	combout => \upa|Yupa[1]~22_combout\);

-- Location: LCCOMB_X15_Y32_N0
\upa|Yupa[1]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[1]~24_combout\ = ((\upa|Yupa[1]~23_combout\ & (\RegAux|D[1]~3_combout\ & \upa|Yupa[1]~22_combout\))) # (!\upa|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[1]~23_combout\,
	datab => \RegAux|D[1]~3_combout\,
	datac => \upa|Yupa[7]~4_combout\,
	datad => \upa|Yupa[1]~22_combout\,
	combout => \upa|Yupa[1]~24_combout\);

-- Location: FF_X14_Y35_N9
\AcumuladorB|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[1]~6_combout\,
	asdata => \upa|Yupa[1]~24_combout\,
	sload => \sec|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(1));

-- Location: LCCOMB_X14_Y35_N30
\upa|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux29~0_combout\ = (\sec|inst3|EA\(1) & ((\sec|inst3|nWB~q\) # ((\AcumuladorB|data_out\(1)) # (!\sec|inst3|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nWB~q\,
	datab => \AcumuladorB|data_out\(1),
	datac => \sec|inst3|EA\(1),
	datad => \sec|inst3|EB\(0),
	combout => \upa|Mux29~0_combout\);

-- Location: LCCOMB_X16_Y34_N14
\upa|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~4_combout\ = ((\AcumuladorA|C[1]~6_combout\ $ (\upa|Mux29~0_combout\ $ (!\upa|Add0~3\)))) # (GND)
-- \upa|Add0~5\ = CARRY((\AcumuladorA|C[1]~6_combout\ & ((\upa|Mux29~0_combout\) # (!\upa|Add0~3\))) # (!\AcumuladorA|C[1]~6_combout\ & (\upa|Mux29~0_combout\ & !\upa|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[1]~6_combout\,
	datab => \upa|Mux29~0_combout\,
	datad => VCC,
	cin => \upa|Add0~3\,
	combout => \upa|Add0~4_combout\,
	cout => \upa|Add0~5\);

-- Location: FF_X16_Y34_N15
\upa|Yupa_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~4_combout\,
	ena => \sec|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(1));

-- Location: LCCOMB_X15_Y32_N4
\upa|Yupa2[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[1]~20_combout\ = (\upa|Yupa_interno\(1) & ((\AcumuladorB|data_out\(1)) # ((\AcumuladorB|B[7]~0_combout\)))) # (!\upa|Yupa_interno\(1) & (!\sec|inst3|nDUPA~q\ & ((\AcumuladorB|data_out\(1)) # (\AcumuladorB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa_interno\(1),
	datab => \AcumuladorB|data_out\(1),
	datac => \AcumuladorB|B[7]~0_combout\,
	datad => \sec|inst3|nDUPA~q\,
	combout => \upa|Yupa2[1]~20_combout\);

-- Location: LCCOMB_X15_Y32_N18
\upa|Yupa2[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[1]~21_combout\ = (\RegAux|C[1]~6_combout\ & (\upa|Yupa2[1]~20_combout\ & ((\AcumuladorA|B[7]~0_combout\) # (\AcumuladorA|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|C[1]~6_combout\,
	datab => \AcumuladorA|B[7]~0_combout\,
	datac => \upa|Yupa2[1]~20_combout\,
	datad => \AcumuladorA|data_out\(1),
	combout => \upa|Yupa2[1]~21_combout\);

-- Location: LCCOMB_X15_Y32_N22
\upa|Yupa2[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[1]~22_combout\ = ((\upa|Yupa2[1]~21_combout\ & ((\upa|Yupa[1]~24_combout\) # (!\sec|inst3|BD~q\)))) # (!\upa|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~3_combout\,
	datab => \sec|inst3|BD~q\,
	datac => \upa|Yupa2[1]~21_combout\,
	datad => \upa|Yupa[1]~24_combout\,
	combout => \upa|Yupa2[1]~22_combout\);

-- Location: LCCOMB_X15_Y32_N28
\AcumuladorA|data_out[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[1]~6_combout\ = (\sec|inst3|EA\(0) & ((\AcumuladorA|C[1]~6_combout\))) # (!\sec|inst3|EA\(0) & (\upa|Yupa2[1]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[1]~22_combout\,
	datab => \AcumuladorA|C[1]~6_combout\,
	datad => \sec|inst3|EA\(0),
	combout => \AcumuladorA|data_out[1]~6_combout\);

-- Location: FF_X15_Y32_N29
\AcumuladorA|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[1]~6_combout\,
	asdata => \upa|Yupa[1]~24_combout\,
	sload => \sec|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(1));

-- Location: LCCOMB_X15_Y32_N16
\AcumuladorA|C[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[1]~6_combout\ = ((\sec|inst3|nWA~q\) # ((\AcumuladorA|data_out\(1)) # (!\sec|inst3|EA\(1)))) # (!\sec|inst3|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EA\(0),
	datab => \sec|inst3|nWA~q\,
	datac => \sec|inst3|EA\(1),
	datad => \AcumuladorA|data_out\(1),
	combout => \AcumuladorA|C[1]~6_combout\);

-- Location: LCCOMB_X16_Y34_N16
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

-- Location: FF_X16_Y34_N19
\upa|Yupa_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~8_combout\,
	ena => \sec|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(3));

-- Location: LCCOMB_X16_Y33_N10
\upa|Yupa[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[3]~17_combout\ = (\upa|Yupa_interno\(3) & ((\AcumuladorB|data_out\(3)) # ((!\AcumuladorB|TRI_STATE~0_combout\)))) # (!\upa|Yupa_interno\(3) & (!\sec|inst3|nDUPA~q\ & ((\AcumuladorB|data_out\(3)) # (!\AcumuladorB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa_interno\(3),
	datab => \AcumuladorB|data_out\(3),
	datac => \AcumuladorB|TRI_STATE~0_combout\,
	datad => \sec|inst3|nDUPA~q\,
	combout => \upa|Yupa[3]~17_combout\);

-- Location: LCCOMB_X15_Y35_N18
\upa|Yupa[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[3]~18_combout\ = ((\upa|Yupa[3]~16_combout\ & (\upa|Yupa[3]~17_combout\ & \inst|data[4]~0_combout\))) # (!\upa|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[7]~4_combout\,
	datab => \upa|Yupa[3]~16_combout\,
	datac => \upa|Yupa[3]~17_combout\,
	datad => \inst|data[4]~0_combout\,
	combout => \upa|Yupa[3]~18_combout\);

-- Location: FF_X15_Y35_N27
\AcumuladorA|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[3]~4_combout\,
	asdata => \upa|Yupa[3]~18_combout\,
	sload => \sec|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(3));

-- Location: LCCOMB_X16_Y35_N16
\RegAux|C[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|C[3]~4_combout\ = (\RegAux|data_out\(11)) # ((\sec|inst3|RA\(0)) # ((\sec|inst3|BD~q\) # (!\sec|inst3|nERA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(11),
	datab => \sec|inst3|RA\(0),
	datac => \sec|inst3|BD~q\,
	datad => \sec|inst3|nERA1~q\,
	combout => \RegAux|C[3]~4_combout\);

-- Location: LCCOMB_X16_Y35_N6
\upa|Yupa2[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[3]~14_combout\ = (\AcumuladorB|data_out\(3) & ((\upa|Yupa_interno\(3)) # ((!\sec|inst3|nDUPA~q\)))) # (!\AcumuladorB|data_out\(3) & (\AcumuladorB|B[7]~0_combout\ & ((\upa|Yupa_interno\(3)) # (!\sec|inst3|nDUPA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(3),
	datab => \upa|Yupa_interno\(3),
	datac => \AcumuladorB|B[7]~0_combout\,
	datad => \sec|inst3|nDUPA~q\,
	combout => \upa|Yupa2[3]~14_combout\);

-- Location: LCCOMB_X16_Y35_N20
\upa|Yupa2[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[3]~15_combout\ = (\RegAux|C[3]~4_combout\ & (\upa|Yupa2[3]~14_combout\ & ((\AcumuladorA|data_out\(3)) # (\AcumuladorA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(3),
	datab => \RegAux|C[3]~4_combout\,
	datac => \AcumuladorA|B[7]~0_combout\,
	datad => \upa|Yupa2[3]~14_combout\,
	combout => \upa|Yupa2[3]~15_combout\);

-- Location: LCCOMB_X15_Y35_N16
\upa|Yupa2[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[3]~16_combout\ = ((\upa|Yupa2[3]~15_combout\ & ((\upa|Yupa[3]~18_combout\) # (!\sec|inst3|BD~q\)))) # (!\upa|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~3_combout\,
	datab => \upa|Yupa2[3]~15_combout\,
	datac => \sec|inst3|BD~q\,
	datad => \upa|Yupa[3]~18_combout\,
	combout => \upa|Yupa2[3]~16_combout\);

-- Location: LCCOMB_X16_Y35_N22
\RegAux|data_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~4_combout\ = (\sec|inst3|RA\(0) & ((\RegAux|data_out\(12)))) # (!\sec|inst3|RA\(0) & (\upa|Yupa2[3]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|RA\(0),
	datac => \upa|Yupa2[3]~16_combout\,
	datad => \RegAux|data_out\(12),
	combout => \RegAux|data_out~4_combout\);

-- Location: FF_X16_Y35_N23
\RegAux|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(11));

-- Location: LCCOMB_X16_Y35_N4
\RegAux|data_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~5_combout\ = (\sec|inst3|RA\(0) & (\RegAux|data_out\(11))) # (!\sec|inst3|RA\(0) & ((\upa|Yupa2[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|RA\(0),
	datac => \RegAux|data_out\(11),
	datad => \upa|Yupa2[2]~19_combout\,
	combout => \RegAux|data_out~5_combout\);

-- Location: FF_X16_Y35_N5
\RegAux|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(10));

-- Location: LCCOMB_X16_Y35_N2
\RegAux|C[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|C[2]~5_combout\ = (\sec|inst3|BD~q\) # ((\sec|inst3|RA\(0)) # ((\RegAux|data_out\(10)) # (!\sec|inst3|nERA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|BD~q\,
	datab => \sec|inst3|RA\(0),
	datac => \RegAux|data_out\(10),
	datad => \sec|inst3|nERA1~q\,
	combout => \RegAux|C[2]~5_combout\);

-- Location: LCCOMB_X16_Y35_N0
\upa|Yupa2[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[2]~17_combout\ = (\upa|Yupa_interno\(2) & (((\AcumuladorB|B[7]~0_combout\) # (\AcumuladorB|data_out\(2))))) # (!\upa|Yupa_interno\(2) & (!\sec|inst3|nDUPA~q\ & ((\AcumuladorB|B[7]~0_combout\) # (\AcumuladorB|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa_interno\(2),
	datab => \sec|inst3|nDUPA~q\,
	datac => \AcumuladorB|B[7]~0_combout\,
	datad => \AcumuladorB|data_out\(2),
	combout => \upa|Yupa2[2]~17_combout\);

-- Location: LCCOMB_X16_Y35_N10
\upa|Yupa2[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[2]~18_combout\ = (\RegAux|C[2]~5_combout\ & (\upa|Yupa2[2]~17_combout\ & ((\AcumuladorA|B[7]~0_combout\) # (\AcumuladorA|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|B[7]~0_combout\,
	datab => \RegAux|C[2]~5_combout\,
	datac => \AcumuladorA|data_out\(2),
	datad => \upa|Yupa2[2]~17_combout\,
	combout => \upa|Yupa2[2]~18_combout\);

-- Location: LCCOMB_X15_Y36_N12
\upa|Yupa2[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[2]~19_combout\ = ((\upa|Yupa2[2]~18_combout\ & ((\upa|Yupa[2]~21_combout\) # (!\sec|inst3|BD~q\)))) # (!\upa|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~3_combout\,
	datab => \sec|inst3|BD~q\,
	datac => \upa|Yupa2[2]~18_combout\,
	datad => \upa|Yupa[2]~21_combout\,
	combout => \upa|Yupa2[2]~19_combout\);

-- Location: LCCOMB_X16_Y36_N20
\AcumuladorB|data_out[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[2]~5_combout\ = (\sec|inst3|EB\(0) & (\AcumuladorB|C[2]~5_combout\)) # (!\sec|inst3|EB\(0) & ((\upa|Yupa2[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[2]~5_combout\,
	datab => \sec|inst3|EB\(0),
	datad => \upa|Yupa2[2]~19_combout\,
	combout => \AcumuladorB|data_out[2]~5_combout\);

-- Location: FF_X16_Y36_N21
\AcumuladorB|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[2]~5_combout\,
	asdata => \upa|Yupa[2]~21_combout\,
	sload => \sec|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(2));

-- Location: LCCOMB_X16_Y32_N24
\upa|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux30~0_combout\ = (\sec|inst3|EA\(1) & (((\sec|inst3|nWB~q\) # (\AcumuladorB|data_out\(2))) # (!\sec|inst3|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EA\(1),
	datab => \sec|inst3|EB\(0),
	datac => \sec|inst3|nWB~q\,
	datad => \AcumuladorB|data_out\(2),
	combout => \upa|Mux30~0_combout\);

-- Location: FF_X16_Y34_N17
\upa|Yupa_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~6_combout\,
	ena => \sec|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(2));

-- Location: LCCOMB_X16_Y36_N4
\upa|Yupa[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[2]~20_combout\ = (\upa|Yupa_interno\(2) & ((\AcumuladorB|data_out\(2)) # ((!\AcumuladorB|TRI_STATE~0_combout\)))) # (!\upa|Yupa_interno\(2) & (!\sec|inst3|nDUPA~q\ & ((\AcumuladorB|data_out\(2)) # (!\AcumuladorB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa_interno\(2),
	datab => \AcumuladorB|data_out\(2),
	datac => \AcumuladorB|TRI_STATE~0_combout\,
	datad => \sec|inst3|nDUPA~q\,
	combout => \upa|Yupa[2]~20_combout\);

-- Location: LCCOMB_X15_Y36_N4
\upa|Yupa[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[2]~19_combout\ = (\AcumuladorA|data_out\(2) & ((\RegAux|data_out\(2)) # ((\RegAux|TRI_STATE_D~0_combout\)))) # (!\AcumuladorA|data_out\(2) & (!\AcumuladorA|TRI_STATE~0_combout\ & ((\RegAux|data_out\(2)) # (\RegAux|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(2),
	datab => \RegAux|data_out\(2),
	datac => \RegAux|TRI_STATE_D~0_combout\,
	datad => \AcumuladorA|TRI_STATE~0_combout\,
	combout => \upa|Yupa[2]~19_combout\);

-- Location: LCCOMB_X15_Y36_N18
\inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\dir|valor_interno\(4)) # ((\dir|valor_interno\(3)) # (\dir|valor_interno\(0) $ (\dir|valor_interno\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(0),
	datab => \dir|valor_interno\(4),
	datac => \dir|valor_interno\(2),
	datad => \dir|valor_interno\(3),
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X15_Y36_N20
\inst|data_out[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data_out[2]~4_combout\ = (!\dir|valor_interno\(6) & (!\dir|valor_interno\(5) & !\dir|valor_interno\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dir|valor_interno\(6),
	datac => \dir|valor_interno\(5),
	datad => \dir|valor_interno\(7),
	combout => \inst|data_out[2]~4_combout\);

-- Location: LCCOMB_X15_Y36_N8
\inst|data[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[2]~1_combout\ = ((!\inst|Mux5~0_combout\ & \inst|data_out[2]~4_combout\)) # (!\sec|inst3|nAS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \sec|inst3|nAS~q\,
	datad => \inst|data_out[2]~4_combout\,
	combout => \inst|data[2]~1_combout\);

-- Location: LCCOMB_X15_Y36_N26
\upa|Yupa[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[2]~21_combout\ = ((\upa|Yupa[2]~20_combout\ & (\upa|Yupa[2]~19_combout\ & \inst|data[2]~1_combout\))) # (!\upa|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[2]~20_combout\,
	datab => \upa|Yupa[2]~19_combout\,
	datac => \upa|Yupa[7]~4_combout\,
	datad => \inst|data[2]~1_combout\,
	combout => \upa|Yupa[2]~21_combout\);

-- Location: LCCOMB_X13_Y36_N4
\RegPC|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~20_combout\ = (\RegPC|data_out\(2) & (\RegPC|Add0~19\ $ (GND))) # (!\RegPC|data_out\(2) & (!\RegPC|Add0~19\ & VCC))
-- \RegPC|Add0~21\ = CARRY((\RegPC|data_out\(2) & !\RegPC|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(2),
	datad => VCC,
	cin => \RegPC|Add0~19\,
	combout => \RegPC|Add0~20_combout\,
	cout => \RegPC|Add0~21\);

-- Location: LCCOMB_X14_Y36_N16
\RegPC|Add0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~53_combout\ = (\sec|inst3|PC\(2) & (\upa|Yupa[2]~21_combout\)) # (!\sec|inst3|PC\(2) & ((\sec|inst3|PC\(0) & ((\RegPC|Add0~20_combout\))) # (!\sec|inst3|PC\(0) & (\upa|Yupa[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[2]~21_combout\,
	datab => \RegPC|Add0~20_combout\,
	datac => \sec|inst3|PC\(2),
	datad => \sec|inst3|PC\(0),
	combout => \RegPC|Add0~53_combout\);

-- Location: FF_X14_Y36_N17
\RegPC|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~53_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(2));

-- Location: LCCOMB_X14_Y36_N6
\RegPC|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~52_combout\ = (\sec|inst3|PC\(0) & ((\sec|inst3|PC\(2) & ((\upa|Yupa[3]~18_combout\))) # (!\sec|inst3|PC\(2) & (\RegPC|Add0~22_combout\)))) # (!\sec|inst3|PC\(0) & (((\upa|Yupa[3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Add0~22_combout\,
	datab => \sec|inst3|PC\(0),
	datac => \sec|inst3|PC\(2),
	datad => \upa|Yupa[3]~18_combout\,
	combout => \RegPC|Add0~52_combout\);

-- Location: FF_X14_Y36_N7
\RegPC|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|Add0~52_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(3));

-- Location: FF_X15_Y36_N17
\dir|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sec|inst3|ALT_INV_nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(3));

-- Location: LCCOMB_X15_Y36_N30
\inst|data_out[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data_out[0]~5_combout\ = (!\dir|valor_interno\(0) & (!\dir|valor_interno\(3) & (\inst|data_out[0]~0_combout\ & \inst|data_out[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(0),
	datab => \dir|valor_interno\(3),
	datac => \inst|data_out[0]~0_combout\,
	datad => \inst|data_out[0]~2_combout\,
	combout => \inst|data_out[0]~5_combout\);

-- Location: LCCOMB_X14_Y35_N12
\upa|Yupa[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[0]~26_combout\ = (\AcumuladorB|data_out\(0)) # ((\sec|inst3|EA\(1)) # ((\sec|inst3|nWB~q\) # (!\sec|inst3|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(0),
	datab => \sec|inst3|EA\(1),
	datac => \sec|inst3|nWB~q\,
	datad => \sec|inst3|EB\(0),
	combout => \upa|Yupa[0]~26_combout\);

-- Location: LCCOMB_X14_Y35_N24
\AcumuladorA|A[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|A[0]~4_combout\ = (\sec|inst3|EA\(1)) # ((\AcumuladorA|data_out\(0)) # ((\sec|inst3|nWA~q\) # (!\sec|inst3|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EA\(1),
	datab => \AcumuladorA|data_out\(0),
	datac => \sec|inst3|EA\(0),
	datad => \sec|inst3|nWA~q\,
	combout => \AcumuladorA|A[0]~4_combout\);

-- Location: LCCOMB_X14_Y32_N4
\RegAux|data_out~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~15_combout\ = (\sec|inst3|BD~q\ & ((\RegAux|data_out\(1)))) # (!\sec|inst3|BD~q\ & (\upa|Yupa[0]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[0]~28_combout\,
	datab => \RegAux|data_out\(1),
	datac => \sec|inst3|BD~q\,
	combout => \RegAux|data_out~15_combout\);

-- Location: FF_X14_Y32_N5
\RegAux|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~15_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(0));

-- Location: LCCOMB_X14_Y35_N26
\RegAux|D[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|D[0]~4_combout\ = (\RegAux|data_out\(0)) # ((\sec|inst3|BD~q\) # ((\sec|inst3|RA\(0)) # (!\sec|inst3|nERA0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(0),
	datab => \sec|inst3|BD~q\,
	datac => \sec|inst3|nERA0~q\,
	datad => \sec|inst3|RA\(0),
	combout => \RegAux|D[0]~4_combout\);

-- Location: LCCOMB_X14_Y35_N10
\upa|Yupa[0]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[0]~27_combout\ = (\upa|Yupa[0]~26_combout\ & (\AcumuladorA|A[0]~4_combout\ & (\RegAux|D[0]~4_combout\ & \upa|Yupa[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[0]~26_combout\,
	datab => \AcumuladorA|A[0]~4_combout\,
	datac => \RegAux|D[0]~4_combout\,
	datad => \upa|Yupa[0]~25_combout\,
	combout => \upa|Yupa[0]~27_combout\);

-- Location: LCCOMB_X14_Y35_N20
\upa|Yupa[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[0]~28_combout\ = ((\upa|Yupa[0]~27_combout\ & ((\inst|data_out[0]~5_combout\) # (!\sec|inst3|nAS~q\)))) # (!\upa|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|nAS~q\,
	datab => \inst|data_out[0]~5_combout\,
	datac => \upa|Yupa[7]~4_combout\,
	datad => \upa|Yupa[0]~27_combout\,
	combout => \upa|Yupa[0]~28_combout\);

-- Location: LCCOMB_X15_Y35_N4
\inst11|valor_interno[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|valor_interno[4]~feeder_combout\ = \upa|Yupa[0]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Yupa[0]~28_combout\,
	combout => \inst11|valor_interno[4]~feeder_combout\);

-- Location: FF_X15_Y35_N5
\inst11|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sec|inst3|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst11|valor_interno[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(4));

-- Location: LCCOMB_X15_Y34_N20
\sec|inst5|$00000|auto_generated|result_node[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst5|$00000|auto_generated|result_node[4]~13_combout\ = (\sec|inst1|SELECTOR~0_combout\ & ((\inst11|valor_interno\(4)) # ((!\sec|inst1|SELECTOR~2_combout\ & \sec|inst2|valor_interno\(4))))) # (!\sec|inst1|SELECTOR~0_combout\ & 
-- (!\sec|inst1|SELECTOR~2_combout\ & (\sec|inst2|valor_interno\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst1|SELECTOR~0_combout\,
	datab => \sec|inst1|SELECTOR~2_combout\,
	datac => \sec|inst2|valor_interno\(4),
	datad => \inst11|valor_interno\(4),
	combout => \sec|inst5|$00000|auto_generated|result_node[4]~13_combout\);

-- Location: LCCOMB_X13_Y34_N10
\sec|inst2|valor_interno[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst2|valor_interno[5]~19_combout\ = (\sec|inst5|$00000|auto_generated|result_node[5]~12_combout\ & (\sec|inst2|valor_interno[4]~18\ $ (GND))) # (!\sec|inst5|$00000|auto_generated|result_node[5]~12_combout\ & (!\sec|inst2|valor_interno[4]~18\ & VCC))
-- \sec|inst2|valor_interno[5]~20\ = CARRY((\sec|inst5|$00000|auto_generated|result_node[5]~12_combout\ & !\sec|inst2|valor_interno[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[5]~12_combout\,
	datad => VCC,
	cin => \sec|inst2|valor_interno[4]~18\,
	combout => \sec|inst2|valor_interno[5]~19_combout\,
	cout => \sec|inst2|valor_interno[5]~20\);

-- Location: FF_X13_Y34_N11
\sec|inst2|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst2|valor_interno[5]~19_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst2|valor_interno\(5));

-- Location: LCCOMB_X15_Y32_N30
\inst11|valor_interno[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|valor_interno[5]~feeder_combout\ = \upa|Yupa[1]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Yupa[1]~24_combout\,
	combout => \inst11|valor_interno[5]~feeder_combout\);

-- Location: FF_X15_Y32_N31
\inst11|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sec|inst3|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst11|valor_interno[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(5));

-- Location: LCCOMB_X14_Y34_N12
\sec|inst5|$00000|auto_generated|result_node[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst5|$00000|auto_generated|result_node[5]~12_combout\ = (\sec|inst2|valor_interno\(5) & (((\sec|inst1|SELECTOR~0_combout\ & \inst11|valor_interno\(5))) # (!\sec|inst1|SELECTOR~2_combout\))) # (!\sec|inst2|valor_interno\(5) & 
-- (((\sec|inst1|SELECTOR~0_combout\ & \inst11|valor_interno\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst2|valor_interno\(5),
	datab => \sec|inst1|SELECTOR~2_combout\,
	datac => \sec|inst1|SELECTOR~0_combout\,
	datad => \inst11|valor_interno\(5),
	combout => \sec|inst5|$00000|auto_generated|result_node[5]~12_combout\);

-- Location: LCCOMB_X13_Y34_N12
\sec|inst2|valor_interno[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst2|valor_interno[6]~21_combout\ = (\sec|inst5|$00000|auto_generated|result_node[6]~11_combout\ & (!\sec|inst2|valor_interno[5]~20\)) # (!\sec|inst5|$00000|auto_generated|result_node[6]~11_combout\ & ((\sec|inst2|valor_interno[5]~20\) # (GND)))
-- \sec|inst2|valor_interno[6]~22\ = CARRY((!\sec|inst2|valor_interno[5]~20\) # (!\sec|inst5|$00000|auto_generated|result_node[6]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst5|$00000|auto_generated|result_node[6]~11_combout\,
	datad => VCC,
	cin => \sec|inst2|valor_interno[5]~20\,
	combout => \sec|inst2|valor_interno[6]~21_combout\,
	cout => \sec|inst2|valor_interno[6]~22\);

-- Location: FF_X13_Y34_N13
\sec|inst2|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst2|valor_interno[6]~21_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst2|valor_interno\(6));

-- Location: LCCOMB_X15_Y36_N0
\inst11|valor_interno[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|valor_interno[6]~feeder_combout\ = \upa|Yupa[2]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Yupa[2]~21_combout\,
	combout => \inst11|valor_interno[6]~feeder_combout\);

-- Location: FF_X15_Y36_N1
\inst11|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sec|inst3|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst11|valor_interno[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(6));

-- Location: LCCOMB_X14_Y34_N26
\sec|inst5|$00000|auto_generated|result_node[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst5|$00000|auto_generated|result_node[6]~11_combout\ = (\sec|inst2|valor_interno\(6) & (((\sec|inst1|SELECTOR~0_combout\ & \inst11|valor_interno\(6))) # (!\sec|inst1|SELECTOR~2_combout\))) # (!\sec|inst2|valor_interno\(6) & 
-- (((\sec|inst1|SELECTOR~0_combout\ & \inst11|valor_interno\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst2|valor_interno\(6),
	datab => \sec|inst1|SELECTOR~2_combout\,
	datac => \sec|inst1|SELECTOR~0_combout\,
	datad => \inst11|valor_interno\(6),
	combout => \sec|inst5|$00000|auto_generated|result_node[6]~11_combout\);

-- Location: LCCOMB_X13_Y34_N14
\sec|inst2|valor_interno[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst2|valor_interno[7]~23_combout\ = (\sec|inst5|$00000|auto_generated|result_node[7]~10_combout\ & (\sec|inst2|valor_interno[6]~22\ $ (GND))) # (!\sec|inst5|$00000|auto_generated|result_node[7]~10_combout\ & (!\sec|inst2|valor_interno[6]~22\ & VCC))
-- \sec|inst2|valor_interno[7]~24\ = CARRY((\sec|inst5|$00000|auto_generated|result_node[7]~10_combout\ & !\sec|inst2|valor_interno[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[7]~10_combout\,
	datad => VCC,
	cin => \sec|inst2|valor_interno[6]~22\,
	combout => \sec|inst2|valor_interno[7]~23_combout\,
	cout => \sec|inst2|valor_interno[7]~24\);

-- Location: LCCOMB_X13_Y34_N16
\sec|inst2|valor_interno[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst2|valor_interno[8]~25_combout\ = (\sec|inst5|$00000|auto_generated|result_node[8]~9_combout\ & (!\sec|inst2|valor_interno[7]~24\)) # (!\sec|inst5|$00000|auto_generated|result_node[8]~9_combout\ & ((\sec|inst2|valor_interno[7]~24\) # (GND)))
-- \sec|inst2|valor_interno[8]~26\ = CARRY((!\sec|inst2|valor_interno[7]~24\) # (!\sec|inst5|$00000|auto_generated|result_node[8]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[8]~9_combout\,
	datad => VCC,
	cin => \sec|inst2|valor_interno[7]~24\,
	combout => \sec|inst2|valor_interno[8]~25_combout\,
	cout => \sec|inst2|valor_interno[8]~26\);

-- Location: FF_X13_Y34_N17
\sec|inst2|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst2|valor_interno[8]~25_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst2|valor_interno\(8));

-- Location: LCCOMB_X15_Y35_N8
\inst11|valor_interno[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|valor_interno[8]~feeder_combout\ = \upa|Yupa[4]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Yupa[4]~15_combout\,
	combout => \inst11|valor_interno[8]~feeder_combout\);

-- Location: FF_X15_Y35_N9
\inst11|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sec|inst3|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst11|valor_interno[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(8));

-- Location: LCCOMB_X14_Y34_N4
\sec|inst5|$00000|auto_generated|result_node[8]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst5|$00000|auto_generated|result_node[8]~9_combout\ = (\sec|inst2|valor_interno\(8) & (((\sec|inst1|SELECTOR~0_combout\ & \inst11|valor_interno\(8))) # (!\sec|inst1|SELECTOR~2_combout\))) # (!\sec|inst2|valor_interno\(8) & 
-- (((\sec|inst1|SELECTOR~0_combout\ & \inst11|valor_interno\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst2|valor_interno\(8),
	datab => \sec|inst1|SELECTOR~2_combout\,
	datac => \sec|inst1|SELECTOR~0_combout\,
	datad => \inst11|valor_interno\(8),
	combout => \sec|inst5|$00000|auto_generated|result_node[8]~9_combout\);

-- Location: LCCOMB_X13_Y34_N18
\sec|inst2|valor_interno[9]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst2|valor_interno[9]~27_combout\ = (\sec|inst5|$00000|auto_generated|result_node[9]~8_combout\ & (\sec|inst2|valor_interno[8]~26\ $ (GND))) # (!\sec|inst5|$00000|auto_generated|result_node[9]~8_combout\ & (!\sec|inst2|valor_interno[8]~26\ & VCC))
-- \sec|inst2|valor_interno[9]~28\ = CARRY((\sec|inst5|$00000|auto_generated|result_node[9]~8_combout\ & !\sec|inst2|valor_interno[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[9]~8_combout\,
	datad => VCC,
	cin => \sec|inst2|valor_interno[8]~26\,
	combout => \sec|inst2|valor_interno[9]~27_combout\,
	cout => \sec|inst2|valor_interno[9]~28\);

-- Location: FF_X13_Y34_N19
\sec|inst2|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst2|valor_interno[9]~27_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst2|valor_interno\(9));

-- Location: LCCOMB_X14_Y33_N26
\inst11|valor_interno[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|valor_interno[9]~feeder_combout\ = \upa|Yupa[5]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Yupa[5]~12_combout\,
	combout => \inst11|valor_interno[9]~feeder_combout\);

-- Location: FF_X14_Y33_N27
\inst11|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sec|inst3|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst11|valor_interno[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(9));

-- Location: LCCOMB_X14_Y33_N0
\sec|inst5|$00000|auto_generated|result_node[9]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst5|$00000|auto_generated|result_node[9]~8_combout\ = (\sec|inst2|valor_interno\(9) & (((\sec|inst1|SELECTOR~0_combout\ & \inst11|valor_interno\(9))) # (!\sec|inst1|SELECTOR~2_combout\))) # (!\sec|inst2|valor_interno\(9) & 
-- (\sec|inst1|SELECTOR~0_combout\ & (\inst11|valor_interno\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst2|valor_interno\(9),
	datab => \sec|inst1|SELECTOR~0_combout\,
	datac => \inst11|valor_interno\(9),
	datad => \sec|inst1|SELECTOR~2_combout\,
	combout => \sec|inst5|$00000|auto_generated|result_node[9]~8_combout\);

-- Location: LCCOMB_X13_Y34_N20
\sec|inst2|valor_interno[10]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst2|valor_interno[10]~29_combout\ = (\sec|inst5|$00000|auto_generated|result_node[10]~7_combout\ & (!\sec|inst2|valor_interno[9]~28\)) # (!\sec|inst5|$00000|auto_generated|result_node[10]~7_combout\ & ((\sec|inst2|valor_interno[9]~28\) # (GND)))
-- \sec|inst2|valor_interno[10]~30\ = CARRY((!\sec|inst2|valor_interno[9]~28\) # (!\sec|inst5|$00000|auto_generated|result_node[10]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datad => VCC,
	cin => \sec|inst2|valor_interno[9]~28\,
	combout => \sec|inst2|valor_interno[10]~29_combout\,
	cout => \sec|inst2|valor_interno[10]~30\);

-- Location: LCCOMB_X13_Y34_N22
\sec|inst2|valor_interno[11]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst2|valor_interno[11]~31_combout\ = \sec|inst5|$00000|auto_generated|result_node[11]~6_combout\ $ (!\sec|inst2|valor_interno[10]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	cin => \sec|inst2|valor_interno[10]~30\,
	combout => \sec|inst2|valor_interno[11]~31_combout\);

-- Location: FF_X13_Y34_N23
\sec|inst2|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst2|valor_interno[11]~31_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst2|valor_interno\(11));

-- Location: LCCOMB_X15_Y33_N6
\inst11|valor_interno[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|valor_interno[11]~feeder_combout\ = \upa|Yupa[7]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \upa|Yupa[7]~5_combout\,
	combout => \inst11|valor_interno[11]~feeder_combout\);

-- Location: FF_X15_Y33_N7
\inst11|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sec|inst3|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst11|valor_interno[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(11));

-- Location: LCCOMB_X15_Y34_N18
\sec|inst5|$00000|auto_generated|result_node[11]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst5|$00000|auto_generated|result_node[11]~6_combout\ = (\sec|inst1|SELECTOR~0_combout\ & ((\inst11|valor_interno\(11)) # ((!\sec|inst1|SELECTOR~2_combout\ & \sec|inst2|valor_interno\(11))))) # (!\sec|inst1|SELECTOR~0_combout\ & 
-- (!\sec|inst1|SELECTOR~2_combout\ & (\sec|inst2|valor_interno\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst1|SELECTOR~0_combout\,
	datab => \sec|inst1|SELECTOR~2_combout\,
	datac => \sec|inst2|valor_interno\(11),
	datad => \inst11|valor_interno\(11),
	combout => \sec|inst5|$00000|auto_generated|result_node[11]~6_combout\);

-- Location: LCCOMB_X14_Y34_N8
\sec|inst|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal3~1_combout\ = (!\sec|inst5|$00000|auto_generated|result_node[2]~17_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[8]~9_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[7]~10_combout\ & 
-- !\sec|inst5|$00000|auto_generated|result_node[9]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[2]~17_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[8]~9_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[7]~10_combout\,
	datad => \sec|inst5|$00000|auto_generated|result_node[9]~8_combout\,
	combout => \sec|inst|Equal3~1_combout\);

-- Location: LCCOMB_X14_Y34_N18
\sec|inst|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal3~2_combout\ = (\sec|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (\sec|inst|Equal3~1_combout\ & \sec|inst|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datac => \sec|inst|Equal3~1_combout\,
	datad => \sec|inst|Equal3~0_combout\,
	combout => \sec|inst|Equal3~2_combout\);

-- Location: LCCOMB_X17_Y33_N16
\sec|inst|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal6~0_combout\ = (!\sec|inst5|$00000|auto_generated|result_node[10]~7_combout\ & (\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ & (\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & \sec|inst|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datad => \sec|inst|Equal3~2_combout\,
	combout => \sec|inst|Equal6~0_combout\);

-- Location: LCCOMB_X17_Y33_N30
\sec|inst3|instruccion[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst3|instruccion[1]~0_combout\ = (!\sec|inst|Equal6~0_combout\ & (!\sec|inst|Equal4~0_combout\ & (\sec|inst|Equal8~0_combout\ & \sec|inst3|liga[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|Equal6~0_combout\,
	datab => \sec|inst|Equal4~0_combout\,
	datac => \sec|inst|Equal8~0_combout\,
	datad => \sec|inst3|liga[0]~0_combout\,
	combout => \sec|inst3|instruccion[1]~0_combout\);

-- Location: LCCOMB_X17_Y33_N22
\sec|inst|data[71]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[71]~23_combout\ = (\sec|inst3|instruccion[1]~0_combout\) # ((!\sec|inst|Equal6~0_combout\ & (\sec|inst|Equal11~3_combout\ & \sec|inst3|liga[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|Equal6~0_combout\,
	datab => \sec|inst|Equal11~3_combout\,
	datac => \sec|inst3|instruccion[1]~0_combout\,
	datad => \sec|inst3|liga[0]~1_combout\,
	combout => \sec|inst|data[71]~23_combout\);

-- Location: FF_X17_Y33_N23
\sec|inst3|EB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst|data[71]~23_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|EB\(0));

-- Location: LCCOMB_X13_Y33_N14
\upa|Mux35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux35~0_combout\ = (\sec|inst3|EA\(1) & (((\AcumuladorB|data_out\(7)) # (\sec|inst3|nWB~q\)) # (!\sec|inst3|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|EB\(0),
	datab => \AcumuladorB|data_out\(7),
	datac => \sec|inst3|nWB~q\,
	datad => \sec|inst3|EA\(1),
	combout => \upa|Mux35~0_combout\);

-- Location: FF_X16_Y34_N27
\upa|Banderas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~16_combout\,
	ena => \sec|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Banderas\(2));

-- Location: LCCOMB_X13_Y34_N24
\sec|inst|data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data~7_combout\ = (!\sec|inst|Equal9~0_combout\ & (((\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\) # (!\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\)) # (!\sec|inst|Equal11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|Equal11~2_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \sec|inst|Equal9~0_combout\,
	combout => \sec|inst|data~7_combout\);

-- Location: LCCOMB_X17_Y34_N22
\sec|inst|data[87]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[87]~8_combout\ = (\sec|inst|data[87]~6_combout\ & (\sec|inst|Equal5~0_combout\ $ (((\sec|inst|Equal18~0_combout\) # (!\sec|inst|data~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|Equal5~0_combout\,
	datab => \sec|inst|data[87]~6_combout\,
	datac => \sec|inst|Equal18~0_combout\,
	datad => \sec|inst|data~7_combout\,
	combout => \sec|inst|data[87]~8_combout\);

-- Location: FF_X17_Y34_N29
\sec|inst3|prueba[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \sec|inst|data[87]~8_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|prueba\(0));

-- Location: LCCOMB_X16_Y34_N8
\sec|inst|Equal19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal19~0_combout\ = (\sec|inst5|$00000|auto_generated|result_node[2]~17_combout\ & (\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ & \sec|inst|Equal14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[2]~17_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \sec|inst|Equal14~1_combout\,
	combout => \sec|inst|Equal19~0_combout\);

-- Location: LCCOMB_X17_Y34_N18
\sec|inst|data[86]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[86]~18_combout\ = (\sec|inst|data[86]~15_combout\ & (((\sec|inst|Equal18~0_combout\) # (!\sec|inst3|liga[0]~3_combout\)) # (!\sec|inst|Equal19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|Equal19~0_combout\,
	datab => \sec|inst|Equal18~0_combout\,
	datac => \sec|inst3|liga[0]~3_combout\,
	datad => \sec|inst|data[86]~15_combout\,
	combout => \sec|inst|data[86]~18_combout\);

-- Location: LCCOMB_X17_Y34_N26
\sec|inst|data[74]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[74]~20_combout\ = ((\sec|inst|data[74]~14_combout\ & (\sec|inst|Equal13~0_combout\ & \sec|inst3|liga[0]~1_combout\))) # (!\sec|inst|data[86]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|data[74]~14_combout\,
	datab => \sec|inst|Equal13~0_combout\,
	datac => \sec|inst3|liga[0]~1_combout\,
	datad => \sec|inst|data[86]~18_combout\,
	combout => \sec|inst|data[74]~20_combout\);

-- Location: FF_X17_Y34_N27
\sec|inst3|liga[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst|data[74]~20_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|liga\(0));

-- Location: LCCOMB_X16_Y34_N0
\sec|inst1|SELECTOR~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst1|SELECTOR~1_combout\ = ((\sec|inst3|liga\(0) & (\upa|Banderas\(2))) # (!\sec|inst3|liga\(0) & ((\flags|tCC|valor_interno~q\)))) # (!\sec|inst3|prueba\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Banderas\(2),
	datab => \sec|inst3|prueba\(0),
	datac => \flags|tCC|valor_interno~q\,
	datad => \sec|inst3|liga\(0),
	combout => \sec|inst1|SELECTOR~1_combout\);

-- Location: LCCOMB_X15_Y34_N6
\sec|inst1|SELECTOR~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst1|SELECTOR~2_combout\ = (\sec|inst3|instruccion\(0) & ((\sec|inst1|SELECTOR~1_combout\))) # (!\sec|inst3|instruccion\(0) & (\sec|inst3|instruccion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|instruccion\(1),
	datac => \sec|inst1|SELECTOR~1_combout\,
	datad => \sec|inst3|instruccion\(0),
	combout => \sec|inst1|SELECTOR~2_combout\);

-- Location: LCCOMB_X15_Y35_N30
\inst11|valor_interno[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|valor_interno[7]~feeder_combout\ = \upa|Yupa[3]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Yupa[3]~18_combout\,
	combout => \inst11|valor_interno[7]~feeder_combout\);

-- Location: FF_X15_Y35_N31
\inst11|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sec|inst3|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst11|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(7));

-- Location: FF_X13_Y34_N15
\sec|inst2|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst2|valor_interno[7]~23_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst2|valor_interno\(7));

-- Location: LCCOMB_X15_Y34_N14
\sec|inst5|$00000|auto_generated|result_node[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst5|$00000|auto_generated|result_node[7]~10_combout\ = (\sec|inst1|SELECTOR~0_combout\ & ((\inst11|valor_interno\(7)) # ((!\sec|inst1|SELECTOR~2_combout\ & \sec|inst2|valor_interno\(7))))) # (!\sec|inst1|SELECTOR~0_combout\ & 
-- (!\sec|inst1|SELECTOR~2_combout\ & ((\sec|inst2|valor_interno\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst1|SELECTOR~0_combout\,
	datab => \sec|inst1|SELECTOR~2_combout\,
	datac => \inst11|valor_interno\(7),
	datad => \sec|inst2|valor_interno\(7),
	combout => \sec|inst5|$00000|auto_generated|result_node[7]~10_combout\);

-- Location: LCCOMB_X15_Y34_N8
\sec|inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal0~0_combout\ = (!\sec|inst5|$00000|auto_generated|result_node[3]~16_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[2]~17_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[6]~11_combout\ & 
-- !\sec|inst5|$00000|auto_generated|result_node[9]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[3]~16_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[2]~17_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[6]~11_combout\,
	datad => \sec|inst5|$00000|auto_generated|result_node[9]~8_combout\,
	combout => \sec|inst|Equal0~0_combout\);

-- Location: LCCOMB_X15_Y34_N28
\sec|inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal0~1_combout\ = (\sec|inst5|$00000|auto_generated|result_node[11]~6_combout\) # ((\sec|inst5|$00000|auto_generated|result_node[4]~13_combout\) # ((\sec|inst5|$00000|auto_generated|result_node[8]~9_combout\) # 
-- (\sec|inst5|$00000|auto_generated|result_node[5]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[4]~13_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[8]~9_combout\,
	datad => \sec|inst5|$00000|auto_generated|result_node[5]~12_combout\,
	combout => \sec|inst|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y34_N24
\sec|inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal0~2_combout\ = (!\sec|inst5|$00000|auto_generated|result_node[10]~7_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[7]~10_combout\ & (\sec|inst|Equal0~0_combout\ & !\sec|inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[7]~10_combout\,
	datac => \sec|inst|Equal0~0_combout\,
	datad => \sec|inst|Equal0~1_combout\,
	combout => \sec|inst|Equal0~2_combout\);

-- Location: LCCOMB_X15_Y34_N22
\sec|inst|data[87]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[87]~9_combout\ = (\sec|inst|data[87]~8_combout\) # ((\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & (\sec|inst|Equal0~2_combout\ & !\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datab => \sec|inst|Equal0~2_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \sec|inst|data[87]~8_combout\,
	combout => \sec|inst|data[87]~9_combout\);

-- Location: FF_X15_Y34_N23
\sec|inst3|instruccion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst|data[87]~9_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|instruccion\(1));

-- Location: LCCOMB_X15_Y34_N30
\sec|inst1|SELECTOR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst1|SELECTOR~0_combout\ = (\sec|inst3|instruccion\(1) & !\sec|inst3|instruccion\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sec|inst3|instruccion\(1),
	datad => \sec|inst3|instruccion\(0),
	combout => \sec|inst1|SELECTOR~0_combout\);

-- Location: FF_X13_Y34_N21
\sec|inst2|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst2|valor_interno[10]~29_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst2|valor_interno\(10));

-- Location: LCCOMB_X15_Y33_N0
\inst11|valor_interno[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|valor_interno[10]~feeder_combout\ = \upa|Yupa[6]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Yupa[6]~8_combout\,
	combout => \inst11|valor_interno[10]~feeder_combout\);

-- Location: FF_X15_Y33_N1
\inst11|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sec|inst3|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst11|valor_interno[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(10));

-- Location: LCCOMB_X15_Y34_N0
\sec|inst5|$00000|auto_generated|result_node[10]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst5|$00000|auto_generated|result_node[10]~7_combout\ = (\sec|inst1|SELECTOR~0_combout\ & ((\inst11|valor_interno\(10)) # ((\sec|inst2|valor_interno\(10) & !\sec|inst1|SELECTOR~2_combout\)))) # (!\sec|inst1|SELECTOR~0_combout\ & 
-- (\sec|inst2|valor_interno\(10) & (!\sec|inst1|SELECTOR~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst1|SELECTOR~0_combout\,
	datab => \sec|inst2|valor_interno\(10),
	datac => \sec|inst1|SELECTOR~2_combout\,
	datad => \inst11|valor_interno\(10),
	combout => \sec|inst5|$00000|auto_generated|result_node[10]~7_combout\);

-- Location: LCCOMB_X14_Y34_N14
\sec|inst|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal5~0_combout\ = (\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[10]~7_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ & \sec|inst|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \sec|inst|Equal3~2_combout\,
	combout => \sec|inst|Equal5~0_combout\);

-- Location: LCCOMB_X17_Y34_N20
\sec|inst|data[86]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[86]~10_combout\ = (\sec|inst|Equal5~0_combout\) # ((\sec|inst|Equal11~2_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ & \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|Equal5~0_combout\,
	datab => \sec|inst|Equal11~2_combout\,
	datac => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	combout => \sec|inst|data[86]~10_combout\);

-- Location: LCCOMB_X18_Y34_N12
\sec|inst|data[86]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[86]~13_combout\ = (!\sec|inst|Equal14~3_combout\ & (\sec|inst|data[86]~40_combout\ & (\sec|inst|data[86]~12_combout\ & !\sec|inst|Equal11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|Equal14~3_combout\,
	datab => \sec|inst|data[86]~40_combout\,
	datac => \sec|inst|data[86]~12_combout\,
	datad => \sec|inst|Equal11~3_combout\,
	combout => \sec|inst|data[86]~13_combout\);

-- Location: LCCOMB_X17_Y34_N4
\sec|inst|data[86]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[86]~17_combout\ = (\sec|inst|data[86]~11_combout\ & (\sec|inst|data[86]~13_combout\ & ((\sec|inst|Equal18~0_combout\) # (!\sec|inst3|liga[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|Equal18~0_combout\,
	datab => \sec|inst|data[86]~11_combout\,
	datac => \sec|inst3|liga[0]~3_combout\,
	datad => \sec|inst|data[86]~13_combout\,
	combout => \sec|inst|data[86]~17_combout\);

-- Location: LCCOMB_X17_Y34_N0
\sec|inst|data[86]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|data[86]~19_combout\ = (\sec|inst|data[86]~10_combout\) # (((\sec|inst|data[86]~17_combout\) # (!\sec|inst|data[86]~18_combout\)) # (!\sec|inst|data~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst|data[86]~10_combout\,
	datab => \sec|inst|data~7_combout\,
	datac => \sec|inst|data[86]~17_combout\,
	datad => \sec|inst|data[86]~18_combout\,
	combout => \sec|inst|data[86]~19_combout\);

-- Location: FF_X17_Y34_N1
\sec|inst3|instruccion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst|data[86]~19_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|instruccion\(0));

-- Location: LCCOMB_X13_Y34_N28
\sec|inst5|$00000|auto_generated|result_node[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst5|$00000|auto_generated|result_node[0]~14_combout\ = (!\sec|inst3|instruccion\(1) & ((\sec|inst3|liga\(0)) # (!\sec|inst3|instruccion\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|instruccion\(0),
	datac => \sec|inst3|instruccion\(1),
	datad => \sec|inst3|liga\(0),
	combout => \sec|inst5|$00000|auto_generated|result_node[0]~14_combout\);

-- Location: LCCOMB_X13_Y34_N0
\sec|inst5|$00000|auto_generated|result_node[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\ = (\sec|inst3|instruccion\(0) & ((\sec|inst1|SELECTOR~1_combout\ & ((\sec|inst5|$00000|auto_generated|result_node[0]~14_combout\))) # (!\sec|inst1|SELECTOR~1_combout\ & 
-- (\sec|inst2|valor_interno\(0))))) # (!\sec|inst3|instruccion\(0) & (\sec|inst2|valor_interno\(0) & ((\sec|inst5|$00000|auto_generated|result_node[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst2|valor_interno\(0),
	datab => \sec|inst3|instruccion\(0),
	datac => \sec|inst1|SELECTOR~1_combout\,
	datad => \sec|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	combout => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\);

-- Location: FF_X13_Y34_N3
\sec|inst2|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst2|valor_interno[1]~11_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst2|valor_interno\(1));

-- Location: LCCOMB_X16_Y34_N6
\sec|inst5|$00000|auto_generated|result_node[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ = (\sec|inst2|valor_interno\(1) & ((\sec|inst3|instruccion\(0) & (!\sec|inst1|SELECTOR~1_combout\)) # (!\sec|inst3|instruccion\(0) & ((!\sec|inst3|instruccion\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst2|valor_interno\(1),
	datab => \sec|inst1|SELECTOR~1_combout\,
	datac => \sec|inst3|instruccion\(0),
	datad => \sec|inst3|instruccion\(1),
	combout => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\);

-- Location: LCCOMB_X15_Y34_N10
\sec|inst|Equal15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec|inst|Equal15~0_combout\ = (!\sec|inst5|$00000|auto_generated|result_node[1]~18_combout\ & (!\sec|inst5|$00000|auto_generated|result_node[2]~17_combout\ & (\sec|inst|Equal14~2_combout\ & \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst5|$00000|auto_generated|result_node[1]~18_combout\,
	datab => \sec|inst5|$00000|auto_generated|result_node[2]~17_combout\,
	datac => \sec|inst|Equal14~2_combout\,
	datad => \sec|inst5|$00000|auto_generated|result_node[0]~15_combout\,
	combout => \sec|inst|Equal15~0_combout\);

-- Location: FF_X15_Y34_N11
\sec|inst3|BD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sec|inst|Equal15~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec|inst3|BD~q\);

-- Location: LCCOMB_X16_Y35_N26
\RegAux|data_out~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~12_combout\ = (\sec|inst3|BD~q\ & (\RegAux|data_out\(4))) # (!\sec|inst3|BD~q\ & ((\upa|Yupa[3]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec|inst3|BD~q\,
	datab => \RegAux|data_out\(4),
	datad => \upa|Yupa[3]~18_combout\,
	combout => \RegAux|data_out~12_combout\);

-- Location: FF_X16_Y35_N27
\RegAux|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~12_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(3));

-- Location: LCCOMB_X14_Y32_N28
\RegAux|data_out~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~13_combout\ = (\sec|inst3|BD~q\ & (\RegAux|data_out\(3))) # (!\sec|inst3|BD~q\ & ((\upa|Yupa[2]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(3),
	datab => \sec|inst3|BD~q\,
	datad => \upa|Yupa[2]~21_combout\,
	combout => \RegAux|data_out~13_combout\);

-- Location: FF_X14_Y32_N29
\RegAux|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~13_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \sec|inst3|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(2));

-- Location: LCCOMB_X14_Y32_N6
\RegAux|WideOr0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~3_combout\ = (\RegAux|data_out\(2)) # ((\RegAux|data_out\(1)) # ((\RegAux|data_out\(3)) # (\RegAux|data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(2),
	datab => \RegAux|data_out\(1),
	datac => \RegAux|data_out\(3),
	datad => \RegAux|data_out\(0),
	combout => \RegAux|WideOr0~3_combout\);

-- Location: LCCOMB_X13_Y32_N4
\RegAux|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~1_combout\ = (\RegAux|data_out\(10)) # ((\RegAux|data_out\(9)) # ((\RegAux|data_out\(8)) # (\RegAux|data_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(10),
	datab => \RegAux|data_out\(9),
	datac => \RegAux|data_out\(8),
	datad => \RegAux|data_out\(11),
	combout => \RegAux|WideOr0~1_combout\);

-- Location: LCCOMB_X14_Y32_N26
\RegAux|WideOr0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~2_combout\ = (\RegAux|data_out\(5)) # ((\RegAux|data_out\(4)) # ((\RegAux|data_out\(7)) # (\RegAux|data_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(5),
	datab => \RegAux|data_out\(4),
	datac => \RegAux|data_out\(7),
	datad => \RegAux|data_out\(6),
	combout => \RegAux|WideOr0~2_combout\);

-- Location: LCCOMB_X13_Y33_N28
\RegAux|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~0_combout\ = (\RegAux|data_out\(15)) # ((\RegAux|data_out\(14)) # ((\RegAux|data_out\(12)) # (\RegAux|data_out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(15),
	datab => \RegAux|data_out\(14),
	datac => \RegAux|data_out\(12),
	datad => \RegAux|data_out\(13),
	combout => \RegAux|WideOr0~0_combout\);

-- Location: LCCOMB_X14_Y32_N12
\RegAux|WideOr0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~4_combout\ = (\RegAux|WideOr0~3_combout\) # ((\RegAux|WideOr0~1_combout\) # ((\RegAux|WideOr0~2_combout\) # (\RegAux|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|WideOr0~3_combout\,
	datab => \RegAux|WideOr0~1_combout\,
	datac => \RegAux|WideOr0~2_combout\,
	datad => \RegAux|WideOr0~0_combout\,
	combout => \RegAux|WideOr0~4_combout\);

-- Location: LCCOMB_X19_Y34_N20
\upa|Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[6]~feeder_combout\ = \upa|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \upa|Add0~14_combout\,
	combout => \upa|Q[6]~feeder_combout\);

-- Location: FF_X19_Y34_N21
\upa|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[6]~feeder_combout\,
	ena => \sec|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(6));

-- Location: LCCOMB_X19_Y34_N26
\upa|Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[5]~feeder_combout\ = \upa|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \upa|Add0~12_combout\,
	combout => \upa|Q[5]~feeder_combout\);

-- Location: FF_X19_Y34_N27
\upa|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[5]~feeder_combout\,
	ena => \sec|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(5));

-- Location: FF_X17_Y34_N7
\upa|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Add0~10_combout\,
	sload => VCC,
	ena => \sec|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(4));

-- Location: LCCOMB_X19_Y34_N24
\upa|Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[3]~feeder_combout\ = \upa|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \upa|Add0~8_combout\,
	combout => \upa|Q[3]~feeder_combout\);

-- Location: FF_X19_Y34_N25
\upa|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[3]~feeder_combout\,
	ena => \sec|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(3));

-- Location: FF_X16_Y34_N11
\upa|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Add0~6_combout\,
	sload => VCC,
	ena => \sec|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(2));

-- Location: LCCOMB_X19_Y34_N30
\upa|Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[1]~feeder_combout\ = \upa|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Add0~4_combout\,
	combout => \upa|Q[1]~feeder_combout\);

-- Location: FF_X19_Y34_N31
\upa|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[1]~feeder_combout\,
	ena => \sec|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(1));

-- Location: LCCOMB_X14_Y36_N28
\RegPC|data_out[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[15]~0_combout\ = (\sec|inst3|PC\(2) & ((\upa|Yupa2[7]~4_combout\))) # (!\sec|inst3|PC\(2) & (\RegPC|data_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|PC\(2),
	datac => \RegPC|data_out\(15),
	datad => \upa|Yupa2[7]~4_combout\,
	combout => \RegPC|data_out[15]~0_combout\);

-- Location: LCCOMB_X14_Y36_N2
\RegPC|data_out[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[14]~1_combout\ = (\sec|inst3|PC\(2) & ((\upa|Yupa2[6]~7_combout\))) # (!\sec|inst3|PC\(2) & (\RegPC|data_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|PC\(2),
	datac => \RegPC|data_out\(14),
	datad => \upa|Yupa2[6]~7_combout\,
	combout => \RegPC|data_out[14]~1_combout\);

-- Location: LCCOMB_X14_Y36_N20
\RegPC|data_out[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[13]~2_combout\ = (\sec|inst3|PC\(2) & ((\upa|Yupa2[5]~10_combout\))) # (!\sec|inst3|PC\(2) & (\RegPC|data_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|PC\(2),
	datac => \RegPC|data_out\(13),
	datad => \upa|Yupa2[5]~10_combout\,
	combout => \RegPC|data_out[13]~2_combout\);

-- Location: LCCOMB_X14_Y36_N18
\RegPC|data_out[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[12]~3_combout\ = (\sec|inst3|PC\(2) & ((\upa|Yupa2[4]~13_combout\))) # (!\sec|inst3|PC\(2) & (\RegPC|data_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|PC\(2),
	datac => \RegPC|data_out\(12),
	datad => \upa|Yupa2[4]~13_combout\,
	combout => \RegPC|data_out[12]~3_combout\);

-- Location: LCCOMB_X13_Y35_N0
\RegPC|data_out[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[11]~4_combout\ = (\sec|inst3|PC\(2) & ((\upa|Yupa2[3]~16_combout\))) # (!\sec|inst3|PC\(2) & (\RegPC|data_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|PC\(2),
	datac => \RegPC|data_out\(11),
	datad => \upa|Yupa2[3]~16_combout\,
	combout => \RegPC|data_out[11]~4_combout\);

-- Location: LCCOMB_X14_Y36_N24
\RegPC|data_out[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[10]~5_combout\ = (\sec|inst3|PC\(2) & ((\upa|Yupa2[2]~19_combout\))) # (!\sec|inst3|PC\(2) & (\RegPC|data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|PC\(2),
	datac => \RegPC|data_out\(10),
	datad => \upa|Yupa2[2]~19_combout\,
	combout => \RegPC|data_out[10]~5_combout\);

-- Location: LCCOMB_X14_Y36_N22
\RegPC|data_out[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[9]~6_combout\ = (\sec|inst3|PC\(2) & ((\upa|Yupa2[1]~22_combout\))) # (!\sec|inst3|PC\(2) & (\RegPC|data_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|PC\(2),
	datac => \RegPC|data_out\(9),
	datad => \upa|Yupa2[1]~22_combout\,
	combout => \RegPC|data_out[9]~6_combout\);

-- Location: LCCOMB_X13_Y35_N10
\RegPC|data_out[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[8]~7_combout\ = (\sec|inst3|PC\(2) & ((\upa|Yupa2[0]~25_combout\))) # (!\sec|inst3|PC\(2) & (\RegPC|data_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec|inst3|PC\(2),
	datac => \RegPC|data_out\(8),
	datad => \upa|Yupa2[0]~25_combout\,
	combout => \RegPC|data_out[8]~7_combout\);

-- Location: LCCOMB_X13_Y36_N16
\RegPC|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~32_combout\ = (\RegPC|data_out\(8) & (\RegPC|Add0~31\ $ (GND))) # (!\RegPC|data_out\(8) & (!\RegPC|Add0~31\ & VCC))
-- \RegPC|Add0~33\ = CARRY((\RegPC|data_out\(8) & !\RegPC|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(8),
	datad => VCC,
	cin => \RegPC|Add0~31\,
	combout => \RegPC|Add0~32_combout\,
	cout => \RegPC|Add0~33\);

-- Location: LCCOMB_X14_Y36_N30
\RegPC|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Equal0~0_combout\ = (!\sec|inst3|PC\(2) & \sec|inst3|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sec|inst3|PC\(2),
	datad => \sec|inst3|PC\(0),
	combout => \RegPC|Equal0~0_combout\);

-- Location: FF_X13_Y35_N11
\RegPC|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[8]~7_combout\,
	asdata => \RegPC|Add0~32_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \RegPC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(8));

-- Location: LCCOMB_X13_Y36_N18
\RegPC|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~34_combout\ = (\RegPC|data_out\(9) & (!\RegPC|Add0~33\)) # (!\RegPC|data_out\(9) & ((\RegPC|Add0~33\) # (GND)))
-- \RegPC|Add0~35\ = CARRY((!\RegPC|Add0~33\) # (!\RegPC|data_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(9),
	datad => VCC,
	cin => \RegPC|Add0~33\,
	combout => \RegPC|Add0~34_combout\,
	cout => \RegPC|Add0~35\);

-- Location: FF_X14_Y36_N23
\RegPC|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[9]~6_combout\,
	asdata => \RegPC|Add0~34_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \RegPC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(9));

-- Location: LCCOMB_X13_Y36_N20
\RegPC|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~36_combout\ = (\RegPC|data_out\(10) & (\RegPC|Add0~35\ $ (GND))) # (!\RegPC|data_out\(10) & (!\RegPC|Add0~35\ & VCC))
-- \RegPC|Add0~37\ = CARRY((\RegPC|data_out\(10) & !\RegPC|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(10),
	datad => VCC,
	cin => \RegPC|Add0~35\,
	combout => \RegPC|Add0~36_combout\,
	cout => \RegPC|Add0~37\);

-- Location: FF_X14_Y36_N25
\RegPC|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[10]~5_combout\,
	asdata => \RegPC|Add0~36_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \RegPC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(10));

-- Location: LCCOMB_X13_Y36_N22
\RegPC|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~38_combout\ = (\RegPC|data_out\(11) & (!\RegPC|Add0~37\)) # (!\RegPC|data_out\(11) & ((\RegPC|Add0~37\) # (GND)))
-- \RegPC|Add0~39\ = CARRY((!\RegPC|Add0~37\) # (!\RegPC|data_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(11),
	datad => VCC,
	cin => \RegPC|Add0~37\,
	combout => \RegPC|Add0~38_combout\,
	cout => \RegPC|Add0~39\);

-- Location: FF_X13_Y35_N1
\RegPC|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[11]~4_combout\,
	asdata => \RegPC|Add0~38_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \RegPC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(11));

-- Location: LCCOMB_X13_Y36_N24
\RegPC|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~40_combout\ = (\RegPC|data_out\(12) & (\RegPC|Add0~39\ $ (GND))) # (!\RegPC|data_out\(12) & (!\RegPC|Add0~39\ & VCC))
-- \RegPC|Add0~41\ = CARRY((\RegPC|data_out\(12) & !\RegPC|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(12),
	datad => VCC,
	cin => \RegPC|Add0~39\,
	combout => \RegPC|Add0~40_combout\,
	cout => \RegPC|Add0~41\);

-- Location: FF_X14_Y36_N19
\RegPC|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[12]~3_combout\,
	asdata => \RegPC|Add0~40_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \RegPC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(12));

-- Location: LCCOMB_X13_Y36_N26
\RegPC|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~42_combout\ = (\RegPC|data_out\(13) & (!\RegPC|Add0~41\)) # (!\RegPC|data_out\(13) & ((\RegPC|Add0~41\) # (GND)))
-- \RegPC|Add0~43\ = CARRY((!\RegPC|Add0~41\) # (!\RegPC|data_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(13),
	datad => VCC,
	cin => \RegPC|Add0~41\,
	combout => \RegPC|Add0~42_combout\,
	cout => \RegPC|Add0~43\);

-- Location: FF_X14_Y36_N21
\RegPC|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[13]~2_combout\,
	asdata => \RegPC|Add0~42_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \RegPC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(13));

-- Location: LCCOMB_X13_Y36_N28
\RegPC|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~44_combout\ = (\RegPC|data_out\(14) & (\RegPC|Add0~43\ $ (GND))) # (!\RegPC|data_out\(14) & (!\RegPC|Add0~43\ & VCC))
-- \RegPC|Add0~45\ = CARRY((\RegPC|data_out\(14) & !\RegPC|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(14),
	datad => VCC,
	cin => \RegPC|Add0~43\,
	combout => \RegPC|Add0~44_combout\,
	cout => \RegPC|Add0~45\);

-- Location: FF_X14_Y36_N3
\RegPC|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[14]~1_combout\,
	asdata => \RegPC|Add0~44_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \RegPC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(14));

-- Location: LCCOMB_X13_Y36_N30
\RegPC|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~46_combout\ = \RegPC|Add0~45\ $ (\RegPC|data_out\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RegPC|data_out\(15),
	cin => \RegPC|Add0~45\,
	combout => \RegPC|Add0~46_combout\);

-- Location: FF_X14_Y36_N29
\RegPC|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPC|data_out[15]~0_combout\,
	asdata => \RegPC|Add0~46_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \RegPC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(15));

-- Location: IOIBUF_X38_Y0_N29
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

-- Location: IOIBUF_X78_Y16_N23
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
END structure;


