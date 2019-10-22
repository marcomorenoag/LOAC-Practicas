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

-- DATE "10/22/2019 00:25:56"

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
-- Z	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRQn	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XIRQn	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[11]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[10]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[9]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[8]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[7]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[6]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[5]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[4]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[3]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[2]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[1]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[7]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[6]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[5]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[3]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[2]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[7]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[6]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[4]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[3]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[0]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[7]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[6]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[5]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[3]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[2]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[1]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[0]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[7]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[6]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[5]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[4]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[0]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[15]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[14]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[13]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[12]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[11]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[10]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[9]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[8]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[7]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[1]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[15]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[14]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[13]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[12]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[11]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[10]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[9]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[8]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[7]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[6]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[5]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[4]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[0]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[15]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[14]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[13]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[12]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[11]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[10]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[9]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[8]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[7]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[6]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[5]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[4]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[3]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[15]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[14]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[13]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[12]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[11]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[10]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[9]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[8]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[7]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[6]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[5]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[3]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[0]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[15]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[14]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[13]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[12]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[11]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[10]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[9]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[8]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[7]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[6]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[5]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[3]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[2]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[1]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[11]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[10]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[9]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[8]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[7]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[4]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[0]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_regInstr : std_logic_vector(11 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst7|inst3|nCBD~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[0]~33_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[1]~11_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[1]~12\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[2]~14\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[3]~15_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[3]~15_combout\ : std_logic;
SIGNAL \inst7|inst1|SELECTOR~2_combout\ : std_logic;
SIGNAL \inst7|inst1|SELECTOR~0_combout\ : std_logic;
SIGNAL \inst7|inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[10]~30\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[11]~31_combout\ : std_logic;
SIGNAL \inst7|inst|data~18_combout\ : std_logic;
SIGNAL \inst7|inst|data[68]~11_combout\ : std_logic;
SIGNAL \inst7|inst|data~19_combout\ : std_logic;
SIGNAL \inst7|inst|Equal14~4_combout\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[2]~13_combout\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[3]~16\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[4]~17_combout\ : std_logic;
SIGNAL \inst7|inst|Equal11~4_combout\ : std_logic;
SIGNAL \inst7|inst|Equal10~0_combout\ : std_logic;
SIGNAL \inst7|inst|Equal9~0_combout\ : std_logic;
SIGNAL \inst7|inst|Equal12~0_combout\ : std_logic;
SIGNAL \inst7|inst|Equal6~0_combout\ : std_logic;
SIGNAL \inst7|inst|data[68]~12_combout\ : std_logic;
SIGNAL \inst7|inst|Equal8~0_combout\ : std_logic;
SIGNAL \inst7|inst|data[68]~25_combout\ : std_logic;
SIGNAL \inst7|inst|data[68]~26_combout\ : std_logic;
SIGNAL \inst7|inst|data[67]~27_combout\ : std_logic;
SIGNAL \inst7|inst3|nWA~q\ : std_logic;
SIGNAL \AcumuladorA|TRI_STATE~0_combout\ : std_logic;
SIGNAL \inst7|inst|data~14_combout\ : std_logic;
SIGNAL \inst7|inst|Equal15~0_combout\ : std_logic;
SIGNAL \inst7|inst|data~41_combout\ : std_logic;
SIGNAL \inst7|inst|data~30_combout\ : std_logic;
SIGNAL \inst7|inst|Equal17~0_combout\ : std_logic;
SIGNAL \inst7|inst|data~9_combout\ : std_logic;
SIGNAL \inst7|inst|data[28]~23_combout\ : std_logic;
SIGNAL \inst7|inst|data[43]~31_combout\ : std_logic;
SIGNAL \inst7|inst3|nERA0~q\ : std_logic;
SIGNAL \upa|Yupa[7]~2_combout\ : std_logic;
SIGNAL \inst7|inst3|nWB~q\ : std_logic;
SIGNAL \AcumuladorB|TRI_STATE~0_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~3_combout\ : std_logic;
SIGNAL \AcumuladorA|C[0]~7_combout\ : std_logic;
SIGNAL \inst7|inst|data[44]~24_combout\ : std_logic;
SIGNAL \inst7|inst3|nERA1~q\ : std_logic;
SIGNAL \upa|Yupa2[7]~3_combout\ : std_logic;
SIGNAL \AcumuladorA|B[7]~0_combout\ : std_logic;
SIGNAL \AcumuladorB|B[7]~0_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~4_combout\ : std_logic;
SIGNAL \AcumuladorB|C[0]~7_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[0]~7_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[0]~8_combout\ : std_logic;
SIGNAL \upa|Mux27~0_combout\ : std_logic;
SIGNAL \inst7|inst|data[9]~36_combout\ : std_logic;
SIGNAL \inst7|inst3|CC~q\ : std_logic;
SIGNAL \AcumuladorB|C[7]~0_combout\ : std_logic;
SIGNAL \RegAux|data_out~0_combout\ : std_logic;
SIGNAL \RegAux|C[7]~0_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[7]~0_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[0]~8_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~1_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~0_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~2_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~5_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[7]~0_combout\ : std_logic;
SIGNAL \upa|Mux35~0_combout\ : std_logic;
SIGNAL \AcumuladorB|C[6]~1_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[6]~1_combout\ : std_logic;
SIGNAL \RegAux|data_out~1_combout\ : std_logic;
SIGNAL \RegAux|C[5]~2_combout\ : std_logic;
SIGNAL \AcumuladorA|C[5]~2_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[5]~2_combout\ : std_logic;
SIGNAL \AcumuladorB|C[5]~2_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[5]~2_combout\ : std_logic;
SIGNAL \upa|Mux33~0_combout\ : std_logic;
SIGNAL \upa|Mux32~0_combout\ : std_logic;
SIGNAL \RegAux|C[3]~4_combout\ : std_logic;
SIGNAL \AcumuladorB|C[3]~4_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[3]~4_combout\ : std_logic;
SIGNAL \upa|Mux31~0_combout\ : std_logic;
SIGNAL \RegAux|C[2]~5_combout\ : std_logic;
SIGNAL \AcumuladorB|C[2]~5_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[2]~5_combout\ : std_logic;
SIGNAL \upa|Mux30~0_combout\ : std_logic;
SIGNAL \AcumuladorB|C[1]~6_combout\ : std_logic;
SIGNAL \AcumuladorA|C[1]~6_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[1]~6_combout\ : std_logic;
SIGNAL \RegAux|C[1]~6_combout\ : std_logic;
SIGNAL \upa|Add0~3\ : std_logic;
SIGNAL \upa|Add0~4_combout\ : std_logic;
SIGNAL \upa|Yupa2[1]~21_combout\ : std_logic;
SIGNAL \upa|Yupa2[1]~22_combout\ : std_logic;
SIGNAL \upa|Yupa2[1]~23_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[1]~6_combout\ : std_logic;
SIGNAL \upa|Mux29~0_combout\ : std_logic;
SIGNAL \upa|Add0~5\ : std_logic;
SIGNAL \upa|Add0~6_combout\ : std_logic;
SIGNAL \upa|Yupa2[2]~18_combout\ : std_logic;
SIGNAL \upa|Yupa2[2]~19_combout\ : std_logic;
SIGNAL \upa|Yupa2[2]~20_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[2]~5_combout\ : std_logic;
SIGNAL \AcumuladorA|C[2]~5_combout\ : std_logic;
SIGNAL \upa|Add0~7\ : std_logic;
SIGNAL \upa|Add0~8_combout\ : std_logic;
SIGNAL \upa|Yupa_interno[3]~feeder_combout\ : std_logic;
SIGNAL \upa|Yupa[3]~15_combout\ : std_logic;
SIGNAL \RegAux|TRI_STATE_D~0_combout\ : std_logic;
SIGNAL \upa|Yupa[3]~14_combout\ : std_logic;
SIGNAL \inst7|inst|data[86]~13_combout\ : std_logic;
SIGNAL \inst7|inst|data~42_combout\ : std_logic;
SIGNAL \inst7|inst|data[86]~15_combout\ : std_logic;
SIGNAL \inst7|inst|data[86]~16_combout\ : std_logic;
SIGNAL \inst7|inst|data[27]~38_combout\ : std_logic;
SIGNAL \inst7|inst|data[26]~33_combout\ : std_logic;
SIGNAL \inst7|inst|data[27]~39_combout\ : std_logic;
SIGNAL \inst7|inst|data[27]~40_combout\ : std_logic;
SIGNAL \inst7|inst3|nCBD~q\ : std_logic;
SIGNAL \inst7|inst3|nCBD~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst7|inst|data[26]~32_combout\ : std_logic;
SIGNAL \inst7|inst|data[28]~37_combout\ : std_logic;
SIGNAL \RegPC|Add0~16_combout\ : std_logic;
SIGNAL \RegPC|Add0~55_combout\ : std_logic;
SIGNAL \RegPC|Add0~17\ : std_logic;
SIGNAL \RegPC|Add0~18_combout\ : std_logic;
SIGNAL \RegPC|Add0~54_combout\ : std_logic;
SIGNAL \RegPC|Add0~19\ : std_logic;
SIGNAL \RegPC|Add0~20_combout\ : std_logic;
SIGNAL \RegPC|Add0~53_combout\ : std_logic;
SIGNAL \RegPC|Add0~21\ : std_logic;
SIGNAL \RegPC|Add0~22_combout\ : std_logic;
SIGNAL \RegPC|Add0~52_combout\ : std_logic;
SIGNAL \RegPC|Add0~23\ : std_logic;
SIGNAL \RegPC|Add0~24_combout\ : std_logic;
SIGNAL \RegPC|Add0~51_combout\ : std_logic;
SIGNAL \RegPC|Add0~25\ : std_logic;
SIGNAL \RegPC|Add0~26_combout\ : std_logic;
SIGNAL \RegPC|Add0~50_combout\ : std_logic;
SIGNAL \RegPC|Add0~27\ : std_logic;
SIGNAL \RegPC|Add0~28_combout\ : std_logic;
SIGNAL \RegPC|Add0~49_combout\ : std_logic;
SIGNAL \RegPC|Add0~29\ : std_logic;
SIGNAL \RegPC|Add0~30_combout\ : std_logic;
SIGNAL \RegPC|Add0~48_combout\ : std_logic;
SIGNAL \inst|data_out[0]~0_combout\ : std_logic;
SIGNAL \inst|data[4]~2_combout\ : std_logic;
SIGNAL \inst|data[4]~3_combout\ : std_logic;
SIGNAL \upa|Yupa[3]~16_combout\ : std_logic;
SIGNAL \upa|Yupa2[3]~15_combout\ : std_logic;
SIGNAL \upa|Yupa2[3]~16_combout\ : std_logic;
SIGNAL \upa|Yupa2[3]~17_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[3]~4_combout\ : std_logic;
SIGNAL \AcumuladorA|C[3]~4_combout\ : std_logic;
SIGNAL \upa|Add0~9\ : std_logic;
SIGNAL \upa|Add0~10_combout\ : std_logic;
SIGNAL \upa|Banderas[4]~feeder_combout\ : std_logic;
SIGNAL \upa|Yupa2[4]~12_combout\ : std_logic;
SIGNAL \RegAux|C[4]~3_combout\ : std_logic;
SIGNAL \upa|Yupa2[4]~13_combout\ : std_logic;
SIGNAL \upa|Yupa2[4]~14_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[4]~3_combout\ : std_logic;
SIGNAL \AcumuladorA|C[4]~3_combout\ : std_logic;
SIGNAL \upa|Add0~11\ : std_logic;
SIGNAL \upa|Add0~12_combout\ : std_logic;
SIGNAL \upa|Yupa2[5]~9_combout\ : std_logic;
SIGNAL \upa|Yupa2[5]~10_combout\ : std_logic;
SIGNAL \upa|Yupa2[5]~11_combout\ : std_logic;
SIGNAL \RegAux|data_out~2_combout\ : std_logic;
SIGNAL \RegAux|data_out~3_combout\ : std_logic;
SIGNAL \RegAux|data_out~4_combout\ : std_logic;
SIGNAL \RegAux|data_out~5_combout\ : std_logic;
SIGNAL \RegAux|data_out~6_combout\ : std_logic;
SIGNAL \RegAux|data_out~7_combout\ : std_logic;
SIGNAL \RegAux|data_out~8_combout\ : std_logic;
SIGNAL \RegAux|data_out~9_combout\ : std_logic;
SIGNAL \RegAux|D[6]~0_combout\ : std_logic;
SIGNAL \upa|Yupa[6]~6_combout\ : std_logic;
SIGNAL \AcumuladorA|A[6]~0_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \upa|Yupa[6]~5_combout\ : std_logic;
SIGNAL \upa|Yupa[6]~7_combout\ : std_logic;
SIGNAL \AcumuladorA|C[6]~1_combout\ : std_logic;
SIGNAL \upa|Add0~13\ : std_logic;
SIGNAL \upa|Add0~14_combout\ : std_logic;
SIGNAL \upa|Yupa2[6]~6_combout\ : std_logic;
SIGNAL \RegAux|C[6]~1_combout\ : std_logic;
SIGNAL \upa|Yupa2[6]~7_combout\ : std_logic;
SIGNAL \upa|Yupa2[6]~8_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[6]~1_combout\ : std_logic;
SIGNAL \upa|Mux34~0_combout\ : std_logic;
SIGNAL \upa|Add0~15\ : std_logic;
SIGNAL \upa|Add0~17\ : std_logic;
SIGNAL \upa|Add0~18_combout\ : std_logic;
SIGNAL \flags|tCC|valor_interno~q\ : std_logic;
SIGNAL \upa|Add0~1_cout\ : std_logic;
SIGNAL \upa|Add0~2_combout\ : std_logic;
SIGNAL \upa|Yupa2[0]~24_combout\ : std_logic;
SIGNAL \RegAux|C[0]~7_combout\ : std_logic;
SIGNAL \upa|Yupa2[0]~25_combout\ : std_logic;
SIGNAL \upa|Yupa2[0]~26_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[0]~7_combout\ : std_logic;
SIGNAL \RegAux|data_out~14_combout\ : std_logic;
SIGNAL \RegAux|data_out~15_combout\ : std_logic;
SIGNAL \upa|Yupa[0]~23_combout\ : std_logic;
SIGNAL \upa|Yupa[0]~24_combout\ : std_logic;
SIGNAL \inst|data[0]~5_combout\ : std_logic;
SIGNAL \inst|data[0]~6_combout\ : std_logic;
SIGNAL \upa|Yupa[0]~25_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[4]~13_combout\ : std_logic;
SIGNAL \inst7|inst|Equal11~3_combout\ : std_logic;
SIGNAL \inst7|inst|Equal11~5_combout\ : std_logic;
SIGNAL \inst7|inst|data~5_combout\ : std_logic;
SIGNAL \inst7|inst|data~22_combout\ : std_logic;
SIGNAL \inst7|inst|data[26]~34_combout\ : std_logic;
SIGNAL \inst7|inst|data[26]~35_combout\ : std_logic;
SIGNAL \inst7|inst3|nAS~q\ : std_logic;
SIGNAL \upa|Yupa[7]~0_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~1_combout\ : std_logic;
SIGNAL \inst|data_out[7]~1_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~4_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[11]~6_combout\ : std_logic;
SIGNAL \inst7|inst|Equal3~2_combout\ : std_logic;
SIGNAL \inst7|inst|Equal3~3_combout\ : std_logic;
SIGNAL \inst7|inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst7|inst|data[71]~29_combout\ : std_logic;
SIGNAL \AcumuladorB|C[4]~3_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[4]~3_combout\ : std_logic;
SIGNAL \upa|Yupa[4]~12_combout\ : std_logic;
SIGNAL \upa|Yupa[4]~11_combout\ : std_logic;
SIGNAL \upa|Yupa[4]~13_combout\ : std_logic;
SIGNAL \RegAux|data_out~11_combout\ : std_logic;
SIGNAL \RegAux|data_out~12_combout\ : std_logic;
SIGNAL \RegAux|data_out~13_combout\ : std_logic;
SIGNAL \upa|Yupa[2]~17_combout\ : std_logic;
SIGNAL \upa|Yupa[2]~18_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|data_out[2]~2_combout\ : std_logic;
SIGNAL \inst|data[2]~4_combout\ : std_logic;
SIGNAL \upa|Yupa[2]~19_combout\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[4]~18\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[5]~20\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[6]~21_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[6]~11_combout\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[6]~22\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[7]~23_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[7]~10_combout\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[7]~24\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[8]~25_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[8]~9_combout\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[8]~26\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[9]~28\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[10]~29_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\ : std_logic;
SIGNAL \inst7|inst|Equal3~4_combout\ : std_logic;
SIGNAL \inst7|inst|data[54]~10_combout\ : std_logic;
SIGNAL \inst7|inst|data[54]~21_combout\ : std_logic;
SIGNAL \inst7|inst3|nDUPA~q\ : std_logic;
SIGNAL \upa|Yupa[1]~21_combout\ : std_logic;
SIGNAL \RegAux|D[1]~1_combout\ : std_logic;
SIGNAL \AcumuladorA|A[1]~1_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \upa|Yupa[1]~20_combout\ : std_logic;
SIGNAL \upa|Yupa[1]~22_combout\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[5]~19_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[5]~12_combout\ : std_logic;
SIGNAL \inst7|inst|Equal14~0_combout\ : std_logic;
SIGNAL \inst7|inst|Equal14~1_combout\ : std_logic;
SIGNAL \inst7|inst|Equal14~2_combout\ : std_logic;
SIGNAL \inst7|inst|Equal14~3_combout\ : std_logic;
SIGNAL \inst7|inst|Equal15~1_combout\ : std_logic;
SIGNAL \inst7|inst3|BD~q\ : std_logic;
SIGNAL \RegAux|data_out~10_combout\ : std_logic;
SIGNAL \upa|Yupa[5]~8_combout\ : std_logic;
SIGNAL \upa|Yupa[5]~9_combout\ : std_logic;
SIGNAL \inst|data[5]~0_combout\ : std_logic;
SIGNAL \inst|data[5]~1_combout\ : std_logic;
SIGNAL \upa|Yupa[5]~10_combout\ : std_logic;
SIGNAL \inst7|inst2|valor_interno[9]~27_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[9]~8_combout\ : std_logic;
SIGNAL \inst7|inst|Equal3~1_combout\ : std_logic;
SIGNAL \inst7|inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|inst|Equal11~2_combout\ : std_logic;
SIGNAL \inst7|inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|inst|Equal5~0_combout\ : std_logic;
SIGNAL \inst7|inst|data[87]~4_combout\ : std_logic;
SIGNAL \inst7|inst|data[87]~6_combout\ : std_logic;
SIGNAL \inst7|inst|data[87]~7_combout\ : std_logic;
SIGNAL \inst7|inst8[11]~0_combout\ : std_logic;
SIGNAL \inst7|inst|data~20_combout\ : std_logic;
SIGNAL \inst12[0]~0_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\ : std_logic;
SIGNAL \inst7|inst3|EB[0]~0_combout\ : std_logic;
SIGNAL \inst7|inst|data[69]~28_combout\ : std_logic;
SIGNAL \AcumuladorA|C[7]~0_combout\ : std_logic;
SIGNAL \upa|Add0~16_combout\ : std_logic;
SIGNAL \inst7|inst1|SELECTOR~1_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\ : std_logic;
SIGNAL \inst7|inst|Equal18~0_combout\ : std_logic;
SIGNAL \inst7|inst|data[86]~8_combout\ : std_logic;
SIGNAL \inst7|inst|data[86]~17_combout\ : std_logic;
SIGNAL \inst7|inst8[11]~12_combout\ : std_logic;
SIGNAL \inst7|inst8[10]~13_combout\ : std_logic;
SIGNAL \inst7|inst8[9]~14_combout\ : std_logic;
SIGNAL \inst7|inst8[8]~15_combout\ : std_logic;
SIGNAL \inst7|inst8[7]~16_combout\ : std_logic;
SIGNAL \inst7|inst8[6]~17_combout\ : std_logic;
SIGNAL \inst7|inst8[5]~18_combout\ : std_logic;
SIGNAL \inst7|inst8[4]~19_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~3_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~0_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~1_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~2_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~4_combout\ : std_logic;
SIGNAL \upa|Q[3]~feeder_combout\ : std_logic;
SIGNAL \upa|Q[2]~feeder_combout\ : std_logic;
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
SIGNAL \inst7|inst2|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst7|inst3|instruccion\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \AcumuladorA|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|inst3|prueba\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RegAux|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \AcumuladorB|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \upa|Banderas\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RegPC|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|inst3|EA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst11|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \upa|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|inst3|PC\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \upa|Yupa_interno\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|inst3|RA\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|inst3|EB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \dir|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|inst3|ALT_INV_nCBD~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst3|ALT_INV_EA\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst7|inst3|ALT_INV_nDUPA~q\ : std_logic;
SIGNAL \inst7|ALT_INV_inst8[11]~0_combout\ : std_logic;
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

\inst7|inst3|nCBD~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|inst3|nCBD~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);
\inst7|inst3|ALT_INV_nCBD~clkctrl_outclk\ <= NOT \inst7|inst3|nCBD~clkctrl_outclk\;
\inst7|inst3|ALT_INV_EA\(1) <= NOT \inst7|inst3|EA\(1);
\inst7|inst3|ALT_INV_nDUPA~q\ <= NOT \inst7|inst3|nDUPA~q\;
\inst7|ALT_INV_inst8[11]~0_combout\ <= NOT \inst7|inst8[11]~0_combout\;
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

-- Location: IOOBUF_X66_Y54_N16
\regInstr[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst8[11]~12_combout\,
	oe => \inst7|inst8[11]~0_combout\,
	devoe => ww_devoe,
	o => \regInstr[11]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\regInstr[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst8[10]~13_combout\,
	oe => \inst7|inst8[11]~0_combout\,
	devoe => ww_devoe,
	o => \regInstr[10]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\regInstr[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst8[9]~14_combout\,
	oe => \inst7|inst8[11]~0_combout\,
	devoe => ww_devoe,
	o => \regInstr[9]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\regInstr[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst8[8]~15_combout\,
	oe => \inst7|inst8[11]~0_combout\,
	devoe => ww_devoe,
	o => \regInstr[8]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\regInstr[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst8[7]~16_combout\,
	oe => \inst7|inst8[11]~0_combout\,
	devoe => ww_devoe,
	o => \regInstr[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\regInstr[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst8[6]~17_combout\,
	oe => \inst7|inst8[11]~0_combout\,
	devoe => ww_devoe,
	o => \regInstr[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\regInstr[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst8[5]~18_combout\,
	oe => \inst7|inst8[11]~0_combout\,
	devoe => ww_devoe,
	o => \regInstr[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\regInstr[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst8[4]~19_combout\,
	oe => \inst7|inst8[11]~0_combout\,
	devoe => ww_devoe,
	o => \regInstr[4]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\regInstr[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_inst8[11]~0_combout\,
	devoe => ww_devoe,
	o => \regInstr[3]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\regInstr[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_inst8[11]~0_combout\,
	devoe => ww_devoe,
	o => \regInstr[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\regInstr[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_inst8[11]~0_combout\,
	devoe => ww_devoe,
	o => \regInstr[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\regInstr[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12[0]~0_combout\,
	oe => \inst7|inst8[11]~0_combout\,
	devoe => ww_devoe,
	o => \regInstr[0]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
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

-- Location: IOOBUF_X78_Y45_N2
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

-- Location: IOOBUF_X78_Y29_N23
\CurrentState[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	devoe => ww_devoe,
	o => \CurrentState[11]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\CurrentState[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	devoe => ww_devoe,
	o => \CurrentState[10]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\CurrentState[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[9]~8_combout\,
	devoe => ww_devoe,
	o => \CurrentState[9]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\CurrentState[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[8]~9_combout\,
	devoe => ww_devoe,
	o => \CurrentState[8]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\CurrentState[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[7]~10_combout\,
	devoe => ww_devoe,
	o => \CurrentState[7]~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\CurrentState[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[6]~11_combout\,
	devoe => ww_devoe,
	o => \CurrentState[6]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\CurrentState[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[5]~12_combout\,
	devoe => ww_devoe,
	o => \CurrentState[5]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\CurrentState[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[4]~13_combout\,
	devoe => ww_devoe,
	o => \CurrentState[4]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\CurrentState[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[3]~15_combout\,
	devoe => ww_devoe,
	o => \CurrentState[3]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\CurrentState[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\,
	devoe => ww_devoe,
	o => \CurrentState[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\CurrentState[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	devoe => ww_devoe,
	o => \CurrentState[1]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\CurrentState[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	devoe => ww_devoe,
	o => \CurrentState[0]~output_o\);

-- Location: IOOBUF_X78_Y23_N23
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

-- Location: IOOBUF_X78_Y30_N23
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

-- Location: IOOBUF_X78_Y31_N16
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

-- Location: IOOBUF_X78_Y30_N16
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

-- Location: IOOBUF_X78_Y21_N2
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

-- Location: IOOBUF_X78_Y30_N2
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

-- Location: IOOBUF_X78_Y30_N9
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

-- Location: IOOBUF_X78_Y24_N16
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

-- Location: IOOBUF_X78_Y24_N9
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

-- Location: IOOBUF_X78_Y49_N2
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

-- Location: IOOBUF_X78_Y41_N2
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

-- Location: IOOBUF_X78_Y29_N9
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

-- Location: IOOBUF_X78_Y24_N2
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

-- Location: IOOBUF_X36_Y39_N23
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

-- Location: IOOBUF_X78_Y25_N23
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

-- Location: IOOBUF_X78_Y23_N9
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

-- Location: IOOBUF_X78_Y25_N16
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

-- Location: IOOBUF_X78_Y23_N16
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

-- Location: IOOBUF_X78_Y36_N24
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

-- Location: IOOBUF_X78_Y29_N2
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

-- Location: IOOBUF_X78_Y43_N2
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

-- Location: IOOBUF_X78_Y24_N24
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

-- Location: IOOBUF_X78_Y41_N24
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

-- Location: IOOBUF_X78_Y41_N9
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

-- Location: IOOBUF_X78_Y21_N23
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

-- Location: IOOBUF_X78_Y25_N2
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

-- Location: IOOBUF_X78_Y44_N9
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

-- Location: IOOBUF_X78_Y33_N16
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

-- Location: IOOBUF_X78_Y20_N16
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

-- Location: IOOBUF_X78_Y34_N16
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

-- Location: IOOBUF_X78_Y37_N9
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

-- Location: IOOBUF_X78_Y36_N9
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

-- Location: IOOBUF_X24_Y0_N9
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

-- Location: IOOBUF_X0_Y9_N9
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

-- Location: IOOBUF_X54_Y0_N30
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

-- Location: IOOBUF_X29_Y0_N30
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

-- Location: IOOBUF_X0_Y34_N9
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

-- Location: IOOBUF_X22_Y0_N30
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

-- Location: IOOBUF_X29_Y39_N9
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

-- Location: IOOBUF_X51_Y0_N30
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

-- Location: IOOBUF_X51_Y54_N16
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

-- Location: IOOBUF_X0_Y9_N23
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

-- Location: IOOBUF_X60_Y54_N2
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

-- Location: IOOBUF_X40_Y0_N2
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

-- Location: IOOBUF_X58_Y54_N23
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

-- Location: IOOBUF_X22_Y0_N9
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

-- Location: IOOBUF_X49_Y54_N16
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

-- Location: IOOBUF_X46_Y54_N9
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

-- Location: IOOBUF_X49_Y0_N2
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

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X26_Y39_N16
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

-- Location: IOOBUF_X54_Y54_N2
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

-- Location: IOOBUF_X54_Y54_N30
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X24_Y39_N2
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

-- Location: IOOBUF_X31_Y0_N23
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

-- Location: IOOBUF_X69_Y0_N2
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

-- Location: IOOBUF_X26_Y0_N2
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

-- Location: IOOBUF_X60_Y54_N16
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X34_Y39_N16
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

-- Location: IOOBUF_X0_Y36_N2
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

-- Location: IOOBUF_X0_Y34_N2
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

-- Location: IOOBUF_X26_Y39_N9
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

-- Location: IOOBUF_X60_Y54_N30
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

-- Location: IOOBUF_X24_Y39_N30
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

-- Location: IOOBUF_X34_Y0_N30
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

-- Location: IOOBUF_X78_Y18_N23
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

-- Location: IOOBUF_X0_Y35_N9
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

-- Location: IOOBUF_X31_Y0_N16
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

-- Location: IOOBUF_X18_Y0_N16
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

-- Location: IOOBUF_X51_Y54_N30
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

-- Location: IOOBUF_X78_Y21_N9
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

-- Location: IOOBUF_X24_Y0_N16
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

-- Location: IOOBUF_X18_Y0_N9
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X31_Y39_N9
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

-- Location: IOOBUF_X0_Y12_N16
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

-- Location: IOOBUF_X58_Y54_N9
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

-- Location: IOOBUF_X78_Y45_N9
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

-- Location: IOOBUF_X78_Y42_N2
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

-- Location: IOOBUF_X78_Y45_N23
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

-- Location: IOOBUF_X78_Y42_N23
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

-- Location: IOOBUF_X78_Y42_N16
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

-- Location: IOOBUF_X78_Y42_N9
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

-- Location: IOOBUF_X74_Y54_N2
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

-- Location: IOOBUF_X78_Y49_N9
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

-- Location: IOOBUF_X74_Y54_N9
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

-- Location: IOOBUF_X78_Y40_N16
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

-- Location: IOOBUF_X78_Y36_N16
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

-- Location: IOOBUF_X78_Y43_N23
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

-- Location: IOOBUF_X78_Y40_N9
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

-- Location: IOOBUF_X78_Y40_N23
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

-- Location: IOOBUF_X78_Y40_N2
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

-- Location: IOOBUF_X78_Y43_N9
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

-- Location: IOOBUF_X78_Y45_N16
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

-- Location: IOOBUF_X78_Y44_N16
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

-- Location: IOOBUF_X78_Y44_N2
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

-- Location: IOOBUF_X78_Y37_N23
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

-- Location: IOOBUF_X78_Y49_N16
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

-- Location: IOOBUF_X78_Y25_N9
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

-- Location: IOOBUF_X74_Y54_N23
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

-- Location: IOOBUF_X78_Y44_N24
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

-- Location: IOOBUF_X78_Y33_N2
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

-- Location: IOOBUF_X78_Y36_N2
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

-- Location: IOOBUF_X78_Y41_N16
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

-- Location: IOOBUF_X78_Y43_N16
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

-- Location: IOOBUF_X78_Y20_N2
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

-- Location: IOOBUF_X78_Y33_N23
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

-- Location: IOOBUF_X78_Y37_N2
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

-- Location: IOOBUF_X78_Y49_N23
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

-- Location: LCCOMB_X77_Y35_N22
\inst7|inst2|valor_interno[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst2|valor_interno[0]~33_combout\ = !\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	combout => \inst7|inst2|valor_interno[0]~33_combout\);

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

-- Location: FF_X77_Y35_N23
\inst7|inst2|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst2|valor_interno[0]~33_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|valor_interno\(0));

-- Location: LCCOMB_X77_Y35_N0
\inst7|inst2|valor_interno[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst2|valor_interno[1]~11_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\ $ (VCC))) # (!\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & 
-- (\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\ & VCC))
-- \inst7|inst2|valor_interno[1]~12\ = CARRY((\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datad => VCC,
	combout => \inst7|inst2|valor_interno[1]~11_combout\,
	cout => \inst7|inst2|valor_interno[1]~12\);

-- Location: FF_X77_Y35_N1
\inst7|inst2|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst2|valor_interno[1]~11_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|valor_interno\(1));

-- Location: LCCOMB_X77_Y35_N30
\inst7|inst5|$00000|auto_generated|result_node[1]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ = (\inst7|inst2|valor_interno\(1) & ((\inst7|inst3|instruccion\(0) & ((!\inst7|inst1|SELECTOR~1_combout\))) # (!\inst7|inst3|instruccion\(0) & (!\inst7|inst3|instruccion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|instruccion\(0),
	datab => \inst7|inst3|instruccion\(1),
	datac => \inst7|inst1|SELECTOR~1_combout\,
	datad => \inst7|inst2|valor_interno\(1),
	combout => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\);

-- Location: LCCOMB_X77_Y35_N2
\inst7|inst2|valor_interno[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst2|valor_interno[2]~13_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\ & (!\inst7|inst2|valor_interno[1]~12\)) # (!\inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\ & ((\inst7|inst2|valor_interno[1]~12\) # 
-- (GND)))
-- \inst7|inst2|valor_interno[2]~14\ = CARRY((!\inst7|inst2|valor_interno[1]~12\) # (!\inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\,
	datad => VCC,
	cin => \inst7|inst2|valor_interno[1]~12\,
	combout => \inst7|inst2|valor_interno[2]~13_combout\,
	cout => \inst7|inst2|valor_interno[2]~14\);

-- Location: LCCOMB_X77_Y35_N4
\inst7|inst2|valor_interno[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst2|valor_interno[3]~15_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[3]~15_combout\ & (\inst7|inst2|valor_interno[2]~14\ $ (GND))) # (!\inst7|inst5|$00000|auto_generated|result_node[3]~15_combout\ & 
-- (!\inst7|inst2|valor_interno[2]~14\ & VCC))
-- \inst7|inst2|valor_interno[3]~16\ = CARRY((\inst7|inst5|$00000|auto_generated|result_node[3]~15_combout\ & !\inst7|inst2|valor_interno[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[3]~15_combout\,
	datad => VCC,
	cin => \inst7|inst2|valor_interno[2]~14\,
	combout => \inst7|inst2|valor_interno[3]~15_combout\,
	cout => \inst7|inst2|valor_interno[3]~16\);

-- Location: FF_X77_Y35_N5
\inst7|inst2|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst2|valor_interno[3]~15_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|valor_interno\(3));

-- Location: LCCOMB_X76_Y35_N20
\inst7|inst5|$00000|auto_generated|result_node[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[3]~15_combout\ = (\inst7|inst2|valor_interno\(3) & ((\inst7|inst3|instruccion\(0) & (!\inst7|inst1|SELECTOR~1_combout\)) # (!\inst7|inst3|instruccion\(0) & ((!\inst7|inst3|instruccion\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|valor_interno\(3),
	datab => \inst7|inst1|SELECTOR~1_combout\,
	datac => \inst7|inst3|instruccion\(0),
	datad => \inst7|inst3|instruccion\(1),
	combout => \inst7|inst5|$00000|auto_generated|result_node[3]~15_combout\);

-- Location: LCCOMB_X76_Y35_N22
\inst7|inst1|SELECTOR~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst1|SELECTOR~2_combout\ = (\inst7|inst3|instruccion\(0) & ((\inst7|inst1|SELECTOR~1_combout\))) # (!\inst7|inst3|instruccion\(0) & (\inst7|inst3|instruccion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|instruccion\(1),
	datac => \inst7|inst3|instruccion\(0),
	datad => \inst7|inst1|SELECTOR~1_combout\,
	combout => \inst7|inst1|SELECTOR~2_combout\);

-- Location: LCCOMB_X75_Y35_N28
\inst7|inst1|SELECTOR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst1|SELECTOR~0_combout\ = (!\inst7|inst3|instruccion\(0) & \inst7|inst3|instruccion\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|instruccion\(0),
	datad => \inst7|inst3|instruccion\(1),
	combout => \inst7|inst1|SELECTOR~0_combout\);

-- Location: LCCOMB_X74_Y35_N8
\inst7|inst|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal3~0_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[7]~10_combout\ & !\inst7|inst5|$00000|auto_generated|result_node[8]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[7]~10_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[8]~9_combout\,
	combout => \inst7|inst|Equal3~0_combout\);

-- Location: LCCOMB_X77_Y35_N18
\inst7|inst2|valor_interno[10]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst2|valor_interno[10]~29_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\ & (!\inst7|inst2|valor_interno[9]~28\)) # (!\inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\ & ((\inst7|inst2|valor_interno[9]~28\) # 
-- (GND)))
-- \inst7|inst2|valor_interno[10]~30\ = CARRY((!\inst7|inst2|valor_interno[9]~28\) # (!\inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datad => VCC,
	cin => \inst7|inst2|valor_interno[9]~28\,
	combout => \inst7|inst2|valor_interno[10]~29_combout\,
	cout => \inst7|inst2|valor_interno[10]~30\);

-- Location: LCCOMB_X77_Y35_N20
\inst7|inst2|valor_interno[11]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst2|valor_interno[11]~31_combout\ = \inst7|inst5|$00000|auto_generated|result_node[11]~6_combout\ $ (!\inst7|inst2|valor_interno[10]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	cin => \inst7|inst2|valor_interno[10]~30\,
	combout => \inst7|inst2|valor_interno[11]~31_combout\);

-- Location: FF_X77_Y35_N21
\inst7|inst2|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst2|valor_interno[11]~31_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|valor_interno\(11));

-- Location: LCCOMB_X74_Y35_N30
\inst7|inst|data~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data~18_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\) # ((\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & (!\inst7|inst|Equal0~1_combout\)) # 
-- (!\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & ((!\inst7|inst|Equal3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal0~1_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \inst7|inst|Equal3~4_combout\,
	combout => \inst7|inst|data~18_combout\);

-- Location: LCCOMB_X74_Y35_N2
\inst7|inst|data[68]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[68]~11_combout\ = ((\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\) # (\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ $ (!\inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\))) # 
-- (!\inst7|inst|Equal3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datab => \inst7|inst|Equal3~3_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	combout => \inst7|inst|data[68]~11_combout\);

-- Location: LCCOMB_X74_Y35_N16
\inst7|inst|data~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data~19_combout\ = (\inst7|inst|data~18_combout\ & \inst7|inst|data[68]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|data~18_combout\,
	datac => \inst7|inst|data[68]~11_combout\,
	combout => \inst7|inst|data~19_combout\);

-- Location: LCCOMB_X72_Y35_N24
\inst7|inst|Equal14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal14~4_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & \inst7|inst|Equal14~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datad => \inst7|inst|Equal14~3_combout\,
	combout => \inst7|inst|Equal14~4_combout\);

-- Location: FF_X77_Y35_N3
\inst7|inst2|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst2|valor_interno[2]~13_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|valor_interno\(2));

-- Location: LCCOMB_X77_Y35_N6
\inst7|inst2|valor_interno[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst2|valor_interno[4]~17_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[4]~13_combout\ & (!\inst7|inst2|valor_interno[3]~16\)) # (!\inst7|inst5|$00000|auto_generated|result_node[4]~13_combout\ & ((\inst7|inst2|valor_interno[3]~16\) # 
-- (GND)))
-- \inst7|inst2|valor_interno[4]~18\ = CARRY((!\inst7|inst2|valor_interno[3]~16\) # (!\inst7|inst5|$00000|auto_generated|result_node[4]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[4]~13_combout\,
	datad => VCC,
	cin => \inst7|inst2|valor_interno[3]~16\,
	combout => \inst7|inst2|valor_interno[4]~17_combout\,
	cout => \inst7|inst2|valor_interno[4]~18\);

-- Location: FF_X77_Y35_N7
\inst7|inst2|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst2|valor_interno[4]~17_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|valor_interno\(4));

-- Location: LCCOMB_X72_Y35_N0
\inst7|inst|Equal11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal11~4_combout\ = (\inst7|inst|Equal11~5_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\ & !\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal11~5_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	combout => \inst7|inst|Equal11~4_combout\);

-- Location: LCCOMB_X74_Y35_N22
\inst7|inst|Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal10~0_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\ & 
-- \inst7|inst|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datad => \inst7|inst|Equal3~3_combout\,
	combout => \inst7|inst|Equal10~0_combout\);

-- Location: LCCOMB_X74_Y35_N12
\inst7|inst|Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal9~0_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\ & 
-- \inst7|inst|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \inst7|inst|Equal3~3_combout\,
	combout => \inst7|inst|Equal9~0_combout\);

-- Location: LCCOMB_X71_Y35_N24
\inst7|inst|Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal12~0_combout\ = ((\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\) # (!\inst7|inst|Equal11~5_combout\)) # (!\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datad => \inst7|inst|Equal11~5_combout\,
	combout => \inst7|inst|Equal12~0_combout\);

-- Location: LCCOMB_X75_Y35_N10
\inst7|inst|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal6~0_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (!\inst7|inst1|SELECTOR~2_combout\ & \inst7|inst2|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datab => \inst7|inst1|SELECTOR~2_combout\,
	datad => \inst7|inst2|valor_interno\(1),
	combout => \inst7|inst|Equal6~0_combout\);

-- Location: LCCOMB_X74_Y35_N0
\inst7|inst|data[68]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[68]~12_combout\ = (\inst7|inst|data[68]~11_combout\ & (\inst7|inst|data[54]~10_combout\ & ((!\inst7|inst|Equal6~0_combout\) # (!\inst7|inst|Equal3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal3~4_combout\,
	datab => \inst7|inst|data[68]~11_combout\,
	datac => \inst7|inst|Equal6~0_combout\,
	datad => \inst7|inst|data[54]~10_combout\,
	combout => \inst7|inst|data[68]~12_combout\);

-- Location: LCCOMB_X71_Y35_N2
\inst7|inst|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal8~0_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\ & 
-- \inst7|inst|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \inst7|inst|Equal3~3_combout\,
	combout => \inst7|inst|Equal8~0_combout\);

-- Location: LCCOMB_X71_Y35_N30
\inst7|inst|data[68]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[68]~25_combout\ = (!\inst7|inst|Equal9~0_combout\ & (!\inst7|inst|Equal12~0_combout\ & (\inst7|inst|data[68]~12_combout\ & !\inst7|inst|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal9~0_combout\,
	datab => \inst7|inst|Equal12~0_combout\,
	datac => \inst7|inst|data[68]~12_combout\,
	datad => \inst7|inst|Equal8~0_combout\,
	combout => \inst7|inst|data[68]~25_combout\);

-- Location: LCCOMB_X71_Y35_N8
\inst7|inst|data[68]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[68]~26_combout\ = (\inst7|inst|Equal11~4_combout\) # ((\inst7|inst|Equal4~0_combout\) # ((!\inst7|inst|Equal10~0_combout\ & \inst7|inst|data[68]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal11~4_combout\,
	datab => \inst7|inst|Equal10~0_combout\,
	datac => \inst7|inst|data[68]~25_combout\,
	datad => \inst7|inst|Equal4~0_combout\,
	combout => \inst7|inst|data[68]~26_combout\);

-- Location: FF_X71_Y35_N9
\inst7|inst3|EA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst|data[68]~26_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|EA\(0));

-- Location: LCCOMB_X71_Y35_N20
\inst7|inst|data[67]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[67]~27_combout\ = (\inst7|inst|data[54]~10_combout\ & ((\inst7|inst|Equal4~0_combout\) # (!\inst7|inst|Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|data[54]~10_combout\,
	datac => \inst7|inst|Equal12~0_combout\,
	datad => \inst7|inst|Equal4~0_combout\,
	combout => \inst7|inst|data[67]~27_combout\);

-- Location: FF_X71_Y35_N21
\inst7|inst3|nWA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst|data[67]~27_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|nWA~q\);

-- Location: LCCOMB_X75_Y34_N20
\AcumuladorA|TRI_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|TRI_STATE~0_combout\ = (!\inst7|inst3|EA\(1) & (\inst7|inst3|EA\(0) & !\inst7|inst3|nWA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EA\(1),
	datab => \inst7|inst3|EA\(0),
	datad => \inst7|inst3|nWA~q\,
	combout => \AcumuladorA|TRI_STATE~0_combout\);

-- Location: LCCOMB_X72_Y35_N6
\inst7|inst|data~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data~14_combout\ = (!\inst7|inst|Equal11~4_combout\ & ((\inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\) # (!\inst7|inst|Equal14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\,
	datab => \inst7|inst|Equal11~4_combout\,
	datad => \inst7|inst|Equal14~4_combout\,
	combout => \inst7|inst|data~14_combout\);

-- Location: LCCOMB_X71_Y35_N28
\inst7|inst|Equal15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal15~0_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\ & \inst7|inst|Equal14~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\,
	datad => \inst7|inst|Equal14~3_combout\,
	combout => \inst7|inst|Equal15~0_combout\);

-- Location: LCCOMB_X71_Y35_N18
\inst7|inst|data~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data~41_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & (((!\inst7|inst|Equal15~0_combout\)))) # (!\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & (((!\inst7|inst|Equal3~3_combout\ & 
-- !\inst7|inst|Equal15~0_combout\)) # (!\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datac => \inst7|inst|Equal3~3_combout\,
	datad => \inst7|inst|Equal15~0_combout\,
	combout => \inst7|inst|data~41_combout\);

-- Location: LCCOMB_X72_Y35_N4
\inst7|inst|data~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data~30_combout\ = (\inst7|inst|data~14_combout\ & (\inst7|inst|data~41_combout\ & \inst7|inst|data~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|data~14_combout\,
	datab => \inst7|inst|data~41_combout\,
	datad => \inst7|inst|data~5_combout\,
	combout => \inst7|inst|data~30_combout\);

-- Location: LCCOMB_X75_Y35_N8
\inst7|inst|Equal17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal17~0_combout\ = (\inst7|inst|Equal14~3_combout\ & (\inst7|inst|Equal6~0_combout\ & !\inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal14~3_combout\,
	datab => \inst7|inst|Equal6~0_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\,
	combout => \inst7|inst|Equal17~0_combout\);

-- Location: LCCOMB_X74_Y35_N28
\inst7|inst|data~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data~9_combout\ = (!\inst7|inst|Equal10~0_combout\ & ((\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\) # ((!\inst7|inst|Equal11~5_combout\) # (!\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datac => \inst7|inst|Equal10~0_combout\,
	datad => \inst7|inst|Equal11~5_combout\,
	combout => \inst7|inst|data~9_combout\);

-- Location: LCCOMB_X74_Y35_N26
\inst7|inst|data[28]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[28]~23_combout\ = (\inst7|inst|data~9_combout\ & (\inst7|inst|Equal18~0_combout\ & \inst7|inst|data[68]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|data~9_combout\,
	datac => \inst7|inst|Equal18~0_combout\,
	datad => \inst7|inst|data[68]~12_combout\,
	combout => \inst7|inst|data[28]~23_combout\);

-- Location: LCCOMB_X72_Y35_N18
\inst7|inst|data[43]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[43]~31_combout\ = (\inst7|inst|Equal17~0_combout\) # ((\inst7|inst|data~30_combout\ & \inst7|inst|data[28]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|data~30_combout\,
	datac => \inst7|inst|Equal17~0_combout\,
	datad => \inst7|inst|data[28]~23_combout\,
	combout => \inst7|inst|data[43]~31_combout\);

-- Location: FF_X72_Y35_N19
\inst7|inst3|nERA0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst|data[43]~31_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|nERA0~q\);

-- Location: FF_X75_Y35_N9
\inst7|inst3|RA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst|Equal17~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|RA\(0));

-- Location: LCCOMB_X74_Y34_N6
\upa|Yupa[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~2_combout\ = (\inst7|inst3|nDUPA~q\) # ((\inst7|inst3|nERA0~q\ & (!\inst7|inst3|RA\(0) & !\inst7|inst3|BD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nERA0~q\,
	datab => \inst7|inst3|RA\(0),
	datac => \inst7|inst3|nDUPA~q\,
	datad => \inst7|inst3|BD~q\,
	combout => \upa|Yupa[7]~2_combout\);

-- Location: FF_X71_Y35_N3
\inst7|inst3|nWB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst|Equal8~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|nWB~q\);

-- Location: LCCOMB_X72_Y36_N26
\AcumuladorB|TRI_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|TRI_STATE~0_combout\ = (\inst7|inst3|EB\(0) & (!\inst7|inst3|nWB~q\ & !\inst7|inst3|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \inst7|inst3|nWB~q\,
	datad => \inst7|inst3|EA\(1),
	combout => \AcumuladorB|TRI_STATE~0_combout\);

-- Location: LCCOMB_X75_Y34_N22
\upa|Yupa[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~3_combout\ = (\inst7|inst3|nAS~q\) # ((\AcumuladorA|TRI_STATE~0_combout\) # ((\upa|Yupa[7]~2_combout\) # (\AcumuladorB|TRI_STATE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nAS~q\,
	datab => \AcumuladorA|TRI_STATE~0_combout\,
	datac => \upa|Yupa[7]~2_combout\,
	datad => \AcumuladorB|TRI_STATE~0_combout\,
	combout => \upa|Yupa[7]~3_combout\);

-- Location: LCCOMB_X75_Y37_N12
\AcumuladorA|C[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[0]~7_combout\ = (\inst7|inst3|nWA~q\) # (((\AcumuladorA|data_out\(0)) # (!\inst7|inst3|EA\(0))) # (!\inst7|inst3|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nWA~q\,
	datab => \inst7|inst3|EA\(1),
	datac => \AcumuladorA|data_out\(0),
	datad => \inst7|inst3|EA\(0),
	combout => \AcumuladorA|C[0]~7_combout\);

-- Location: LCCOMB_X72_Y35_N26
\inst7|inst|data[44]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[44]~24_combout\ = (\inst7|inst|Equal15~1_combout\) # ((\inst7|inst3|EB[0]~0_combout\ & (\inst7|inst|data~22_combout\ & \inst7|inst|data[28]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB[0]~0_combout\,
	datab => \inst7|inst|data~22_combout\,
	datac => \inst7|inst|Equal15~1_combout\,
	datad => \inst7|inst|data[28]~23_combout\,
	combout => \inst7|inst|data[44]~24_combout\);

-- Location: FF_X72_Y35_N27
\inst7|inst3|nERA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst|data[44]~24_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|nERA1~q\);

-- Location: LCCOMB_X74_Y37_N22
\upa|Yupa2[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~3_combout\ = (\inst7|inst3|nDUPA~q\) # ((!\inst7|inst3|BD~q\ & (!\inst7|inst3|RA\(0) & \inst7|inst3|nERA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|BD~q\,
	datab => \inst7|inst3|RA\(0),
	datac => \inst7|inst3|nERA1~q\,
	datad => \inst7|inst3|nDUPA~q\,
	combout => \upa|Yupa2[7]~3_combout\);

-- Location: LCCOMB_X74_Y36_N0
\AcumuladorA|B[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|B[7]~0_combout\ = ((\inst7|inst3|nWA~q\) # (\inst7|inst3|EA\(0))) # (!\inst7|inst3|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|EA\(1),
	datac => \inst7|inst3|nWA~q\,
	datad => \inst7|inst3|EA\(0),
	combout => \AcumuladorA|B[7]~0_combout\);

-- Location: LCCOMB_X72_Y36_N0
\AcumuladorB|B[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|B[7]~0_combout\ = (\inst7|inst3|EB\(0)) # ((\inst7|inst3|nWB~q\) # (!\inst7|inst3|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \inst7|inst3|nWB~q\,
	datad => \inst7|inst3|EA\(1),
	combout => \AcumuladorB|B[7]~0_combout\);

-- Location: LCCOMB_X74_Y36_N22
\upa|Yupa2[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~4_combout\ = (\upa|Yupa2[7]~3_combout\) # (((\inst7|inst3|BD~q\) # (!\AcumuladorB|B[7]~0_combout\)) # (!\AcumuladorA|B[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~3_combout\,
	datab => \AcumuladorA|B[7]~0_combout\,
	datac => \AcumuladorB|B[7]~0_combout\,
	datad => \inst7|inst3|BD~q\,
	combout => \upa|Yupa2[7]~4_combout\);

-- Location: LCCOMB_X75_Y38_N22
\AcumuladorB|C[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[0]~7_combout\ = (\AcumuladorB|data_out\(0)) # ((\inst7|inst3|nWB~q\) # ((!\inst7|inst3|EB\(0)) # (!\inst7|inst3|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(0),
	datab => \inst7|inst3|nWB~q\,
	datac => \inst7|inst3|EA\(1),
	datad => \inst7|inst3|EB\(0),
	combout => \AcumuladorB|C[0]~7_combout\);

-- Location: LCCOMB_X75_Y38_N10
\AcumuladorB|data_out[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[0]~7_combout\ = (\inst7|inst3|EB\(0) & (\AcumuladorB|C[0]~7_combout\)) # (!\inst7|inst3|EB\(0) & ((\upa|Yupa2[0]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[0]~7_combout\,
	datab => \inst7|inst3|EB\(0),
	datad => \upa|Yupa2[0]~26_combout\,
	combout => \AcumuladorB|data_out[0]~7_combout\);

-- Location: LCCOMB_X72_Y36_N6
\AcumuladorB|data_out[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[0]~8_combout\ = (\inst7|inst3|nWB~q\ & ((\inst7|inst3|EB\(0)) # (\inst7|inst3|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \inst7|inst3|nWB~q\,
	datad => \inst7|inst3|EA\(1),
	combout => \AcumuladorB|data_out[0]~8_combout\);

-- Location: FF_X75_Y38_N11
\AcumuladorB|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[0]~7_combout\,
	asdata => \upa|Yupa[0]~25_combout\,
	sload => \inst7|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(0));

-- Location: LCCOMB_X75_Y34_N14
\upa|Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux27~0_combout\ = (\inst7|inst3|EA\(1) & (((\AcumuladorB|data_out\(0)) # (\inst7|inst3|nWB~q\)) # (!\inst7|inst3|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \AcumuladorB|data_out\(0),
	datac => \inst7|inst3|EA\(1),
	datad => \inst7|inst3|nWB~q\,
	combout => \upa|Mux27~0_combout\);

-- Location: LCCOMB_X71_Y35_N26
\inst7|inst|data[9]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[9]~36_combout\ = (\inst7|inst|data[68]~25_combout\ & !\inst7|inst|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst|data[68]~25_combout\,
	datad => \inst7|inst|Equal4~0_combout\,
	combout => \inst7|inst|data[9]~36_combout\);

-- Location: FF_X71_Y35_N27
\inst7|inst3|CC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst|data[9]~36_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|CC~q\);

-- Location: LCCOMB_X74_Y34_N28
\AcumuladorB|C[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[7]~0_combout\ = ((\inst7|inst3|nWB~q\) # ((\AcumuladorB|data_out\(7)) # (!\inst7|inst3|EA\(1)))) # (!\inst7|inst3|EB\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \inst7|inst3|nWB~q\,
	datac => \inst7|inst3|EA\(1),
	datad => \AcumuladorB|data_out\(7),
	combout => \AcumuladorB|C[7]~0_combout\);

-- Location: LCCOMB_X74_Y38_N30
\RegAux|data_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~0_combout\ = (\inst7|inst3|RA\(0)) # (\upa|Yupa2[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|RA\(0),
	datad => \upa|Yupa2[7]~5_combout\,
	combout => \RegAux|data_out~0_combout\);

-- Location: FF_X74_Y38_N31
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
	ena => \inst7|inst3|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(15));

-- Location: LCCOMB_X74_Y37_N30
\RegAux|C[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|C[7]~0_combout\ = (\inst7|inst3|BD~q\) # ((\inst7|inst3|RA\(0)) # ((\RegAux|data_out\(15)) # (!\inst7|inst3|nERA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|BD~q\,
	datab => \inst7|inst3|RA\(0),
	datac => \RegAux|data_out\(15),
	datad => \inst7|inst3|nERA1~q\,
	combout => \RegAux|C[7]~0_combout\);

-- Location: LCCOMB_X75_Y36_N20
\AcumuladorA|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[7]~0_combout\ = (\inst7|inst3|EA\(0) & (\AcumuladorA|C[7]~0_combout\)) # (!\inst7|inst3|EA\(0) & ((\upa|Yupa2[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EA\(0),
	datab => \AcumuladorA|C[7]~0_combout\,
	datad => \upa|Yupa2[7]~5_combout\,
	combout => \AcumuladorA|data_out[7]~0_combout\);

-- Location: LCCOMB_X74_Y34_N22
\AcumuladorA|data_out[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[0]~8_combout\ = (\inst7|inst3|nWA~q\ & ((\inst7|inst3|EA\(0)) # (\inst7|inst3|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EA\(0),
	datab => \inst7|inst3|nWA~q\,
	datac => \inst7|inst3|EA\(1),
	combout => \AcumuladorA|data_out[0]~8_combout\);

-- Location: FF_X75_Y36_N21
\AcumuladorA|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[7]~0_combout\,
	asdata => \upa|Yupa[7]~4_combout\,
	sload => \inst7|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(7));

-- Location: LCCOMB_X74_Y36_N30
\upa|Yupa2[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~1_combout\ = (\RegAux|C[7]~0_combout\ & ((\AcumuladorA|B[7]~0_combout\) # (\AcumuladorA|data_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AcumuladorA|B[7]~0_combout\,
	datac => \RegAux|C[7]~0_combout\,
	datad => \AcumuladorA|data_out\(7),
	combout => \upa|Yupa2[7]~1_combout\);

-- Location: LCCOMB_X74_Y34_N20
\upa|Yupa2[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~0_combout\ = (\upa|Banderas\(2)) # (!\inst7|inst3|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst3|nDUPA~q\,
	datad => \upa|Banderas\(2),
	combout => \upa|Yupa2[7]~0_combout\);

-- Location: LCCOMB_X74_Y36_N16
\upa|Yupa2[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~2_combout\ = (\upa|Yupa2[7]~1_combout\ & (\upa|Yupa2[7]~0_combout\ & ((\AcumuladorB|data_out\(7)) # (\AcumuladorB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~1_combout\,
	datab => \AcumuladorB|data_out\(7),
	datac => \AcumuladorB|B[7]~0_combout\,
	datad => \upa|Yupa2[7]~0_combout\,
	combout => \upa|Yupa2[7]~2_combout\);

-- Location: LCCOMB_X75_Y36_N24
\upa|Yupa2[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~5_combout\ = ((\upa|Yupa2[7]~2_combout\ & ((\upa|Yupa[7]~4_combout\) # (!\inst7|inst3|BD~q\)))) # (!\upa|Yupa2[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~2_combout\,
	datab => \inst7|inst3|BD~q\,
	datac => \upa|Yupa[7]~4_combout\,
	datad => \upa|Yupa2[7]~4_combout\,
	combout => \upa|Yupa2[7]~5_combout\);

-- Location: LCCOMB_X74_Y34_N24
\AcumuladorB|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[7]~0_combout\ = (\inst7|inst3|EB\(0) & (\AcumuladorB|C[7]~0_combout\)) # (!\inst7|inst3|EB\(0) & ((\upa|Yupa2[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \AcumuladorB|C[7]~0_combout\,
	datad => \upa|Yupa2[7]~5_combout\,
	combout => \AcumuladorB|data_out[7]~0_combout\);

-- Location: FF_X74_Y34_N25
\AcumuladorB|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[7]~0_combout\,
	asdata => \upa|Yupa[7]~4_combout\,
	sload => \inst7|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(7));

-- Location: LCCOMB_X74_Y34_N14
\upa|Mux35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux35~0_combout\ = (\inst7|inst3|EA\(1) & (((\inst7|inst3|nWB~q\) # (\AcumuladorB|data_out\(7))) # (!\inst7|inst3|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \inst7|inst3|EA\(1),
	datac => \inst7|inst3|nWB~q\,
	datad => \AcumuladorB|data_out\(7),
	combout => \upa|Mux35~0_combout\);

-- Location: LCCOMB_X72_Y36_N28
\AcumuladorB|C[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[6]~1_combout\ = (((\inst7|inst3|nWB~q\) # (\AcumuladorB|data_out\(6))) # (!\inst7|inst3|EB\(0))) # (!\inst7|inst3|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EA\(1),
	datab => \inst7|inst3|EB\(0),
	datac => \inst7|inst3|nWB~q\,
	datad => \AcumuladorB|data_out\(6),
	combout => \AcumuladorB|C[6]~1_combout\);

-- Location: LCCOMB_X74_Y36_N28
\AcumuladorA|data_out[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[6]~1_combout\ = (\inst7|inst3|EA\(0) & (\AcumuladorA|C[6]~1_combout\)) # (!\inst7|inst3|EA\(0) & ((\upa|Yupa2[6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[6]~1_combout\,
	datab => \inst7|inst3|EA\(0),
	datad => \upa|Yupa2[6]~8_combout\,
	combout => \AcumuladorA|data_out[6]~1_combout\);

-- Location: LCCOMB_X74_Y38_N4
\RegAux|data_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~1_combout\ = (\inst7|inst3|RA\(0) & (\RegAux|data_out\(15))) # (!\inst7|inst3|RA\(0) & ((\upa|Yupa2[6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|RA\(0),
	datac => \RegAux|data_out\(15),
	datad => \upa|Yupa2[6]~8_combout\,
	combout => \RegAux|data_out~1_combout\);

-- Location: FF_X74_Y38_N5
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
	ena => \inst7|inst3|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(14));

-- Location: LCCOMB_X74_Y38_N22
\RegAux|C[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|C[5]~2_combout\ = (\RegAux|data_out\(13)) # (((\inst7|inst3|BD~q\) # (\inst7|inst3|RA\(0))) # (!\inst7|inst3|nERA1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(13),
	datab => \inst7|inst3|nERA1~q\,
	datac => \inst7|inst3|BD~q\,
	datad => \inst7|inst3|RA\(0),
	combout => \RegAux|C[5]~2_combout\);

-- Location: LCCOMB_X74_Y34_N12
\AcumuladorA|C[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[5]~2_combout\ = ((\inst7|inst3|nWA~q\) # ((\AcumuladorA|data_out\(5)) # (!\inst7|inst3|EA\(1)))) # (!\inst7|inst3|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EA\(0),
	datab => \inst7|inst3|nWA~q\,
	datac => \inst7|inst3|EA\(1),
	datad => \AcumuladorA|data_out\(5),
	combout => \AcumuladorA|C[5]~2_combout\);

-- Location: LCCOMB_X75_Y38_N20
\AcumuladorA|data_out[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[5]~2_combout\ = (\inst7|inst3|EA\(0) & (\AcumuladorA|C[5]~2_combout\)) # (!\inst7|inst3|EA\(0) & ((\upa|Yupa2[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[5]~2_combout\,
	datab => \inst7|inst3|EA\(0),
	datad => \upa|Yupa2[5]~11_combout\,
	combout => \AcumuladorA|data_out[5]~2_combout\);

-- Location: FF_X75_Y38_N21
\AcumuladorA|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[5]~2_combout\,
	asdata => \upa|Yupa[5]~10_combout\,
	sload => \inst7|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(5));

-- Location: LCCOMB_X75_Y38_N8
\AcumuladorB|C[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[5]~2_combout\ = ((\AcumuladorB|data_out\(5)) # ((\inst7|inst3|nWB~q\) # (!\inst7|inst3|EA\(1)))) # (!\inst7|inst3|EB\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \AcumuladorB|data_out\(5),
	datac => \inst7|inst3|EA\(1),
	datad => \inst7|inst3|nWB~q\,
	combout => \AcumuladorB|C[5]~2_combout\);

-- Location: LCCOMB_X75_Y38_N0
\AcumuladorB|data_out[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[5]~2_combout\ = (\inst7|inst3|EB\(0) & (\AcumuladorB|C[5]~2_combout\)) # (!\inst7|inst3|EB\(0) & ((\upa|Yupa2[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \AcumuladorB|C[5]~2_combout\,
	datad => \upa|Yupa2[5]~11_combout\,
	combout => \AcumuladorB|data_out[5]~2_combout\);

-- Location: FF_X75_Y38_N1
\AcumuladorB|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[5]~2_combout\,
	asdata => \upa|Yupa[5]~10_combout\,
	sload => \inst7|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(5));

-- Location: LCCOMB_X75_Y37_N18
\upa|Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux33~0_combout\ = (\inst7|inst3|EA\(1) & (((\AcumuladorB|data_out\(5)) # (\inst7|inst3|nWB~q\)) # (!\inst7|inst3|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \AcumuladorB|data_out\(5),
	datac => \inst7|inst3|EA\(1),
	datad => \inst7|inst3|nWB~q\,
	combout => \upa|Mux33~0_combout\);

-- Location: LCCOMB_X75_Y34_N4
\upa|Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux32~0_combout\ = (\inst7|inst3|EA\(1) & (((\AcumuladorB|data_out\(4)) # (\inst7|inst3|nWB~q\)) # (!\inst7|inst3|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \AcumuladorB|data_out\(4),
	datac => \inst7|inst3|EA\(1),
	datad => \inst7|inst3|nWB~q\,
	combout => \upa|Mux32~0_combout\);

-- Location: LCCOMB_X74_Y37_N4
\RegAux|C[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|C[3]~4_combout\ = (\inst7|inst3|BD~q\) # ((\RegAux|data_out\(11)) # ((\inst7|inst3|RA\(0)) # (!\inst7|inst3|nERA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|BD~q\,
	datab => \RegAux|data_out\(11),
	datac => \inst7|inst3|RA\(0),
	datad => \inst7|inst3|nERA1~q\,
	combout => \RegAux|C[3]~4_combout\);

-- Location: LCCOMB_X72_Y36_N20
\AcumuladorB|C[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[3]~4_combout\ = (\AcumuladorB|data_out\(3)) # ((\inst7|inst3|nWB~q\) # ((!\inst7|inst3|EA\(1)) # (!\inst7|inst3|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(3),
	datab => \inst7|inst3|nWB~q\,
	datac => \inst7|inst3|EB\(0),
	datad => \inst7|inst3|EA\(1),
	combout => \AcumuladorB|C[3]~4_combout\);

-- Location: LCCOMB_X72_Y36_N30
\AcumuladorB|data_out[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[3]~4_combout\ = (\inst7|inst3|EB\(0) & (\AcumuladorB|C[3]~4_combout\)) # (!\inst7|inst3|EB\(0) & ((\upa|Yupa2[3]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \AcumuladorB|C[3]~4_combout\,
	datad => \upa|Yupa2[3]~17_combout\,
	combout => \AcumuladorB|data_out[3]~4_combout\);

-- Location: LCCOMB_X72_Y36_N4
\upa|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux31~0_combout\ = (\inst7|inst3|EA\(1) & (((\AcumuladorB|data_out\(3)) # (\inst7|inst3|nWB~q\)) # (!\inst7|inst3|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \AcumuladorB|data_out\(3),
	datac => \inst7|inst3|nWB~q\,
	datad => \inst7|inst3|EA\(1),
	combout => \upa|Mux31~0_combout\);

-- Location: LCCOMB_X74_Y37_N6
\RegAux|C[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|C[2]~5_combout\ = (\inst7|inst3|BD~q\) # (((\inst7|inst3|RA\(0)) # (\RegAux|data_out\(10))) # (!\inst7|inst3|nERA1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|BD~q\,
	datab => \inst7|inst3|nERA1~q\,
	datac => \inst7|inst3|RA\(0),
	datad => \RegAux|data_out\(10),
	combout => \RegAux|C[2]~5_combout\);

-- Location: LCCOMB_X74_Y34_N2
\AcumuladorB|C[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[2]~5_combout\ = ((\inst7|inst3|nWB~q\) # ((\AcumuladorB|data_out\(2)) # (!\inst7|inst3|EA\(1)))) # (!\inst7|inst3|EB\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \inst7|inst3|nWB~q\,
	datac => \inst7|inst3|EA\(1),
	datad => \AcumuladorB|data_out\(2),
	combout => \AcumuladorB|C[2]~5_combout\);

-- Location: LCCOMB_X74_Y34_N18
\AcumuladorB|data_out[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[2]~5_combout\ = (\inst7|inst3|EB\(0) & (\AcumuladorB|C[2]~5_combout\)) # (!\inst7|inst3|EB\(0) & ((\upa|Yupa2[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \AcumuladorB|C[2]~5_combout\,
	datad => \upa|Yupa2[2]~20_combout\,
	combout => \AcumuladorB|data_out[2]~5_combout\);

-- Location: FF_X74_Y34_N19
\AcumuladorB|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[2]~5_combout\,
	asdata => \upa|Yupa[2]~19_combout\,
	sload => \inst7|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(2));

-- Location: LCCOMB_X75_Y34_N30
\upa|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux30~0_combout\ = (\inst7|inst3|EA\(1) & (((\AcumuladorB|data_out\(2)) # (\inst7|inst3|nWB~q\)) # (!\inst7|inst3|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \AcumuladorB|data_out\(2),
	datac => \inst7|inst3|EA\(1),
	datad => \inst7|inst3|nWB~q\,
	combout => \upa|Mux30~0_combout\);

-- Location: LCCOMB_X75_Y37_N10
\AcumuladorB|C[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[1]~6_combout\ = (\inst7|inst3|nWB~q\) # ((\AcumuladorB|data_out\(1)) # ((!\inst7|inst3|EB\(0)) # (!\inst7|inst3|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nWB~q\,
	datab => \AcumuladorB|data_out\(1),
	datac => \inst7|inst3|EA\(1),
	datad => \inst7|inst3|EB\(0),
	combout => \AcumuladorB|C[1]~6_combout\);

-- Location: LCCOMB_X75_Y37_N26
\AcumuladorA|C[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[1]~6_combout\ = (\inst7|inst3|nWA~q\) # ((\AcumuladorA|data_out\(1)) # ((!\inst7|inst3|EA\(0)) # (!\inst7|inst3|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nWA~q\,
	datab => \AcumuladorA|data_out\(1),
	datac => \inst7|inst3|EA\(1),
	datad => \inst7|inst3|EA\(0),
	combout => \AcumuladorA|C[1]~6_combout\);

-- Location: LCCOMB_X75_Y37_N20
\AcumuladorA|data_out[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[1]~6_combout\ = (\inst7|inst3|EA\(0) & (\AcumuladorA|C[1]~6_combout\)) # (!\inst7|inst3|EA\(0) & ((\upa|Yupa2[1]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[1]~6_combout\,
	datab => \upa|Yupa2[1]~23_combout\,
	datad => \inst7|inst3|EA\(0),
	combout => \AcumuladorA|data_out[1]~6_combout\);

-- Location: FF_X75_Y37_N21
\AcumuladorA|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[1]~6_combout\,
	asdata => \upa|Yupa[1]~22_combout\,
	sload => \inst7|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(1));

-- Location: LCCOMB_X74_Y37_N16
\RegAux|C[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|C[1]~6_combout\ = (\inst7|inst3|BD~q\) # (((\inst7|inst3|RA\(0)) # (\RegAux|data_out\(9))) # (!\inst7|inst3|nERA1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|BD~q\,
	datab => \inst7|inst3|nERA1~q\,
	datac => \inst7|inst3|RA\(0),
	datad => \RegAux|data_out\(9),
	combout => \RegAux|C[1]~6_combout\);

-- Location: LCCOMB_X76_Y34_N10
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

-- Location: LCCOMB_X76_Y34_N12
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

-- Location: FF_X76_Y34_N13
\upa|Yupa_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~4_combout\,
	ena => \inst7|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(1));

-- Location: LCCOMB_X75_Y37_N6
\upa|Yupa2[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[1]~21_combout\ = (\inst7|inst3|nDUPA~q\ & (\upa|Yupa_interno\(1) & ((\AcumuladorB|B[7]~0_combout\) # (\AcumuladorB|data_out\(1))))) # (!\inst7|inst3|nDUPA~q\ & ((\AcumuladorB|B[7]~0_combout\) # ((\AcumuladorB|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nDUPA~q\,
	datab => \AcumuladorB|B[7]~0_combout\,
	datac => \AcumuladorB|data_out\(1),
	datad => \upa|Yupa_interno\(1),
	combout => \upa|Yupa2[1]~21_combout\);

-- Location: LCCOMB_X75_Y37_N8
\upa|Yupa2[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[1]~22_combout\ = (\RegAux|C[1]~6_combout\ & (\upa|Yupa2[1]~21_combout\ & ((\AcumuladorA|B[7]~0_combout\) # (\AcumuladorA|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|B[7]~0_combout\,
	datab => \AcumuladorA|data_out\(1),
	datac => \RegAux|C[1]~6_combout\,
	datad => \upa|Yupa2[1]~21_combout\,
	combout => \upa|Yupa2[1]~22_combout\);

-- Location: LCCOMB_X75_Y37_N4
\upa|Yupa2[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[1]~23_combout\ = ((\upa|Yupa2[1]~22_combout\ & ((\upa|Yupa[1]~22_combout\) # (!\inst7|inst3|BD~q\)))) # (!\upa|Yupa2[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~4_combout\,
	datab => \upa|Yupa2[1]~22_combout\,
	datac => \inst7|inst3|BD~q\,
	datad => \upa|Yupa[1]~22_combout\,
	combout => \upa|Yupa2[1]~23_combout\);

-- Location: LCCOMB_X74_Y37_N20
\AcumuladorB|data_out[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[1]~6_combout\ = (\inst7|inst3|EB\(0) & (\AcumuladorB|C[1]~6_combout\)) # (!\inst7|inst3|EB\(0) & ((\upa|Yupa2[1]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \AcumuladorB|C[1]~6_combout\,
	datad => \upa|Yupa2[1]~23_combout\,
	combout => \AcumuladorB|data_out[1]~6_combout\);

-- Location: FF_X74_Y37_N21
\AcumuladorB|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[1]~6_combout\,
	asdata => \upa|Yupa[1]~22_combout\,
	sload => \inst7|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(1));

-- Location: LCCOMB_X75_Y37_N24
\upa|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux29~0_combout\ = (\inst7|inst3|EA\(1) & ((\AcumuladorB|data_out\(1)) # ((\inst7|inst3|nWB~q\) # (!\inst7|inst3|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(1),
	datab => \inst7|inst3|EB\(0),
	datac => \inst7|inst3|EA\(1),
	datad => \inst7|inst3|nWB~q\,
	combout => \upa|Mux29~0_combout\);

-- Location: LCCOMB_X76_Y34_N14
\upa|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~6_combout\ = (\AcumuladorA|C[2]~5_combout\ & ((\upa|Mux30~0_combout\ & (\upa|Add0~5\ & VCC)) # (!\upa|Mux30~0_combout\ & (!\upa|Add0~5\)))) # (!\AcumuladorA|C[2]~5_combout\ & ((\upa|Mux30~0_combout\ & (!\upa|Add0~5\)) # (!\upa|Mux30~0_combout\ & 
-- ((\upa|Add0~5\) # (GND)))))
-- \upa|Add0~7\ = CARRY((\AcumuladorA|C[2]~5_combout\ & (!\upa|Mux30~0_combout\ & !\upa|Add0~5\)) # (!\AcumuladorA|C[2]~5_combout\ & ((!\upa|Add0~5\) # (!\upa|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[2]~5_combout\,
	datab => \upa|Mux30~0_combout\,
	datad => VCC,
	cin => \upa|Add0~5\,
	combout => \upa|Add0~6_combout\,
	cout => \upa|Add0~7\);

-- Location: FF_X76_Y34_N15
\upa|Yupa_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~6_combout\,
	ena => \inst7|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(2));

-- Location: LCCOMB_X75_Y34_N24
\upa|Yupa2[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[2]~18_combout\ = (\inst7|inst3|nDUPA~q\ & (\upa|Yupa_interno\(2) & ((\AcumuladorB|data_out\(2)) # (\AcumuladorB|B[7]~0_combout\)))) # (!\inst7|inst3|nDUPA~q\ & ((\AcumuladorB|data_out\(2)) # ((\AcumuladorB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nDUPA~q\,
	datab => \AcumuladorB|data_out\(2),
	datac => \upa|Yupa_interno\(2),
	datad => \AcumuladorB|B[7]~0_combout\,
	combout => \upa|Yupa2[2]~18_combout\);

-- Location: LCCOMB_X75_Y34_N10
\upa|Yupa2[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[2]~19_combout\ = (\RegAux|C[2]~5_combout\ & (\upa|Yupa2[2]~18_combout\ & ((\AcumuladorA|B[7]~0_combout\) # (\AcumuladorA|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|B[7]~0_combout\,
	datab => \AcumuladorA|data_out\(2),
	datac => \RegAux|C[2]~5_combout\,
	datad => \upa|Yupa2[2]~18_combout\,
	combout => \upa|Yupa2[2]~19_combout\);

-- Location: LCCOMB_X75_Y34_N26
\upa|Yupa2[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[2]~20_combout\ = ((\upa|Yupa2[2]~19_combout\ & ((\upa|Yupa[2]~19_combout\) # (!\inst7|inst3|BD~q\)))) # (!\upa|Yupa2[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[2]~19_combout\,
	datab => \inst7|inst3|BD~q\,
	datac => \upa|Yupa2[7]~4_combout\,
	datad => \upa|Yupa[2]~19_combout\,
	combout => \upa|Yupa2[2]~20_combout\);

-- Location: LCCOMB_X75_Y34_N12
\AcumuladorA|data_out[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[2]~5_combout\ = (\inst7|inst3|EA\(0) & ((\AcumuladorA|C[2]~5_combout\))) # (!\inst7|inst3|EA\(0) & (\upa|Yupa2[2]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[2]~20_combout\,
	datab => \AcumuladorA|C[2]~5_combout\,
	datad => \inst7|inst3|EA\(0),
	combout => \AcumuladorA|data_out[2]~5_combout\);

-- Location: FF_X75_Y34_N13
\AcumuladorA|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[2]~5_combout\,
	asdata => \upa|Yupa[2]~19_combout\,
	sload => \inst7|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(2));

-- Location: LCCOMB_X75_Y34_N16
\AcumuladorA|C[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[2]~5_combout\ = (\inst7|inst3|nWA~q\) # ((\AcumuladorA|data_out\(2)) # ((!\inst7|inst3|EA\(0)) # (!\inst7|inst3|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nWA~q\,
	datab => \AcumuladorA|data_out\(2),
	datac => \inst7|inst3|EA\(1),
	datad => \inst7|inst3|EA\(0),
	combout => \AcumuladorA|C[2]~5_combout\);

-- Location: LCCOMB_X76_Y34_N16
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

-- Location: LCCOMB_X76_Y34_N0
\upa|Yupa_interno[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa_interno[3]~feeder_combout\ = \upa|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Add0~8_combout\,
	combout => \upa|Yupa_interno[3]~feeder_combout\);

-- Location: FF_X76_Y34_N1
\upa|Yupa_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa_interno[3]~feeder_combout\,
	ena => \inst7|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(3));

-- Location: LCCOMB_X72_Y36_N22
\upa|Yupa[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[3]~15_combout\ = (\AcumuladorB|data_out\(3) & (((\upa|Yupa_interno\(3))) # (!\inst7|inst3|nDUPA~q\))) # (!\AcumuladorB|data_out\(3) & (!\AcumuladorB|TRI_STATE~0_combout\ & ((\upa|Yupa_interno\(3)) # (!\inst7|inst3|nDUPA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(3),
	datab => \inst7|inst3|nDUPA~q\,
	datac => \AcumuladorB|TRI_STATE~0_combout\,
	datad => \upa|Yupa_interno\(3),
	combout => \upa|Yupa[3]~15_combout\);

-- Location: LCCOMB_X74_Y37_N8
\RegAux|TRI_STATE_D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|TRI_STATE_D~0_combout\ = (\inst7|inst3|BD~q\) # ((\inst7|inst3|RA\(0)) # (!\inst7|inst3|nERA0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|BD~q\,
	datab => \inst7|inst3|RA\(0),
	datac => \inst7|inst3|nERA0~q\,
	combout => \RegAux|TRI_STATE_D~0_combout\);

-- Location: LCCOMB_X76_Y37_N2
\upa|Yupa[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[3]~14_combout\ = (\RegAux|data_out\(3) & ((\AcumuladorA|data_out\(3)) # ((!\AcumuladorA|TRI_STATE~0_combout\)))) # (!\RegAux|data_out\(3) & (\RegAux|TRI_STATE_D~0_combout\ & ((\AcumuladorA|data_out\(3)) # (!\AcumuladorA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(3),
	datab => \AcumuladorA|data_out\(3),
	datac => \RegAux|TRI_STATE_D~0_combout\,
	datad => \AcumuladorA|TRI_STATE~0_combout\,
	combout => \upa|Yupa[3]~14_combout\);

-- Location: LCCOMB_X75_Y35_N22
\inst7|inst|data[86]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[86]~13_combout\ = (\inst7|inst|data~9_combout\ & \inst7|inst|data[68]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|data~9_combout\,
	datac => \inst7|inst|data[68]~12_combout\,
	combout => \inst7|inst|data[86]~13_combout\);

-- Location: LCCOMB_X75_Y35_N4
\inst7|inst|data~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data~42_combout\ = (\inst7|inst|data~9_combout\ & (((\inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\) # (!\inst7|inst|Equal3~3_combout\)) # (!\inst7|inst|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal6~0_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datac => \inst7|inst|Equal3~3_combout\,
	datad => \inst7|inst|data~9_combout\,
	combout => \inst7|inst|data~42_combout\);

-- Location: LCCOMB_X75_Y35_N0
\inst7|inst|data[86]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[86]~15_combout\ = (\inst7|inst|Equal14~3_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\ & 
-- \inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal14~3_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\,
	combout => \inst7|inst|data[86]~15_combout\);

-- Location: LCCOMB_X75_Y35_N26
\inst7|inst|data[86]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[86]~16_combout\ = (\inst7|inst|data~5_combout\ & (\inst7|inst|data[86]~15_combout\ & (\inst7|inst|data~14_combout\ & \inst7|inst|data~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|data~5_combout\,
	datab => \inst7|inst|data[86]~15_combout\,
	datac => \inst7|inst|data~14_combout\,
	datad => \inst7|inst|data~41_combout\,
	combout => \inst7|inst|data[86]~16_combout\);

-- Location: LCCOMB_X71_Y35_N4
\inst7|inst|data[27]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[27]~38_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\) # ((\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\) # (!\inst7|inst|Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \inst7|inst|Equal3~3_combout\,
	combout => \inst7|inst|data[27]~38_combout\);

-- Location: LCCOMB_X71_Y35_N12
\inst7|inst|data[26]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[26]~33_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\) # ((\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & ((!\inst7|inst|Equal15~0_combout\))) # 
-- (!\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & (!\inst7|inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datac => \inst7|inst|Equal0~1_combout\,
	datad => \inst7|inst|Equal15~0_combout\,
	combout => \inst7|inst|data[26]~33_combout\);

-- Location: LCCOMB_X71_Y35_N16
\inst7|inst|data[27]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[27]~39_combout\ = (\inst7|inst|data[27]~38_combout\ & (\inst7|inst|data[26]~33_combout\ & ((\inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\) # (!\inst7|inst|Equal14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\,
	datab => \inst7|inst|Equal14~4_combout\,
	datac => \inst7|inst|data[27]~38_combout\,
	datad => \inst7|inst|data[26]~33_combout\,
	combout => \inst7|inst|data[27]~39_combout\);

-- Location: LCCOMB_X75_Y35_N20
\inst7|inst|data[27]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[27]~40_combout\ = (((\inst7|inst|data[86]~13_combout\ & \inst7|inst|data[86]~16_combout\)) # (!\inst7|inst|data[27]~39_combout\)) # (!\inst7|inst|data~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|data[86]~13_combout\,
	datab => \inst7|inst|data~42_combout\,
	datac => \inst7|inst|data[86]~16_combout\,
	datad => \inst7|inst|data[27]~39_combout\,
	combout => \inst7|inst|data[27]~40_combout\);

-- Location: FF_X75_Y35_N21
\inst7|inst3|nCBD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst|data[27]~40_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|nCBD~q\);

-- Location: CLKCTRL_G8
\inst7|inst3|nCBD~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|inst3|nCBD~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|inst3|nCBD~clkctrl_outclk\);

-- Location: LCCOMB_X75_Y35_N14
\inst7|inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal1~0_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\ & \inst7|inst|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \inst7|inst|Equal0~1_combout\,
	combout => \inst7|inst|Equal1~0_combout\);

-- Location: LCCOMB_X75_Y35_N2
\inst7|inst|data[26]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[26]~32_combout\ = (\inst7|inst3|EB[0]~0_combout\ & (!\inst7|inst|Equal1~0_combout\ & !\inst7|inst|Equal15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB[0]~0_combout\,
	datac => \inst7|inst|Equal1~0_combout\,
	datad => \inst7|inst|Equal15~1_combout\,
	combout => \inst7|inst|data[26]~32_combout\);

-- Location: LCCOMB_X72_Y35_N8
\inst7|inst|data[28]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[28]~37_combout\ = ((\inst7|inst|Equal17~0_combout\) # ((\inst7|inst|data~30_combout\ & \inst7|inst|data[28]~23_combout\))) # (!\inst7|inst|data[26]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|data[26]~32_combout\,
	datab => \inst7|inst|Equal17~0_combout\,
	datac => \inst7|inst|data~30_combout\,
	datad => \inst7|inst|data[28]~23_combout\,
	combout => \inst7|inst|data[28]~37_combout\);

-- Location: FF_X72_Y35_N9
\inst7|inst3|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst|data[28]~37_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|PC\(0));

-- Location: LCCOMB_X76_Y38_N0
\RegPC|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~16_combout\ = \RegPC|data_out\(0) $ (VCC)
-- \RegPC|Add0~17\ = CARRY(\RegPC|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(0),
	datad => VCC,
	combout => \RegPC|Add0~16_combout\,
	cout => \RegPC|Add0~17\);

-- Location: FF_X72_Y35_N3
\inst7|inst3|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst|Equal18~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|PC\(2));

-- Location: LCCOMB_X76_Y36_N20
\RegPC|Add0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~55_combout\ = (\inst7|inst3|PC\(2) & (((\upa|Yupa[0]~25_combout\)))) # (!\inst7|inst3|PC\(2) & ((\inst7|inst3|PC\(0) & (\RegPC|Add0~16_combout\)) # (!\inst7|inst3|PC\(0) & ((\upa|Yupa[0]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Add0~16_combout\,
	datab => \inst7|inst3|PC\(2),
	datac => \upa|Yupa[0]~25_combout\,
	datad => \inst7|inst3|PC\(0),
	combout => \RegPC|Add0~55_combout\);

-- Location: FF_X76_Y36_N21
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
	ena => \inst7|inst3|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(0));

-- Location: LCCOMB_X76_Y38_N2
\RegPC|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~18_combout\ = (\RegPC|data_out\(1) & (!\RegPC|Add0~17\)) # (!\RegPC|data_out\(1) & ((\RegPC|Add0~17\) # (GND)))
-- \RegPC|Add0~19\ = CARRY((!\RegPC|Add0~17\) # (!\RegPC|data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(1),
	datad => VCC,
	cin => \RegPC|Add0~17\,
	combout => \RegPC|Add0~18_combout\,
	cout => \RegPC|Add0~19\);

-- Location: LCCOMB_X76_Y36_N28
\RegPC|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~54_combout\ = (\inst7|inst3|PC\(0) & ((\inst7|inst3|PC\(2) & ((\upa|Yupa[1]~22_combout\))) # (!\inst7|inst3|PC\(2) & (\RegPC|Add0~18_combout\)))) # (!\inst7|inst3|PC\(0) & (((\upa|Yupa[1]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|PC\(0),
	datab => \RegPC|Add0~18_combout\,
	datac => \inst7|inst3|PC\(2),
	datad => \upa|Yupa[1]~22_combout\,
	combout => \RegPC|Add0~54_combout\);

-- Location: FF_X76_Y36_N29
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
	ena => \inst7|inst3|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(1));

-- Location: LCCOMB_X76_Y38_N4
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

-- Location: LCCOMB_X76_Y36_N30
\RegPC|Add0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~53_combout\ = (\inst7|inst3|PC\(0) & ((\inst7|inst3|PC\(2) & ((\upa|Yupa[2]~19_combout\))) # (!\inst7|inst3|PC\(2) & (\RegPC|Add0~20_combout\)))) # (!\inst7|inst3|PC\(0) & (((\upa|Yupa[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|PC\(0),
	datab => \RegPC|Add0~20_combout\,
	datac => \inst7|inst3|PC\(2),
	datad => \upa|Yupa[2]~19_combout\,
	combout => \RegPC|Add0~53_combout\);

-- Location: FF_X76_Y36_N31
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
	ena => \inst7|inst3|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(2));

-- Location: LCCOMB_X76_Y38_N6
\RegPC|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~22_combout\ = (\RegPC|data_out\(3) & (!\RegPC|Add0~21\)) # (!\RegPC|data_out\(3) & ((\RegPC|Add0~21\) # (GND)))
-- \RegPC|Add0~23\ = CARRY((!\RegPC|Add0~21\) # (!\RegPC|data_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(3),
	datad => VCC,
	cin => \RegPC|Add0~21\,
	combout => \RegPC|Add0~22_combout\,
	cout => \RegPC|Add0~23\);

-- Location: LCCOMB_X76_Y36_N4
\RegPC|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~52_combout\ = (\inst7|inst3|PC\(2) & (((\upa|Yupa[3]~16_combout\)))) # (!\inst7|inst3|PC\(2) & ((\inst7|inst3|PC\(0) & (\RegPC|Add0~22_combout\)) # (!\inst7|inst3|PC\(0) & ((\upa|Yupa[3]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Add0~22_combout\,
	datab => \upa|Yupa[3]~16_combout\,
	datac => \inst7|inst3|PC\(2),
	datad => \inst7|inst3|PC\(0),
	combout => \RegPC|Add0~52_combout\);

-- Location: FF_X76_Y36_N5
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
	ena => \inst7|inst3|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(3));

-- Location: LCCOMB_X76_Y38_N8
\RegPC|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~24_combout\ = (\RegPC|data_out\(4) & (\RegPC|Add0~23\ $ (GND))) # (!\RegPC|data_out\(4) & (!\RegPC|Add0~23\ & VCC))
-- \RegPC|Add0~25\ = CARRY((\RegPC|data_out\(4) & !\RegPC|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(4),
	datad => VCC,
	cin => \RegPC|Add0~23\,
	combout => \RegPC|Add0~24_combout\,
	cout => \RegPC|Add0~25\);

-- Location: LCCOMB_X76_Y36_N14
\RegPC|Add0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~51_combout\ = (\inst7|inst3|PC\(0) & ((\inst7|inst3|PC\(2) & ((\upa|Yupa[4]~13_combout\))) # (!\inst7|inst3|PC\(2) & (\RegPC|Add0~24_combout\)))) # (!\inst7|inst3|PC\(0) & (((\upa|Yupa[4]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Add0~24_combout\,
	datab => \inst7|inst3|PC\(0),
	datac => \inst7|inst3|PC\(2),
	datad => \upa|Yupa[4]~13_combout\,
	combout => \RegPC|Add0~51_combout\);

-- Location: FF_X76_Y36_N15
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
	ena => \inst7|inst3|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(4));

-- Location: FF_X76_Y36_N11
\dir|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst3|ALT_INV_nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(4));

-- Location: LCCOMB_X76_Y38_N10
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

-- Location: LCCOMB_X76_Y36_N8
\RegPC|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~50_combout\ = (\inst7|inst3|PC\(2) & (((\upa|Yupa[5]~10_combout\)))) # (!\inst7|inst3|PC\(2) & ((\inst7|inst3|PC\(0) & (\RegPC|Add0~26_combout\)) # (!\inst7|inst3|PC\(0) & ((\upa|Yupa[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|PC\(2),
	datab => \RegPC|Add0~26_combout\,
	datac => \upa|Yupa[5]~10_combout\,
	datad => \inst7|inst3|PC\(0),
	combout => \RegPC|Add0~50_combout\);

-- Location: FF_X76_Y36_N9
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
	ena => \inst7|inst3|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(5));

-- Location: FF_X76_Y36_N7
\dir|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst3|ALT_INV_nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(5));

-- Location: LCCOMB_X76_Y38_N12
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

-- Location: LCCOMB_X76_Y36_N26
\RegPC|Add0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~49_combout\ = (\inst7|inst3|PC\(0) & ((\inst7|inst3|PC\(2) & ((\upa|Yupa[6]~7_combout\))) # (!\inst7|inst3|PC\(2) & (\RegPC|Add0~28_combout\)))) # (!\inst7|inst3|PC\(0) & (((\upa|Yupa[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Add0~28_combout\,
	datab => \inst7|inst3|PC\(0),
	datac => \inst7|inst3|PC\(2),
	datad => \upa|Yupa[6]~7_combout\,
	combout => \RegPC|Add0~49_combout\);

-- Location: FF_X76_Y36_N27
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
	ena => \inst7|inst3|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(6));

-- Location: FF_X76_Y36_N25
\dir|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst3|ALT_INV_nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(6),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(6));

-- Location: LCCOMB_X76_Y38_N14
\RegPC|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~30_combout\ = (\RegPC|data_out\(7) & (!\RegPC|Add0~29\)) # (!\RegPC|data_out\(7) & ((\RegPC|Add0~29\) # (GND)))
-- \RegPC|Add0~31\ = CARRY((!\RegPC|Add0~29\) # (!\RegPC|data_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(7),
	datad => VCC,
	cin => \RegPC|Add0~29\,
	combout => \RegPC|Add0~30_combout\,
	cout => \RegPC|Add0~31\);

-- Location: LCCOMB_X76_Y36_N22
\RegPC|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~48_combout\ = (\inst7|inst3|PC\(0) & ((\inst7|inst3|PC\(2) & ((\upa|Yupa[7]~4_combout\))) # (!\inst7|inst3|PC\(2) & (\RegPC|Add0~30_combout\)))) # (!\inst7|inst3|PC\(0) & (((\upa|Yupa[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|PC\(0),
	datab => \inst7|inst3|PC\(2),
	datac => \RegPC|Add0~30_combout\,
	datad => \upa|Yupa[7]~4_combout\,
	combout => \RegPC|Add0~48_combout\);

-- Location: FF_X76_Y36_N23
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
	ena => \inst7|inst3|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(7));

-- Location: FF_X76_Y36_N3
\dir|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst3|ALT_INV_nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(7));

-- Location: LCCOMB_X76_Y36_N24
\inst|data_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data_out[0]~0_combout\ = (!\dir|valor_interno\(4) & (!\dir|valor_interno\(5) & (!\dir|valor_interno\(6) & !\dir|valor_interno\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(4),
	datab => \dir|valor_interno\(5),
	datac => \dir|valor_interno\(6),
	datad => \dir|valor_interno\(7),
	combout => \inst|data_out[0]~0_combout\);

-- Location: FF_X76_Y36_N13
\dir|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst3|ALT_INV_nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(1));

-- Location: FF_X76_Y36_N1
\dir|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst3|ALT_INV_nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(2));

-- Location: FF_X76_Y36_N17
\dir|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst3|ALT_INV_nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(3));

-- Location: LCCOMB_X76_Y36_N2
\inst|data[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[4]~2_combout\ = (\dir|valor_interno\(2) & !\dir|valor_interno\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dir|valor_interno\(2),
	datad => \dir|valor_interno\(3),
	combout => \inst|data[4]~2_combout\);

-- Location: LCCOMB_X75_Y36_N18
\inst|data[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[4]~3_combout\ = ((\inst|data_out[0]~0_combout\ & (!\dir|valor_interno\(1) & \inst|data[4]~2_combout\))) # (!\inst7|inst3|nAS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nAS~q\,
	datab => \inst|data_out[0]~0_combout\,
	datac => \dir|valor_interno\(1),
	datad => \inst|data[4]~2_combout\,
	combout => \inst|data[4]~3_combout\);

-- Location: LCCOMB_X75_Y36_N28
\upa|Yupa[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[3]~16_combout\ = ((\upa|Yupa[3]~15_combout\ & (\upa|Yupa[3]~14_combout\ & \inst|data[4]~3_combout\))) # (!\upa|Yupa[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[3]~15_combout\,
	datab => \upa|Yupa[7]~3_combout\,
	datac => \upa|Yupa[3]~14_combout\,
	datad => \inst|data[4]~3_combout\,
	combout => \upa|Yupa[3]~16_combout\);

-- Location: FF_X72_Y36_N31
\AcumuladorB|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[3]~4_combout\,
	asdata => \upa|Yupa[3]~16_combout\,
	sload => \inst7|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(3));

-- Location: LCCOMB_X72_Y36_N16
\upa|Yupa2[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[3]~15_combout\ = (\AcumuladorB|B[7]~0_combout\ & (((\upa|Yupa_interno\(3))) # (!\inst7|inst3|nDUPA~q\))) # (!\AcumuladorB|B[7]~0_combout\ & (\AcumuladorB|data_out\(3) & ((\upa|Yupa_interno\(3)) # (!\inst7|inst3|nDUPA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|B[7]~0_combout\,
	datab => \inst7|inst3|nDUPA~q\,
	datac => \AcumuladorB|data_out\(3),
	datad => \upa|Yupa_interno\(3),
	combout => \upa|Yupa2[3]~15_combout\);

-- Location: LCCOMB_X75_Y36_N26
\upa|Yupa2[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[3]~16_combout\ = (\RegAux|C[3]~4_combout\ & (\upa|Yupa2[3]~15_combout\ & ((\AcumuladorA|data_out\(3)) # (\AcumuladorA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|C[3]~4_combout\,
	datab => \AcumuladorA|data_out\(3),
	datac => \AcumuladorA|B[7]~0_combout\,
	datad => \upa|Yupa2[3]~15_combout\,
	combout => \upa|Yupa2[3]~16_combout\);

-- Location: LCCOMB_X75_Y36_N6
\upa|Yupa2[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[3]~17_combout\ = ((\upa|Yupa2[3]~16_combout\ & ((\upa|Yupa[3]~16_combout\) # (!\inst7|inst3|BD~q\)))) # (!\upa|Yupa2[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|BD~q\,
	datab => \upa|Yupa2[7]~4_combout\,
	datac => \upa|Yupa2[3]~16_combout\,
	datad => \upa|Yupa[3]~16_combout\,
	combout => \upa|Yupa2[3]~17_combout\);

-- Location: LCCOMB_X75_Y36_N4
\AcumuladorA|data_out[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[3]~4_combout\ = (\inst7|inst3|EA\(0) & (\AcumuladorA|C[3]~4_combout\)) # (!\inst7|inst3|EA\(0) & ((\upa|Yupa2[3]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[3]~4_combout\,
	datab => \inst7|inst3|EA\(0),
	datad => \upa|Yupa2[3]~17_combout\,
	combout => \AcumuladorA|data_out[3]~4_combout\);

-- Location: FF_X75_Y36_N5
\AcumuladorA|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[3]~4_combout\,
	asdata => \upa|Yupa[3]~16_combout\,
	sload => \inst7|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(3));

-- Location: LCCOMB_X75_Y36_N22
\AcumuladorA|C[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[3]~4_combout\ = ((\AcumuladorA|data_out\(3)) # ((\inst7|inst3|nWA~q\) # (!\inst7|inst3|EA\(1)))) # (!\inst7|inst3|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EA\(0),
	datab => \AcumuladorA|data_out\(3),
	datac => \inst7|inst3|nWA~q\,
	datad => \inst7|inst3|EA\(1),
	combout => \AcumuladorA|C[3]~4_combout\);

-- Location: LCCOMB_X76_Y34_N18
\upa|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~10_combout\ = (\AcumuladorA|C[4]~3_combout\ & ((\upa|Mux32~0_combout\ & (\upa|Add0~9\ & VCC)) # (!\upa|Mux32~0_combout\ & (!\upa|Add0~9\)))) # (!\AcumuladorA|C[4]~3_combout\ & ((\upa|Mux32~0_combout\ & (!\upa|Add0~9\)) # (!\upa|Mux32~0_combout\ 
-- & ((\upa|Add0~9\) # (GND)))))
-- \upa|Add0~11\ = CARRY((\AcumuladorA|C[4]~3_combout\ & (!\upa|Mux32~0_combout\ & !\upa|Add0~9\)) # (!\AcumuladorA|C[4]~3_combout\ & ((!\upa|Add0~9\) # (!\upa|Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[4]~3_combout\,
	datab => \upa|Mux32~0_combout\,
	datad => VCC,
	cin => \upa|Add0~9\,
	combout => \upa|Add0~10_combout\,
	cout => \upa|Add0~11\);

-- Location: LCCOMB_X76_Y34_N30
\upa|Banderas[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Banderas[4]~feeder_combout\ = \upa|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Add0~10_combout\,
	combout => \upa|Banderas[4]~feeder_combout\);

-- Location: FF_X76_Y34_N31
\upa|Banderas[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Banderas[4]~feeder_combout\,
	ena => \inst7|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Banderas\(4));

-- Location: LCCOMB_X74_Y36_N8
\upa|Yupa2[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[4]~12_combout\ = (\inst7|inst3|nDUPA~q\ & (\upa|Banderas\(4) & ((\AcumuladorB|data_out\(4)) # (\AcumuladorB|B[7]~0_combout\)))) # (!\inst7|inst3|nDUPA~q\ & ((\AcumuladorB|data_out\(4)) # ((\AcumuladorB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nDUPA~q\,
	datab => \AcumuladorB|data_out\(4),
	datac => \AcumuladorB|B[7]~0_combout\,
	datad => \upa|Banderas\(4),
	combout => \upa|Yupa2[4]~12_combout\);

-- Location: LCCOMB_X74_Y37_N18
\RegAux|C[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|C[4]~3_combout\ = (\RegAux|data_out\(12)) # ((\inst7|inst3|RA\(0)) # ((\inst7|inst3|BD~q\) # (!\inst7|inst3|nERA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(12),
	datab => \inst7|inst3|RA\(0),
	datac => \inst7|inst3|BD~q\,
	datad => \inst7|inst3|nERA1~q\,
	combout => \RegAux|C[4]~3_combout\);

-- Location: LCCOMB_X74_Y36_N14
\upa|Yupa2[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[4]~13_combout\ = (\upa|Yupa2[4]~12_combout\ & (\RegAux|C[4]~3_combout\ & ((\AcumuladorA|data_out\(4)) # (\AcumuladorA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(4),
	datab => \AcumuladorA|B[7]~0_combout\,
	datac => \upa|Yupa2[4]~12_combout\,
	datad => \RegAux|C[4]~3_combout\,
	combout => \upa|Yupa2[4]~13_combout\);

-- Location: LCCOMB_X75_Y36_N0
\upa|Yupa2[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[4]~14_combout\ = ((\upa|Yupa2[4]~13_combout\ & ((\upa|Yupa[4]~13_combout\) # (!\inst7|inst3|BD~q\)))) # (!\upa|Yupa2[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[4]~13_combout\,
	datab => \upa|Yupa2[7]~4_combout\,
	datac => \inst7|inst3|BD~q\,
	datad => \upa|Yupa[4]~13_combout\,
	combout => \upa|Yupa2[4]~14_combout\);

-- Location: LCCOMB_X75_Y36_N30
\AcumuladorA|data_out[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[4]~3_combout\ = (\inst7|inst3|EA\(0) & (\AcumuladorA|C[4]~3_combout\)) # (!\inst7|inst3|EA\(0) & ((\upa|Yupa2[4]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EA\(0),
	datab => \AcumuladorA|C[4]~3_combout\,
	datad => \upa|Yupa2[4]~14_combout\,
	combout => \AcumuladorA|data_out[4]~3_combout\);

-- Location: FF_X75_Y36_N31
\AcumuladorA|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[4]~3_combout\,
	asdata => \upa|Yupa[4]~13_combout\,
	sload => \inst7|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(4));

-- Location: LCCOMB_X75_Y36_N16
\AcumuladorA|C[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[4]~3_combout\ = (\AcumuladorA|data_out\(4)) # (((\inst7|inst3|nWA~q\) # (!\inst7|inst3|EA\(0))) # (!\inst7|inst3|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(4),
	datab => \inst7|inst3|EA\(1),
	datac => \inst7|inst3|nWA~q\,
	datad => \inst7|inst3|EA\(0),
	combout => \AcumuladorA|C[4]~3_combout\);

-- Location: LCCOMB_X76_Y34_N20
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

-- Location: FF_X76_Y34_N21
\upa|Yupa_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~12_combout\,
	ena => \inst7|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(5));

-- Location: LCCOMB_X75_Y38_N4
\upa|Yupa2[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[5]~9_combout\ = (\inst7|inst3|nDUPA~q\ & (\upa|Yupa_interno\(5) & ((\AcumuladorB|data_out\(5)) # (\AcumuladorB|B[7]~0_combout\)))) # (!\inst7|inst3|nDUPA~q\ & ((\AcumuladorB|data_out\(5)) # ((\AcumuladorB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nDUPA~q\,
	datab => \AcumuladorB|data_out\(5),
	datac => \AcumuladorB|B[7]~0_combout\,
	datad => \upa|Yupa_interno\(5),
	combout => \upa|Yupa2[5]~9_combout\);

-- Location: LCCOMB_X74_Y38_N0
\upa|Yupa2[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[5]~10_combout\ = (\RegAux|C[5]~2_combout\ & (\upa|Yupa2[5]~9_combout\ & ((\AcumuladorA|B[7]~0_combout\) # (\AcumuladorA|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|C[5]~2_combout\,
	datab => \AcumuladorA|B[7]~0_combout\,
	datac => \AcumuladorA|data_out\(5),
	datad => \upa|Yupa2[5]~9_combout\,
	combout => \upa|Yupa2[5]~10_combout\);

-- Location: LCCOMB_X75_Y38_N6
\upa|Yupa2[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[5]~11_combout\ = ((\upa|Yupa2[5]~10_combout\ & ((\upa|Yupa[5]~10_combout\) # (!\inst7|inst3|BD~q\)))) # (!\upa|Yupa2[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~4_combout\,
	datab => \inst7|inst3|BD~q\,
	datac => \upa|Yupa2[5]~10_combout\,
	datad => \upa|Yupa[5]~10_combout\,
	combout => \upa|Yupa2[5]~11_combout\);

-- Location: LCCOMB_X74_Y38_N6
\RegAux|data_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~2_combout\ = (\inst7|inst3|RA\(0) & (\RegAux|data_out\(14))) # (!\inst7|inst3|RA\(0) & ((\upa|Yupa2[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|RA\(0),
	datac => \RegAux|data_out\(14),
	datad => \upa|Yupa2[5]~11_combout\,
	combout => \RegAux|data_out~2_combout\);

-- Location: FF_X74_Y38_N7
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
	ena => \inst7|inst3|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(13));

-- Location: LCCOMB_X74_Y37_N26
\RegAux|data_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~3_combout\ = (\inst7|inst3|RA\(0) & (\RegAux|data_out\(13))) # (!\inst7|inst3|RA\(0) & ((\upa|Yupa2[4]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|RA\(0),
	datac => \RegAux|data_out\(13),
	datad => \upa|Yupa2[4]~14_combout\,
	combout => \RegAux|data_out~3_combout\);

-- Location: FF_X74_Y37_N27
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
	ena => \inst7|inst3|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(12));

-- Location: LCCOMB_X74_Y37_N2
\RegAux|data_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~4_combout\ = (\inst7|inst3|RA\(0) & (\RegAux|data_out\(12))) # (!\inst7|inst3|RA\(0) & ((\upa|Yupa2[3]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|RA\(0),
	datac => \RegAux|data_out\(12),
	datad => \upa|Yupa2[3]~17_combout\,
	combout => \RegAux|data_out~4_combout\);

-- Location: FF_X74_Y37_N3
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
	ena => \inst7|inst3|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(11));

-- Location: LCCOMB_X74_Y37_N28
\RegAux|data_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~5_combout\ = (\inst7|inst3|RA\(0) & (\RegAux|data_out\(11))) # (!\inst7|inst3|RA\(0) & ((\upa|Yupa2[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegAux|data_out\(11),
	datac => \inst7|inst3|RA\(0),
	datad => \upa|Yupa2[2]~20_combout\,
	combout => \RegAux|data_out~5_combout\);

-- Location: FF_X74_Y37_N29
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
	ena => \inst7|inst3|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(10));

-- Location: LCCOMB_X74_Y37_N10
\RegAux|data_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~6_combout\ = (\inst7|inst3|RA\(0) & (\RegAux|data_out\(10))) # (!\inst7|inst3|RA\(0) & ((\upa|Yupa2[1]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(10),
	datac => \inst7|inst3|RA\(0),
	datad => \upa|Yupa2[1]~23_combout\,
	combout => \RegAux|data_out~6_combout\);

-- Location: FF_X74_Y37_N11
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
	ena => \inst7|inst3|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(9));

-- Location: LCCOMB_X74_Y38_N12
\RegAux|data_out~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~7_combout\ = (\inst7|inst3|RA\(0) & (\RegAux|data_out\(9))) # (!\inst7|inst3|RA\(0) & ((\upa|Yupa2[0]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|RA\(0),
	datac => \RegAux|data_out\(9),
	datad => \upa|Yupa2[0]~26_combout\,
	combout => \RegAux|data_out~7_combout\);

-- Location: FF_X74_Y38_N13
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
	ena => \inst7|inst3|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(8));

-- Location: LCCOMB_X76_Y37_N30
\RegAux|data_out~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~8_combout\ = (\inst7|inst3|BD~q\ & (\RegAux|data_out\(8))) # (!\inst7|inst3|BD~q\ & ((\upa|Yupa[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(8),
	datac => \inst7|inst3|BD~q\,
	datad => \upa|Yupa[7]~4_combout\,
	combout => \RegAux|data_out~8_combout\);

-- Location: FF_X76_Y37_N31
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
	ena => \inst7|inst3|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(7));

-- Location: LCCOMB_X74_Y34_N8
\RegAux|data_out~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~9_combout\ = (\inst7|inst3|BD~q\ & (\RegAux|data_out\(7))) # (!\inst7|inst3|BD~q\ & ((\upa|Yupa[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegAux|data_out\(7),
	datac => \inst7|inst3|BD~q\,
	datad => \upa|Yupa[6]~7_combout\,
	combout => \RegAux|data_out~9_combout\);

-- Location: FF_X74_Y34_N9
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
	ena => \inst7|inst3|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(6));

-- Location: LCCOMB_X74_Y34_N4
\RegAux|D[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|D[6]~0_combout\ = ((\inst7|inst3|RA\(0)) # ((\RegAux|data_out\(6)) # (\inst7|inst3|BD~q\))) # (!\inst7|inst3|nERA0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nERA0~q\,
	datab => \inst7|inst3|RA\(0),
	datac => \RegAux|data_out\(6),
	datad => \inst7|inst3|BD~q\,
	combout => \RegAux|D[6]~0_combout\);

-- Location: LCCOMB_X74_Y36_N20
\upa|Yupa[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[6]~6_combout\ = (\inst7|inst3|nDUPA~q\ & (\upa|Yupa_interno\(6) & ((\AcumuladorB|data_out\(6)) # (!\AcumuladorB|TRI_STATE~0_combout\)))) # (!\inst7|inst3|nDUPA~q\ & ((\AcumuladorB|data_out\(6)) # ((!\AcumuladorB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nDUPA~q\,
	datab => \AcumuladorB|data_out\(6),
	datac => \AcumuladorB|TRI_STATE~0_combout\,
	datad => \upa|Yupa_interno\(6),
	combout => \upa|Yupa[6]~6_combout\);

-- Location: LCCOMB_X74_Y36_N4
\AcumuladorA|A[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|A[6]~0_combout\ = (\inst7|inst3|EA\(1)) # ((\AcumuladorA|data_out\(6)) # ((\inst7|inst3|nWA~q\) # (!\inst7|inst3|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EA\(1),
	datab => \AcumuladorA|data_out\(6),
	datac => \inst7|inst3|nWA~q\,
	datad => \inst7|inst3|EA\(0),
	combout => \AcumuladorA|A[6]~0_combout\);

-- Location: FF_X76_Y36_N19
\dir|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst3|ALT_INV_nCBD~clkctrl_outclk\,
	asdata => \RegPC|data_out\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(0));

-- Location: LCCOMB_X76_Y36_N16
\inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\dir|valor_interno\(1)) # ((\dir|valor_interno\(3)) # (\dir|valor_interno\(0) $ (\dir|valor_interno\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(1),
	datab => \dir|valor_interno\(0),
	datac => \dir|valor_interno\(3),
	datad => \dir|valor_interno\(2),
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X74_Y36_N2
\upa|Yupa[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[6]~5_combout\ = (\AcumuladorA|A[6]~0_combout\ & (((\inst|data_out[0]~0_combout\ & !\inst|Mux1~0_combout\)) # (!\inst7|inst3|nAS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nAS~q\,
	datab => \AcumuladorA|A[6]~0_combout\,
	datac => \inst|data_out[0]~0_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \upa|Yupa[6]~5_combout\);

-- Location: LCCOMB_X74_Y36_N18
\upa|Yupa[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[6]~7_combout\ = ((\RegAux|D[6]~0_combout\ & (\upa|Yupa[6]~6_combout\ & \upa|Yupa[6]~5_combout\))) # (!\upa|Yupa[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|D[6]~0_combout\,
	datab => \upa|Yupa[6]~6_combout\,
	datac => \upa|Yupa[7]~3_combout\,
	datad => \upa|Yupa[6]~5_combout\,
	combout => \upa|Yupa[6]~7_combout\);

-- Location: FF_X74_Y36_N29
\AcumuladorA|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[6]~1_combout\,
	asdata => \upa|Yupa[6]~7_combout\,
	sload => \inst7|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(6));

-- Location: LCCOMB_X74_Y36_N6
\AcumuladorA|C[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[6]~1_combout\ = ((\AcumuladorA|data_out\(6)) # ((\inst7|inst3|nWA~q\) # (!\inst7|inst3|EA\(1)))) # (!\inst7|inst3|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EA\(0),
	datab => \AcumuladorA|data_out\(6),
	datac => \inst7|inst3|nWA~q\,
	datad => \inst7|inst3|EA\(1),
	combout => \AcumuladorA|C[6]~1_combout\);

-- Location: LCCOMB_X76_Y34_N22
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

-- Location: FF_X76_Y34_N23
\upa|Yupa_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~14_combout\,
	ena => \inst7|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(6));

-- Location: LCCOMB_X74_Y36_N24
\upa|Yupa2[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[6]~6_combout\ = (\inst7|inst3|nDUPA~q\ & (\upa|Yupa_interno\(6) & ((\AcumuladorB|data_out\(6)) # (\AcumuladorB|B[7]~0_combout\)))) # (!\inst7|inst3|nDUPA~q\ & ((\AcumuladorB|data_out\(6)) # ((\AcumuladorB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nDUPA~q\,
	datab => \AcumuladorB|data_out\(6),
	datac => \AcumuladorB|B[7]~0_combout\,
	datad => \upa|Yupa_interno\(6),
	combout => \upa|Yupa2[6]~6_combout\);

-- Location: LCCOMB_X74_Y37_N0
\RegAux|C[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|C[6]~1_combout\ = (\inst7|inst3|BD~q\) # ((\inst7|inst3|RA\(0)) # ((\RegAux|data_out\(14)) # (!\inst7|inst3|nERA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|BD~q\,
	datab => \inst7|inst3|RA\(0),
	datac => \RegAux|data_out\(14),
	datad => \inst7|inst3|nERA1~q\,
	combout => \RegAux|C[6]~1_combout\);

-- Location: LCCOMB_X74_Y36_N26
\upa|Yupa2[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[6]~7_combout\ = (\upa|Yupa2[6]~6_combout\ & (\RegAux|C[6]~1_combout\ & ((\AcumuladorA|data_out\(6)) # (\AcumuladorA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[6]~6_combout\,
	datab => \AcumuladorA|data_out\(6),
	datac => \RegAux|C[6]~1_combout\,
	datad => \AcumuladorA|B[7]~0_combout\,
	combout => \upa|Yupa2[6]~7_combout\);

-- Location: LCCOMB_X74_Y36_N10
\upa|Yupa2[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[6]~8_combout\ = ((\upa|Yupa2[6]~7_combout\ & ((\upa|Yupa[6]~7_combout\) # (!\inst7|inst3|BD~q\)))) # (!\upa|Yupa2[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~4_combout\,
	datab => \inst7|inst3|BD~q\,
	datac => \upa|Yupa2[6]~7_combout\,
	datad => \upa|Yupa[6]~7_combout\,
	combout => \upa|Yupa2[6]~8_combout\);

-- Location: LCCOMB_X72_Y36_N8
\AcumuladorB|data_out[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[6]~1_combout\ = (\inst7|inst3|EB\(0) & (\AcumuladorB|C[6]~1_combout\)) # (!\inst7|inst3|EB\(0) & ((\upa|Yupa2[6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \AcumuladorB|C[6]~1_combout\,
	datad => \upa|Yupa2[6]~8_combout\,
	combout => \AcumuladorB|data_out[6]~1_combout\);

-- Location: FF_X72_Y36_N9
\AcumuladorB|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[6]~1_combout\,
	asdata => \upa|Yupa[6]~7_combout\,
	sload => \inst7|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(6));

-- Location: LCCOMB_X75_Y34_N2
\upa|Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux34~0_combout\ = (\inst7|inst3|EA\(1) & ((\AcumuladorB|data_out\(6)) # ((\inst7|inst3|nWB~q\) # (!\inst7|inst3|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(6),
	datab => \inst7|inst3|EA\(1),
	datac => \inst7|inst3|EB\(0),
	datad => \inst7|inst3|nWB~q\,
	combout => \upa|Mux34~0_combout\);

-- Location: LCCOMB_X76_Y34_N24
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

-- Location: LCCOMB_X76_Y34_N26
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

-- Location: FF_X76_Y34_N27
\upa|Banderas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~18_combout\,
	ena => \inst7|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Banderas\(1));

-- Location: FF_X76_Y35_N27
\flags|tCC|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst3|CC~q\,
	asdata => \upa|Banderas\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flags|tCC|valor_interno~q\);

-- Location: LCCOMB_X76_Y34_N8
\upa|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~1_cout\ = CARRY((!\inst7|inst3|EA\(1) & \flags|tCC|valor_interno~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EA\(1),
	datab => \flags|tCC|valor_interno~q\,
	datad => VCC,
	cout => \upa|Add0~1_cout\);

-- Location: FF_X76_Y34_N11
\upa|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~2_combout\,
	ena => \inst7|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(0));

-- Location: LCCOMB_X75_Y37_N2
\upa|Yupa2[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[0]~24_combout\ = (\inst7|inst3|nDUPA~q\ & (\upa|Q\(0) & ((\AcumuladorB|data_out\(0)) # (\AcumuladorB|B[7]~0_combout\)))) # (!\inst7|inst3|nDUPA~q\ & ((\AcumuladorB|data_out\(0)) # ((\AcumuladorB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nDUPA~q\,
	datab => \AcumuladorB|data_out\(0),
	datac => \upa|Q\(0),
	datad => \AcumuladorB|B[7]~0_combout\,
	combout => \upa|Yupa2[0]~24_combout\);

-- Location: LCCOMB_X74_Y37_N14
\RegAux|C[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|C[0]~7_combout\ = (\inst7|inst3|BD~q\) # (((\inst7|inst3|RA\(0)) # (\RegAux|data_out\(8))) # (!\inst7|inst3|nERA1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|BD~q\,
	datab => \inst7|inst3|nERA1~q\,
	datac => \inst7|inst3|RA\(0),
	datad => \RegAux|data_out\(8),
	combout => \RegAux|C[0]~7_combout\);

-- Location: LCCOMB_X75_Y37_N28
\upa|Yupa2[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[0]~25_combout\ = (\upa|Yupa2[0]~24_combout\ & (\RegAux|C[0]~7_combout\ & ((\AcumuladorA|B[7]~0_combout\) # (\AcumuladorA|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|B[7]~0_combout\,
	datab => \upa|Yupa2[0]~24_combout\,
	datac => \AcumuladorA|data_out\(0),
	datad => \RegAux|C[0]~7_combout\,
	combout => \upa|Yupa2[0]~25_combout\);

-- Location: LCCOMB_X75_Y38_N2
\upa|Yupa2[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[0]~26_combout\ = ((\upa|Yupa2[0]~25_combout\ & ((\upa|Yupa[0]~25_combout\) # (!\inst7|inst3|BD~q\)))) # (!\upa|Yupa2[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~4_combout\,
	datab => \inst7|inst3|BD~q\,
	datac => \upa|Yupa2[0]~25_combout\,
	datad => \upa|Yupa[0]~25_combout\,
	combout => \upa|Yupa2[0]~26_combout\);

-- Location: LCCOMB_X75_Y38_N30
\AcumuladorA|data_out[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[0]~7_combout\ = (\inst7|inst3|EA\(0) & (\AcumuladorA|C[0]~7_combout\)) # (!\inst7|inst3|EA\(0) & ((\upa|Yupa2[0]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[0]~7_combout\,
	datab => \inst7|inst3|EA\(0),
	datad => \upa|Yupa2[0]~26_combout\,
	combout => \AcumuladorA|data_out[0]~7_combout\);

-- Location: FF_X75_Y38_N31
\AcumuladorA|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[0]~7_combout\,
	asdata => \upa|Yupa[0]~25_combout\,
	sload => \inst7|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(0));

-- Location: LCCOMB_X76_Y37_N28
\RegAux|data_out~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~14_combout\ = (\inst7|inst3|BD~q\ & (\RegAux|data_out\(2))) # (!\inst7|inst3|BD~q\ & ((\upa|Yupa[1]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|BD~q\,
	datac => \RegAux|data_out\(2),
	datad => \upa|Yupa[1]~22_combout\,
	combout => \RegAux|data_out~14_combout\);

-- Location: FF_X76_Y37_N29
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
	ena => \inst7|inst3|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(1));

-- Location: LCCOMB_X76_Y37_N26
\RegAux|data_out~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~15_combout\ = (\inst7|inst3|BD~q\ & ((\RegAux|data_out\(1)))) # (!\inst7|inst3|BD~q\ & (\upa|Yupa[0]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|BD~q\,
	datac => \upa|Yupa[0]~25_combout\,
	datad => \RegAux|data_out\(1),
	combout => \RegAux|data_out~15_combout\);

-- Location: FF_X76_Y37_N27
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
	ena => \inst7|inst3|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(0));

-- Location: LCCOMB_X76_Y37_N6
\upa|Yupa[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[0]~23_combout\ = (\AcumuladorA|data_out\(0) & ((\RegAux|TRI_STATE_D~0_combout\) # ((\RegAux|data_out\(0))))) # (!\AcumuladorA|data_out\(0) & (!\AcumuladorA|TRI_STATE~0_combout\ & ((\RegAux|TRI_STATE_D~0_combout\) # (\RegAux|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(0),
	datab => \RegAux|TRI_STATE_D~0_combout\,
	datac => \RegAux|data_out\(0),
	datad => \AcumuladorA|TRI_STATE~0_combout\,
	combout => \upa|Yupa[0]~23_combout\);

-- Location: LCCOMB_X75_Y38_N14
\upa|Yupa[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[0]~24_combout\ = (\upa|Q\(0) & (((\AcumuladorB|data_out\(0))) # (!\AcumuladorB|TRI_STATE~0_combout\))) # (!\upa|Q\(0) & (!\inst7|inst3|nDUPA~q\ & ((\AcumuladorB|data_out\(0)) # (!\AcumuladorB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Q\(0),
	datab => \AcumuladorB|TRI_STATE~0_combout\,
	datac => \inst7|inst3|nDUPA~q\,
	datad => \AcumuladorB|data_out\(0),
	combout => \upa|Yupa[0]~24_combout\);

-- Location: LCCOMB_X76_Y36_N12
\inst|data[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[0]~5_combout\ = (!\dir|valor_interno\(0) & (!\dir|valor_interno\(1) & !\dir|valor_interno\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dir|valor_interno\(0),
	datac => \dir|valor_interno\(1),
	datad => \dir|valor_interno\(3),
	combout => \inst|data[0]~5_combout\);

-- Location: LCCOMB_X75_Y38_N28
\inst|data[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[0]~6_combout\ = ((\dir|valor_interno\(2) & (\inst|data[0]~5_combout\ & \inst|data_out[0]~0_combout\))) # (!\inst7|inst3|nAS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nAS~q\,
	datab => \dir|valor_interno\(2),
	datac => \inst|data[0]~5_combout\,
	datad => \inst|data_out[0]~0_combout\,
	combout => \inst|data[0]~6_combout\);

-- Location: LCCOMB_X75_Y38_N24
\upa|Yupa[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[0]~25_combout\ = ((\upa|Yupa[0]~23_combout\ & (\upa|Yupa[0]~24_combout\ & \inst|data[0]~6_combout\))) # (!\upa|Yupa[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[7]~3_combout\,
	datab => \upa|Yupa[0]~23_combout\,
	datac => \upa|Yupa[0]~24_combout\,
	datad => \inst|data[0]~6_combout\,
	combout => \upa|Yupa[0]~25_combout\);

-- Location: FF_X76_Y35_N19
\inst11|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa[0]~25_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(4));

-- Location: LCCOMB_X76_Y35_N18
\inst7|inst5|$00000|auto_generated|result_node[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[4]~13_combout\ = (\inst7|inst2|valor_interno\(4) & (((\inst7|inst1|SELECTOR~0_combout\ & \inst11|valor_interno\(4))) # (!\inst7|inst1|SELECTOR~2_combout\))) # (!\inst7|inst2|valor_interno\(4) & 
-- (\inst7|inst1|SELECTOR~0_combout\ & (\inst11|valor_interno\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|valor_interno\(4),
	datab => \inst7|inst1|SELECTOR~0_combout\,
	datac => \inst11|valor_interno\(4),
	datad => \inst7|inst1|SELECTOR~2_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[4]~13_combout\);

-- Location: LCCOMB_X76_Y35_N16
\inst7|inst|Equal11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal11~3_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[9]~8_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[4]~13_combout\ & ((\inst7|inst1|SELECTOR~2_combout\) # (!\inst7|inst2|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|valor_interno\(2),
	datab => \inst7|inst1|SELECTOR~2_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[9]~8_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[4]~13_combout\,
	combout => \inst7|inst|Equal11~3_combout\);

-- Location: LCCOMB_X72_Y35_N10
\inst7|inst|Equal11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal11~5_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[6]~11_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\ & (\inst7|inst|Equal11~3_combout\ & \inst7|inst|Equal14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[6]~11_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datac => \inst7|inst|Equal11~3_combout\,
	datad => \inst7|inst|Equal14~1_combout\,
	combout => \inst7|inst|Equal11~5_combout\);

-- Location: LCCOMB_X72_Y35_N22
\inst7|inst|data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data~5_combout\ = (!\inst7|inst|Equal9~0_combout\ & (((\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\) # (!\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\)) # (!\inst7|inst|Equal11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal11~5_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \inst7|inst|Equal9~0_combout\,
	combout => \inst7|inst|data~5_combout\);

-- Location: LCCOMB_X72_Y35_N14
\inst7|inst|data~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data~22_combout\ = (\inst7|inst|data~5_combout\ & (!\inst7|inst|Equal11~4_combout\ & ((\inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\) # (!\inst7|inst|Equal14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\,
	datab => \inst7|inst|Equal14~4_combout\,
	datac => \inst7|inst|data~5_combout\,
	datad => \inst7|inst|Equal11~4_combout\,
	combout => \inst7|inst|data~22_combout\);

-- Location: LCCOMB_X71_Y35_N0
\inst7|inst|data[26]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[26]~34_combout\ = (((!\inst7|inst|data~42_combout\) # (!\inst7|inst|data[26]~33_combout\)) # (!\inst7|inst|Equal6~0_combout\)) # (!\inst7|inst|Equal15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal15~0_combout\,
	datab => \inst7|inst|Equal6~0_combout\,
	datac => \inst7|inst|data[26]~33_combout\,
	datad => \inst7|inst|data~42_combout\,
	combout => \inst7|inst|data[26]~34_combout\);

-- Location: LCCOMB_X71_Y35_N14
\inst7|inst|data[26]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[26]~35_combout\ = ((\inst7|inst|data~19_combout\ & (\inst7|inst|data~22_combout\ & !\inst7|inst|data[26]~34_combout\))) # (!\inst7|inst|data[26]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|data~19_combout\,
	datab => \inst7|inst|data~22_combout\,
	datac => \inst7|inst|data[26]~32_combout\,
	datad => \inst7|inst|data[26]~34_combout\,
	combout => \inst7|inst|data[26]~35_combout\);

-- Location: FF_X71_Y35_N15
\inst7|inst3|nAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst|data[26]~35_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|nAS~q\);

-- Location: LCCOMB_X74_Y34_N30
\upa|Yupa[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~0_combout\ = (\AcumuladorA|TRI_STATE~0_combout\ & (\AcumuladorA|data_out\(7) & ((\RegAux|TRI_STATE_D~0_combout\) # (\RegAux|data_out\(7))))) # (!\AcumuladorA|TRI_STATE~0_combout\ & (((\RegAux|TRI_STATE_D~0_combout\) # 
-- (\RegAux|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|TRI_STATE~0_combout\,
	datab => \AcumuladorA|data_out\(7),
	datac => \RegAux|TRI_STATE_D~0_combout\,
	datad => \RegAux|data_out\(7),
	combout => \upa|Yupa[7]~0_combout\);

-- Location: LCCOMB_X74_Y34_N16
\upa|Yupa[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~1_combout\ = (\upa|Yupa[7]~0_combout\ & (\upa|Yupa2[7]~0_combout\ & ((\AcumuladorB|data_out\(7)) # (!\AcumuladorB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|TRI_STATE~0_combout\,
	datab => \AcumuladorB|data_out\(7),
	datac => \upa|Yupa[7]~0_combout\,
	datad => \upa|Yupa2[7]~0_combout\,
	combout => \upa|Yupa[7]~1_combout\);

-- Location: LCCOMB_X75_Y36_N12
\inst|data_out[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data_out[7]~1_combout\ = (!\dir|valor_interno\(0) & (!\dir|valor_interno\(3) & (!\dir|valor_interno\(2) & \inst|data_out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(0),
	datab => \dir|valor_interno\(3),
	datac => \dir|valor_interno\(2),
	datad => \inst|data_out[0]~0_combout\,
	combout => \inst|data_out[7]~1_combout\);

-- Location: LCCOMB_X75_Y36_N14
\upa|Yupa[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~4_combout\ = ((\upa|Yupa[7]~1_combout\ & ((\inst|data_out[7]~1_combout\) # (!\inst7|inst3|nAS~q\)))) # (!\upa|Yupa[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nAS~q\,
	datab => \upa|Yupa[7]~1_combout\,
	datac => \upa|Yupa[7]~3_combout\,
	datad => \inst|data_out[7]~1_combout\,
	combout => \upa|Yupa[7]~4_combout\);

-- Location: FF_X76_Y35_N13
\inst11|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa[7]~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(11));

-- Location: LCCOMB_X76_Y35_N12
\inst7|inst5|$00000|auto_generated|result_node[11]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[11]~6_combout\ = (\inst7|inst2|valor_interno\(11) & (((\inst7|inst1|SELECTOR~0_combout\ & \inst11|valor_interno\(11))) # (!\inst7|inst1|SELECTOR~2_combout\))) # (!\inst7|inst2|valor_interno\(11) & 
-- (\inst7|inst1|SELECTOR~0_combout\ & (\inst11|valor_interno\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|valor_interno\(11),
	datab => \inst7|inst1|SELECTOR~0_combout\,
	datac => \inst11|valor_interno\(11),
	datad => \inst7|inst1|SELECTOR~2_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[11]~6_combout\);

-- Location: LCCOMB_X75_Y35_N12
\inst7|inst|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal3~2_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[11]~6_combout\ & \inst7|inst5|$00000|auto_generated|result_node[6]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[6]~11_combout\,
	combout => \inst7|inst|Equal3~2_combout\);

-- Location: LCCOMB_X74_Y35_N18
\inst7|inst|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal3~3_combout\ = (\inst7|inst|Equal3~1_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[5]~12_combout\ & (\inst7|inst|Equal3~0_combout\ & \inst7|inst|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal3~1_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[5]~12_combout\,
	datac => \inst7|inst|Equal3~0_combout\,
	datad => \inst7|inst|Equal3~2_combout\,
	combout => \inst7|inst|Equal3~3_combout\);

-- Location: LCCOMB_X71_Y35_N22
\inst7|inst|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal4~0_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\ & (\inst7|inst|Equal3~3_combout\ & 
-- !\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datac => \inst7|inst|Equal3~3_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	combout => \inst7|inst|Equal4~0_combout\);

-- Location: LCCOMB_X71_Y35_N6
\inst7|inst|data[71]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[71]~29_combout\ = (\inst7|inst|data[68]~12_combout\ & ((\inst7|inst3|EB[0]~0_combout\ & ((\inst7|inst|Equal11~4_combout\))) # (!\inst7|inst3|EB[0]~0_combout\ & (!\inst7|inst|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB[0]~0_combout\,
	datab => \inst7|inst|Equal4~0_combout\,
	datac => \inst7|inst|data[68]~12_combout\,
	datad => \inst7|inst|Equal11~4_combout\,
	combout => \inst7|inst|data[71]~29_combout\);

-- Location: FF_X71_Y35_N7
\inst7|inst3|EB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst|data[71]~29_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|EB\(0));

-- Location: LCCOMB_X72_Y36_N10
\AcumuladorB|C[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[4]~3_combout\ = ((\AcumuladorB|data_out\(4)) # ((\inst7|inst3|nWB~q\) # (!\inst7|inst3|EA\(1)))) # (!\inst7|inst3|EB\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB\(0),
	datab => \AcumuladorB|data_out\(4),
	datac => \inst7|inst3|nWB~q\,
	datad => \inst7|inst3|EA\(1),
	combout => \AcumuladorB|C[4]~3_combout\);

-- Location: LCCOMB_X75_Y36_N10
\AcumuladorB|data_out[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[4]~3_combout\ = (\inst7|inst3|EB\(0) & (\AcumuladorB|C[4]~3_combout\)) # (!\inst7|inst3|EB\(0) & ((\upa|Yupa2[4]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[4]~3_combout\,
	datab => \inst7|inst3|EB\(0),
	datad => \upa|Yupa2[4]~14_combout\,
	combout => \AcumuladorB|data_out[4]~3_combout\);

-- Location: FF_X75_Y36_N11
\AcumuladorB|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[4]~3_combout\,
	asdata => \upa|Yupa[4]~13_combout\,
	sload => \inst7|inst3|ALT_INV_EA\(1),
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(4));

-- Location: LCCOMB_X74_Y36_N12
\upa|Yupa[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[4]~12_combout\ = (\inst7|inst3|nDUPA~q\ & (\upa|Banderas\(4) & ((\AcumuladorB|data_out\(4)) # (!\AcumuladorB|TRI_STATE~0_combout\)))) # (!\inst7|inst3|nDUPA~q\ & ((\AcumuladorB|data_out\(4)) # ((!\AcumuladorB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nDUPA~q\,
	datab => \AcumuladorB|data_out\(4),
	datac => \AcumuladorB|TRI_STATE~0_combout\,
	datad => \upa|Banderas\(4),
	combout => \upa|Yupa[4]~12_combout\);

-- Location: LCCOMB_X75_Y36_N8
\upa|Yupa[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[4]~11_combout\ = (\AcumuladorA|data_out\(4) & (((\RegAux|TRI_STATE_D~0_combout\) # (\RegAux|data_out\(4))))) # (!\AcumuladorA|data_out\(4) & (!\AcumuladorA|TRI_STATE~0_combout\ & ((\RegAux|TRI_STATE_D~0_combout\) # (\RegAux|data_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(4),
	datab => \AcumuladorA|TRI_STATE~0_combout\,
	datac => \RegAux|TRI_STATE_D~0_combout\,
	datad => \RegAux|data_out\(4),
	combout => \upa|Yupa[4]~11_combout\);

-- Location: LCCOMB_X75_Y36_N2
\upa|Yupa[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[4]~13_combout\ = ((\upa|Yupa[4]~12_combout\ & (\upa|Yupa[4]~11_combout\ & \inst|data[4]~3_combout\))) # (!\upa|Yupa[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[4]~12_combout\,
	datab => \upa|Yupa[7]~3_combout\,
	datac => \upa|Yupa[4]~11_combout\,
	datad => \inst|data[4]~3_combout\,
	combout => \upa|Yupa[4]~13_combout\);

-- Location: LCCOMB_X76_Y37_N10
\RegAux|data_out~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~11_combout\ = (\inst7|inst3|BD~q\ & (\RegAux|data_out\(5))) # (!\inst7|inst3|BD~q\ & ((\upa|Yupa[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(5),
	datac => \inst7|inst3|BD~q\,
	datad => \upa|Yupa[4]~13_combout\,
	combout => \RegAux|data_out~11_combout\);

-- Location: FF_X76_Y37_N11
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
	ena => \inst7|inst3|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(4));

-- Location: LCCOMB_X76_Y37_N18
\RegAux|data_out~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~12_combout\ = (\inst7|inst3|BD~q\ & (\RegAux|data_out\(4))) # (!\inst7|inst3|BD~q\ & ((\upa|Yupa[3]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(4),
	datac => \inst7|inst3|BD~q\,
	datad => \upa|Yupa[3]~16_combout\,
	combout => \RegAux|data_out~12_combout\);

-- Location: FF_X76_Y37_N19
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
	ena => \inst7|inst3|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(3));

-- Location: LCCOMB_X74_Y34_N10
\RegAux|data_out~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~13_combout\ = (\inst7|inst3|BD~q\ & ((\RegAux|data_out\(3)))) # (!\inst7|inst3|BD~q\ & (\upa|Yupa[2]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|BD~q\,
	datac => \upa|Yupa[2]~19_combout\,
	datad => \RegAux|data_out\(3),
	combout => \RegAux|data_out~13_combout\);

-- Location: FF_X74_Y34_N11
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
	ena => \inst7|inst3|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(2));

-- Location: LCCOMB_X75_Y34_N6
\upa|Yupa[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[2]~17_combout\ = (\RegAux|data_out\(2) & ((\AcumuladorA|data_out\(2)) # ((!\AcumuladorA|TRI_STATE~0_combout\)))) # (!\RegAux|data_out\(2) & (\RegAux|TRI_STATE_D~0_combout\ & ((\AcumuladorA|data_out\(2)) # (!\AcumuladorA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(2),
	datab => \AcumuladorA|data_out\(2),
	datac => \RegAux|TRI_STATE_D~0_combout\,
	datad => \AcumuladorA|TRI_STATE~0_combout\,
	combout => \upa|Yupa[2]~17_combout\);

-- Location: LCCOMB_X75_Y34_N0
\upa|Yupa[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[2]~18_combout\ = (\inst7|inst3|nDUPA~q\ & (\upa|Yupa_interno\(2) & ((\AcumuladorB|data_out\(2)) # (!\AcumuladorB|TRI_STATE~0_combout\)))) # (!\inst7|inst3|nDUPA~q\ & ((\AcumuladorB|data_out\(2)) # ((!\AcumuladorB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nDUPA~q\,
	datab => \AcumuladorB|data_out\(2),
	datac => \upa|Yupa_interno\(2),
	datad => \AcumuladorB|TRI_STATE~0_combout\,
	combout => \upa|Yupa[2]~18_combout\);

-- Location: LCCOMB_X76_Y36_N18
\inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\dir|valor_interno\(3)) # ((\dir|valor_interno\(4)) # (\dir|valor_interno\(2) $ (\dir|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(3),
	datab => \dir|valor_interno\(2),
	datac => \dir|valor_interno\(0),
	datad => \dir|valor_interno\(4),
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X76_Y36_N6
\inst|data_out[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data_out[2]~2_combout\ = (!\dir|valor_interno\(6) & (!\dir|valor_interno\(5) & !\dir|valor_interno\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dir|valor_interno\(6),
	datac => \dir|valor_interno\(5),
	datad => \dir|valor_interno\(7),
	combout => \inst|data_out[2]~2_combout\);

-- Location: LCCOMB_X75_Y34_N28
\inst|data[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[2]~4_combout\ = ((!\inst|Mux5~0_combout\ & \inst|data_out[2]~2_combout\)) # (!\inst7|inst3|nAS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nAS~q\,
	datac => \inst|Mux5~0_combout\,
	datad => \inst|data_out[2]~2_combout\,
	combout => \inst|data[2]~4_combout\);

-- Location: LCCOMB_X75_Y34_N18
\upa|Yupa[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[2]~19_combout\ = ((\upa|Yupa[2]~17_combout\ & (\upa|Yupa[2]~18_combout\ & \inst|data[2]~4_combout\))) # (!\upa|Yupa[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[2]~17_combout\,
	datab => \upa|Yupa[2]~18_combout\,
	datac => \upa|Yupa[7]~3_combout\,
	datad => \inst|data[2]~4_combout\,
	combout => \upa|Yupa[2]~19_combout\);

-- Location: FF_X75_Y34_N19
\inst11|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa[2]~19_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(6));

-- Location: LCCOMB_X77_Y35_N8
\inst7|inst2|valor_interno[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst2|valor_interno[5]~19_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[5]~12_combout\ & (\inst7|inst2|valor_interno[4]~18\ $ (GND))) # (!\inst7|inst5|$00000|auto_generated|result_node[5]~12_combout\ & 
-- (!\inst7|inst2|valor_interno[4]~18\ & VCC))
-- \inst7|inst2|valor_interno[5]~20\ = CARRY((\inst7|inst5|$00000|auto_generated|result_node[5]~12_combout\ & !\inst7|inst2|valor_interno[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[5]~12_combout\,
	datad => VCC,
	cin => \inst7|inst2|valor_interno[4]~18\,
	combout => \inst7|inst2|valor_interno[5]~19_combout\,
	cout => \inst7|inst2|valor_interno[5]~20\);

-- Location: LCCOMB_X77_Y35_N10
\inst7|inst2|valor_interno[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst2|valor_interno[6]~21_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[6]~11_combout\ & (!\inst7|inst2|valor_interno[5]~20\)) # (!\inst7|inst5|$00000|auto_generated|result_node[6]~11_combout\ & ((\inst7|inst2|valor_interno[5]~20\) # 
-- (GND)))
-- \inst7|inst2|valor_interno[6]~22\ = CARRY((!\inst7|inst2|valor_interno[5]~20\) # (!\inst7|inst5|$00000|auto_generated|result_node[6]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[6]~11_combout\,
	datad => VCC,
	cin => \inst7|inst2|valor_interno[5]~20\,
	combout => \inst7|inst2|valor_interno[6]~21_combout\,
	cout => \inst7|inst2|valor_interno[6]~22\);

-- Location: FF_X77_Y35_N11
\inst7|inst2|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst2|valor_interno[6]~21_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|valor_interno\(6));

-- Location: LCCOMB_X76_Y35_N2
\inst7|inst5|$00000|auto_generated|result_node[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[6]~11_combout\ = (\inst7|inst1|SELECTOR~2_combout\ & (\inst11|valor_interno\(6) & ((\inst7|inst1|SELECTOR~0_combout\)))) # (!\inst7|inst1|SELECTOR~2_combout\ & ((\inst7|inst2|valor_interno\(6)) # 
-- ((\inst11|valor_interno\(6) & \inst7|inst1|SELECTOR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|SELECTOR~2_combout\,
	datab => \inst11|valor_interno\(6),
	datac => \inst7|inst2|valor_interno\(6),
	datad => \inst7|inst1|SELECTOR~0_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[6]~11_combout\);

-- Location: LCCOMB_X77_Y35_N12
\inst7|inst2|valor_interno[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst2|valor_interno[7]~23_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[7]~10_combout\ & (\inst7|inst2|valor_interno[6]~22\ $ (GND))) # (!\inst7|inst5|$00000|auto_generated|result_node[7]~10_combout\ & 
-- (!\inst7|inst2|valor_interno[6]~22\ & VCC))
-- \inst7|inst2|valor_interno[7]~24\ = CARRY((\inst7|inst5|$00000|auto_generated|result_node[7]~10_combout\ & !\inst7|inst2|valor_interno[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[7]~10_combout\,
	datad => VCC,
	cin => \inst7|inst2|valor_interno[6]~22\,
	combout => \inst7|inst2|valor_interno[7]~23_combout\,
	cout => \inst7|inst2|valor_interno[7]~24\);

-- Location: FF_X77_Y35_N13
\inst7|inst2|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst2|valor_interno[7]~23_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|valor_interno\(7));

-- Location: FF_X74_Y35_N25
\inst11|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa[3]~16_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(7));

-- Location: LCCOMB_X74_Y35_N24
\inst7|inst5|$00000|auto_generated|result_node[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[7]~10_combout\ = (\inst7|inst2|valor_interno\(7) & (((\inst7|inst1|SELECTOR~0_combout\ & \inst11|valor_interno\(7))) # (!\inst7|inst1|SELECTOR~2_combout\))) # (!\inst7|inst2|valor_interno\(7) & 
-- (\inst7|inst1|SELECTOR~0_combout\ & (\inst11|valor_interno\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|valor_interno\(7),
	datab => \inst7|inst1|SELECTOR~0_combout\,
	datac => \inst11|valor_interno\(7),
	datad => \inst7|inst1|SELECTOR~2_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[7]~10_combout\);

-- Location: LCCOMB_X77_Y35_N14
\inst7|inst2|valor_interno[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst2|valor_interno[8]~25_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[8]~9_combout\ & (!\inst7|inst2|valor_interno[7]~24\)) # (!\inst7|inst5|$00000|auto_generated|result_node[8]~9_combout\ & ((\inst7|inst2|valor_interno[7]~24\) # 
-- (GND)))
-- \inst7|inst2|valor_interno[8]~26\ = CARRY((!\inst7|inst2|valor_interno[7]~24\) # (!\inst7|inst5|$00000|auto_generated|result_node[8]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[8]~9_combout\,
	datad => VCC,
	cin => \inst7|inst2|valor_interno[7]~24\,
	combout => \inst7|inst2|valor_interno[8]~25_combout\,
	cout => \inst7|inst2|valor_interno[8]~26\);

-- Location: FF_X77_Y35_N15
\inst7|inst2|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst2|valor_interno[8]~25_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|valor_interno\(8));

-- Location: FF_X76_Y35_N9
\inst11|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa[4]~13_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(8));

-- Location: LCCOMB_X76_Y35_N8
\inst7|inst5|$00000|auto_generated|result_node[8]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[8]~9_combout\ = (\inst7|inst2|valor_interno\(8) & (((\inst7|inst1|SELECTOR~0_combout\ & \inst11|valor_interno\(8))) # (!\inst7|inst1|SELECTOR~2_combout\))) # (!\inst7|inst2|valor_interno\(8) & 
-- (\inst7|inst1|SELECTOR~0_combout\ & (\inst11|valor_interno\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|valor_interno\(8),
	datab => \inst7|inst1|SELECTOR~0_combout\,
	datac => \inst11|valor_interno\(8),
	datad => \inst7|inst1|SELECTOR~2_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[8]~9_combout\);

-- Location: LCCOMB_X77_Y35_N16
\inst7|inst2|valor_interno[9]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst2|valor_interno[9]~27_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[9]~8_combout\ & (\inst7|inst2|valor_interno[8]~26\ $ (GND))) # (!\inst7|inst5|$00000|auto_generated|result_node[9]~8_combout\ & (!\inst7|inst2|valor_interno[8]~26\ 
-- & VCC))
-- \inst7|inst2|valor_interno[9]~28\ = CARRY((\inst7|inst5|$00000|auto_generated|result_node[9]~8_combout\ & !\inst7|inst2|valor_interno[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[9]~8_combout\,
	datad => VCC,
	cin => \inst7|inst2|valor_interno[8]~26\,
	combout => \inst7|inst2|valor_interno[9]~27_combout\,
	cout => \inst7|inst2|valor_interno[9]~28\);

-- Location: FF_X77_Y35_N19
\inst7|inst2|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst2|valor_interno[10]~29_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|valor_interno\(10));

-- Location: FF_X74_Y36_N19
\inst11|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa[6]~7_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(10));

-- Location: LCCOMB_X76_Y35_N24
\inst7|inst5|$00000|auto_generated|result_node[10]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\ = (\inst7|inst2|valor_interno\(10) & (((\inst11|valor_interno\(10) & \inst7|inst1|SELECTOR~0_combout\)) # (!\inst7|inst1|SELECTOR~2_combout\))) # (!\inst7|inst2|valor_interno\(10) & 
-- (((\inst11|valor_interno\(10) & \inst7|inst1|SELECTOR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|valor_interno\(10),
	datab => \inst7|inst1|SELECTOR~2_combout\,
	datac => \inst11|valor_interno\(10),
	datad => \inst7|inst1|SELECTOR~0_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\);

-- Location: LCCOMB_X74_Y35_N10
\inst7|inst|Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal3~4_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\ & \inst7|inst|Equal3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datad => \inst7|inst|Equal3~3_combout\,
	combout => \inst7|inst|Equal3~4_combout\);

-- Location: LCCOMB_X74_Y35_N4
\inst7|inst|data[54]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[54]~10_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & (((\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\) # (!\inst7|inst|Equal0~1_combout\)))) # 
-- (!\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & (!\inst7|inst|Equal0~1_combout\ & ((\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\) # (!\inst7|inst|Equal3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal3~4_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \inst7|inst|Equal0~1_combout\,
	combout => \inst7|inst|data[54]~10_combout\);

-- Location: LCCOMB_X70_Y35_N30
\inst7|inst|data[54]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[54]~21_combout\ = (\inst7|inst|data[54]~10_combout\ & (!\inst7|inst|Equal4~0_combout\ & !\inst7|inst|Equal12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|data[54]~10_combout\,
	datab => \inst7|inst|Equal4~0_combout\,
	datac => \inst7|inst|Equal12~0_combout\,
	combout => \inst7|inst|data[54]~21_combout\);

-- Location: FF_X70_Y35_N31
\inst7|inst3|nDUPA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst|data[54]~21_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|nDUPA~q\);

-- Location: LCCOMB_X75_Y37_N22
\upa|Yupa[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[1]~21_combout\ = (\inst7|inst3|nDUPA~q\ & (\upa|Yupa_interno\(1) & ((\AcumuladorB|data_out\(1)) # (!\AcumuladorB|TRI_STATE~0_combout\)))) # (!\inst7|inst3|nDUPA~q\ & (((\AcumuladorB|data_out\(1)) # (!\AcumuladorB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nDUPA~q\,
	datab => \upa|Yupa_interno\(1),
	datac => \AcumuladorB|data_out\(1),
	datad => \AcumuladorB|TRI_STATE~0_combout\,
	combout => \upa|Yupa[1]~21_combout\);

-- Location: LCCOMB_X76_Y37_N24
\RegAux|D[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|D[1]~1_combout\ = (\inst7|inst3|RA\(0)) # ((\inst7|inst3|BD~q\) # ((\RegAux|data_out\(1)) # (!\inst7|inst3|nERA0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|RA\(0),
	datab => \inst7|inst3|BD~q\,
	datac => \inst7|inst3|nERA0~q\,
	datad => \RegAux|data_out\(1),
	combout => \RegAux|D[1]~1_combout\);

-- Location: LCCOMB_X75_Y37_N30
\AcumuladorA|A[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|A[1]~1_combout\ = (\inst7|inst3|nWA~q\) # ((\AcumuladorA|data_out\(1)) # ((\inst7|inst3|EA\(1)) # (!\inst7|inst3|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nWA~q\,
	datab => \AcumuladorA|data_out\(1),
	datac => \inst7|inst3|EA\(1),
	datad => \inst7|inst3|EA\(0),
	combout => \AcumuladorA|A[1]~1_combout\);

-- Location: LCCOMB_X76_Y36_N0
\inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\dir|valor_interno\(3)) # ((\dir|valor_interno\(1) & ((\dir|valor_interno\(0)) # (\dir|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(1),
	datab => \dir|valor_interno\(0),
	datac => \dir|valor_interno\(2),
	datad => \dir|valor_interno\(3),
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X75_Y37_N16
\upa|Yupa[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[1]~20_combout\ = (\AcumuladorA|A[1]~1_combout\ & (((\inst|data_out[0]~0_combout\ & !\inst|Mux6~0_combout\)) # (!\inst7|inst3|nAS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|A[1]~1_combout\,
	datab => \inst7|inst3|nAS~q\,
	datac => \inst|data_out[0]~0_combout\,
	datad => \inst|Mux6~0_combout\,
	combout => \upa|Yupa[1]~20_combout\);

-- Location: LCCOMB_X75_Y37_N0
\upa|Yupa[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[1]~22_combout\ = ((\upa|Yupa[1]~21_combout\ & (\RegAux|D[1]~1_combout\ & \upa|Yupa[1]~20_combout\))) # (!\upa|Yupa[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[1]~21_combout\,
	datab => \upa|Yupa[7]~3_combout\,
	datac => \RegAux|D[1]~1_combout\,
	datad => \upa|Yupa[1]~20_combout\,
	combout => \upa|Yupa[1]~22_combout\);

-- Location: FF_X75_Y37_N1
\inst11|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa[1]~22_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(5));

-- Location: FF_X77_Y35_N9
\inst7|inst2|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst2|valor_interno[5]~19_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|valor_interno\(5));

-- Location: LCCOMB_X76_Y35_N28
\inst7|inst5|$00000|auto_generated|result_node[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[5]~12_combout\ = (\inst11|valor_interno\(5) & ((\inst7|inst1|SELECTOR~0_combout\) # ((!\inst7|inst1|SELECTOR~2_combout\ & \inst7|inst2|valor_interno\(5))))) # (!\inst11|valor_interno\(5) & 
-- (!\inst7|inst1|SELECTOR~2_combout\ & (\inst7|inst2|valor_interno\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|valor_interno\(5),
	datab => \inst7|inst1|SELECTOR~2_combout\,
	datac => \inst7|inst2|valor_interno\(5),
	datad => \inst7|inst1|SELECTOR~0_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[5]~12_combout\);

-- Location: LCCOMB_X76_Y35_N14
\inst7|inst|Equal14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal14~0_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[11]~6_combout\ & \inst7|inst5|$00000|auto_generated|result_node[8]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[8]~9_combout\,
	combout => \inst7|inst|Equal14~0_combout\);

-- Location: LCCOMB_X72_Y35_N12
\inst7|inst|Equal14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal14~1_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[5]~12_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[3]~15_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[7]~10_combout\ & 
-- \inst7|inst|Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[5]~12_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[3]~15_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[7]~10_combout\,
	datad => \inst7|inst|Equal14~0_combout\,
	combout => \inst7|inst|Equal14~1_combout\);

-- Location: LCCOMB_X76_Y35_N10
\inst7|inst|Equal14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal14~2_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[6]~11_combout\ & !\inst7|inst5|$00000|auto_generated|result_node[4]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst5|$00000|auto_generated|result_node[6]~11_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[4]~13_combout\,
	combout => \inst7|inst|Equal14~2_combout\);

-- Location: LCCOMB_X72_Y35_N16
\inst7|inst|Equal14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal14~3_combout\ = (\inst7|inst|Equal14~1_combout\ & (\inst7|inst|Equal14~2_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\ & \inst7|inst5|$00000|auto_generated|result_node[9]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal14~1_combout\,
	datab => \inst7|inst|Equal14~2_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[9]~8_combout\,
	combout => \inst7|inst|Equal14~3_combout\);

-- Location: LCCOMB_X75_Y35_N24
\inst7|inst|Equal15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal15~1_combout\ = (\inst7|inst|Equal14~3_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\ & 
-- !\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal14~3_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	combout => \inst7|inst|Equal15~1_combout\);

-- Location: FF_X75_Y35_N25
\inst7|inst3|BD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst|Equal15~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|BD~q\);

-- Location: LCCOMB_X76_Y37_N12
\RegAux|data_out~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~10_combout\ = (\inst7|inst3|BD~q\ & ((\RegAux|data_out\(6)))) # (!\inst7|inst3|BD~q\ & (\upa|Yupa[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|BD~q\,
	datac => \upa|Yupa[5]~10_combout\,
	datad => \RegAux|data_out\(6),
	combout => \RegAux|data_out~10_combout\);

-- Location: FF_X76_Y37_N13
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
	ena => \inst7|inst3|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(5));

-- Location: LCCOMB_X75_Y38_N12
\upa|Yupa[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[5]~8_combout\ = (\RegAux|data_out\(5) & ((\AcumuladorA|data_out\(5)) # ((!\AcumuladorA|TRI_STATE~0_combout\)))) # (!\RegAux|data_out\(5) & (\RegAux|TRI_STATE_D~0_combout\ & ((\AcumuladorA|data_out\(5)) # (!\AcumuladorA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(5),
	datab => \AcumuladorA|data_out\(5),
	datac => \RegAux|TRI_STATE_D~0_combout\,
	datad => \AcumuladorA|TRI_STATE~0_combout\,
	combout => \upa|Yupa[5]~8_combout\);

-- Location: LCCOMB_X75_Y38_N26
\upa|Yupa[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[5]~9_combout\ = (\inst7|inst3|nDUPA~q\ & (\upa|Yupa_interno\(5) & ((\AcumuladorB|data_out\(5)) # (!\AcumuladorB|TRI_STATE~0_combout\)))) # (!\inst7|inst3|nDUPA~q\ & (((\AcumuladorB|data_out\(5)) # (!\AcumuladorB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nDUPA~q\,
	datab => \upa|Yupa_interno\(5),
	datac => \AcumuladorB|TRI_STATE~0_combout\,
	datad => \AcumuladorB|data_out\(5),
	combout => \upa|Yupa[5]~9_combout\);

-- Location: LCCOMB_X76_Y36_N10
\inst|data[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[5]~0_combout\ = (!\dir|valor_interno\(3) & (\dir|valor_interno\(2) & \dir|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(3),
	datab => \dir|valor_interno\(2),
	datad => \dir|valor_interno\(0),
	combout => \inst|data[5]~0_combout\);

-- Location: LCCOMB_X75_Y38_N18
\inst|data[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[5]~1_combout\ = ((!\dir|valor_interno\(1) & (\inst|data[5]~0_combout\ & \inst|data_out[0]~0_combout\))) # (!\inst7|inst3|nAS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|nAS~q\,
	datab => \dir|valor_interno\(1),
	datac => \inst|data[5]~0_combout\,
	datad => \inst|data_out[0]~0_combout\,
	combout => \inst|data[5]~1_combout\);

-- Location: LCCOMB_X75_Y38_N16
\upa|Yupa[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[5]~10_combout\ = ((\upa|Yupa[5]~8_combout\ & (\upa|Yupa[5]~9_combout\ & \inst|data[5]~1_combout\))) # (!\upa|Yupa[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[5]~8_combout\,
	datab => \upa|Yupa[5]~9_combout\,
	datac => \upa|Yupa[7]~3_combout\,
	datad => \inst|data[5]~1_combout\,
	combout => \upa|Yupa[5]~10_combout\);

-- Location: FF_X76_Y38_N1
\inst11|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa[5]~10_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(9));

-- Location: FF_X77_Y35_N17
\inst7|inst2|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst2|valor_interno[9]~27_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|valor_interno\(9));

-- Location: LCCOMB_X76_Y35_N30
\inst7|inst5|$00000|auto_generated|result_node[9]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[9]~8_combout\ = (\inst7|inst1|SELECTOR~2_combout\ & (\inst7|inst1|SELECTOR~0_combout\ & (\inst11|valor_interno\(9)))) # (!\inst7|inst1|SELECTOR~2_combout\ & ((\inst7|inst2|valor_interno\(9)) # 
-- ((\inst7|inst1|SELECTOR~0_combout\ & \inst11|valor_interno\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|SELECTOR~2_combout\,
	datab => \inst7|inst1|SELECTOR~0_combout\,
	datac => \inst11|valor_interno\(9),
	datad => \inst7|inst2|valor_interno\(9),
	combout => \inst7|inst5|$00000|auto_generated|result_node[9]~8_combout\);

-- Location: LCCOMB_X76_Y35_N0
\inst7|inst|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal3~1_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[3]~15_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[9]~8_combout\ & 
-- !\inst7|inst5|$00000|auto_generated|result_node[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[3]~15_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[9]~8_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[4]~13_combout\,
	combout => \inst7|inst|Equal3~1_combout\);

-- Location: LCCOMB_X77_Y35_N26
\inst7|inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal0~0_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[11]~6_combout\ & !\inst7|inst5|$00000|auto_generated|result_node[5]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[5]~12_combout\,
	combout => \inst7|inst|Equal0~0_combout\);

-- Location: LCCOMB_X76_Y35_N26
\inst7|inst|Equal11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal11~2_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[6]~11_combout\ & !\inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[6]~11_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	combout => \inst7|inst|Equal11~2_combout\);

-- Location: LCCOMB_X74_Y35_N6
\inst7|inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal0~1_combout\ = (\inst7|inst|Equal3~1_combout\ & (\inst7|inst|Equal3~0_combout\ & (\inst7|inst|Equal0~0_combout\ & \inst7|inst|Equal11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal3~1_combout\,
	datab => \inst7|inst|Equal3~0_combout\,
	datac => \inst7|inst|Equal0~0_combout\,
	datad => \inst7|inst|Equal11~2_combout\,
	combout => \inst7|inst|Equal0~1_combout\);

-- Location: LCCOMB_X71_Y35_N10
\inst7|inst|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal5~0_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\ & 
-- \inst7|inst|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datad => \inst7|inst|Equal3~3_combout\,
	combout => \inst7|inst|Equal5~0_combout\);

-- Location: LCCOMB_X74_Y35_N20
\inst7|inst|data[87]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[87]~4_combout\ = ((\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\ & \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\)) # (!\inst7|inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datad => \inst7|inst|Equal0~1_combout\,
	combout => \inst7|inst|data[87]~4_combout\);

-- Location: LCCOMB_X72_Y35_N20
\inst7|inst|data[87]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[87]~6_combout\ = (\inst7|inst|data[87]~4_combout\ & (\inst7|inst|Equal5~0_combout\ $ (((\inst7|inst|Equal18~0_combout\) # (!\inst7|inst|data~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal5~0_combout\,
	datab => \inst7|inst|Equal18~0_combout\,
	datac => \inst7|inst|data~5_combout\,
	datad => \inst7|inst|data[87]~4_combout\,
	combout => \inst7|inst|data[87]~6_combout\);

-- Location: LCCOMB_X75_Y35_N18
\inst7|inst|data[87]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[87]~7_combout\ = (\inst7|inst|data[87]~6_combout\) # ((\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\ & \inst7|inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst7|inst|Equal0~1_combout\,
	datad => \inst7|inst|data[87]~6_combout\,
	combout => \inst7|inst|data[87]~7_combout\);

-- Location: FF_X75_Y35_N19
\inst7|inst3|instruccion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst|data[87]~7_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|instruccion\(1));

-- Location: LCCOMB_X77_Y35_N24
\inst7|inst8[11]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst8[11]~0_combout\ = (\inst7|inst3|instruccion\(0)) # (\inst7|inst3|instruccion\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|instruccion\(0),
	datad => \inst7|inst3|instruccion\(1),
	combout => \inst7|inst8[11]~0_combout\);

-- Location: LCCOMB_X75_Y35_N6
\inst7|inst|data~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data~20_combout\ = ((!\inst7|inst|Equal1~0_combout\ & (\inst7|inst|data[86]~16_combout\ & \inst7|inst|data~19_combout\))) # (!\inst7|inst|data~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Equal1~0_combout\,
	datab => \inst7|inst|data~42_combout\,
	datac => \inst7|inst|data[86]~16_combout\,
	datad => \inst7|inst|data~19_combout\,
	combout => \inst7|inst|data~20_combout\);

-- Location: FF_X75_Y35_N7
\inst7|inst3|prueba[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst|data~20_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|prueba\(4));

-- Location: LCCOMB_X70_Y35_N8
\inst12[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[0]~0_combout\ = (!\inst7|inst3|instruccion\(1) & ((\inst7|inst3|prueba\(4)) # (!\inst7|inst3|instruccion\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|prueba\(4),
	datac => \inst7|inst3|instruccion\(0),
	datad => \inst7|inst3|instruccion\(1),
	combout => \inst12[0]~0_combout\);

-- Location: LCCOMB_X74_Y35_N14
\inst7|inst5|$00000|auto_generated|result_node[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\ = (\inst7|inst1|SELECTOR~2_combout\ & (((\inst12[0]~0_combout\) # (!\inst7|inst8[11]~0_combout\)))) # (!\inst7|inst1|SELECTOR~2_combout\ & (\inst7|inst2|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|valor_interno\(0),
	datab => \inst7|inst8[11]~0_combout\,
	datac => \inst12[0]~0_combout\,
	datad => \inst7|inst1|SELECTOR~2_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\);

-- Location: LCCOMB_X75_Y35_N30
\inst7|inst3|EB[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst3|EB[0]~0_combout\ = ((\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\) # (!\inst7|inst|Equal3~3_combout\)) # (!\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datad => \inst7|inst|Equal3~3_combout\,
	combout => \inst7|inst3|EB[0]~0_combout\);

-- Location: LCCOMB_X72_Y35_N28
\inst7|inst|data[69]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[69]~28_combout\ = (\inst7|inst3|EB[0]~0_combout\ & (\inst7|inst|Equal11~4_combout\ & \inst7|inst|data[68]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EB[0]~0_combout\,
	datac => \inst7|inst|Equal11~4_combout\,
	datad => \inst7|inst|data[68]~12_combout\,
	combout => \inst7|inst|data[69]~28_combout\);

-- Location: FF_X72_Y35_N29
\inst7|inst3|EA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst|data[69]~28_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|EA\(1));

-- Location: LCCOMB_X75_Y34_N8
\AcumuladorA|C[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[7]~0_combout\ = (((\AcumuladorA|data_out\(7)) # (\inst7|inst3|nWA~q\)) # (!\inst7|inst3|EA\(0))) # (!\inst7|inst3|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|EA\(1),
	datab => \inst7|inst3|EA\(0),
	datac => \AcumuladorA|data_out\(7),
	datad => \inst7|inst3|nWA~q\,
	combout => \AcumuladorA|C[7]~0_combout\);

-- Location: FF_X75_Y35_N11
\upa|Banderas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Add0~16_combout\,
	sload => VCC,
	ena => \inst7|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Banderas\(2));

-- Location: FF_X72_Y35_N25
\inst7|inst3|prueba[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst7|inst|data[87]~6_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|prueba\(0));

-- Location: LCCOMB_X76_Y35_N4
\inst7|inst1|SELECTOR~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst1|SELECTOR~1_combout\ = ((\inst7|inst3|prueba\(4) & (\upa|Banderas\(2))) # (!\inst7|inst3|prueba\(4) & ((\flags|tCC|valor_interno~q\)))) # (!\inst7|inst3|prueba\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Banderas\(2),
	datab => \inst7|inst3|prueba\(4),
	datac => \flags|tCC|valor_interno~q\,
	datad => \inst7|inst3|prueba\(0),
	combout => \inst7|inst1|SELECTOR~1_combout\);

-- Location: LCCOMB_X76_Y35_N6
\inst7|inst5|$00000|auto_generated|result_node[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\ = (\inst7|inst2|valor_interno\(2) & ((\inst7|inst3|instruccion\(0) & (!\inst7|inst1|SELECTOR~1_combout\)) # (!\inst7|inst3|instruccion\(0) & ((!\inst7|inst3|instruccion\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|instruccion\(0),
	datab => \inst7|inst1|SELECTOR~1_combout\,
	datac => \inst7|inst2|valor_interno\(2),
	datad => \inst7|inst3|instruccion\(1),
	combout => \inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\);

-- Location: LCCOMB_X72_Y35_N2
\inst7|inst|Equal18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|Equal18~0_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\ & (\inst7|inst|Equal14~3_combout\ & 
-- !\inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[2]~16_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~17_combout\,
	datac => \inst7|inst|Equal14~3_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	combout => \inst7|inst|Equal18~0_combout\);

-- Location: LCCOMB_X72_Y35_N30
\inst7|inst|data[86]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[86]~8_combout\ = (\inst7|inst|Equal18~0_combout\) # ((\inst7|inst|Equal5~0_combout\) # (!\inst7|inst|data~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|Equal18~0_combout\,
	datac => \inst7|inst|data~5_combout\,
	datad => \inst7|inst|Equal5~0_combout\,
	combout => \inst7|inst|data[86]~8_combout\);

-- Location: LCCOMB_X75_Y35_N16
\inst7|inst|data[86]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst|data[86]~17_combout\ = (\inst7|inst|data[86]~8_combout\) # (((\inst7|inst|data[86]~16_combout\ & \inst7|inst|data[86]~13_combout\)) # (!\inst7|inst|data~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|data[86]~8_combout\,
	datab => \inst7|inst|data~42_combout\,
	datac => \inst7|inst|data[86]~16_combout\,
	datad => \inst7|inst|data[86]~13_combout\,
	combout => \inst7|inst|data[86]~17_combout\);

-- Location: FF_X75_Y35_N17
\inst7|inst3|instruccion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst|data[86]~17_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|instruccion\(0));

-- Location: LCCOMB_X70_Y35_N28
\inst7|inst8[11]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst8[11]~12_combout\ = (!\inst7|inst3|instruccion\(0) & ((\inst11|valor_interno\(11)) # (!\inst7|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|instruccion\(0),
	datac => \inst11|valor_interno\(11),
	datad => \inst7|inst3|instruccion\(1),
	combout => \inst7|inst8[11]~12_combout\);

-- Location: LCCOMB_X70_Y35_N26
\inst7|inst8[10]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst8[10]~13_combout\ = (!\inst7|inst3|instruccion\(0) & ((\inst11|valor_interno\(10)) # (!\inst7|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|valor_interno\(10),
	datac => \inst7|inst3|instruccion\(0),
	datad => \inst7|inst3|instruccion\(1),
	combout => \inst7|inst8[10]~13_combout\);

-- Location: LCCOMB_X70_Y35_N12
\inst7|inst8[9]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst8[9]~14_combout\ = (!\inst7|inst3|instruccion\(0) & ((\inst11|valor_interno\(9)) # (!\inst7|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|instruccion\(0),
	datac => \inst11|valor_interno\(9),
	datad => \inst7|inst3|instruccion\(1),
	combout => \inst7|inst8[9]~14_combout\);

-- Location: LCCOMB_X70_Y35_N2
\inst7|inst8[8]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst8[8]~15_combout\ = (!\inst7|inst3|instruccion\(0) & ((\inst11|valor_interno\(8)) # (!\inst7|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|instruccion\(0),
	datac => \inst11|valor_interno\(8),
	datad => \inst7|inst3|instruccion\(1),
	combout => \inst7|inst8[8]~15_combout\);

-- Location: LCCOMB_X70_Y35_N24
\inst7|inst8[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst8[7]~16_combout\ = (!\inst7|inst3|instruccion\(0) & ((\inst11|valor_interno\(7)) # (!\inst7|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|instruccion\(1),
	datac => \inst7|inst3|instruccion\(0),
	datad => \inst11|valor_interno\(7),
	combout => \inst7|inst8[7]~16_combout\);

-- Location: LCCOMB_X70_Y35_N6
\inst7|inst8[6]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst8[6]~17_combout\ = (!\inst7|inst3|instruccion\(0) & ((\inst11|valor_interno\(6)) # (!\inst7|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|valor_interno\(6),
	datac => \inst7|inst3|instruccion\(0),
	datad => \inst7|inst3|instruccion\(1),
	combout => \inst7|inst8[6]~17_combout\);

-- Location: LCCOMB_X70_Y35_N4
\inst7|inst8[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst8[5]~18_combout\ = (!\inst7|inst3|instruccion\(0) & ((\inst11|valor_interno\(5)) # (!\inst7|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|valor_interno\(5),
	datac => \inst7|inst3|instruccion\(0),
	datad => \inst7|inst3|instruccion\(1),
	combout => \inst7|inst8[5]~18_combout\);

-- Location: LCCOMB_X77_Y35_N28
\inst7|inst8[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst8[4]~19_combout\ = (!\inst7|inst3|instruccion\(0) & ((\inst11|valor_interno\(4)) # (!\inst7|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|instruccion\(0),
	datab => \inst11|valor_interno\(4),
	datad => \inst7|inst3|instruccion\(1),
	combout => \inst7|inst8[4]~19_combout\);

-- Location: LCCOMB_X76_Y37_N4
\RegAux|WideOr0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~3_combout\ = (\RegAux|data_out\(0)) # ((\RegAux|data_out\(1)) # ((\RegAux|data_out\(2)) # (\RegAux|data_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(0),
	datab => \RegAux|data_out\(1),
	datac => \RegAux|data_out\(2),
	datad => \RegAux|data_out\(3),
	combout => \RegAux|WideOr0~3_combout\);

-- Location: LCCOMB_X74_Y37_N24
\RegAux|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~0_combout\ = (\RegAux|data_out\(15)) # ((\RegAux|data_out\(14)) # ((\RegAux|data_out\(13)) # (\RegAux|data_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(15),
	datab => \RegAux|data_out\(14),
	datac => \RegAux|data_out\(13),
	datad => \RegAux|data_out\(12),
	combout => \RegAux|WideOr0~0_combout\);

-- Location: LCCOMB_X74_Y37_N12
\RegAux|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~1_combout\ = (\RegAux|data_out\(9)) # ((\RegAux|data_out\(8)) # ((\RegAux|data_out\(11)) # (\RegAux|data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(9),
	datab => \RegAux|data_out\(8),
	datac => \RegAux|data_out\(11),
	datad => \RegAux|data_out\(10),
	combout => \RegAux|WideOr0~1_combout\);

-- Location: LCCOMB_X76_Y37_N16
\RegAux|WideOr0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~2_combout\ = (\RegAux|data_out\(5)) # ((\RegAux|data_out\(6)) # ((\RegAux|data_out\(7)) # (\RegAux|data_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(5),
	datab => \RegAux|data_out\(6),
	datac => \RegAux|data_out\(7),
	datad => \RegAux|data_out\(4),
	combout => \RegAux|WideOr0~2_combout\);

-- Location: LCCOMB_X75_Y37_N14
\RegAux|WideOr0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~4_combout\ = (\RegAux|WideOr0~3_combout\) # ((\RegAux|WideOr0~0_combout\) # ((\RegAux|WideOr0~1_combout\) # (\RegAux|WideOr0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|WideOr0~3_combout\,
	datab => \RegAux|WideOr0~0_combout\,
	datac => \RegAux|WideOr0~1_combout\,
	datad => \RegAux|WideOr0~2_combout\,
	combout => \RegAux|WideOr0~4_combout\);

-- Location: FF_X76_Y34_N17
\upa|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Add0~14_combout\,
	sload => VCC,
	ena => \inst7|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(6));

-- Location: FF_X76_Y34_N19
\upa|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Add0~12_combout\,
	sload => VCC,
	ena => \inst7|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(5));

-- Location: FF_X76_Y34_N9
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
	ena => \inst7|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(4));

-- Location: LCCOMB_X76_Y34_N28
\upa|Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[3]~feeder_combout\ = \upa|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Add0~8_combout\,
	combout => \upa|Q[3]~feeder_combout\);

-- Location: FF_X76_Y34_N29
\upa|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[3]~feeder_combout\,
	ena => \inst7|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(3));

-- Location: LCCOMB_X76_Y34_N6
\upa|Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[2]~feeder_combout\ = \upa|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \upa|Add0~6_combout\,
	combout => \upa|Q[2]~feeder_combout\);

-- Location: FF_X76_Y34_N7
\upa|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[2]~feeder_combout\,
	ena => \inst7|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(2));

-- Location: LCCOMB_X76_Y34_N4
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

-- Location: FF_X76_Y34_N5
\upa|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[1]~feeder_combout\,
	ena => \inst7|inst3|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(1));

-- Location: LCCOMB_X74_Y38_N28
\RegPC|data_out[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[15]~0_combout\ = (\inst7|inst3|PC\(2) & ((\upa|Yupa2[7]~5_combout\))) # (!\inst7|inst3|PC\(2) & (\RegPC|data_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|PC\(2),
	datac => \RegPC|data_out\(15),
	datad => \upa|Yupa2[7]~5_combout\,
	combout => \RegPC|data_out[15]~0_combout\);

-- Location: LCCOMB_X74_Y38_N26
\RegPC|data_out[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[14]~1_combout\ = (\inst7|inst3|PC\(2) & ((\upa|Yupa2[6]~8_combout\))) # (!\inst7|inst3|PC\(2) & (\RegPC|data_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|PC\(2),
	datac => \RegPC|data_out\(14),
	datad => \upa|Yupa2[6]~8_combout\,
	combout => \RegPC|data_out[14]~1_combout\);

-- Location: LCCOMB_X74_Y38_N8
\RegPC|data_out[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[13]~2_combout\ = (\inst7|inst3|PC\(2) & ((\upa|Yupa2[5]~11_combout\))) # (!\inst7|inst3|PC\(2) & (\RegPC|data_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|PC\(2),
	datac => \RegPC|data_out\(13),
	datad => \upa|Yupa2[5]~11_combout\,
	combout => \RegPC|data_out[13]~2_combout\);

-- Location: LCCOMB_X74_Y38_N14
\RegPC|data_out[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[12]~3_combout\ = (\inst7|inst3|PC\(2) & ((\upa|Yupa2[4]~14_combout\))) # (!\inst7|inst3|PC\(2) & (\RegPC|data_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|PC\(2),
	datac => \RegPC|data_out\(12),
	datad => \upa|Yupa2[4]~14_combout\,
	combout => \RegPC|data_out[12]~3_combout\);

-- Location: LCCOMB_X74_Y38_N16
\RegPC|data_out[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[11]~4_combout\ = (\inst7|inst3|PC\(2) & ((\upa|Yupa2[3]~17_combout\))) # (!\inst7|inst3|PC\(2) & (\RegPC|data_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|PC\(2),
	datac => \RegPC|data_out\(11),
	datad => \upa|Yupa2[3]~17_combout\,
	combout => \RegPC|data_out[11]~4_combout\);

-- Location: LCCOMB_X74_Y38_N10
\RegPC|data_out[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[10]~5_combout\ = (\inst7|inst3|PC\(2) & ((\upa|Yupa2[2]~20_combout\))) # (!\inst7|inst3|PC\(2) & (\RegPC|data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|PC\(2),
	datac => \RegPC|data_out\(10),
	datad => \upa|Yupa2[2]~20_combout\,
	combout => \RegPC|data_out[10]~5_combout\);

-- Location: LCCOMB_X76_Y37_N0
\RegPC|data_out[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[9]~6_combout\ = (\inst7|inst3|PC\(2) & (\upa|Yupa2[1]~23_combout\)) # (!\inst7|inst3|PC\(2) & ((\RegPC|data_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|PC\(2),
	datab => \upa|Yupa2[1]~23_combout\,
	datac => \RegPC|data_out\(9),
	combout => \RegPC|data_out[9]~6_combout\);

-- Location: LCCOMB_X74_Y38_N24
\RegPC|data_out[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out[8]~7_combout\ = (\inst7|inst3|PC\(2) & ((\upa|Yupa2[0]~26_combout\))) # (!\inst7|inst3|PC\(2) & (\RegPC|data_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|PC\(2),
	datac => \RegPC|data_out\(8),
	datad => \upa|Yupa2[0]~26_combout\,
	combout => \RegPC|data_out[8]~7_combout\);

-- Location: LCCOMB_X76_Y38_N16
\RegPC|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~32_combout\ = (\RegPC|data_out\(8) & (\RegPC|Add0~31\ $ (GND))) # (!\RegPC|data_out\(8) & (!\RegPC|Add0~31\ & VCC))
-- \RegPC|Add0~33\ = CARRY((\RegPC|data_out\(8) & !\RegPC|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(8),
	datad => VCC,
	cin => \RegPC|Add0~31\,
	combout => \RegPC|Add0~32_combout\,
	cout => \RegPC|Add0~33\);

-- Location: LCCOMB_X74_Y38_N18
\RegPC|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Equal0~0_combout\ = (!\inst7|inst3|PC\(2) & \inst7|inst3|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|PC\(2),
	datac => \inst7|inst3|PC\(0),
	combout => \RegPC|Equal0~0_combout\);

-- Location: FF_X74_Y38_N25
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

-- Location: LCCOMB_X76_Y38_N18
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

-- Location: FF_X76_Y37_N1
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

-- Location: LCCOMB_X76_Y38_N20
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

-- Location: FF_X74_Y38_N11
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

-- Location: LCCOMB_X76_Y38_N22
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

-- Location: FF_X74_Y38_N17
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

-- Location: LCCOMB_X76_Y38_N24
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

-- Location: FF_X74_Y38_N15
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

-- Location: LCCOMB_X76_Y38_N26
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

-- Location: FF_X74_Y38_N9
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

-- Location: LCCOMB_X76_Y38_N28
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

-- Location: FF_X74_Y38_N27
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

-- Location: LCCOMB_X76_Y38_N30
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

-- Location: FF_X74_Y38_N29
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

-- Location: IOIBUF_X78_Y23_N1
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

-- Location: IOIBUF_X74_Y54_N15
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


