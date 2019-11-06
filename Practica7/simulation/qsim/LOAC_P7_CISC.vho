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

-- DATE "11/05/2019 21:24:38"

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
	selector : OUT std_logic;
	muxentra : OUT std_logic;
	vf : OUT std_logic;
	A : OUT std_logic_vector(7 DOWNTO 0);
	B : OUT std_logic_vector(7 DOWNTO 0);
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
	prueba : OUT std_logic_vector(4 DOWNTO 0);
	regInstr : OUT std_logic_vector(11 DOWNTO 0)
	);
END LOAC_P7_CISC;

-- Design Ports Information
-- Z	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRQn	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XIRQn	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxentra	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vf	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[11]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[10]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[9]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[8]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[7]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[6]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[5]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[4]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[3]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[2]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[1]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[0]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[6]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[1]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[6]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[5]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[3]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[2]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[6]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[4]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[3]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[1]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMA[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[7]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[5]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[4]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[2]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugACUMB[0]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[15]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[14]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[13]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[12]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[11]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[10]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[9]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[8]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[7]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[6]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[5]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[4]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[3]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[2]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugAP[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[15]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[14]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[13]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[12]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[11]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[10]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[9]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[7]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[6]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[5]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[4]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[3]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIX[0]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[15]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[14]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[13]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[12]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[11]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[10]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[9]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[8]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[7]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[6]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[5]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[4]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[3]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugIY[0]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[15]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[14]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[13]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[12]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[11]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[10]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[9]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[8]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[7]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[6]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[4]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[3]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[2]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[1]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugPC[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[15]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[14]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[13]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[12]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[11]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[10]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[9]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[8]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[7]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[4]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[3]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[2]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugRA[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prueba[4]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prueba[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prueba[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prueba[1]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prueba[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[11]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[10]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[9]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[8]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[6]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[4]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[2]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regInstr[0]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_selector : std_logic;
SIGNAL ww_muxentra : std_logic;
SIGNAL ww_vf : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
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
SIGNAL ww_prueba : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_regInstr : std_logic_vector(11 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst30|inst3|nCRI~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst30|inst3|nCBD~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IRQn~input_o\ : std_logic;
SIGNAL \XIRQn~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \A[7]~output_o\ : std_logic;
SIGNAL \A[6]~output_o\ : std_logic;
SIGNAL \A[5]~output_o\ : std_logic;
SIGNAL \A[4]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \B[7]~output_o\ : std_logic;
SIGNAL \B[6]~output_o\ : std_logic;
SIGNAL \B[5]~output_o\ : std_logic;
SIGNAL \B[4]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
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
SIGNAL \selector~output_o\ : std_logic;
SIGNAL \muxentra~output_o\ : std_logic;
SIGNAL \vf~output_o\ : std_logic;
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
SIGNAL \prueba[4]~output_o\ : std_logic;
SIGNAL \prueba[3]~output_o\ : std_logic;
SIGNAL \prueba[2]~output_o\ : std_logic;
SIGNAL \prueba[1]~output_o\ : std_logic;
SIGNAL \prueba[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst30|inst1|SELECTOR~2_combout\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[0]~33_combout\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[5]~20\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[6]~21_combout\ : std_logic;
SIGNAL \inst30|inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst30|inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst30|inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst30|inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst30|inst|Equal24~4_combout\ : std_logic;
SIGNAL \inst30|inst|Equal21~1_combout\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[1]~11_combout\ : std_logic;
SIGNAL \inst30|inst|Equal24~5_combout\ : std_logic;
SIGNAL \inst30|inst|Equal21~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal24~7_combout\ : std_logic;
SIGNAL \inst12[1]~1_combout\ : std_logic;
SIGNAL \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst30|inst|Equal10~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal23~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst30|inst|Equal24~6_combout\ : std_logic;
SIGNAL \inst30|inst|data[84]~40_combout\ : std_logic;
SIGNAL \inst30|inst|Equal43~1_combout\ : std_logic;
SIGNAL \inst30|inst|Equal44~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal20~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal28~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal3~2_combout\ : std_logic;
SIGNAL \inst30|inst|Equal4~3_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[2]~2_combout\ : std_logic;
SIGNAL \inst30|inst|Equal18~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal19~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal3~4_combout\ : std_logic;
SIGNAL \inst30|inst|Equal3~5_combout\ : std_logic;
SIGNAL \inst30|inst|Equal7~1_combout\ : std_logic;
SIGNAL \inst30|inst|data[87]~20_combout\ : std_logic;
SIGNAL \inst30|inst3|nCBD~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal18~1_combout\ : std_logic;
SIGNAL \inst30|inst|data[86]~21_combout\ : std_logic;
SIGNAL \inst30|inst|Equal20~1_combout\ : std_logic;
SIGNAL \inst30|inst|Equal14~0_combout\ : std_logic;
SIGNAL \inst30|inst|data[92]~24_combout\ : std_logic;
SIGNAL \inst30|inst|Equal11~0_combout\ : std_logic;
SIGNAL \inst30|inst|data[92]~25_combout\ : std_logic;
SIGNAL \inst30|inst|data[92]~26_combout\ : std_logic;
SIGNAL \inst30|inst|data[92]~27_combout\ : std_logic;
SIGNAL \inst30|inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst9|Equal7~10_combout\ : std_logic;
SIGNAL \inst30|inst|Equal22~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst30|inst|data[87]~22_combout\ : std_logic;
SIGNAL \inst30|inst|Equal21~2_combout\ : std_logic;
SIGNAL \inst30|inst|data[92]~23_combout\ : std_logic;
SIGNAL \inst30|inst|data[92]~28_combout\ : std_logic;
SIGNAL \inst30|inst|Equal29~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal41~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal42~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal31~1_combout\ : std_logic;
SIGNAL \inst30|inst|Equal39~0_combout\ : std_logic;
SIGNAL \inst30|inst|data[42]~30_combout\ : std_logic;
SIGNAL \inst30|inst|Equal36~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal33~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal2~1_combout\ : std_logic;
SIGNAL \inst30|inst|Equal37~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal38~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal38~1_combout\ : std_logic;
SIGNAL \inst30|inst3|EA[1]~3_combout\ : std_logic;
SIGNAL \inst30|inst|Equal31~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal32~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal40~0_combout\ : std_logic;
SIGNAL \inst30|inst|data[42]~29_combout\ : std_logic;
SIGNAL \inst30|inst|Equal35~2_combout\ : std_logic;
SIGNAL \inst30|inst|Equal32~1_combout\ : std_logic;
SIGNAL \inst30|inst|Equal33~1_combout\ : std_logic;
SIGNAL \inst30|inst|Equal30~0_combout\ : std_logic;
SIGNAL \inst30|inst3|nCBD~1_combout\ : std_logic;
SIGNAL \inst30|inst3|EA[1]~2_combout\ : std_logic;
SIGNAL \inst30|inst|data[42]~31_combout\ : std_logic;
SIGNAL \inst30|inst|Equal43~0_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[2]~3_combout\ : std_logic;
SIGNAL \inst30|inst|data[80]~72_combout\ : std_logic;
SIGNAL \inst30|inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst30|inst|data[87]~53_combout\ : std_logic;
SIGNAL \inst30|inst|Equal8~0_combout\ : std_logic;
SIGNAL \inst30|inst3|prueba[0]~3_combout\ : std_logic;
SIGNAL \inst30|inst|data[73]~82_combout\ : std_logic;
SIGNAL \inst30|inst3|nCRI~combout\ : std_logic;
SIGNAL \inst30|inst|data~35_combout\ : std_logic;
SIGNAL \inst30|inst|Equal34~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal54~2_combout\ : std_logic;
SIGNAL \inst30|inst|Equal51~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal52~0_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[1]~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal41~1_combout\ : std_logic;
SIGNAL \inst30|inst|Equal50~0_combout\ : std_logic;
SIGNAL \inst30|inst|data[42]~41_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[1]~4_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[2]~1_combout\ : std_logic;
SIGNAL \inst30|inst|Equal48~0_combout\ : std_logic;
SIGNAL \inst30|inst3|EB[1]~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal53~2_combout\ : std_logic;
SIGNAL \inst30|inst3|prueba[3]~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal62~2_combout\ : std_logic;
SIGNAL \inst30|inst|Equal62~3_combout\ : std_logic;
SIGNAL \inst30|inst|Equal62~4_combout\ : std_logic;
SIGNAL \inst30|inst3|PC[0]~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal58~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal61~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal57~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal60~0_combout\ : std_logic;
SIGNAL \inst30|inst3|EA[0]~4_combout\ : std_logic;
SIGNAL \inst30|inst3|PC[0]~1_combout\ : std_logic;
SIGNAL \inst30|inst3|PC[0]~2_combout\ : std_logic;
SIGNAL \inst30|inst3|PC[0]~3_combout\ : std_logic;
SIGNAL \inst30|inst3|PC[0]~4_combout\ : std_logic;
SIGNAL \inst30|inst3|PC[0]~5_combout\ : std_logic;
SIGNAL \inst30|inst|Equal69~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal68~2_combout\ : std_logic;
SIGNAL \inst30|inst3|PC[0]~6_combout\ : std_logic;
SIGNAL \inst30|inst|Equal47~2_combout\ : std_logic;
SIGNAL \inst30|inst3|nDUPA~1_combout\ : std_logic;
SIGNAL \inst30|inst|data[42]~42_combout\ : std_logic;
SIGNAL \inst30|inst|data[42]~84_combout\ : std_logic;
SIGNAL \inst30|inst|data~32_combout\ : std_logic;
SIGNAL \inst30|inst|data~36_combout\ : std_logic;
SIGNAL \inst30|inst|data~88_combout\ : std_logic;
SIGNAL \inst30|inst3|nWB~0_combout\ : std_logic;
SIGNAL \inst30|inst|data~34_combout\ : std_logic;
SIGNAL \inst30|inst|data~37_combout\ : std_logic;
SIGNAL \inst30|inst|data~38_combout\ : std_logic;
SIGNAL \inst30|inst|data~83_combout\ : std_logic;
SIGNAL \inst30|inst|data~33_combout\ : std_logic;
SIGNAL \inst30|inst|data~39_combout\ : std_logic;
SIGNAL \RegAux|Equal7~0_combout\ : std_logic;
SIGNAL \RegAux|TRI_STATE_D~0_combout\ : std_logic;
SIGNAL \RegAux|TRI_STATE_D~1_combout\ : std_logic;
SIGNAL \inst30|inst|Equal59~0_combout\ : std_logic;
SIGNAL \inst30|inst3|nCBD~2_combout\ : std_logic;
SIGNAL \inst30|inst3|nRW~0_combout\ : std_logic;
SIGNAL \inst1|PortR~9_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[7]~11_combout\ : std_logic;
SIGNAL \inst30|inst|Equal17~0_combout\ : std_logic;
SIGNAL \inst30|inst3|nEX0~0_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[7]~9_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[7]~6_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[7]~7_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[7]~8_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[7]~10_combout\ : std_logic;
SIGNAL \inst30|inst3|nEX0~1_combout\ : std_logic;
SIGNAL \inst30|inst3|nEX0~2_combout\ : std_logic;
SIGNAL \inst30|inst3|nEX0~3_combout\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \inst8~1_combout\ : std_logic;
SIGNAL \inst8~q\ : std_logic;
SIGNAL \inst30|inst|Equal15~0_combout\ : std_logic;
SIGNAL \inst13|TRI_STATE_D~0_combout\ : std_logic;
SIGNAL \inst30|inst3|EB[1]~3_combout\ : std_logic;
SIGNAL \inst30|inst|Equal49~0_combout\ : std_logic;
SIGNAL \inst30|inst3|EB[1]~2_combout\ : std_logic;
SIGNAL \inst30|inst3|EA[0]~5_combout\ : std_logic;
SIGNAL \inst30|inst3|EB[1]~4_combout\ : std_logic;
SIGNAL \inst30|inst3|nDUPA~2_combout\ : std_logic;
SIGNAL \inst30|inst3|nWB~1_combout\ : std_logic;
SIGNAL \inst30|inst3|nWB~3_combout\ : std_logic;
SIGNAL \inst30|inst3|nWB~4_combout\ : std_logic;
SIGNAL \inst30|inst3|nWB~2_combout\ : std_logic;
SIGNAL \inst30|inst3|EA[1]~14_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[2]~5_combout\ : std_logic;
SIGNAL \inst30|inst3|EB[0]~1_combout\ : std_logic;
SIGNAL \AcumuladorB|TRI_STATE~0_combout\ : std_logic;
SIGNAL \inst9|TRI_STATE_D~0_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~5_combout\ : std_logic;
SIGNAL \inst30|inst3|nDUPA~3_combout\ : std_logic;
SIGNAL \inst30|inst|data[92]~44_combout\ : std_logic;
SIGNAL \inst30|inst3|nWA~0_combout\ : std_logic;
SIGNAL \inst30|inst3|nWA~1_combout\ : std_logic;
SIGNAL \inst30|inst3|EA[0]~15_combout\ : std_logic;
SIGNAL \inst30|inst3|EA[0]~6_combout\ : std_logic;
SIGNAL \inst30|inst3|EA[0]~7_combout\ : std_logic;
SIGNAL \inst30|inst3|EA[0]~8_combout\ : std_logic;
SIGNAL \inst30|inst3|nDUPA~4_combout\ : std_logic;
SIGNAL \inst30|inst3|nEX2~0_combout\ : std_logic;
SIGNAL \inst30|inst3|nDUPA~5_combout\ : std_logic;
SIGNAL \inst30|inst3|nDUPA~6_combout\ : std_logic;
SIGNAL \inst30|inst3|EA[1]~9_combout\ : std_logic;
SIGNAL \inst30|inst3|EA[1]~10_combout\ : std_logic;
SIGNAL \inst30|inst3|EA[1]~11_combout\ : std_logic;
SIGNAL \inst30|inst3|EA[1]~12_combout\ : std_logic;
SIGNAL \inst30|inst3|EA[1]~13_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~4_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~6_combout\ : std_logic;
SIGNAL \inst7|PortR~0_combout\ : std_logic;
SIGNAL \inst30|inst|data[26]~55_combout\ : std_logic;
SIGNAL \inst30|inst|data[26]~80_combout\ : std_logic;
SIGNAL \inst30|inst|data[26]~89_combout\ : std_logic;
SIGNAL \inst30|inst|data[26]~79_combout\ : std_logic;
SIGNAL \inst30|inst|data[26]~81_combout\ : std_logic;
SIGNAL \inst1|PortR[7]~12_combout\ : std_logic;
SIGNAL \inst30|inst3|nCBD~7_combout\ : std_logic;
SIGNAL \inst30|inst3|nCBD~8_combout\ : std_logic;
SIGNAL \inst30|inst3|nCBD~3_combout\ : std_logic;
SIGNAL \inst30|inst3|nCBD~4_combout\ : std_logic;
SIGNAL \inst30|inst3|nCBD~5_combout\ : std_logic;
SIGNAL \inst30|inst3|nCBD~6_combout\ : std_logic;
SIGNAL \inst30|inst3|nCBD~9_combout\ : std_logic;
SIGNAL \inst30|inst3|nCBD~combout\ : std_logic;
SIGNAL \inst30|inst3|nCBD~clkctrl_outclk\ : std_logic;
SIGNAL \inst30|inst3|PC[0]~7_combout\ : std_logic;
SIGNAL \RegPC|Equal0~0_combout\ : std_logic;
SIGNAL \RegPC|Add0~0_combout\ : std_logic;
SIGNAL \inst30|inst|data[42]~43_combout\ : std_logic;
SIGNAL \RegAux|data_out[8]~1_combout\ : std_logic;
SIGNAL \inst1|PortR~8_combout\ : std_logic;
SIGNAL \AcumuladorA|TRI_STATE~2_combout\ : std_logic;
SIGNAL \AcumuladorA|C[6]~11_combout\ : std_logic;
SIGNAL \AcumuladorA|B[6]~2_combout\ : std_logic;
SIGNAL \inst30|inst|Equal46~2_combout\ : std_logic;
SIGNAL \inst30|inst|Equal45~2_combout\ : std_logic;
SIGNAL \inst30|inst|data[51]~45_combout\ : std_logic;
SIGNAL \inst30|inst|data[51]~46_combout\ : std_logic;
SIGNAL \upa|Mux37~3_combout\ : std_logic;
SIGNAL \upa|Mux37~4_combout\ : std_logic;
SIGNAL \inst30|inst3|selmux~1_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[1]~12_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[2]~13_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[0]~24_combout\ : std_logic;
SIGNAL \inst30|inst|data[42]~75_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[0]~25_combout\ : std_logic;
SIGNAL \inst30|inst|data~74_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[1]~19_combout\ : std_logic;
SIGNAL \inst30|inst3|selmux~0_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[2]~20_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[2]~21_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[1]~22_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[1]~23_combout\ : std_logic;
SIGNAL \upa|Mux37~5_combout\ : std_logic;
SIGNAL \upa|Mux37~0_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[6]~1_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[0]~8_combout\ : std_logic;
SIGNAL \AcumuladorB|C[6]~9_combout\ : std_logic;
SIGNAL \inst30|inst|Equal25~2_combout\ : std_logic;
SIGNAL \upa|Q[7]~0_combout\ : std_logic;
SIGNAL \upa|Q[7]~1_combout\ : std_logic;
SIGNAL \upa|Q[7]~2_combout\ : std_logic;
SIGNAL \AcumuladorA|C[7]~18_combout\ : std_logic;
SIGNAL \upa|Mux34~2_combout\ : std_logic;
SIGNAL \upa|Mux37~2_combout\ : std_logic;
SIGNAL \upa|Mux37~1_combout\ : std_logic;
SIGNAL \upa|Mux42~0_combout\ : std_logic;
SIGNAL \upa|Mux42~1_combout\ : std_logic;
SIGNAL \upa|Mux42~2_combout\ : std_logic;
SIGNAL \inst30|inst|Equal35~3_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[5]~15_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[5]~16_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[1]~14_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[5]~17_combout\ : std_logic;
SIGNAL \upa|Mux27~5_combout\ : std_logic;
SIGNAL \upa|Mux34~0_combout\ : std_logic;
SIGNAL \upa|Mux34~1_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[5]~18_combout\ : std_logic;
SIGNAL \upa|Add0~1_combout\ : std_logic;
SIGNAL \RegAux|TRI_STATE_C~0_combout\ : std_logic;
SIGNAL \RegAux|TRI_STATE_C~1_combout\ : std_logic;
SIGNAL \RegAux|R15~0_combout\ : std_logic;
SIGNAL \RegAux|data_out~0_combout\ : std_logic;
SIGNAL \RegAux|data_out~2_combout\ : std_logic;
SIGNAL \RegAux|data_out~3_combout\ : std_logic;
SIGNAL \AcumuladorA|C[5]~12_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[5]~2_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[0]~10_combout\ : std_logic;
SIGNAL \upa|Yupa[5]~12_combout\ : std_logic;
SIGNAL \inst9|TRI_STATE_D~1_combout\ : std_logic;
SIGNAL \inst9|data_out[0]~0_combout\ : std_logic;
SIGNAL \inst13|data_out[0]~1_combout\ : std_logic;
SIGNAL \inst13|TRI_STATE_D~1_combout\ : std_logic;
SIGNAL \upa|Yupa[5]~13_combout\ : std_logic;
SIGNAL \AcumuladorB|A[5]~1_combout\ : std_logic;
SIGNAL \upa|Mux33~2_combout\ : std_logic;
SIGNAL \upa|Mux41~0_combout\ : std_logic;
SIGNAL \upa|Mux41~1_combout\ : std_logic;
SIGNAL \upa|Mux41~2_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[4]~3_combout\ : std_logic;
SIGNAL \AcumuladorA|C[4]~13_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[4]~3_combout\ : std_logic;
SIGNAL \upa|Yupa[4]~16_combout\ : std_logic;
SIGNAL \upa|Q[4]~feeder_combout\ : std_logic;
SIGNAL \upa|Mux32~0_combout\ : std_logic;
SIGNAL \upa|Mux32~1_combout\ : std_logic;
SIGNAL \upa|Add0~3_combout\ : std_logic;
SIGNAL \AcumuladorA|C[3]~14_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[3]~4_combout\ : std_logic;
SIGNAL \upa|Q[3]~feeder_combout\ : std_logic;
SIGNAL \upa|Mux31~2_combout\ : std_logic;
SIGNAL \upa|Mux39~0_combout\ : std_logic;
SIGNAL \upa|Mux39~1_combout\ : std_logic;
SIGNAL \upa|Mux39~2_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[2]~5_combout\ : std_logic;
SIGNAL \AcumuladorA|C[2]~15_combout\ : std_logic;
SIGNAL \upa|Q[2]~feeder_combout\ : std_logic;
SIGNAL \upa|Mux30~2_combout\ : std_logic;
SIGNAL \upa|Mux38~0_combout\ : std_logic;
SIGNAL \upa|Mux38~1_combout\ : std_logic;
SIGNAL \upa|Mux38~2_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[1]~6_combout\ : std_logic;
SIGNAL \inst30|inst3|UPA[2]~26_combout\ : std_logic;
SIGNAL \inst30|inst|Equal27~2_combout\ : std_logic;
SIGNAL \inst30|inst3|nERA2~0_combout\ : std_logic;
SIGNAL \inst30|inst3|nERA2~1_combout\ : std_logic;
SIGNAL \RegAux|TRI_STATE_E~0_combout\ : std_logic;
SIGNAL \inst30|inst3|nEX2~1_combout\ : std_logic;
SIGNAL \inst30|inst3|nEX2~2_combout\ : std_logic;
SIGNAL \dir|valor_interno[7]~1_combout\ : std_logic;
SIGNAL \dir|valor_interno[7]~0_combout\ : std_logic;
SIGNAL \ENTRADA~8_combout\ : std_logic;
SIGNAL \ENTRADA~9_combout\ : std_logic;
SIGNAL \RegPC|Add0~9\ : std_logic;
SIGNAL \RegPC|Add0~10_combout\ : std_logic;
SIGNAL \RegPC|Add0~42_combout\ : std_logic;
SIGNAL \inst30|inst3|PC[0]~8_combout\ : std_logic;
SIGNAL \ENTRADA~4_combout\ : std_logic;
SIGNAL \ENTRADA~5_combout\ : std_logic;
SIGNAL \inst1|PortR~10_combout\ : std_logic;
SIGNAL \inst13|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \ENTRADA~14_combout\ : std_logic;
SIGNAL \inst9|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \ENTRADA~15_combout\ : std_logic;
SIGNAL \ENTRADA~12_combout\ : std_logic;
SIGNAL \ENTRADA~13_combout\ : std_logic;
SIGNAL \ENTRADA~10_combout\ : std_logic;
SIGNAL \ENTRADA~11_combout\ : std_logic;
SIGNAL \inst|mem~2065_combout\ : std_logic;
SIGNAL \inst|data[7]~3_combout\ : std_logic;
SIGNAL \inst|data[7]~4_combout\ : std_logic;
SIGNAL \inst|data[7]~5_combout\ : std_logic;
SIGNAL \inst|MEM_READ~0_combout\ : std_logic;
SIGNAL \inst1|PortR[7]~11_combout\ : std_logic;
SIGNAL \inst1|PortR[7]~13_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~0_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[7]~0_combout\ : std_logic;
SIGNAL \AcumuladorB|C[7]~8_combout\ : std_logic;
SIGNAL \AcumuladorA|C[7]~10_combout\ : std_logic;
SIGNAL \upa|Mux35~2_combout\ : std_logic;
SIGNAL \upa|Mux43~0_combout\ : std_logic;
SIGNAL \upa|Mux43~1_combout\ : std_logic;
SIGNAL \upa|Mux43~2_combout\ : std_logic;
SIGNAL \upa|Mux35~0_combout\ : std_logic;
SIGNAL \upa|Mux35~1_combout\ : std_logic;
SIGNAL \upa|Add0~0_combout\ : std_logic;
SIGNAL \upa|Add0~23\ : std_logic;
SIGNAL \upa|Add0~24_combout\ : std_logic;
SIGNAL \AcumuladorB|A[7]~0_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~1_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~2_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~3_combout\ : std_logic;
SIGNAL \upa|Yupa[7]~39_combout\ : std_logic;
SIGNAL \RegPC|Add0~11\ : std_logic;
SIGNAL \RegPC|Add0~12_combout\ : std_logic;
SIGNAL \RegPC|Add0~41_combout\ : std_logic;
SIGNAL \RegPC|Add0~13\ : std_logic;
SIGNAL \RegPC|Add0~14_combout\ : std_logic;
SIGNAL \RegPC|Add0~40_combout\ : std_logic;
SIGNAL \ENTRADA~0_combout\ : std_logic;
SIGNAL \ENTRADA~1_combout\ : std_logic;
SIGNAL \inst|data[7]~2_combout\ : std_logic;
SIGNAL \inst|mem~2070_combout\ : std_logic;
SIGNAL \inst|mem~2069_combout\ : std_logic;
SIGNAL \inst|data[1]~15_combout\ : std_logic;
SIGNAL \inst1|PortR[1]~24_combout\ : std_logic;
SIGNAL \inst1|PortR[1]~25_combout\ : std_logic;
SIGNAL \upa|Yupa[1]~32_combout\ : std_logic;
SIGNAL \upa|Yupa[1]~29_combout\ : std_logic;
SIGNAL \upa|Yupa[1]~30_combout\ : std_logic;
SIGNAL \upa|Yupa[1]~31_combout\ : std_logic;
SIGNAL \upa|Yupa[1]~33_combout\ : std_logic;
SIGNAL \AcumuladorA|C[1]~16_combout\ : std_logic;
SIGNAL \upa|Mux29~2_combout\ : std_logic;
SIGNAL \upa|Mux37~6_combout\ : std_logic;
SIGNAL \upa|Mux37~7_combout\ : std_logic;
SIGNAL \upa|Mux37~8_combout\ : std_logic;
SIGNAL \inst|mem~2072_combout\ : std_logic;
SIGNAL \inst|mem~2071_combout\ : std_logic;
SIGNAL \inst|data[0]~16_combout\ : std_logic;
SIGNAL \inst1|PortR[0]~26_combout\ : std_logic;
SIGNAL \inst1|PortR[0]~27_combout\ : std_logic;
SIGNAL \upa|Yupa2[0]~46_combout\ : std_logic;
SIGNAL \AcumuladorB|C[0]~15_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[0]~7_combout\ : std_logic;
SIGNAL \inst9|TRI_STATE_C~0_combout\ : std_logic;
SIGNAL \inst13|data_out[8]~0_combout\ : std_logic;
SIGNAL \inst9|data_out[8]~1_combout\ : std_logic;
SIGNAL \inst13|TRI_STATE_C~0_combout\ : std_logic;
SIGNAL \upa|Yupa2[0]~47_combout\ : std_logic;
SIGNAL \AcumuladorB|B[7]~0_combout\ : std_logic;
SIGNAL \upa|Yupa2[0]~48_combout\ : std_logic;
SIGNAL \upa|Mux27~4_combout\ : std_logic;
SIGNAL \upa|Mux36~0_combout\ : std_logic;
SIGNAL \upa|Mux36~1_combout\ : std_logic;
SIGNAL \upa|Mux36~2_combout\ : std_logic;
SIGNAL \inst30|inst3|selmux~2_combout\ : std_logic;
SIGNAL \inst30|inst3|selmux~3_combout\ : std_logic;
SIGNAL \inst30|inst3|selmux~4_combout\ : std_logic;
SIGNAL \inst30|inst3|CC~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal63~2_combout\ : std_logic;
SIGNAL \inst30|inst3|CC~combout\ : std_logic;
SIGNAL \upa|Add0~25\ : std_logic;
SIGNAL \upa|Add0~26_combout\ : std_logic;
SIGNAL \flags|tCC|valor_interno~feeder_combout\ : std_logic;
SIGNAL \flags|tCC|valor_interno~q\ : std_logic;
SIGNAL \upa|Add0~9_cout\ : std_logic;
SIGNAL \upa|Add0~10_combout\ : std_logic;
SIGNAL \AcumuladorA|B[0]~8_combout\ : std_logic;
SIGNAL \upa|Yupa2[0]~49_combout\ : std_logic;
SIGNAL \upa|Yupa2[0]~50_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[0]~7_combout\ : std_logic;
SIGNAL \AcumuladorA|C[0]~17_combout\ : std_logic;
SIGNAL \upa|Mux27~2_combout\ : std_logic;
SIGNAL \upa|Mux27~3_combout\ : std_logic;
SIGNAL \upa|Add0~7_combout\ : std_logic;
SIGNAL \upa|Add0~11\ : std_logic;
SIGNAL \upa|Add0~12_combout\ : std_logic;
SIGNAL \upa|Yupa2[1]~42_combout\ : std_logic;
SIGNAL \upa|Yupa2[1]~43_combout\ : std_logic;
SIGNAL \AcumuladorA|B[1]~7_combout\ : std_logic;
SIGNAL \upa|Yupa2[1]~44_combout\ : std_logic;
SIGNAL \upa|Yupa2[1]~41_combout\ : std_logic;
SIGNAL \upa|Yupa2[1]~45_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[1]~6_combout\ : std_logic;
SIGNAL \AcumuladorB|C[1]~14_combout\ : std_logic;
SIGNAL \upa|Mux29~0_combout\ : std_logic;
SIGNAL \upa|Mux29~1_combout\ : std_logic;
SIGNAL \upa|Add0~6_combout\ : std_logic;
SIGNAL \upa|Add0~13\ : std_logic;
SIGNAL \upa|Add0~14_combout\ : std_logic;
SIGNAL \upa|Yupa2[2]~37_combout\ : std_logic;
SIGNAL \upa|Yupa2[2]~38_combout\ : std_logic;
SIGNAL \AcumuladorA|B[2]~6_combout\ : std_logic;
SIGNAL \upa|Yupa2[2]~39_combout\ : std_logic;
SIGNAL \upa|Yupa2[2]~36_combout\ : std_logic;
SIGNAL \upa|Yupa2[2]~40_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[2]~5_combout\ : std_logic;
SIGNAL \AcumuladorB|C[2]~13_combout\ : std_logic;
SIGNAL \upa|Mux30~0_combout\ : std_logic;
SIGNAL \upa|Mux30~1_combout\ : std_logic;
SIGNAL \upa|Add0~5_combout\ : std_logic;
SIGNAL \upa|Add0~15\ : std_logic;
SIGNAL \upa|Add0~16_combout\ : std_logic;
SIGNAL \AcumuladorB|A[3]~3_combout\ : std_logic;
SIGNAL \upa|Yupa[3]~22_combout\ : std_logic;
SIGNAL \upa|Yupa[3]~23_combout\ : std_logic;
SIGNAL \upa|Yupa[3]~21_combout\ : std_logic;
SIGNAL \inst|mem~2068_combout\ : std_logic;
SIGNAL \inst|mem~2067_combout\ : std_logic;
SIGNAL \inst|data[3]~12_combout\ : std_logic;
SIGNAL \inst1|PortR[3]~20_combout\ : std_logic;
SIGNAL \inst1|PortR[3]~21_combout\ : std_logic;
SIGNAL \upa|Yupa[3]~24_combout\ : std_logic;
SIGNAL \upa|Yupa[3]~40_combout\ : std_logic;
SIGNAL \AcumuladorA|B[3]~5_combout\ : std_logic;
SIGNAL \upa|Yupa2[3]~32_combout\ : std_logic;
SIGNAL \upa|Yupa2[3]~33_combout\ : std_logic;
SIGNAL \upa|Yupa2[3]~34_combout\ : std_logic;
SIGNAL \upa|Yupa2[3]~31_combout\ : std_logic;
SIGNAL \upa|Yupa2[3]~35_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[3]~4_combout\ : std_logic;
SIGNAL \AcumuladorB|C[3]~12_combout\ : std_logic;
SIGNAL \upa|Mux31~0_combout\ : std_logic;
SIGNAL \upa|Mux31~1_combout\ : std_logic;
SIGNAL \upa|Add0~4_combout\ : std_logic;
SIGNAL \upa|Add0~17\ : std_logic;
SIGNAL \upa|Add0~18_combout\ : std_logic;
SIGNAL \upa|Yupa[4]~17_combout\ : std_logic;
SIGNAL \AcumuladorB|A[4]~2_combout\ : std_logic;
SIGNAL \upa|Yupa[4]~18_combout\ : std_logic;
SIGNAL \upa|Yupa[4]~19_combout\ : std_logic;
SIGNAL \upa|Yupa[4]~20_combout\ : std_logic;
SIGNAL \AcumuladorB|C[4]~11_combout\ : std_logic;
SIGNAL \upa|Mux32~2_combout\ : std_logic;
SIGNAL \upa|Mux40~0_combout\ : std_logic;
SIGNAL \upa|Mux40~1_combout\ : std_logic;
SIGNAL \upa|Mux40~2_combout\ : std_logic;
SIGNAL \upa|Add0~19\ : std_logic;
SIGNAL \upa|Add0~20_combout\ : std_logic;
SIGNAL \upa|Yupa[5]~14_combout\ : std_logic;
SIGNAL \upa|Yupa[5]~15_combout\ : std_logic;
SIGNAL \upa|Yupa[5]~41_combout\ : std_logic;
SIGNAL \inst|data[5]~9_combout\ : std_logic;
SIGNAL \inst|data[5]~10_combout\ : std_logic;
SIGNAL \inst1|PortR[5]~16_combout\ : std_logic;
SIGNAL \inst1|PortR[5]~17_combout\ : std_logic;
SIGNAL \upa|Yupa2[5]~21_combout\ : std_logic;
SIGNAL \AcumuladorA|B[5]~3_combout\ : std_logic;
SIGNAL \upa|Yupa2[5]~22_combout\ : std_logic;
SIGNAL \upa|Yupa2[5]~23_combout\ : std_logic;
SIGNAL \upa|Yupa2[5]~24_combout\ : std_logic;
SIGNAL \upa|Yupa2[5]~25_combout\ : std_logic;
SIGNAL \AcumuladorB|data_out[5]~2_combout\ : std_logic;
SIGNAL \AcumuladorB|C[5]~10_combout\ : std_logic;
SIGNAL \upa|Mux33~0_combout\ : std_logic;
SIGNAL \upa|Mux33~1_combout\ : std_logic;
SIGNAL \upa|Add0~2_combout\ : std_logic;
SIGNAL \upa|Add0~21\ : std_logic;
SIGNAL \upa|Add0~22_combout\ : std_logic;
SIGNAL \inst13|data_out[14]~feeder_combout\ : std_logic;
SIGNAL \upa|Yupa2[6]~17_combout\ : std_logic;
SIGNAL \upa|Yupa2[6]~18_combout\ : std_logic;
SIGNAL \upa|Yupa2[6]~19_combout\ : std_logic;
SIGNAL \inst|data[6]~6_combout\ : std_logic;
SIGNAL \inst|data[6]~7_combout\ : std_logic;
SIGNAL \inst|data[6]~8_combout\ : std_logic;
SIGNAL \inst1|PortR[6]~14_combout\ : std_logic;
SIGNAL \inst1|PortR[6]~15_combout\ : std_logic;
SIGNAL \upa|Yupa2[6]~16_combout\ : std_logic;
SIGNAL \upa|Yupa2[6]~20_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[6]~1_combout\ : std_logic;
SIGNAL \upa|Yupa[6]~7_combout\ : std_logic;
SIGNAL \upa|Yupa[6]~8_combout\ : std_logic;
SIGNAL \upa|Yupa[6]~9_combout\ : std_logic;
SIGNAL \upa|Yupa[6]~10_combout\ : std_logic;
SIGNAL \upa|Yupa[6]~11_combout\ : std_logic;
SIGNAL \ENTRADA~2_combout\ : std_logic;
SIGNAL \ENTRADA~3_combout\ : std_logic;
SIGNAL \inst|mem~2066_combout\ : std_logic;
SIGNAL \inst|data[4]~11_combout\ : std_logic;
SIGNAL \inst|data[4]~17_combout\ : std_logic;
SIGNAL \inst1|PortR[4]~18_combout\ : std_logic;
SIGNAL \inst1|PortR[4]~19_combout\ : std_logic;
SIGNAL \upa|Yupa2[4]~26_combout\ : std_logic;
SIGNAL \AcumuladorA|B[4]~4_combout\ : std_logic;
SIGNAL \upa|Yupa2[4]~27_combout\ : std_logic;
SIGNAL \upa|Yupa2[4]~28_combout\ : std_logic;
SIGNAL \upa|Yupa2[4]~29_combout\ : std_logic;
SIGNAL \upa|Yupa2[4]~30_combout\ : std_logic;
SIGNAL \RegAux|data_out~4_combout\ : std_logic;
SIGNAL \RegAux|data_out~5_combout\ : std_logic;
SIGNAL \RegAux|data_out~6_combout\ : std_logic;
SIGNAL \RegAux|data_out~7_combout\ : std_logic;
SIGNAL \RegAux|data_out~8_combout\ : std_logic;
SIGNAL \RegAux|data_out~9_combout\ : std_logic;
SIGNAL \inst30|inst3|RA[0]~0_combout\ : std_logic;
SIGNAL \RegAux|data_out~10_combout\ : std_logic;
SIGNAL \RegAux|data_out~11_combout\ : std_logic;
SIGNAL \RegAux|data_out~12_combout\ : std_logic;
SIGNAL \RegAux|data_out~13_combout\ : std_logic;
SIGNAL \RegAux|data_out~14_combout\ : std_logic;
SIGNAL \RegAux|data_out~15_combout\ : std_logic;
SIGNAL \RegAux|data_out~16_combout\ : std_logic;
SIGNAL \upa|Yupa[0]~34_combout\ : std_logic;
SIGNAL \upa|Yupa[0]~35_combout\ : std_logic;
SIGNAL \AcumuladorB|A[0]~5_combout\ : std_logic;
SIGNAL \upa|Yupa[0]~36_combout\ : std_logic;
SIGNAL \upa|Yupa[0]~37_combout\ : std_logic;
SIGNAL \upa|Yupa[0]~38_combout\ : std_logic;
SIGNAL \RegPC|Add0~47_combout\ : std_logic;
SIGNAL \RegPC|Add0~1\ : std_logic;
SIGNAL \RegPC|Add0~2_combout\ : std_logic;
SIGNAL \RegPC|Add0~46_combout\ : std_logic;
SIGNAL \RegPC|Add0~3\ : std_logic;
SIGNAL \RegPC|Add0~4_combout\ : std_logic;
SIGNAL \RegPC|Add0~45_combout\ : std_logic;
SIGNAL \RegPC|Add0~5\ : std_logic;
SIGNAL \RegPC|Add0~6_combout\ : std_logic;
SIGNAL \RegPC|Add0~44_combout\ : std_logic;
SIGNAL \RegPC|Add0~7\ : std_logic;
SIGNAL \RegPC|Add0~8_combout\ : std_logic;
SIGNAL \RegPC|Add0~43_combout\ : std_logic;
SIGNAL \ENTRADA~6_combout\ : std_logic;
SIGNAL \ENTRADA~7_combout\ : std_logic;
SIGNAL \inst|data[2]~13_combout\ : std_logic;
SIGNAL \inst|data[2]~14_combout\ : std_logic;
SIGNAL \inst1|PortR[2]~22_combout\ : std_logic;
SIGNAL \inst1|PortR[2]~23_combout\ : std_logic;
SIGNAL \inst7|PortL[2]~0_combout\ : std_logic;
SIGNAL \upa|Yupa[2]~25_combout\ : std_logic;
SIGNAL \AcumuladorB|A[2]~4_combout\ : std_logic;
SIGNAL \upa|Yupa[2]~26_combout\ : std_logic;
SIGNAL \upa|Yupa[2]~27_combout\ : std_logic;
SIGNAL \upa|Yupa[2]~28_combout\ : std_logic;
SIGNAL \inst4|Y[6]~3_combout\ : std_logic;
SIGNAL \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[6]~22\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[7]~24\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[8]~25_combout\ : std_logic;
SIGNAL \inst30|inst3|nCRI~clkctrl_outclk\ : std_logic;
SIGNAL \inst30|inst8[8]~0_combout\ : std_logic;
SIGNAL \inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\ : std_logic;
SIGNAL \inst30|inst|Equal3~3_combout\ : std_logic;
SIGNAL \inst30|inst|Equal6~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal34~1_combout\ : std_logic;
SIGNAL \inst30|inst3|nDUPA~0_combout\ : std_logic;
SIGNAL \inst30|inst|data~49_combout\ : std_logic;
SIGNAL \inst30|inst|Equal70~0_combout\ : std_logic;
SIGNAL \inst30|inst|data[86]~61_combout\ : std_logic;
SIGNAL \inst30|inst|data[74]~86_combout\ : std_logic;
SIGNAL \inst30|inst|data[74]~62_combout\ : std_logic;
SIGNAL \inst30|inst|data[74]~63_combout\ : std_logic;
SIGNAL \inst12[0]~0_combout\ : std_logic;
SIGNAL \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[1]~12\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[2]~13_combout\ : std_logic;
SIGNAL \inst30|inst|data[81]~87_combout\ : std_logic;
SIGNAL \inst30|inst|data[84]~68_combout\ : std_logic;
SIGNAL \inst30|inst|data[84]~69_combout\ : std_logic;
SIGNAL \inst30|inst|data[85]~71_combout\ : std_logic;
SIGNAL \inst12[2]~2_combout\ : std_logic;
SIGNAL \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[2]~14\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[3]~15_combout\ : std_logic;
SIGNAL \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[3]~16\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[4]~17_combout\ : std_logic;
SIGNAL \inst4|Y[4]~5_combout\ : std_logic;
SIGNAL \inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[4]~18\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[5]~19_combout\ : std_logic;
SIGNAL \inst4|Y[5]~2_combout\ : std_logic;
SIGNAL \inst30|inst5|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \inst30|inst|Equal65~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal4~2_combout\ : std_logic;
SIGNAL \inst30|inst|data[87]~66_combout\ : std_logic;
SIGNAL \inst30|inst|data[87]~54_combout\ : std_logic;
SIGNAL \inst30|inst3|prueba[0]~1_combout\ : std_logic;
SIGNAL \inst30|inst3|prueba[0]~2_combout\ : std_logic;
SIGNAL \inst30|inst|data~85_combout\ : std_logic;
SIGNAL \inst30|inst|data[87]~56_combout\ : std_logic;
SIGNAL \inst30|inst|data[87]~57_combout\ : std_logic;
SIGNAL \inst30|inst|data[87]~58_combout\ : std_logic;
SIGNAL \inst30|inst|data[87]~59_combout\ : std_logic;
SIGNAL \inst30|inst|data[87]~67_combout\ : std_logic;
SIGNAL \inst4|Y[9]~6_combout\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[8]~26\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[9]~27_combout\ : std_logic;
SIGNAL \inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[9]~28\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[10]~29_combout\ : std_logic;
SIGNAL \inst30|inst|data[84]~70_combout\ : std_logic;
SIGNAL \inst4|Y[10]~0_combout\ : std_logic;
SIGNAL \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[10]~30\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[11]~31_combout\ : std_logic;
SIGNAL \inst4|Y[11]~1_combout\ : std_logic;
SIGNAL \inst30|inst5|$00000|auto_generated|result_node[11]~11_combout\ : std_logic;
SIGNAL \inst30|inst|Equal7~0_combout\ : std_logic;
SIGNAL \inst30|inst|Equal55~2_combout\ : std_logic;
SIGNAL \inst30|inst|data[86]~64_combout\ : std_logic;
SIGNAL \inst30|inst|data[86]~48_combout\ : std_logic;
SIGNAL \inst30|inst|data[86]~50_combout\ : std_logic;
SIGNAL \inst30|inst|data[86]~51_combout\ : std_logic;
SIGNAL \inst30|inst|data[86]~65_combout\ : std_logic;
SIGNAL \inst30|inst1|SELECTOR~3_combout\ : std_logic;
SIGNAL \inst30|inst|data[92]~47_combout\ : std_logic;
SIGNAL \inst30|inst|data[92]~52_combout\ : std_logic;
SIGNAL \inst30|inst6|$00001|auto_generated|_~1_combout\ : std_logic;
SIGNAL \inst30|inst6|$00001|auto_generated|_~3_combout\ : std_logic;
SIGNAL \inst30|inst|data[89]~60_combout\ : std_logic;
SIGNAL \inst30|inst6|$00001|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst30|inst|data[93]~76_combout\ : std_logic;
SIGNAL \inst30|inst6|$00001|auto_generated|_~2_combout\ : std_logic;
SIGNAL \inst30|inst6|$00001|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst30|inst|data[88]~77_combout\ : std_logic;
SIGNAL \inst30|inst3|vf~q\ : std_logic;
SIGNAL \inst30|inst7~combout\ : std_logic;
SIGNAL \inst30|inst1|SELECTOR~0_combout\ : std_logic;
SIGNAL \inst30|inst2|valor_interno[7]~23_combout\ : std_logic;
SIGNAL \inst30|inst|data[81]~73_combout\ : std_logic;
SIGNAL \inst4|Y[7]~4_combout\ : std_logic;
SIGNAL \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\ : std_logic;
SIGNAL \inst30|inst|Equal65~1_combout\ : std_logic;
SIGNAL \inst30|inst|Equal65~2_combout\ : std_logic;
SIGNAL \inst30|inst|Equal66~0_combout\ : std_logic;
SIGNAL \inst30|inst3|BD~0_combout\ : std_logic;
SIGNAL \AcumuladorA|B[7]~1_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~12_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~13_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~14_combout\ : std_logic;
SIGNAL \AcumuladorA|B[7]~0_combout\ : std_logic;
SIGNAL \inst9|data_out[15]~feeder_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~9_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~10_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~11_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~8_combout\ : std_logic;
SIGNAL \upa|Yupa2[7]~15_combout\ : std_logic;
SIGNAL \AcumuladorA|data_out[7]~0_combout\ : std_logic;
SIGNAL \AcumuladorB|C[7]~16_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~3_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~0_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~1_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~2_combout\ : std_logic;
SIGNAL \RegAux|WideOr0~4_combout\ : std_logic;
SIGNAL \inst30|inst|data[42]~78_combout\ : std_logic;
SIGNAL \inst30|inst3|AP[0]~0_combout\ : std_logic;
SIGNAL \RegPila|data_out[0]~45_combout\ : std_logic;
SIGNAL \RegPila|data_out[1]~15_combout\ : std_logic;
SIGNAL \RegPila|data_out[1]~16\ : std_logic;
SIGNAL \RegPila|data_out[2]~17_combout\ : std_logic;
SIGNAL \RegPila|data_out[2]~18\ : std_logic;
SIGNAL \RegPila|data_out[3]~19_combout\ : std_logic;
SIGNAL \RegPila|data_out[3]~20\ : std_logic;
SIGNAL \RegPila|data_out[4]~21_combout\ : std_logic;
SIGNAL \RegPila|data_out[4]~22\ : std_logic;
SIGNAL \RegPila|data_out[5]~23_combout\ : std_logic;
SIGNAL \RegPila|data_out[5]~24\ : std_logic;
SIGNAL \RegPila|data_out[6]~25_combout\ : std_logic;
SIGNAL \RegPila|data_out[6]~26\ : std_logic;
SIGNAL \RegPila|data_out[7]~27_combout\ : std_logic;
SIGNAL \RegPila|data_out[7]~28\ : std_logic;
SIGNAL \RegPila|data_out[8]~29_combout\ : std_logic;
SIGNAL \RegPila|data_out[8]~30\ : std_logic;
SIGNAL \RegPila|data_out[9]~31_combout\ : std_logic;
SIGNAL \RegPila|data_out[9]~32\ : std_logic;
SIGNAL \RegPila|data_out[10]~33_combout\ : std_logic;
SIGNAL \RegPila|data_out[10]~34\ : std_logic;
SIGNAL \RegPila|data_out[11]~35_combout\ : std_logic;
SIGNAL \RegPila|data_out[11]~36\ : std_logic;
SIGNAL \RegPila|data_out[12]~37_combout\ : std_logic;
SIGNAL \RegPila|data_out[12]~38\ : std_logic;
SIGNAL \RegPila|data_out[13]~39_combout\ : std_logic;
SIGNAL \RegPila|data_out[13]~40\ : std_logic;
SIGNAL \RegPila|data_out[14]~41_combout\ : std_logic;
SIGNAL \RegPila|data_out[14]~42\ : std_logic;
SIGNAL \RegPila|data_out[15]~43_combout\ : std_logic;
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
SIGNAL \RegPila|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst9|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst30|inst3|prueba\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RegAux|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst30|inst2|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst30|inst3|liga\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \AcumuladorB|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \AcumuladorA|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst30|inst3|instruccion\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \upa|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \upa|Banderas\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \upa|Yupa_interno\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegPC|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dir|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst30|inst1|ALT_INV_SELECTOR~2_combout\ : std_logic;
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
selector <= ww_selector;
muxentra <= ww_muxentra;
vf <= ww_vf;
A <= ww_A;
B <= ww_B;
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
prueba <= ww_prueba;
regInstr <= ww_regInstr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst30|inst3|nCRI~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst30|inst3|nCRI~combout\);

\inst30|inst3|nCBD~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst30|inst3|nCBD~combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst30|inst1|ALT_INV_SELECTOR~2_combout\ <= NOT \inst30|inst1|SELECTOR~2_combout\;
\RegAux|ALT_INV_WideOr0~4_combout\ <= NOT \RegAux|WideOr0~4_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y47_N24
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

-- Location: IOOBUF_X0_Y34_N2
\A[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorA|data_out\(7),
	oe => \AcumuladorA|C[7]~18_combout\,
	devoe => ww_devoe,
	o => \A[7]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\A[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorA|data_out\(6),
	oe => \AcumuladorA|C[7]~18_combout\,
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X0_Y16_N9
\A[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorA|data_out\(5),
	oe => \AcumuladorA|C[7]~18_combout\,
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\A[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorA|data_out\(4),
	oe => \AcumuladorA|C[7]~18_combout\,
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\A[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorA|data_out\(3),
	oe => \AcumuladorA|C[7]~18_combout\,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\A[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorA|data_out\(2),
	oe => \AcumuladorA|C[7]~18_combout\,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\A[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorA|data_out\(1),
	oe => \AcumuladorA|C[7]~18_combout\,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\A[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorA|data_out\(0),
	oe => \AcumuladorA|C[7]~18_combout\,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\B[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorB|data_out\(7),
	oe => \AcumuladorB|C[7]~16_combout\,
	devoe => ww_devoe,
	o => \B[7]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\B[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorB|data_out\(6),
	oe => \AcumuladorB|C[7]~16_combout\,
	devoe => ww_devoe,
	o => \B[6]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\B[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorB|data_out\(5),
	oe => \AcumuladorB|C[7]~16_combout\,
	devoe => ww_devoe,
	o => \B[5]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\B[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorB|data_out\(4),
	oe => \AcumuladorB|C[7]~16_combout\,
	devoe => ww_devoe,
	o => \B[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorB|data_out\(3),
	oe => \AcumuladorB|C[7]~16_combout\,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorB|data_out\(2),
	oe => \AcumuladorB|C[7]~16_combout\,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorB|data_out\(1),
	oe => \AcumuladorB|C[7]~16_combout\,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AcumuladorB|data_out\(0),
	oe => \AcumuladorB|C[7]~16_combout\,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\regInstr[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Y[11]~1_combout\,
	oe => \inst30|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[11]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\regInstr[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Y[10]~0_combout\,
	oe => \inst30|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[10]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\regInstr[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Y[9]~6_combout\,
	oe => \inst30|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[9]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\regInstr[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst8[8]~0_combout\,
	oe => \inst30|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[8]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\regInstr[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Y[7]~4_combout\,
	oe => \inst30|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[7]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\regInstr[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Y[6]~3_combout\,
	oe => \inst30|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[6]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\regInstr[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Y[5]~2_combout\,
	oe => \inst30|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[5]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\regInstr[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Y[4]~5_combout\,
	oe => \inst30|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[4]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\regInstr[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst1|ALT_INV_SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\regInstr[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12[2]~2_combout\,
	oe => \inst30|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\regInstr[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12[1]~1_combout\,
	oe => \inst30|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\regInstr[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12[0]~0_combout\,
	oe => \inst30|inst1|SELECTOR~2_combout\,
	devoe => ww_devoe,
	o => \regInstr[0]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
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

-- Location: IOOBUF_X0_Y16_N23
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

-- Location: IOOBUF_X20_Y0_N30
\selector~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst1|SELECTOR~0_combout\,
	devoe => ww_devoe,
	o => \selector~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\muxentra~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst6|$00001|auto_generated|result_node[0]~0_combout\,
	devoe => ww_devoe,
	o => \muxentra~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\vf~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst3|vf~q\,
	devoe => ww_devoe,
	o => \vf~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\CurrentState[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	devoe => ww_devoe,
	o => \CurrentState[11]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\CurrentState[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	devoe => ww_devoe,
	o => \CurrentState[10]~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\CurrentState[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	devoe => ww_devoe,
	o => \CurrentState[9]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\CurrentState[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	devoe => ww_devoe,
	o => \CurrentState[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\CurrentState[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	devoe => ww_devoe,
	o => \CurrentState[7]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\CurrentState[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	devoe => ww_devoe,
	o => \CurrentState[6]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\CurrentState[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst5|$00000|auto_generated|result_node[5]~5_combout\,
	devoe => ww_devoe,
	o => \CurrentState[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\CurrentState[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\,
	devoe => ww_devoe,
	o => \CurrentState[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\CurrentState[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	devoe => ww_devoe,
	o => \CurrentState[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\CurrentState[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	devoe => ww_devoe,
	o => \CurrentState[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\CurrentState[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => \CurrentState[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\CurrentState[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	devoe => ww_devoe,
	o => \CurrentState[0]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\Debug_Q[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Q\(7),
	devoe => ww_devoe,
	o => \Debug_Q[7]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
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

-- Location: IOOBUF_X54_Y0_N16
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

-- Location: IOOBUF_X31_Y39_N2
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

-- Location: IOOBUF_X0_Y18_N9
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

-- Location: IOOBUF_X58_Y0_N30
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

-- Location: IOOBUF_X0_Y18_N2
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

-- Location: IOOBUF_X58_Y0_N23
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

-- Location: IOOBUF_X51_Y0_N16
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

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X26_Y39_N16
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

-- Location: IOOBUF_X51_Y0_N9
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X24_Y39_N23
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

-- Location: IOOBUF_X56_Y0_N30
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

-- Location: IOOBUF_X51_Y0_N23
\Debug_Yupa[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \upa|Yupa_interno\(0),
	devoe => ww_devoe,
	o => \Debug_Yupa[0]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
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

-- Location: IOOBUF_X49_Y0_N2
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

-- Location: IOOBUF_X0_Y15_N23
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

-- Location: IOOBUF_X0_Y12_N9
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

-- Location: IOOBUF_X20_Y0_N16
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

-- Location: IOOBUF_X0_Y23_N2
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

-- Location: IOOBUF_X54_Y0_N9
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

-- Location: IOOBUF_X40_Y0_N2
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

-- Location: IOOBUF_X31_Y39_N30
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

-- Location: IOOBUF_X36_Y39_N23
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

-- Location: IOOBUF_X0_Y12_N2
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

-- Location: IOOBUF_X0_Y26_N16
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

-- Location: IOOBUF_X31_Y39_N23
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

-- Location: IOOBUF_X0_Y25_N2
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

-- Location: IOOBUF_X0_Y29_N9
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

-- Location: IOOBUF_X0_Y34_N9
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

-- Location: IOOBUF_X40_Y0_N9
\DebugAP[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPila|data_out\(15),
	devoe => ww_devoe,
	o => \DebugAP[15]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\DebugAP[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPila|data_out\(14),
	devoe => ww_devoe,
	o => \DebugAP[14]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\DebugAP[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPila|data_out\(13),
	devoe => ww_devoe,
	o => \DebugAP[13]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\DebugAP[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPila|data_out\(12),
	devoe => ww_devoe,
	o => \DebugAP[12]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\DebugAP[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPila|data_out\(11),
	devoe => ww_devoe,
	o => \DebugAP[11]~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\DebugAP[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPila|data_out\(10),
	devoe => ww_devoe,
	o => \DebugAP[10]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\DebugAP[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPila|data_out\(9),
	devoe => ww_devoe,
	o => \DebugAP[9]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\DebugAP[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPila|data_out\(8),
	devoe => ww_devoe,
	o => \DebugAP[8]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\DebugAP[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPila|data_out\(7),
	devoe => ww_devoe,
	o => \DebugAP[7]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\DebugAP[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPila|data_out\(6),
	devoe => ww_devoe,
	o => \DebugAP[6]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\DebugAP[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPila|data_out\(5),
	devoe => ww_devoe,
	o => \DebugAP[5]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\DebugAP[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPila|data_out\(4),
	devoe => ww_devoe,
	o => \DebugAP[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\DebugAP[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPila|data_out\(3),
	devoe => ww_devoe,
	o => \DebugAP[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\DebugAP[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPila|data_out\(2),
	devoe => ww_devoe,
	o => \DebugAP[2]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\DebugAP[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPila|data_out\(1),
	devoe => ww_devoe,
	o => \DebugAP[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\DebugAP[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPila|data_out\(0),
	devoe => ww_devoe,
	o => \DebugAP[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
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

-- Location: IOOBUF_X0_Y15_N2
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

-- Location: IOOBUF_X24_Y39_N2
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

-- Location: IOOBUF_X29_Y39_N9
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

-- Location: IOOBUF_X0_Y15_N9
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

-- Location: IOOBUF_X24_Y0_N9
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

-- Location: IOOBUF_X0_Y18_N23
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

-- Location: IOOBUF_X29_Y0_N30
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

-- Location: IOOBUF_X56_Y0_N9
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

-- Location: IOOBUF_X56_Y0_N16
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

-- Location: IOOBUF_X0_Y3_N16
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

-- Location: IOOBUF_X26_Y0_N2
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

-- Location: IOOBUF_X26_Y0_N9
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

-- Location: IOOBUF_X62_Y0_N23
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

-- Location: IOOBUF_X0_Y16_N2
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

-- Location: IOOBUF_X29_Y0_N23
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

-- Location: IOOBUF_X0_Y15_N16
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

-- Location: IOOBUF_X0_Y13_N9
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

-- Location: IOOBUF_X26_Y39_N30
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

-- Location: IOOBUF_X54_Y0_N23
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

-- Location: IOOBUF_X29_Y39_N16
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

-- Location: IOOBUF_X69_Y0_N16
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

-- Location: IOOBUF_X60_Y0_N30
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

-- Location: IOOBUF_X29_Y0_N9
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

-- Location: IOOBUF_X58_Y0_N2
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

-- Location: IOOBUF_X0_Y23_N23
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

-- Location: IOOBUF_X0_Y3_N9
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

-- Location: IOOBUF_X20_Y0_N23
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

-- Location: IOOBUF_X24_Y0_N16
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X0_Y23_N16
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

-- Location: IOOBUF_X18_Y0_N9
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

-- Location: IOOBUF_X56_Y0_N23
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

-- Location: IOOBUF_X29_Y0_N16
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

-- Location: IOOBUF_X31_Y0_N23
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

-- Location: IOOBUF_X31_Y0_N30
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X31_Y0_N16
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

-- Location: IOOBUF_X34_Y0_N23
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

-- Location: IOOBUF_X34_Y0_N30
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

-- Location: IOOBUF_X34_Y0_N16
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

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X24_Y0_N30
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

-- Location: IOOBUF_X46_Y0_N9
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

-- Location: IOOBUF_X58_Y0_N9
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

-- Location: IOOBUF_X26_Y0_N23
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

-- Location: IOOBUF_X31_Y0_N9
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

-- Location: IOOBUF_X0_Y16_N16
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

-- Location: IOOBUF_X34_Y39_N30
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

-- Location: IOOBUF_X31_Y39_N9
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

-- Location: IOOBUF_X36_Y39_N16
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

-- Location: IOOBUF_X0_Y3_N2
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

-- Location: IOOBUF_X51_Y0_N30
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

-- Location: IOOBUF_X29_Y39_N2
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

-- Location: IOOBUF_X26_Y39_N9
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

-- Location: IOOBUF_X58_Y0_N16
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

-- Location: IOOBUF_X34_Y0_N9
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

-- Location: IOOBUF_X31_Y0_N2
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

-- Location: IOOBUF_X49_Y0_N30
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

-- Location: IOOBUF_X26_Y0_N30
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X26_Y0_N16
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

-- Location: IOOBUF_X22_Y0_N30
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

-- Location: IOOBUF_X18_Y0_N16
\prueba[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst3|prueba\(4),
	devoe => ww_devoe,
	o => \prueba[4]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\prueba[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst3|prueba\(3),
	devoe => ww_devoe,
	o => \prueba[3]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\prueba[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst3|prueba\(0),
	devoe => ww_devoe,
	o => \prueba[2]~output_o\);

-- Location: IOOBUF_X0_Y29_N2
\prueba[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst3|prueba\(0),
	devoe => ww_devoe,
	o => \prueba[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\prueba[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst3|prueba\(0),
	devoe => ww_devoe,
	o => \prueba[0]~output_o\);

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

-- Location: IOIBUF_X24_Y0_N22
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

-- Location: LCCOMB_X24_Y5_N18
\inst30|inst1|SELECTOR~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst1|SELECTOR~2_combout\ = (\inst30|inst3|instruccion\(0)) # (\inst30|inst3|instruccion\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst3|instruccion\(0),
	datad => \inst30|inst3|instruccion\(1),
	combout => \inst30|inst1|SELECTOR~2_combout\);

-- Location: LCCOMB_X25_Y4_N2
\inst30|inst2|valor_interno[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst2|valor_interno[0]~33_combout\ = !\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst30|inst2|valor_interno[0]~33_combout\);

-- Location: FF_X25_Y4_N3
\inst30|inst2|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30|inst2|valor_interno[0]~33_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst2|valor_interno\(0));

-- Location: LCCOMB_X23_Y5_N14
\inst30|inst2|valor_interno[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst2|valor_interno[5]~19_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[5]~5_combout\ & (\inst30|inst2|valor_interno[4]~18\ $ (GND))) # (!\inst30|inst5|$00000|auto_generated|result_node[5]~5_combout\ & 
-- (!\inst30|inst2|valor_interno[4]~18\ & VCC))
-- \inst30|inst2|valor_interno[5]~20\ = CARRY((\inst30|inst5|$00000|auto_generated|result_node[5]~5_combout\ & !\inst30|inst2|valor_interno[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[5]~5_combout\,
	datad => VCC,
	cin => \inst30|inst2|valor_interno[4]~18\,
	combout => \inst30|inst2|valor_interno[5]~19_combout\,
	cout => \inst30|inst2|valor_interno[5]~20\);

-- Location: LCCOMB_X23_Y5_N16
\inst30|inst2|valor_interno[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst2|valor_interno[6]~21_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\ & (!\inst30|inst2|valor_interno[5]~20\)) # (!\inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\ & ((\inst30|inst2|valor_interno[5]~20\) 
-- # (GND)))
-- \inst30|inst2|valor_interno[6]~22\ = CARRY((!\inst30|inst2|valor_interno[5]~20\) # (!\inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	datad => VCC,
	cin => \inst30|inst2|valor_interno[5]~20\,
	combout => \inst30|inst2|valor_interno[6]~21_combout\,
	cout => \inst30|inst2|valor_interno[6]~22\);

-- Location: FF_X23_Y5_N17
\inst30|inst2|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30|inst2|valor_interno[6]~21_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst2|valor_interno\(6));

-- Location: LCCOMB_X27_Y5_N20
\inst30|inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal0~2_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & 
-- !\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \inst30|inst|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y5_N30
\inst30|inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal0~3_combout\ = (\inst30|inst|Equal0~2_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[11]~11_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|Equal0~2_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	combout => \inst30|inst|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y5_N16
\inst30|inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal0~4_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[5]~5_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst5|$00000|auto_generated|result_node[5]~5_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \inst30|inst|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y4_N12
\inst30|inst|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal0~5_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\ & (\inst30|inst|Equal0~3_combout\ & \inst30|inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	datac => \inst30|inst|Equal0~3_combout\,
	datad => \inst30|inst|Equal0~4_combout\,
	combout => \inst30|inst|Equal0~5_combout\);

-- Location: LCCOMB_X29_Y5_N30
\inst30|inst|Equal24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal24~4_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[5]~5_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[11]~11_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\ & 
-- !\inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[5]~5_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	combout => \inst30|inst|Equal24~4_combout\);

-- Location: LCCOMB_X27_Y5_N18
\inst30|inst|Equal21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal21~1_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\ & \inst30|inst|Equal24~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datad => \inst30|inst|Equal24~4_combout\,
	combout => \inst30|inst|Equal21~1_combout\);

-- Location: LCCOMB_X23_Y5_N6
\inst30|inst2|valor_interno[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst2|valor_interno[1]~11_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ $ (VCC))) # (!\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & 
-- (\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & VCC))
-- \inst30|inst2|valor_interno[1]~12\ = CARRY((\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => VCC,
	combout => \inst30|inst2|valor_interno[1]~11_combout\,
	cout => \inst30|inst2|valor_interno[1]~12\);

-- Location: FF_X25_Y4_N5
\inst30|inst2|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst30|inst2|valor_interno[1]~11_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst2|valor_interno\(1));

-- Location: LCCOMB_X25_Y4_N22
\inst30|inst|Equal24~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal24~5_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\ & (\inst30|inst|Equal24~4_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\ & 
-- \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datab => \inst30|inst|Equal24~4_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \inst30|inst|Equal24~5_combout\);

-- Location: LCCOMB_X25_Y2_N12
\inst30|inst|Equal21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal21~0_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\ & \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	combout => \inst30|inst|Equal21~0_combout\);

-- Location: LCCOMB_X25_Y4_N28
\inst30|inst|Equal24~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal24~7_combout\ = (\inst30|inst|Equal24~5_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst30|inst|Equal21~0_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal24~5_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst30|inst|Equal21~0_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst30|inst|Equal24~7_combout\);

-- Location: FF_X26_Y4_N23
\inst30|inst3|liga[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst30|inst|Equal24~7_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst3|liga\(1));

-- Location: LCCOMB_X26_Y4_N22
\inst12[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[1]~1_combout\ = (!\inst30|inst3|instruccion\(1) & ((\inst30|inst3|liga\(1)) # (!\inst30|inst3|instruccion\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst3|instruccion\(0),
	datac => \inst30|inst3|liga\(1),
	datad => \inst30|inst3|instruccion\(1),
	combout => \inst12[1]~1_combout\);

-- Location: LCCOMB_X25_Y4_N0
\inst30|inst5|$00000|auto_generated|result_node[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ = (\inst30|inst1|SELECTOR~0_combout\ & ((\inst12[1]~1_combout\))) # (!\inst30|inst1|SELECTOR~0_combout\ & (\inst30|inst2|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst1|SELECTOR~0_combout\,
	datac => \inst30|inst2|valor_interno\(1),
	datad => \inst12[1]~1_combout\,
	combout => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X23_Y6_N28
\inst30|inst|Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal10~0_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst30|inst|Equal10~0_combout\);

-- Location: LCCOMB_X24_Y6_N26
\inst30|inst|Equal23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal23~0_combout\ = (\inst30|inst|Equal21~1_combout\ & (\inst30|inst|Equal10~0_combout\ & (\inst30|inst|Equal21~0_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal21~1_combout\,
	datab => \inst30|inst|Equal10~0_combout\,
	datac => \inst30|inst|Equal21~0_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \inst30|inst|Equal23~0_combout\);

-- Location: LCCOMB_X25_Y2_N26
\inst30|inst|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal0~6_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst30|inst|Equal0~6_combout\);

-- Location: LCCOMB_X25_Y4_N30
\inst30|inst|Equal24~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal24~6_combout\ = (\inst30|inst|Equal24~5_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\ & 
-- \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal24~5_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	combout => \inst30|inst|Equal24~6_combout\);

-- Location: LCCOMB_X22_Y6_N22
\inst30|inst|data[84]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[84]~40_combout\ = (!\inst30|inst|Equal23~0_combout\ & (((!\inst30|inst|Equal0~5_combout\ & !\inst30|inst|Equal24~6_combout\)) # (!\inst30|inst|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal0~5_combout\,
	datab => \inst30|inst|Equal23~0_combout\,
	datac => \inst30|inst|Equal0~6_combout\,
	datad => \inst30|inst|Equal24~6_combout\,
	combout => \inst30|inst|data[84]~40_combout\);

-- Location: LCCOMB_X24_Y8_N28
\inst30|inst|Equal43~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal43~1_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & 
-- !\inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	combout => \inst30|inst|Equal43~1_combout\);

-- Location: LCCOMB_X24_Y6_N0
\inst30|inst|Equal44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal44~0_combout\ = (\inst30|inst|Equal21~1_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst30|inst|Equal43~1_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal21~1_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst30|inst|Equal43~1_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \inst30|inst|Equal44~0_combout\);

-- Location: LCCOMB_X27_Y4_N30
\inst30|inst|Equal20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal20~0_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & 
-- \inst30|inst|Equal24~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst30|inst|Equal24~4_combout\,
	combout => \inst30|inst|Equal20~0_combout\);

-- Location: LCCOMB_X22_Y6_N0
\inst30|inst|Equal28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal28~0_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\ & (\inst30|inst|Equal21~0_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & \inst30|inst|Equal20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datab => \inst30|inst|Equal21~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst|Equal20~0_combout\,
	combout => \inst30|inst|Equal28~0_combout\);

-- Location: LCCOMB_X24_Y4_N22
\inst30|inst|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal3~2_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	combout => \inst30|inst|Equal3~2_combout\);

-- Location: LCCOMB_X22_Y6_N10
\inst30|inst|Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal4~3_combout\ = (\inst30|inst|Equal4~2_combout\ & (\inst30|inst|Equal3~2_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal4~2_combout\,
	datab => \inst30|inst|Equal3~2_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	combout => \inst30|inst|Equal4~3_combout\);

-- Location: LCCOMB_X24_Y7_N0
\inst30|inst3|UPA[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[2]~2_combout\ = (\inst30|inst|data[84]~40_combout\ & (!\inst30|inst|Equal44~0_combout\ & (!\inst30|inst|Equal28~0_combout\ & !\inst30|inst|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[84]~40_combout\,
	datab => \inst30|inst|Equal44~0_combout\,
	datac => \inst30|inst|Equal28~0_combout\,
	datad => \inst30|inst|Equal4~3_combout\,
	combout => \inst30|inst3|UPA[2]~2_combout\);

-- Location: LCCOMB_X27_Y5_N6
\inst30|inst|Equal18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal18~0_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\ & 
-- \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	combout => \inst30|inst|Equal18~0_combout\);

-- Location: LCCOMB_X24_Y8_N12
\inst30|inst|Equal19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal19~0_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst30|inst|Equal18~0_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\ & \inst30|inst|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst30|inst|Equal18~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	datad => \inst30|inst|Equal7~0_combout\,
	combout => \inst30|inst|Equal19~0_combout\);

-- Location: LCCOMB_X25_Y8_N20
\inst30|inst|Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal3~4_combout\ = (\inst30|inst|Equal3~2_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|Equal3~2_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	combout => \inst30|inst|Equal3~4_combout\);

-- Location: LCCOMB_X24_Y4_N30
\inst30|inst|Equal3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal3~5_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[11]~11_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\ & (\inst30|inst|Equal65~0_combout\ & \inst30|inst|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	datac => \inst30|inst|Equal65~0_combout\,
	datad => \inst30|inst|Equal3~4_combout\,
	combout => \inst30|inst|Equal3~5_combout\);

-- Location: LCCOMB_X24_Y4_N4
\inst30|inst|Equal7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal7~1_combout\ = (\inst30|inst|Equal3~2_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\ & \inst30|inst|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal3~2_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datad => \inst30|inst|Equal7~0_combout\,
	combout => \inst30|inst|Equal7~1_combout\);

-- Location: LCCOMB_X23_Y4_N6
\inst30|inst|data[87]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[87]~20_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\) # (((!\inst30|inst|Equal3~5_combout\ & !\inst30|inst|Equal7~1_combout\)) # (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal3~5_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst|Equal7~1_combout\,
	combout => \inst30|inst|data[87]~20_combout\);

-- Location: LCCOMB_X23_Y4_N4
\inst30|inst3|nCBD~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nCBD~0_combout\ = (\inst30|inst|Equal7~1_combout\ & (!\inst30|inst|Equal10~0_combout\ & ((!\inst30|inst|Equal3~4_combout\) # (!\inst30|inst|Equal6~0_combout\)))) # (!\inst30|inst|Equal7~1_combout\ & (((!\inst30|inst|Equal3~4_combout\)) # 
-- (!\inst30|inst|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal7~1_combout\,
	datab => \inst30|inst|Equal6~0_combout\,
	datac => \inst30|inst|Equal3~4_combout\,
	datad => \inst30|inst|Equal10~0_combout\,
	combout => \inst30|inst3|nCBD~0_combout\);

-- Location: LCCOMB_X23_Y8_N16
\inst30|inst|Equal18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal18~1_combout\ = (\inst30|inst|Equal18~0_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\ & \inst30|inst|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal18~0_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	datad => \inst30|inst|Equal7~0_combout\,
	combout => \inst30|inst|Equal18~1_combout\);

-- Location: LCCOMB_X25_Y8_N16
\inst30|inst|data[86]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[86]~21_combout\ = (!\inst30|inst|Equal19~0_combout\ & (\inst30|inst|data[87]~20_combout\ & (\inst30|inst3|nCBD~0_combout\ & !\inst30|inst|Equal18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal19~0_combout\,
	datab => \inst30|inst|data[87]~20_combout\,
	datac => \inst30|inst3|nCBD~0_combout\,
	datad => \inst30|inst|Equal18~1_combout\,
	combout => \inst30|inst|data[86]~21_combout\);

-- Location: LCCOMB_X24_Y8_N16
\inst30|inst|Equal20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal20~1_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst30|inst|Equal21~0_combout\ & \inst30|inst|Equal20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst30|inst|Equal21~0_combout\,
	datad => \inst30|inst|Equal20~0_combout\,
	combout => \inst30|inst|Equal20~1_combout\);

-- Location: LCCOMB_X23_Y4_N14
\inst30|inst|Equal14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal14~0_combout\ = (\inst30|inst|Equal7~0_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\ & \inst30|inst|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|Equal7~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datad => \inst30|inst|Equal3~2_combout\,
	combout => \inst30|inst|Equal14~0_combout\);

-- Location: LCCOMB_X24_Y8_N20
\inst30|inst|data[92]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[92]~24_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (((!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\) # (!\inst30|inst|Equal24~6_combout\)))) # 
-- (!\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (!\inst30|inst|Equal14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal14~0_combout\,
	datab => \inst30|inst|Equal24~6_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst30|inst|data[92]~24_combout\);

-- Location: LCCOMB_X24_Y4_N26
\inst30|inst|Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal11~0_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\ & (\inst30|inst|Equal0~3_combout\ & \inst30|inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	datac => \inst30|inst|Equal0~3_combout\,
	datad => \inst30|inst|Equal0~4_combout\,
	combout => \inst30|inst|Equal11~0_combout\);

-- Location: LCCOMB_X23_Y4_N10
\inst30|inst|data[92]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[92]~25_combout\ = ((!\inst30|inst|Equal7~1_combout\ & (!\inst30|inst|Equal3~5_combout\ & !\inst30|inst|Equal11~0_combout\))) # (!\inst30|inst|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal7~1_combout\,
	datab => \inst30|inst|Equal0~6_combout\,
	datac => \inst30|inst|Equal3~5_combout\,
	datad => \inst30|inst|Equal11~0_combout\,
	combout => \inst30|inst|data[92]~25_combout\);

-- Location: LCCOMB_X24_Y8_N14
\inst30|inst|data[92]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[92]~26_combout\ = (\inst30|inst|Equal24~6_combout\ & ((\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ $ (!\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\)))) # (!\inst30|inst|Equal24~6_combout\ & 
-- (((\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\) # (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\)) # (!\inst30|inst|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal11~0_combout\,
	datab => \inst30|inst|Equal24~6_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst30|inst|data[92]~26_combout\);

-- Location: LCCOMB_X25_Y8_N2
\inst30|inst|data[92]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[92]~27_combout\ = (!\inst30|inst|Equal20~1_combout\ & (\inst30|inst|data[92]~24_combout\ & (\inst30|inst|data[92]~25_combout\ & \inst30|inst|data[92]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal20~1_combout\,
	datab => \inst30|inst|data[92]~24_combout\,
	datac => \inst30|inst|data[92]~25_combout\,
	datad => \inst30|inst|data[92]~26_combout\,
	combout => \inst30|inst|data[92]~27_combout\);

-- Location: LCCOMB_X24_Y4_N8
\inst30|inst|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal2~0_combout\ = (\inst30|inst|Equal0~5_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal0~5_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst30|inst|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y4_N18
\inst9|Equal7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Equal7~10_combout\ = (((!\inst30|inst|Equal3~2_combout\) # (!\inst30|inst|Equal7~0_combout\)) # (!\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\)) # (!\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst30|inst|Equal7~0_combout\,
	datad => \inst30|inst|Equal3~2_combout\,
	combout => \inst9|Equal7~10_combout\);

-- Location: LCCOMB_X26_Y4_N16
\inst30|inst|Equal22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal22~0_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst30|inst|Equal21~0_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\ & \inst30|inst|Equal20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst30|inst|Equal21~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datad => \inst30|inst|Equal20~0_combout\,
	combout => \inst30|inst|Equal22~0_combout\);

-- Location: LCCOMB_X24_Y4_N16
\inst30|inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal1~0_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst30|inst|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y4_N28
\inst30|inst|data[87]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[87]~22_combout\ = ((!\inst30|inst|Equal7~1_combout\ & (!\inst30|inst|Equal0~5_combout\ & !\inst30|inst|Equal11~0_combout\))) # (!\inst30|inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal7~1_combout\,
	datab => \inst30|inst|Equal1~0_combout\,
	datac => \inst30|inst|Equal0~5_combout\,
	datad => \inst30|inst|Equal11~0_combout\,
	combout => \inst30|inst|data[87]~22_combout\);

-- Location: LCCOMB_X23_Y4_N24
\inst30|inst|Equal21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal21~2_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\ & (\inst30|inst|Equal1~0_combout\ & (\inst30|inst|Equal21~1_combout\ & \inst30|inst|Equal21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datab => \inst30|inst|Equal1~0_combout\,
	datac => \inst30|inst|Equal21~1_combout\,
	datad => \inst30|inst|Equal21~0_combout\,
	combout => \inst30|inst|Equal21~2_combout\);

-- Location: LCCOMB_X22_Y6_N28
\inst30|inst|data[92]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[92]~23_combout\ = (\inst9|Equal7~10_combout\ & (!\inst30|inst|Equal22~0_combout\ & (\inst30|inst|data[87]~22_combout\ & !\inst30|inst|Equal21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal7~10_combout\,
	datab => \inst30|inst|Equal22~0_combout\,
	datac => \inst30|inst|data[87]~22_combout\,
	datad => \inst30|inst|Equal21~2_combout\,
	combout => \inst30|inst|data[92]~23_combout\);

-- Location: LCCOMB_X22_Y6_N14
\inst30|inst|data[92]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[92]~28_combout\ = (\inst30|inst|data[86]~21_combout\ & (\inst30|inst|data[92]~27_combout\ & (!\inst30|inst|Equal2~0_combout\ & \inst30|inst|data[92]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[86]~21_combout\,
	datab => \inst30|inst|data[92]~27_combout\,
	datac => \inst30|inst|Equal2~0_combout\,
	datad => \inst30|inst|data[92]~23_combout\,
	combout => \inst30|inst|data[92]~28_combout\);

-- Location: LCCOMB_X22_Y6_N30
\inst30|inst|Equal29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal29~0_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\ & (\inst30|inst|Equal21~1_combout\ & (\inst30|inst|Equal21~0_combout\ & \inst30|inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datab => \inst30|inst|Equal21~1_combout\,
	datac => \inst30|inst|Equal21~0_combout\,
	datad => \inst30|inst|Equal1~0_combout\,
	combout => \inst30|inst|Equal29~0_combout\);

-- Location: LCCOMB_X25_Y4_N12
\inst30|inst|Equal41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal41~0_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\ & \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	combout => \inst30|inst|Equal41~0_combout\);

-- Location: LCCOMB_X27_Y4_N20
\inst30|inst|Equal42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal42~0_combout\ = (\inst30|inst|Equal1~0_combout\ & (\inst30|inst|Equal21~1_combout\ & (\inst30|inst|Equal41~0_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal1~0_combout\,
	datab => \inst30|inst|Equal21~1_combout\,
	datac => \inst30|inst|Equal41~0_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \inst30|inst|Equal42~0_combout\);

-- Location: LCCOMB_X25_Y2_N0
\inst30|inst|Equal31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal31~1_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	combout => \inst30|inst|Equal31~1_combout\);

-- Location: LCCOMB_X27_Y4_N0
\inst30|inst|Equal39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal39~0_combout\ = (\inst30|inst|Equal20~0_combout\ & (\inst30|inst|Equal31~1_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal20~0_combout\,
	datab => \inst30|inst|Equal31~1_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \inst30|inst|Equal39~0_combout\);

-- Location: LCCOMB_X25_Y8_N10
\inst30|inst|data[42]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[42]~30_combout\ = (!\inst30|inst|Equal29~0_combout\ & (!\inst30|inst|Equal42~0_combout\ & !\inst30|inst|Equal39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|Equal29~0_combout\,
	datac => \inst30|inst|Equal42~0_combout\,
	datad => \inst30|inst|Equal39~0_combout\,
	combout => \inst30|inst|data[42]~30_combout\);

-- Location: LCCOMB_X26_Y4_N26
\inst30|inst|Equal36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal36~0_combout\ = (\inst30|inst|Equal31~1_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & \inst30|inst|Equal24~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal31~1_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst30|inst|Equal24~5_combout\,
	combout => \inst30|inst|Equal36~0_combout\);

-- Location: LCCOMB_X26_Y3_N6
\inst30|inst|Equal33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal33~0_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	combout => \inst30|inst|Equal33~0_combout\);

-- Location: LCCOMB_X26_Y5_N2
\inst30|inst|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal2~1_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst30|inst|Equal2~1_combout\);

-- Location: LCCOMB_X26_Y4_N10
\inst30|inst|Equal37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal37~0_combout\ = (\inst30|inst|Equal33~0_combout\ & (\inst30|inst|Equal24~5_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & \inst30|inst|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal33~0_combout\,
	datab => \inst30|inst|Equal24~5_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst30|inst|Equal2~1_combout\,
	combout => \inst30|inst|Equal37~0_combout\);

-- Location: LCCOMB_X25_Y2_N16
\inst30|inst|Equal38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal38~0_combout\ = (\inst30|inst|Equal24~5_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & 
-- !\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal24~5_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	combout => \inst30|inst|Equal38~0_combout\);

-- Location: LCCOMB_X26_Y4_N28
\inst30|inst|Equal38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal38~1_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & \inst30|inst|Equal38~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst30|inst|Equal38~0_combout\,
	combout => \inst30|inst|Equal38~1_combout\);

-- Location: LCCOMB_X21_Y6_N24
\inst30|inst3|EA[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EA[1]~3_combout\ = (!\inst30|inst|Equal36~0_combout\ & (!\inst30|inst|Equal37~0_combout\ & !\inst30|inst|Equal38~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|Equal36~0_combout\,
	datac => \inst30|inst|Equal37~0_combout\,
	datad => \inst30|inst|Equal38~1_combout\,
	combout => \inst30|inst3|EA[1]~3_combout\);

-- Location: LCCOMB_X26_Y4_N4
\inst30|inst|Equal31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal31~0_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\ & \inst30|inst|Equal21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datad => \inst30|inst|Equal21~1_combout\,
	combout => \inst30|inst|Equal31~0_combout\);

-- Location: LCCOMB_X25_Y2_N14
\inst30|inst|Equal32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal32~0_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & 
-- \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	combout => \inst30|inst|Equal32~0_combout\);

-- Location: LCCOMB_X27_Y4_N16
\inst30|inst|Equal40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal40~0_combout\ = (\inst30|inst|Equal32~0_combout\ & (\inst30|inst|Equal21~1_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal32~0_combout\,
	datab => \inst30|inst|Equal21~1_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \inst30|inst|Equal40~0_combout\);

-- Location: LCCOMB_X25_Y8_N14
\inst30|inst|data[42]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[42]~29_combout\ = (!\inst30|inst|Equal40~0_combout\ & (((\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\) # (!\inst30|inst|Equal41~0_combout\)) # (!\inst30|inst|Equal31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal31~0_combout\,
	datab => \inst30|inst|Equal41~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst|Equal40~0_combout\,
	combout => \inst30|inst|data[42]~29_combout\);

-- Location: LCCOMB_X26_Y4_N0
\inst30|inst|Equal35~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal35~2_combout\ = (\inst30|inst|Equal31~1_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & \inst30|inst|Equal24~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal31~1_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst30|inst|Equal24~5_combout\,
	combout => \inst30|inst|Equal35~2_combout\);

-- Location: LCCOMB_X26_Y4_N20
\inst30|inst|Equal32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal32~1_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & (\inst30|inst|Equal21~1_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\ & \inst30|inst|Equal32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datab => \inst30|inst|Equal21~1_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datad => \inst30|inst|Equal32~0_combout\,
	combout => \inst30|inst|Equal32~1_combout\);

-- Location: LCCOMB_X26_Y4_N18
\inst30|inst|Equal33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal33~1_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst30|inst|Equal31~0_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & \inst30|inst|Equal33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst30|inst|Equal31~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst30|inst|Equal33~0_combout\,
	combout => \inst30|inst|Equal33~1_combout\);

-- Location: LCCOMB_X24_Y8_N10
\inst30|inst|Equal30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal30~0_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst30|inst|Equal21~0_combout\ & \inst30|inst|Equal20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst30|inst|Equal21~0_combout\,
	datad => \inst30|inst|Equal20~0_combout\,
	combout => \inst30|inst|Equal30~0_combout\);

-- Location: LCCOMB_X26_Y4_N14
\inst30|inst3|nCBD~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nCBD~1_combout\ = (!\inst30|inst|Equal30~0_combout\ & (((\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\) # (!\inst30|inst|Equal31~0_combout\)) # (!\inst30|inst|Equal31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal31~1_combout\,
	datab => \inst30|inst|Equal31~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst30|inst|Equal30~0_combout\,
	combout => \inst30|inst3|nCBD~1_combout\);

-- Location: LCCOMB_X29_Y6_N12
\inst30|inst3|EA[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EA[1]~2_combout\ = (!\inst30|inst|Equal35~2_combout\ & (!\inst30|inst|Equal32~1_combout\ & (!\inst30|inst|Equal33~1_combout\ & \inst30|inst3|nCBD~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal35~2_combout\,
	datab => \inst30|inst|Equal32~1_combout\,
	datac => \inst30|inst|Equal33~1_combout\,
	datad => \inst30|inst3|nCBD~1_combout\,
	combout => \inst30|inst3|EA[1]~2_combout\);

-- Location: LCCOMB_X25_Y8_N4
\inst30|inst|data[42]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[42]~31_combout\ = (\inst30|inst|data[42]~30_combout\ & (\inst30|inst3|EA[1]~3_combout\ & (\inst30|inst|data[42]~29_combout\ & \inst30|inst3|EA[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[42]~30_combout\,
	datab => \inst30|inst3|EA[1]~3_combout\,
	datac => \inst30|inst|data[42]~29_combout\,
	datad => \inst30|inst3|EA[1]~2_combout\,
	combout => \inst30|inst|data[42]~31_combout\);

-- Location: LCCOMB_X27_Y8_N20
\inst30|inst|Equal43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal43~0_combout\ = (\inst30|inst|Equal20~0_combout\ & (\inst30|inst|Equal41~0_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\ & \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal20~0_combout\,
	datab => \inst30|inst|Equal41~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst30|inst|Equal43~0_combout\);

-- Location: LCCOMB_X25_Y8_N28
\inst30|inst3|UPA[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[2]~3_combout\ = (\inst30|inst3|UPA[2]~2_combout\ & (\inst30|inst|data[92]~28_combout\ & (\inst30|inst|data[42]~31_combout\ & !\inst30|inst|Equal43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[2]~2_combout\,
	datab => \inst30|inst|data[92]~28_combout\,
	datac => \inst30|inst|data[42]~31_combout\,
	datad => \inst30|inst|Equal43~0_combout\,
	combout => \inst30|inst3|UPA[2]~3_combout\);

-- Location: LCCOMB_X22_Y6_N20
\inst30|inst|data[80]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[80]~72_combout\ = (\inst30|inst|Equal34~1_combout\) # ((\inst30|inst|Equal55~2_combout\ & \inst30|inst3|UPA[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal55~2_combout\,
	datac => \inst30|inst3|UPA[2]~3_combout\,
	datad => \inst30|inst|Equal34~1_combout\,
	combout => \inst30|inst|data[80]~72_combout\);

-- Location: FF_X22_Y6_N21
\inst30|inst3|liga[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30|inst|data[80]~72_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst3|liga\(6));

-- Location: LCCOMB_X23_Y4_N30
\inst30|inst|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal0~7_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst30|inst|Equal0~5_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst30|inst|Equal0~5_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst30|inst|Equal0~7_combout\);

-- Location: LCCOMB_X23_Y4_N16
\inst30|inst|data[87]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[87]~53_combout\ = (!\inst30|inst|Equal4~3_combout\ & (\inst30|inst3|nCBD~0_combout\ & (!\inst30|inst|Equal0~7_combout\ & \inst30|inst|data[92]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal4~3_combout\,
	datab => \inst30|inst3|nCBD~0_combout\,
	datac => \inst30|inst|Equal0~7_combout\,
	datad => \inst30|inst|data[92]~25_combout\,
	combout => \inst30|inst|data[87]~53_combout\);

-- Location: LCCOMB_X24_Y4_N18
\inst30|inst|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal8~0_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (\inst30|inst|Equal1~0_combout\ & (\inst30|inst|Equal3~2_combout\ & \inst30|inst|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datab => \inst30|inst|Equal1~0_combout\,
	datac => \inst30|inst|Equal3~2_combout\,
	datad => \inst30|inst|Equal7~0_combout\,
	combout => \inst30|inst|Equal8~0_combout\);

-- Location: LCCOMB_X24_Y4_N20
\inst30|inst3|prueba[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|prueba[0]~3_combout\ = (\inst30|inst|data[87]~53_combout\ & (\inst30|inst|data[87]~20_combout\ & (!\inst30|inst|Equal2~0_combout\ & !\inst30|inst|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[87]~53_combout\,
	datab => \inst30|inst|data[87]~20_combout\,
	datac => \inst30|inst|Equal2~0_combout\,
	datad => \inst30|inst|Equal8~0_combout\,
	combout => \inst30|inst3|prueba[0]~3_combout\);

-- Location: LCCOMB_X24_Y4_N24
\inst30|inst|data[73]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[73]~82_combout\ = ((!\inst30|inst|Equal0~5_combout\ & ((!\inst30|inst|Equal11~0_combout\) # (!\inst30|inst3|prueba[0]~3_combout\)))) # (!\inst30|inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal0~5_combout\,
	datab => \inst30|inst3|prueba[0]~3_combout\,
	datac => \inst30|inst|Equal11~0_combout\,
	datad => \inst30|inst|Equal1~0_combout\,
	combout => \inst30|inst|data[73]~82_combout\);

-- Location: LCCOMB_X24_Y4_N10
\inst30|inst3|nCRI\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nCRI~combout\ = LCELL((\inst30|inst|data[73]~82_combout\) # (!\RESET~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst30|inst|data[73]~82_combout\,
	combout => \inst30|inst3|nCRI~combout\);

-- Location: LCCOMB_X24_Y7_N10
\inst30|inst|data~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data~35_combout\ = ((!\inst30|inst|Equal31~1_combout\) # (!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\)) # (!\inst30|inst|Equal24~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|Equal24~5_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst30|inst|Equal31~1_combout\,
	combout => \inst30|inst|data~35_combout\);

-- Location: LCCOMB_X25_Y6_N20
\inst30|inst|Equal34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal34~0_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\ & 
-- !\inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \inst30|inst|Equal34~0_combout\);

-- Location: LCCOMB_X24_Y7_N6
\inst30|inst|Equal54~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal54~2_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst30|inst|Equal34~0_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & \inst30|inst|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst30|inst|Equal34~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst|Equal7~0_combout\,
	combout => \inst30|inst|Equal54~2_combout\);

-- Location: LCCOMB_X24_Y8_N30
\inst30|inst|Equal51~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal51~0_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\ & \inst30|inst|Equal20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datad => \inst30|inst|Equal20~0_combout\,
	combout => \inst30|inst|Equal51~0_combout\);

-- Location: LCCOMB_X23_Y6_N18
\inst30|inst|Equal52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal52~0_combout\ = (\inst30|inst|Equal65~0_combout\ & (\inst30|inst|Equal34~0_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & \inst30|inst|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal65~0_combout\,
	datab => \inst30|inst|Equal34~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst30|inst|Equal3~3_combout\,
	combout => \inst30|inst|Equal52~0_combout\);

-- Location: LCCOMB_X24_Y7_N14
\inst30|inst3|UPA[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[1]~0_combout\ = (\inst30|inst|Equal51~0_combout\ & (!\inst30|inst|Equal43~1_combout\ & ((!\inst30|inst|Equal0~6_combout\) # (!\inst30|inst|Equal52~0_combout\)))) # (!\inst30|inst|Equal51~0_combout\ & (((!\inst30|inst|Equal0~6_combout\)) 
-- # (!\inst30|inst|Equal52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal51~0_combout\,
	datab => \inst30|inst|Equal52~0_combout\,
	datac => \inst30|inst|Equal43~1_combout\,
	datad => \inst30|inst|Equal0~6_combout\,
	combout => \inst30|inst3|UPA[1]~0_combout\);

-- Location: LCCOMB_X24_Y8_N6
\inst30|inst|Equal41~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal41~1_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & 
-- !\inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	combout => \inst30|inst|Equal41~1_combout\);

-- Location: LCCOMB_X27_Y4_N6
\inst30|inst|Equal50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal50~0_combout\ = (\inst30|inst|Equal1~0_combout\ & (\inst30|inst|Equal21~1_combout\ & (\inst30|inst|Equal41~0_combout\ & \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal1~0_combout\,
	datab => \inst30|inst|Equal21~1_combout\,
	datac => \inst30|inst|Equal41~0_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \inst30|inst|Equal50~0_combout\);

-- Location: LCCOMB_X24_Y7_N22
\inst30|inst|data[42]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[42]~41_combout\ = (\inst30|inst3|UPA[1]~0_combout\ & (!\inst30|inst|Equal50~0_combout\ & ((!\inst30|inst|Equal41~1_combout\) # (!\inst30|inst|Equal51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal51~0_combout\,
	datab => \inst30|inst3|UPA[1]~0_combout\,
	datac => \inst30|inst|Equal41~1_combout\,
	datad => \inst30|inst|Equal50~0_combout\,
	combout => \inst30|inst|data[42]~41_combout\);

-- Location: LCCOMB_X24_Y7_N12
\inst30|inst3|UPA[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[1]~4_combout\ = (!\inst30|inst|Equal34~1_combout\ & (((!\inst30|inst|Equal0~6_combout\) # (!\inst30|inst|Equal41~0_combout\)) # (!\inst30|inst|Equal24~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal34~1_combout\,
	datab => \inst30|inst|Equal24~5_combout\,
	datac => \inst30|inst|Equal41~0_combout\,
	datad => \inst30|inst|Equal0~6_combout\,
	combout => \inst30|inst3|UPA[1]~4_combout\);

-- Location: LCCOMB_X24_Y7_N16
\inst30|inst3|UPA[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[2]~1_combout\ = ((\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ $ (!\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\)) # (!\inst30|inst|Equal41~0_combout\)) # (!\inst30|inst|Equal24~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal24~5_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst30|inst|Equal41~0_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst30|inst3|UPA[2]~1_combout\);

-- Location: LCCOMB_X24_Y8_N24
\inst30|inst|Equal48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal48~0_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst30|inst|Equal43~1_combout\ & \inst30|inst|Equal24~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst30|inst|Equal43~1_combout\,
	datac => \inst30|inst|Equal24~5_combout\,
	combout => \inst30|inst|Equal48~0_combout\);

-- Location: LCCOMB_X24_Y7_N20
\inst30|inst3|EB[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EB[1]~0_combout\ = (\inst30|inst3|UPA[1]~4_combout\ & (\inst30|inst3|UPA[2]~1_combout\ & (\inst30|inst3|UPA[2]~3_combout\ & !\inst30|inst|Equal48~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[1]~4_combout\,
	datab => \inst30|inst3|UPA[2]~1_combout\,
	datac => \inst30|inst3|UPA[2]~3_combout\,
	datad => \inst30|inst|Equal48~0_combout\,
	combout => \inst30|inst3|EB[1]~0_combout\);

-- Location: LCCOMB_X24_Y7_N26
\inst30|inst|Equal53~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal53~2_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst30|inst|Equal34~0_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & \inst30|inst|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst30|inst|Equal34~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst|Equal7~0_combout\,
	combout => \inst30|inst|Equal53~2_combout\);

-- Location: LCCOMB_X22_Y5_N14
\inst30|inst3|prueba[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|prueba[3]~0_combout\ = (!\inst30|inst|Equal54~2_combout\ & (\inst30|inst|data[42]~41_combout\ & (\inst30|inst3|EB[1]~0_combout\ & !\inst30|inst|Equal53~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal54~2_combout\,
	datab => \inst30|inst|data[42]~41_combout\,
	datac => \inst30|inst3|EB[1]~0_combout\,
	datad => \inst30|inst|Equal53~2_combout\,
	combout => \inst30|inst3|prueba[3]~0_combout\);

-- Location: LCCOMB_X27_Y5_N12
\inst30|inst|Equal62~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal62~2_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[5]~5_combout\ & \inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst5|$00000|auto_generated|result_node[5]~5_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \inst30|inst|Equal62~2_combout\);

-- Location: LCCOMB_X22_Y6_N26
\inst30|inst|Equal62~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal62~3_combout\ = (\inst30|inst|Equal0~3_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (\inst30|inst|Equal62~2_combout\ & \inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal0~3_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datac => \inst30|inst|Equal62~2_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	combout => \inst30|inst|Equal62~3_combout\);

-- Location: LCCOMB_X22_Y6_N2
\inst30|inst|Equal62~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal62~4_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & \inst30|inst|Equal62~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst30|inst|Equal62~3_combout\,
	combout => \inst30|inst|Equal62~4_combout\);

-- Location: LCCOMB_X27_Y8_N24
\inst30|inst3|PC[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|PC[0]~0_combout\ = ((\inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\) # (\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\)) # (!\inst30|inst|Equal65~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|Equal65~2_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst30|inst3|PC[0]~0_combout\);

-- Location: LCCOMB_X23_Y6_N4
\inst30|inst|Equal58~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal58~0_combout\ = (\inst30|inst|Equal33~0_combout\ & (\inst30|inst|Equal2~1_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & \inst30|inst|Equal24~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal33~0_combout\,
	datab => \inst30|inst|Equal2~1_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst30|inst|Equal24~5_combout\,
	combout => \inst30|inst|Equal58~0_combout\);

-- Location: LCCOMB_X27_Y4_N2
\inst30|inst|Equal61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal61~0_combout\ = (\inst30|inst|Equal32~0_combout\ & (\inst30|inst|Equal21~1_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal32~0_combout\,
	datab => \inst30|inst|Equal21~1_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \inst30|inst|Equal61~0_combout\);

-- Location: LCCOMB_X26_Y3_N0
\inst30|inst|Equal57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal57~0_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst30|inst|Equal57~0_combout\);

-- Location: LCCOMB_X27_Y3_N16
\inst30|inst|Equal60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal60~0_combout\ = (\inst30|inst|Equal31~1_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\ & (\inst30|inst|Equal20~0_combout\ & \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal31~1_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datac => \inst30|inst|Equal20~0_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	combout => \inst30|inst|Equal60~0_combout\);

-- Location: LCCOMB_X22_Y6_N18
\inst30|inst3|EA[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EA[0]~4_combout\ = (!\inst30|inst|Equal61~0_combout\ & (!\inst30|inst|Equal60~0_combout\ & ((!\inst30|inst|Equal57~0_combout\) # (!\inst30|inst|Equal38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal38~0_combout\,
	datab => \inst30|inst|Equal61~0_combout\,
	datac => \inst30|inst|Equal57~0_combout\,
	datad => \inst30|inst|Equal60~0_combout\,
	combout => \inst30|inst3|EA[0]~4_combout\);

-- Location: LCCOMB_X26_Y5_N20
\inst30|inst3|PC[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|PC[0]~1_combout\ = (!\inst30|inst|Equal62~4_combout\ & (\inst30|inst3|PC[0]~0_combout\ & (!\inst30|inst|Equal58~0_combout\ & \inst30|inst3|EA[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal62~4_combout\,
	datab => \inst30|inst3|PC[0]~0_combout\,
	datac => \inst30|inst|Equal58~0_combout\,
	datad => \inst30|inst3|EA[0]~4_combout\,
	combout => \inst30|inst3|PC[0]~1_combout\);

-- Location: LCCOMB_X27_Y5_N8
\inst30|inst3|PC[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|PC[0]~2_combout\ = (((!\inst30|inst|Equal62~2_combout\) # (!\inst30|inst|Equal0~3_combout\)) # (!\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\)) # (!\inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datac => \inst30|inst|Equal0~3_combout\,
	datad => \inst30|inst|Equal62~2_combout\,
	combout => \inst30|inst3|PC[0]~2_combout\);

-- Location: LCCOMB_X26_Y5_N22
\inst30|inst3|PC[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|PC[0]~3_combout\ = (\inst30|inst3|PC[0]~1_combout\ & ((\inst30|inst3|PC[0]~2_combout\) # ((!\inst30|inst|Equal1~0_combout\ & !\inst30|inst|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|PC[0]~1_combout\,
	datab => \inst30|inst3|PC[0]~2_combout\,
	datac => \inst30|inst|Equal1~0_combout\,
	datad => \inst30|inst|Equal2~1_combout\,
	combout => \inst30|inst3|PC[0]~3_combout\);

-- Location: LCCOMB_X26_Y5_N16
\inst30|inst3|PC[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|PC[0]~4_combout\ = (\inst30|inst|data~35_combout\ & (\inst30|inst3|prueba[3]~0_combout\ & (\inst30|inst3|PC[0]~3_combout\ & !\inst30|inst|Equal55~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data~35_combout\,
	datab => \inst30|inst3|prueba[3]~0_combout\,
	datac => \inst30|inst3|PC[0]~3_combout\,
	datad => \inst30|inst|Equal55~2_combout\,
	combout => \inst30|inst3|PC[0]~4_combout\);

-- Location: LCCOMB_X26_Y5_N10
\inst30|inst3|PC[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|PC[0]~5_combout\ = (\inst30|inst3|PC[0]~4_combout\ & ((\inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\) # ((!\inst30|inst|Equal2~1_combout\) # (!\inst30|inst|Equal65~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datab => \inst30|inst3|PC[0]~4_combout\,
	datac => \inst30|inst|Equal65~2_combout\,
	datad => \inst30|inst|Equal2~1_combout\,
	combout => \inst30|inst3|PC[0]~5_combout\);

-- Location: LCCOMB_X25_Y5_N8
\inst30|inst|Equal69~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal69~0_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst30|inst|Equal65~2_combout\ & 
-- \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst30|inst|Equal65~2_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \inst30|inst|Equal69~0_combout\);

-- Location: LCCOMB_X25_Y8_N26
\inst30|inst|Equal68~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal68~2_combout\ = (\inst30|inst|Equal65~2_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & 
-- \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal65~2_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst30|inst|Equal68~2_combout\);

-- Location: LCCOMB_X26_Y5_N8
\inst30|inst3|PC[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|PC[0]~6_combout\ = (\inst30|inst3|PC[0]~5_combout\ & (\inst30|inst|Equal69~0_combout\ & (\RESET~input_o\ & !\inst30|inst|Equal68~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|PC[0]~5_combout\,
	datab => \inst30|inst|Equal69~0_combout\,
	datac => \RESET~input_o\,
	datad => \inst30|inst|Equal68~2_combout\,
	combout => \inst30|inst3|PC[0]~6_combout\);

-- Location: LCCOMB_X24_Y7_N2
\inst30|inst|Equal47~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal47~2_combout\ = (\inst30|inst|Equal24~5_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst30|inst|Equal41~0_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal24~5_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst30|inst|Equal41~0_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst30|inst|Equal47~2_combout\);

-- Location: LCCOMB_X23_Y6_N12
\inst30|inst3|nDUPA~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nDUPA~1_combout\ = (!\inst30|inst|Equal37~0_combout\ & (!\inst30|inst|Equal47~2_combout\ & ((!\inst30|inst|Equal2~1_combout\) # (!\inst30|inst|Equal24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal24~6_combout\,
	datab => \inst30|inst|Equal2~1_combout\,
	datac => \inst30|inst|Equal37~0_combout\,
	datad => \inst30|inst|Equal47~2_combout\,
	combout => \inst30|inst3|nDUPA~1_combout\);

-- Location: LCCOMB_X22_Y5_N12
\inst30|inst|data[42]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[42]~42_combout\ = (\inst30|inst|data~35_combout\ & (!\inst30|inst|Equal55~2_combout\ & (\inst30|inst3|prueba[3]~0_combout\ & !\inst30|inst|Equal58~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data~35_combout\,
	datab => \inst30|inst|Equal55~2_combout\,
	datac => \inst30|inst3|prueba[3]~0_combout\,
	datad => \inst30|inst|Equal58~0_combout\,
	combout => \inst30|inst|data[42]~42_combout\);

-- Location: LCCOMB_X26_Y7_N22
\inst30|inst|data[42]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[42]~84_combout\ = ((\inst30|inst|Equal58~0_combout\) # ((\inst30|inst|Equal66~0_combout\ & \inst30|inst|data[42]~42_combout\))) # (!\inst30|inst3|nDUPA~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nDUPA~1_combout\,
	datab => \inst30|inst|Equal66~0_combout\,
	datac => \inst30|inst|data[42]~42_combout\,
	datad => \inst30|inst|Equal58~0_combout\,
	combout => \inst30|inst|data[42]~84_combout\);

-- Location: LCCOMB_X25_Y8_N30
\inst30|inst|data~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data~32_combout\ = (\inst30|inst|data[92]~28_combout\ & (\inst30|inst|data[42]~31_combout\ & !\inst30|inst|Equal43~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|data[92]~28_combout\,
	datac => \inst30|inst|data[42]~31_combout\,
	datad => \inst30|inst|Equal43~0_combout\,
	combout => \inst30|inst|data~32_combout\);

-- Location: LCCOMB_X23_Y6_N22
\inst30|inst|data~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data~36_combout\ = (\inst30|inst3|UPA[1]~0_combout\ & (!\inst30|inst|Equal54~2_combout\ & (\inst30|inst|data~35_combout\ & !\inst30|inst|Equal53~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[1]~0_combout\,
	datab => \inst30|inst|Equal54~2_combout\,
	datac => \inst30|inst|data~35_combout\,
	datad => \inst30|inst|Equal53~2_combout\,
	combout => \inst30|inst|data~36_combout\);

-- Location: LCCOMB_X25_Y5_N14
\inst30|inst|data~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data~88_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ $ (!\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\)) # (!\inst30|inst|Equal62~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst30|inst|Equal62~3_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst30|inst|data~88_combout\);

-- Location: LCCOMB_X25_Y8_N0
\inst30|inst3|nWB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nWB~0_combout\ = (!\inst30|inst|Equal28~0_combout\ & ((!\inst30|inst|Equal4~2_combout\) # (!\inst30|inst|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|Equal3~4_combout\,
	datac => \inst30|inst|Equal4~2_combout\,
	datad => \inst30|inst|Equal28~0_combout\,
	combout => \inst30|inst3|nWB~0_combout\);

-- Location: LCCOMB_X22_Y5_N24
\inst30|inst|data~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data~34_combout\ = (!\inst30|inst|Equal50~0_combout\ & (\inst30|inst|Equal68~2_combout\ & (\inst30|inst|data~88_combout\ & \inst30|inst3|nWB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal50~0_combout\,
	datab => \inst30|inst|Equal68~2_combout\,
	datac => \inst30|inst|data~88_combout\,
	datad => \inst30|inst3|nWB~0_combout\,
	combout => \inst30|inst|data~34_combout\);

-- Location: LCCOMB_X27_Y8_N6
\inst30|inst|data~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data~37_combout\ = (\inst30|inst3|PC[0]~1_combout\ & (((\inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\) # (!\inst30|inst|Equal2~1_combout\)) # (!\inst30|inst|Equal65~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|PC[0]~1_combout\,
	datab => \inst30|inst|Equal65~2_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datad => \inst30|inst|Equal2~1_combout\,
	combout => \inst30|inst|data~37_combout\);

-- Location: LCCOMB_X35_Y6_N0
\inst30|inst|data~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data~38_combout\ = (\inst30|inst|data~36_combout\ & (\inst30|inst|data~34_combout\ & \inst30|inst|data~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data~36_combout\,
	datab => \inst30|inst|data~34_combout\,
	datac => \inst30|inst|data~37_combout\,
	combout => \inst30|inst|data~38_combout\);

-- Location: LCCOMB_X24_Y8_N22
\inst30|inst|data~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data~83_combout\ = ((\inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\) # ((!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\) # (!\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\))) # 
-- (!\inst30|inst|Equal24~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal24~5_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	combout => \inst30|inst|data~83_combout\);

-- Location: LCCOMB_X24_Y7_N8
\inst30|inst|data~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data~33_combout\ = (!\inst30|inst|Equal24~7_combout\ & (\inst30|inst|data~83_combout\ & ((!\inst30|inst|Equal41~1_combout\) # (!\inst30|inst|Equal51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal51~0_combout\,
	datab => \inst30|inst|Equal24~7_combout\,
	datac => \inst30|inst|Equal41~1_combout\,
	datad => \inst30|inst|data~83_combout\,
	combout => \inst30|inst|data~33_combout\);

-- Location: LCCOMB_X26_Y7_N24
\inst30|inst|data~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data~39_combout\ = ((\inst30|inst|data~32_combout\ & (\inst30|inst|data~38_combout\ & \inst30|inst|data~33_combout\))) # (!\inst30|inst3|nDUPA~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data~32_combout\,
	datab => \inst30|inst|data~38_combout\,
	datac => \inst30|inst|data~33_combout\,
	datad => \inst30|inst3|nDUPA~0_combout\,
	combout => \inst30|inst|data~39_combout\);

-- Location: LCCOMB_X26_Y7_N28
\RegAux|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|Equal7~0_combout\ = ((!\inst30|inst|data[42]~84_combout\ & !\inst30|inst|data~39_combout\)) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \inst30|inst|data[42]~84_combout\,
	datad => \inst30|inst|data~39_combout\,
	combout => \RegAux|Equal7~0_combout\);

-- Location: LCCOMB_X26_Y5_N24
\RegAux|TRI_STATE_D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|TRI_STATE_D~0_combout\ = (\RESET~input_o\ & ((\inst30|inst3|PC[0]~5_combout\ & ((\inst30|inst|Equal68~2_combout\))) # (!\inst30|inst3|PC[0]~5_combout\ & (!\inst30|inst3|nDUPA~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|PC[0]~5_combout\,
	datab => \RESET~input_o\,
	datac => \inst30|inst3|nDUPA~0_combout\,
	datad => \inst30|inst|Equal68~2_combout\,
	combout => \RegAux|TRI_STATE_D~0_combout\);

-- Location: LCCOMB_X26_Y5_N4
\RegAux|TRI_STATE_D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|TRI_STATE_D~1_combout\ = (\RegAux|Equal7~0_combout\ & ((\inst30|inst3|PC[0]~6_combout\) # (\RegAux|TRI_STATE_D~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst3|PC[0]~6_combout\,
	datac => \RegAux|Equal7~0_combout\,
	datad => \RegAux|TRI_STATE_D~0_combout\,
	combout => \RegAux|TRI_STATE_D~1_combout\);

-- Location: LCCOMB_X26_Y3_N28
\inst30|inst|Equal59~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal59~0_combout\ = (\inst30|inst|Equal33~0_combout\ & (\inst30|inst|Equal57~0_combout\ & (\inst30|inst|Equal24~5_combout\ & \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal33~0_combout\,
	datab => \inst30|inst|Equal57~0_combout\,
	datac => \inst30|inst|Equal24~5_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst30|inst|Equal59~0_combout\);

-- Location: LCCOMB_X26_Y3_N2
\inst30|inst3|nCBD~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nCBD~2_combout\ = (\RESET~input_o\ & (\inst30|inst|data[42]~42_combout\ & !\inst30|inst|Equal59~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET~input_o\,
	datac => \inst30|inst|data[42]~42_combout\,
	datad => \inst30|inst|Equal59~0_combout\,
	combout => \inst30|inst3|nCBD~2_combout\);

-- Location: LCCOMB_X26_Y3_N12
\inst30|inst3|nRW~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nRW~0_combout\ = (\inst30|inst3|nCBD~2_combout\ & (((!\inst30|inst|Equal60~0_combout\)))) # (!\inst30|inst3|nCBD~2_combout\ & (((!\RESET~input_o\)) # (!\inst30|inst|Equal39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal39~0_combout\,
	datab => \inst30|inst|Equal60~0_combout\,
	datac => \RESET~input_o\,
	datad => \inst30|inst3|nCBD~2_combout\,
	combout => \inst30|inst3|nRW~0_combout\);

-- Location: LCCOMB_X26_Y3_N18
\inst1|PortR~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR~9_combout\ = (!\inst30|inst3|BD~0_combout\ & \inst30|inst3|nRW~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst3|BD~0_combout\,
	datad => \inst30|inst3|nRW~0_combout\,
	combout => \inst1|PortR~9_combout\);

-- Location: LCCOMB_X24_Y7_N24
\inst30|inst3|UPA[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[7]~11_combout\ = (!\inst30|inst|Equal53~2_combout\ & (\inst30|inst|data[42]~41_combout\ & \inst30|inst3|EB[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal53~2_combout\,
	datab => \inst30|inst|data[42]~41_combout\,
	datac => \inst30|inst3|EB[1]~0_combout\,
	combout => \inst30|inst3|UPA[7]~11_combout\);

-- Location: LCCOMB_X24_Y4_N28
\inst30|inst|Equal17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal17~0_combout\ = (\inst30|inst|Equal3~2_combout\ & (\inst30|inst|Equal7~0_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\ & \inst30|inst|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal3~2_combout\,
	datab => \inst30|inst|Equal7~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datad => \inst30|inst|Equal10~0_combout\,
	combout => \inst30|inst|Equal17~0_combout\);

-- Location: LCCOMB_X26_Y4_N12
\inst30|inst3|nEX0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nEX0~0_combout\ = (!\inst30|inst|Equal33~1_combout\ & !\inst30|inst|Equal22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal33~1_combout\,
	datab => \inst30|inst|Equal22~0_combout\,
	combout => \inst30|inst3|nEX0~0_combout\);

-- Location: LCCOMB_X25_Y8_N8
\inst30|inst3|UPA[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[7]~9_combout\ = (\inst30|inst|data[42]~30_combout\ & (\inst30|inst|data[86]~21_combout\ & \inst30|inst|data[42]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[42]~30_combout\,
	datab => \inst30|inst|data[86]~21_combout\,
	datad => \inst30|inst|data[42]~29_combout\,
	combout => \inst30|inst3|UPA[7]~9_combout\);

-- Location: LCCOMB_X25_Y6_N10
\inst30|inst3|UPA[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[7]~6_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\) # ((!\inst30|inst|Equal6~0_combout\) # (!\inst30|inst|Equal34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datab => \inst30|inst|Equal34~0_combout\,
	datad => \inst30|inst|Equal6~0_combout\,
	combout => \inst30|inst3|UPA[7]~6_combout\);

-- Location: LCCOMB_X25_Y6_N18
\inst30|inst3|UPA[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[7]~7_combout\ = (!\inst30|inst|Equal28~0_combout\ & (\inst30|inst3|UPA[7]~6_combout\ & ((!\inst30|inst|Equal4~2_combout\) # (!\inst30|inst|Equal3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal28~0_combout\,
	datab => \inst30|inst|Equal3~4_combout\,
	datac => \inst30|inst|Equal4~2_combout\,
	datad => \inst30|inst3|UPA[7]~6_combout\,
	combout => \inst30|inst3|UPA[7]~7_combout\);

-- Location: LCCOMB_X25_Y6_N24
\inst30|inst3|UPA[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[7]~8_combout\ = (!\inst30|inst|Equal2~0_combout\ & (\inst30|inst|data[92]~27_combout\ & (\inst30|inst|data[92]~23_combout\ & \inst30|inst3|UPA[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal2~0_combout\,
	datab => \inst30|inst|data[92]~27_combout\,
	datac => \inst30|inst|data[92]~23_combout\,
	datad => \inst30|inst3|UPA[7]~7_combout\,
	combout => \inst30|inst3|UPA[7]~8_combout\);

-- Location: LCCOMB_X25_Y6_N6
\inst30|inst3|UPA[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[7]~10_combout\ = (\inst30|inst3|EA[1]~3_combout\ & (\inst30|inst3|UPA[7]~9_combout\ & (\inst30|inst3|EA[1]~2_combout\ & \inst30|inst3|UPA[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EA[1]~3_combout\,
	datab => \inst30|inst3|UPA[7]~9_combout\,
	datac => \inst30|inst3|EA[1]~2_combout\,
	datad => \inst30|inst3|UPA[7]~8_combout\,
	combout => \inst30|inst3|UPA[7]~10_combout\);

-- Location: LCCOMB_X25_Y6_N12
\inst30|inst3|nEX0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nEX0~1_combout\ = (\inst30|inst3|nEX0~0_combout\ & (((!\inst30|inst3|UPA[7]~10_combout\) # (!\inst30|inst|Equal43~0_combout\)) # (!\inst30|inst|data[84]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nEX0~0_combout\,
	datab => \inst30|inst|data[84]~40_combout\,
	datac => \inst30|inst|Equal43~0_combout\,
	datad => \inst30|inst3|UPA[7]~10_combout\,
	combout => \inst30|inst3|nEX0~1_combout\);

-- Location: LCCOMB_X25_Y6_N2
\inst30|inst3|nEX0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nEX0~2_combout\ = (!\inst30|inst|Equal17~0_combout\ & \inst30|inst3|nEX0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|Equal17~0_combout\,
	datad => \inst30|inst3|nEX0~1_combout\,
	combout => \inst30|inst3|nEX0~2_combout\);

-- Location: LCCOMB_X25_Y6_N16
\inst30|inst3|nEX0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nEX0~3_combout\ = ((\inst30|inst3|UPA[7]~11_combout\ & (!\inst30|inst|Equal54~2_combout\)) # (!\inst30|inst3|UPA[7]~11_combout\ & ((\inst30|inst3|nEX0~2_combout\)))) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[7]~11_combout\,
	datab => \inst30|inst|Equal54~2_combout\,
	datac => \RESET~input_o\,
	datad => \inst30|inst3|nEX0~2_combout\,
	combout => \inst30|inst3|nEX0~3_combout\);

-- Location: LCCOMB_X25_Y5_N28
\inst8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = (\RESET~input_o\ & (\inst30|inst|Equal0~6_combout\ & (\inst30|inst|Equal11~0_combout\ & !\inst8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst30|inst|Equal0~6_combout\,
	datac => \inst30|inst|Equal11~0_combout\,
	datad => \inst8~q\,
	combout => \inst8~0_combout\);

-- Location: LCCOMB_X25_Y5_N26
\inst8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8~1_combout\ = (\inst8~0_combout\) # ((\inst8~q\ & ((!\inst30|inst3|instruccion\(0)) # (!\inst30|inst3|instruccion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|instruccion\(1),
	datab => \inst30|inst3|instruccion\(0),
	datac => \inst8~q\,
	datad => \inst8~0_combout\,
	combout => \inst8~1_combout\);

-- Location: FF_X25_Y5_N27
inst8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8~q\);

-- Location: LCCOMB_X24_Y4_N2
\inst30|inst|Equal15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal15~0_combout\ = (((!\inst30|inst|Equal1~0_combout\) # (!\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\)) # (!\inst30|inst|Equal7~0_combout\)) # (!\inst30|inst|Equal3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal3~2_combout\,
	datab => \inst30|inst|Equal7~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datad => \inst30|inst|Equal1~0_combout\,
	combout => \inst30|inst|Equal15~0_combout\);

-- Location: LCCOMB_X24_Y4_N14
\inst13|TRI_STATE_D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|TRI_STATE_D~0_combout\ = (\inst8~q\ & (((!\inst30|inst|Equal17~0_combout\ & \inst30|inst|Equal15~0_combout\)) # (!\RESET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal17~0_combout\,
	datab => \RESET~input_o\,
	datac => \inst8~q\,
	datad => \inst30|inst|Equal15~0_combout\,
	combout => \inst13|TRI_STATE_D~0_combout\);

-- Location: LCCOMB_X26_Y6_N26
\inst30|inst3|EB[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EB[1]~3_combout\ = (\inst30|inst|Equal62~3_combout\ & (\RESET~input_o\ & (!\inst30|inst|Equal59~0_combout\ & \inst30|inst|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal62~3_combout\,
	datab => \RESET~input_o\,
	datac => \inst30|inst|Equal59~0_combout\,
	datad => \inst30|inst|Equal0~6_combout\,
	combout => \inst30|inst3|EB[1]~3_combout\);

-- Location: LCCOMB_X27_Y4_N14
\inst30|inst|Equal49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal49~0_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst30|inst|Equal41~0_combout\ & (\inst30|inst|Equal20~0_combout\ & \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst30|inst|Equal41~0_combout\,
	datac => \inst30|inst|Equal20~0_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \inst30|inst|Equal49~0_combout\);

-- Location: LCCOMB_X26_Y6_N24
\inst30|inst3|EB[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EB[1]~2_combout\ = (\RESET~input_o\ & ((\inst30|inst|Equal50~0_combout\) # ((\inst30|inst|Equal49~0_combout\) # (\inst30|inst|Equal60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal50~0_combout\,
	datab => \RESET~input_o\,
	datac => \inst30|inst|Equal49~0_combout\,
	datad => \inst30|inst|Equal60~0_combout\,
	combout => \inst30|inst3|EB[1]~2_combout\);

-- Location: LCCOMB_X23_Y6_N14
\inst30|inst3|EA[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EA[0]~5_combout\ = (\inst30|inst|data~36_combout\ & (!\inst30|inst|Equal58~0_combout\ & ((!\inst30|inst|Equal10~0_combout\) # (!\inst30|inst|Equal52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data~36_combout\,
	datab => \inst30|inst|Equal52~0_combout\,
	datac => \inst30|inst|Equal58~0_combout\,
	datad => \inst30|inst|Equal10~0_combout\,
	combout => \inst30|inst3|EA[0]~5_combout\);

-- Location: LCCOMB_X26_Y6_N12
\inst30|inst3|EB[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EB[1]~4_combout\ = (!\inst30|inst3|EB[1]~2_combout\ & (((!\inst30|inst3|EB[1]~0_combout\) # (!\inst30|inst3|EA[0]~5_combout\)) # (!\inst30|inst3|EB[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EB[1]~3_combout\,
	datab => \inst30|inst3|EB[1]~2_combout\,
	datac => \inst30|inst3|EA[0]~5_combout\,
	datad => \inst30|inst3|EB[1]~0_combout\,
	combout => \inst30|inst3|EB[1]~4_combout\);

-- Location: LCCOMB_X24_Y6_N30
\inst30|inst3|nDUPA~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nDUPA~2_combout\ = (!\inst30|inst|Equal34~1_combout\ & (!\inst30|inst|Equal23~0_combout\ & !\inst30|inst|Equal44~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal34~1_combout\,
	datac => \inst30|inst|Equal23~0_combout\,
	datad => \inst30|inst|Equal44~0_combout\,
	combout => \inst30|inst3|nDUPA~2_combout\);

-- Location: LCCOMB_X24_Y6_N6
\inst30|inst3|nWB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nWB~1_combout\ = (\RESET~input_o\ & (\inst30|inst3|nDUPA~2_combout\ & ((!\inst30|inst|Equal0~5_combout\) # (!\inst30|inst|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst30|inst|Equal0~6_combout\,
	datac => \inst30|inst3|nDUPA~2_combout\,
	datad => \inst30|inst|Equal0~5_combout\,
	combout => \inst30|inst3|nWB~1_combout\);

-- Location: LCCOMB_X24_Y6_N24
\inst30|inst3|nWB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nWB~3_combout\ = (\inst30|inst|data~33_combout\ & (\inst30|inst|data~32_combout\ & (\inst30|inst3|nWB~0_combout\ & \inst30|inst3|nWB~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data~33_combout\,
	datab => \inst30|inst|data~32_combout\,
	datac => \inst30|inst3|nWB~0_combout\,
	datad => \inst30|inst3|nWB~1_combout\,
	combout => \inst30|inst3|nWB~3_combout\);

-- Location: LCCOMB_X24_Y6_N12
\inst30|inst3|nWB~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nWB~4_combout\ = (\inst30|inst3|nWB~3_combout\ & (((!\inst30|inst|Equal50~0_combout\)))) # (!\inst30|inst3|nWB~3_combout\ & (((!\RESET~input_o\)) # (!\inst30|inst|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal8~0_combout\,
	datab => \inst30|inst3|nWB~3_combout\,
	datac => \RESET~input_o\,
	datad => \inst30|inst|Equal50~0_combout\,
	combout => \inst30|inst3|nWB~4_combout\);

-- Location: LCCOMB_X24_Y6_N18
\inst30|inst3|nWB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nWB~2_combout\ = (\inst30|inst3|nWB~1_combout\ & (\inst30|inst|data~32_combout\ & \inst30|inst|data~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nWB~1_combout\,
	datab => \inst30|inst|data~32_combout\,
	datac => \inst30|inst|data~33_combout\,
	combout => \inst30|inst3|nWB~2_combout\);

-- Location: LCCOMB_X24_Y6_N2
\inst30|inst3|EA[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EA[1]~14_combout\ = (\inst30|inst3|nWB~2_combout\ & (\inst30|inst3|nWB~0_combout\ & \inst30|inst|Equal62~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst3|nWB~2_combout\,
	datac => \inst30|inst3|nWB~0_combout\,
	datad => \inst30|inst|Equal62~4_combout\,
	combout => \inst30|inst3|EA[1]~14_combout\);

-- Location: LCCOMB_X24_Y6_N22
\inst30|inst3|UPA[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[2]~5_combout\ = (\RESET~input_o\ & ((!\inst30|inst3|nWB~0_combout\) # (!\inst30|inst3|nWB~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst3|nWB~2_combout\,
	datac => \inst30|inst3|nWB~0_combout\,
	datad => \RESET~input_o\,
	combout => \inst30|inst3|UPA[2]~5_combout\);

-- Location: LCCOMB_X24_Y6_N10
\inst30|inst3|EB[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EB[0]~1_combout\ = (\inst30|inst3|EA[1]~14_combout\) # ((\inst30|inst3|UPA[2]~5_combout\ & ((\inst30|inst|Equal8~0_combout\) # (\inst30|inst3|EB[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal8~0_combout\,
	datab => \inst30|inst3|EA[1]~14_combout\,
	datac => \inst30|inst3|EB[1]~0_combout\,
	datad => \inst30|inst3|UPA[2]~5_combout\,
	combout => \inst30|inst3|EB[0]~1_combout\);

-- Location: LCCOMB_X26_Y6_N14
\AcumuladorB|TRI_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|TRI_STATE~0_combout\ = (\inst30|inst3|EB[1]~4_combout\ & (\inst30|inst3|nWB~4_combout\ & \inst30|inst3|EB[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EB[1]~4_combout\,
	datab => \inst30|inst3|nWB~4_combout\,
	datac => \inst30|inst3|EB[0]~1_combout\,
	combout => \AcumuladorB|TRI_STATE~0_combout\);

-- Location: LCCOMB_X25_Y5_N0
\inst9|TRI_STATE_D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|TRI_STATE_D~0_combout\ = (!\inst8~q\ & (((\inst30|inst|Equal15~0_combout\ & !\inst30|inst|Equal17~0_combout\)) # (!\RESET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal15~0_combout\,
	datab => \inst30|inst|Equal17~0_combout\,
	datac => \inst8~q\,
	datad => \RESET~input_o\,
	combout => \inst9|TRI_STATE_D~0_combout\);

-- Location: LCCOMB_X25_Y6_N22
\upa|Yupa[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~5_combout\ = (\AcumuladorB|TRI_STATE~0_combout\) # ((!\inst30|inst3|nEX0~3_combout\ & ((\inst13|TRI_STATE_D~0_combout\) # (\inst9|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nEX0~3_combout\,
	datab => \inst13|TRI_STATE_D~0_combout\,
	datac => \AcumuladorB|TRI_STATE~0_combout\,
	datad => \inst9|TRI_STATE_D~0_combout\,
	combout => \upa|Yupa[7]~5_combout\);

-- Location: LCCOMB_X22_Y6_N4
\inst30|inst3|nDUPA~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nDUPA~3_combout\ = (((\inst30|inst|Equal62~4_combout\) # (!\inst30|inst|Equal1~0_combout\)) # (!\inst30|inst3|EA[0]~4_combout\)) # (!\inst30|inst|Equal62~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal62~3_combout\,
	datab => \inst30|inst3|EA[0]~4_combout\,
	datac => \inst30|inst|Equal62~4_combout\,
	datad => \inst30|inst|Equal1~0_combout\,
	combout => \inst30|inst3|nDUPA~3_combout\);

-- Location: LCCOMB_X22_Y6_N24
\inst30|inst|data[92]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[92]~44_combout\ = (\inst30|inst|data[84]~40_combout\ & \inst30|inst|data[92]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[84]~40_combout\,
	datab => \inst30|inst|data[92]~28_combout\,
	combout => \inst30|inst|data[92]~44_combout\);

-- Location: LCCOMB_X22_Y6_N8
\inst30|inst3|nWA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nWA~0_combout\ = (!\inst30|inst|Equal4~3_combout\ & (((\inst30|inst|Equal28~0_combout\) # (!\inst30|inst|Equal29~0_combout\)) # (!\inst30|inst|data[92]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal4~3_combout\,
	datab => \inst30|inst|data[92]~44_combout\,
	datac => \inst30|inst|Equal29~0_combout\,
	datad => \inst30|inst|Equal28~0_combout\,
	combout => \inst30|inst3|nWA~0_combout\);

-- Location: LCCOMB_X22_Y6_N6
\inst30|inst3|nWA~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nWA~1_combout\ = ((\inst30|inst|data[42]~42_combout\ & (\inst30|inst3|nDUPA~3_combout\)) # (!\inst30|inst|data[42]~42_combout\ & ((\inst30|inst3|nWA~0_combout\)))) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst30|inst3|nDUPA~3_combout\,
	datac => \inst30|inst3|nWA~0_combout\,
	datad => \inst30|inst|data[42]~42_combout\,
	combout => \inst30|inst3|nWA~1_combout\);

-- Location: LCCOMB_X23_Y6_N16
\inst30|inst3|EA[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EA[0]~15_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst30|inst|Equal62~3_combout\ & (\inst30|inst3|EA[0]~4_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst30|inst|Equal62~3_combout\,
	datac => \inst30|inst3|EA[0]~4_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst30|inst3|EA[0]~15_combout\);

-- Location: LCCOMB_X23_Y6_N2
\inst30|inst3|EA[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EA[0]~6_combout\ = (!\inst30|inst|Equal50~0_combout\ & (\inst30|inst3|nWB~2_combout\ & (\inst30|inst3|EA[0]~5_combout\ & \inst30|inst3|EA[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal50~0_combout\,
	datab => \inst30|inst3|nWB~2_combout\,
	datac => \inst30|inst3|EA[0]~5_combout\,
	datad => \inst30|inst3|EA[0]~15_combout\,
	combout => \inst30|inst3|EA[0]~6_combout\);

-- Location: LCCOMB_X27_Y6_N16
\inst30|inst3|EA[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EA[0]~7_combout\ = (\RESET~input_o\ & ((\inst30|inst|Equal28~0_combout\) # ((\inst30|inst|Equal4~3_combout\) # (\inst30|inst|Equal62~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst30|inst|Equal28~0_combout\,
	datac => \inst30|inst|Equal4~3_combout\,
	datad => \inst30|inst|Equal62~4_combout\,
	combout => \inst30|inst3|EA[0]~7_combout\);

-- Location: LCCOMB_X23_Y6_N0
\inst30|inst3|EA[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EA[0]~8_combout\ = (\inst30|inst3|EA[0]~6_combout\) # (\inst30|inst3|EA[0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst3|EA[0]~6_combout\,
	datac => \inst30|inst3|EA[0]~7_combout\,
	combout => \inst30|inst3|EA[0]~8_combout\);

-- Location: LCCOMB_X23_Y6_N26
\inst30|inst3|nDUPA~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nDUPA~4_combout\ = (\inst30|inst3|nDUPA~1_combout\ & (!\inst30|inst|Equal50~0_combout\ & \inst30|inst3|nDUPA~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst3|nDUPA~1_combout\,
	datac => \inst30|inst|Equal50~0_combout\,
	datad => \inst30|inst3|nDUPA~0_combout\,
	combout => \inst30|inst3|nDUPA~4_combout\);

-- Location: LCCOMB_X23_Y6_N30
\inst30|inst3|nEX2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nEX2~0_combout\ = (!\inst30|inst|Equal55~2_combout\ & \inst30|inst3|prueba[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst|Equal55~2_combout\,
	datad => \inst30|inst3|prueba[3]~0_combout\,
	combout => \inst30|inst3|nEX2~0_combout\);

-- Location: LCCOMB_X23_Y6_N10
\inst30|inst3|nDUPA~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nDUPA~5_combout\ = (\inst30|inst3|nDUPA~4_combout\ & (!\inst30|inst|Equal29~0_combout\ & ((!\inst30|inst|data~35_combout\) # (!\inst30|inst3|nEX2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nDUPA~4_combout\,
	datab => \inst30|inst3|nEX2~0_combout\,
	datac => \inst30|inst|data~35_combout\,
	datad => \inst30|inst|Equal29~0_combout\,
	combout => \inst30|inst3|nDUPA~5_combout\);

-- Location: LCCOMB_X23_Y6_N6
\inst30|inst3|nDUPA~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nDUPA~6_combout\ = ((\inst30|inst|data[42]~42_combout\ & (\inst30|inst3|nDUPA~3_combout\)) # (!\inst30|inst|data[42]~42_combout\ & ((\inst30|inst3|nDUPA~5_combout\)))) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst30|inst3|nDUPA~3_combout\,
	datac => \inst30|inst|data[42]~42_combout\,
	datad => \inst30|inst3|nDUPA~5_combout\,
	combout => \inst30|inst3|nDUPA~6_combout\);

-- Location: LCCOMB_X26_Y4_N6
\inst30|inst3|EA[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EA[1]~9_combout\ = (!\inst30|inst|Equal33~1_combout\ & (!\inst30|inst|Equal37~0_combout\ & (!\inst30|inst|Equal38~1_combout\ & !\inst30|inst|Equal36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal33~1_combout\,
	datab => \inst30|inst|Equal37~0_combout\,
	datac => \inst30|inst|Equal38~1_combout\,
	datad => \inst30|inst|Equal36~0_combout\,
	combout => \inst30|inst3|EA[1]~9_combout\);

-- Location: LCCOMB_X26_Y4_N24
\inst30|inst3|EA[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EA[1]~10_combout\ = (!\inst30|inst|Equal32~1_combout\ & (\inst30|inst3|EA[1]~9_combout\ & (\inst30|inst3|nCBD~1_combout\ & !\inst30|inst|Equal35~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal32~1_combout\,
	datab => \inst30|inst3|EA[1]~9_combout\,
	datac => \inst30|inst3|nCBD~1_combout\,
	datad => \inst30|inst|Equal35~2_combout\,
	combout => \inst30|inst3|EA[1]~10_combout\);

-- Location: LCCOMB_X27_Y6_N8
\inst30|inst3|EA[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EA[1]~11_combout\ = (\inst30|inst3|EA[1]~10_combout\ & (\inst30|inst|Equal39~0_combout\ & (!\inst30|inst|Equal4~3_combout\ & !\inst30|inst|Equal34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EA[1]~10_combout\,
	datab => \inst30|inst|Equal39~0_combout\,
	datac => \inst30|inst|Equal4~3_combout\,
	datad => \inst30|inst|Equal34~1_combout\,
	combout => \inst30|inst3|EA[1]~11_combout\);

-- Location: LCCOMB_X27_Y6_N28
\inst30|inst3|EA[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EA[1]~12_combout\ = (\inst30|inst|Equal29~0_combout\) # ((\inst30|inst|Equal28~0_combout\) # ((\inst30|inst3|EA[1]~11_combout\ & \inst30|inst|data[92]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal29~0_combout\,
	datab => \inst30|inst3|EA[1]~11_combout\,
	datac => \inst30|inst|Equal28~0_combout\,
	datad => \inst30|inst|data[92]~44_combout\,
	combout => \inst30|inst3|EA[1]~12_combout\);

-- Location: LCCOMB_X27_Y6_N6
\inst30|inst3|EA[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|EA[1]~13_combout\ = (\inst30|inst3|nWB~3_combout\ & (((!\inst30|inst|Equal62~4_combout\)))) # (!\inst30|inst3|nWB~3_combout\ & (((!\inst30|inst3|EA[1]~12_combout\)) # (!\RESET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst30|inst3|EA[1]~12_combout\,
	datac => \inst30|inst3|nWB~3_combout\,
	datad => \inst30|inst|Equal62~4_combout\,
	combout => \inst30|inst3|EA[1]~13_combout\);

-- Location: LCCOMB_X29_Y6_N8
\upa|Yupa[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~4_combout\ = ((\inst30|inst3|nWA~1_combout\ & (\inst30|inst3|EA[0]~8_combout\ & \inst30|inst3|EA[1]~13_combout\))) # (!\inst30|inst3|nDUPA~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nWA~1_combout\,
	datab => \inst30|inst3|EA[0]~8_combout\,
	datac => \inst30|inst3|nDUPA~6_combout\,
	datad => \inst30|inst3|EA[1]~13_combout\,
	combout => \upa|Yupa[7]~4_combout\);

-- Location: LCCOMB_X25_Y6_N8
\upa|Yupa[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~6_combout\ = (\RegAux|TRI_STATE_D~1_combout\) # ((\inst1|PortR~9_combout\) # ((\upa|Yupa[7]~5_combout\) # (\upa|Yupa[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|TRI_STATE_D~1_combout\,
	datab => \inst1|PortR~9_combout\,
	datac => \upa|Yupa[7]~5_combout\,
	datad => \upa|Yupa[7]~4_combout\,
	combout => \upa|Yupa[7]~6_combout\);

-- Location: LCCOMB_X25_Y3_N20
\inst7|PortR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|PortR~0_combout\ = (\inst30|inst3|nRW~0_combout\) # (\inst30|inst3|BD~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst3|nRW~0_combout\,
	datad => \inst30|inst3|BD~0_combout\,
	combout => \inst7|PortR~0_combout\);

-- Location: LCCOMB_X27_Y4_N26
\inst30|inst|data[26]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[26]~55_combout\ = (!\inst30|inst|Equal49~0_combout\ & (!\inst30|inst|Equal39~0_combout\ & !\inst30|inst|Equal53~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|Equal49~0_combout\,
	datac => \inst30|inst|Equal39~0_combout\,
	datad => \inst30|inst|Equal53~2_combout\,
	combout => \inst30|inst|data[26]~55_combout\);

-- Location: LCCOMB_X26_Y5_N28
\inst30|inst|data[26]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[26]~80_combout\ = (\inst30|inst|data[26]~55_combout\ & (!\inst30|inst|Equal60~0_combout\ & (!\inst30|inst|Equal32~1_combout\ & !\inst30|inst|Equal28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[26]~55_combout\,
	datab => \inst30|inst|Equal60~0_combout\,
	datac => \inst30|inst|Equal32~1_combout\,
	datad => \inst30|inst|Equal28~0_combout\,
	combout => \inst30|inst|data[26]~80_combout\);

-- Location: LCCOMB_X23_Y4_N26
\inst30|inst|data[26]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[26]~89_combout\ = (!\inst30|inst|Equal21~2_combout\ & (\inst30|inst|data[87]~22_combout\ & ((!\inst30|inst|Equal14~0_combout\) # (!\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal21~2_combout\,
	datab => \inst30|inst|data[87]~22_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst30|inst|Equal14~0_combout\,
	combout => \inst30|inst|data[26]~89_combout\);

-- Location: LCCOMB_X23_Y4_N8
\inst30|inst|data[26]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[26]~79_combout\ = (!\inst30|inst|Equal42~0_combout\ & (\inst30|inst|data[26]~89_combout\ & (!\inst30|inst|Equal66~0_combout\ & !\inst30|inst|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal42~0_combout\,
	datab => \inst30|inst|data[26]~89_combout\,
	datac => \inst30|inst|Equal66~0_combout\,
	datad => \inst30|inst|Equal4~3_combout\,
	combout => \inst30|inst|data[26]~79_combout\);

-- Location: LCCOMB_X26_Y5_N6
\inst30|inst|data[26]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[26]~81_combout\ = (\inst30|inst|data[26]~80_combout\ & (\inst30|inst|data[26]~79_combout\ & ((!\inst30|inst|Equal68~2_combout\) # (!\inst30|inst3|PC[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|PC[0]~5_combout\,
	datab => \inst30|inst|data[26]~80_combout\,
	datac => \inst30|inst|data[26]~79_combout\,
	datad => \inst30|inst|Equal68~2_combout\,
	combout => \inst30|inst|data[26]~81_combout\);

-- Location: LCCOMB_X26_Y5_N18
\inst1|PortR[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR[7]~12_combout\ = ((!\inst30|inst|data[26]~81_combout\ & \RESET~input_o\)) # (!\inst30|inst3|nRW~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[26]~81_combout\,
	datac => \RESET~input_o\,
	datad => \inst30|inst3|nRW~0_combout\,
	combout => \inst1|PortR[7]~12_combout\);

-- Location: LCCOMB_X25_Y5_N30
\inst30|inst3|nCBD~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nCBD~7_combout\ = ((\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & ((\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\) # (!\inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\))) # 
-- (!\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\))) # (!\inst30|inst|Equal65~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datac => \inst30|inst|Equal65~2_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst30|inst3|nCBD~7_combout\);

-- Location: LCCOMB_X27_Y4_N8
\inst30|inst3|nCBD~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nCBD~8_combout\ = (\inst30|inst3|nCBD~7_combout\ & (!\inst30|inst|Equal61~0_combout\ & ((!\inst30|inst|Equal62~3_combout\) # (!\inst30|inst|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nCBD~7_combout\,
	datab => \inst30|inst|Equal61~0_combout\,
	datac => \inst30|inst|Equal2~1_combout\,
	datad => \inst30|inst|Equal62~3_combout\,
	combout => \inst30|inst3|nCBD~8_combout\);

-- Location: LCCOMB_X24_Y8_N26
\inst30|inst3|nCBD~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nCBD~3_combout\ = (!\inst30|inst|Equal19~0_combout\ & (!\inst30|inst|Equal38~1_combout\ & !\inst30|inst|Equal48~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal19~0_combout\,
	datac => \inst30|inst|Equal38~1_combout\,
	datad => \inst30|inst|Equal48~0_combout\,
	combout => \inst30|inst3|nCBD~3_combout\);

-- Location: LCCOMB_X24_Y8_N18
\inst30|inst3|nCBD~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nCBD~4_combout\ = (\inst30|inst3|nCBD~3_combout\ & (\inst30|inst|data[92]~24_combout\ & (\inst30|inst|data[42]~29_combout\ & !\inst30|inst|Equal20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nCBD~3_combout\,
	datab => \inst30|inst|data[92]~24_combout\,
	datac => \inst30|inst|data[42]~29_combout\,
	datad => \inst30|inst|Equal20~1_combout\,
	combout => \inst30|inst3|nCBD~4_combout\);

-- Location: LCCOMB_X27_Y4_N12
\inst30|inst3|nCBD~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nCBD~5_combout\ = (\inst30|inst3|UPA[1]~0_combout\ & (\inst30|inst3|nCBD~4_combout\ & \inst30|inst3|nCBD~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst3|UPA[1]~0_combout\,
	datac => \inst30|inst3|nCBD~4_combout\,
	datad => \inst30|inst3|nCBD~1_combout\,
	combout => \inst30|inst3|nCBD~5_combout\);

-- Location: LCCOMB_X23_Y4_N20
\inst30|inst3|nCBD~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nCBD~6_combout\ = (\inst30|inst3|nCBD~0_combout\ & (!\inst30|inst|Equal0~7_combout\ & \inst30|inst|data[92]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst3|nCBD~0_combout\,
	datac => \inst30|inst|Equal0~7_combout\,
	datad => \inst30|inst|data[92]~25_combout\,
	combout => \inst30|inst3|nCBD~6_combout\);

-- Location: LCCOMB_X27_Y4_N28
\inst30|inst3|nCBD~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nCBD~9_combout\ = (\inst30|inst3|nCBD~5_combout\ & (\inst30|inst3|nCBD~6_combout\ & !\inst30|inst|data[42]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nCBD~5_combout\,
	datac => \inst30|inst3|nCBD~6_combout\,
	datad => \inst30|inst|data[42]~42_combout\,
	combout => \inst30|inst3|nCBD~9_combout\);

-- Location: LCCOMB_X27_Y4_N18
\inst30|inst3|nCBD\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nCBD~combout\ = LCELL((\inst30|inst3|nCBD~2_combout\ & (((\inst30|inst3|nCBD~8_combout\)))) # (!\inst30|inst3|nCBD~2_combout\ & (((\inst30|inst3|nCBD~9_combout\)) # (!\RESET~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst30|inst3|nCBD~2_combout\,
	datac => \inst30|inst3|nCBD~8_combout\,
	datad => \inst30|inst3|nCBD~9_combout\,
	combout => \inst30|inst3|nCBD~combout\);

-- Location: CLKCTRL_G15
\inst30|inst3|nCBD~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst30|inst3|nCBD~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst30|inst3|nCBD~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y5_N14
\inst30|inst3|PC[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|PC[0]~7_combout\ = (\RESET~input_o\ & ((\inst30|inst3|PC[0]~5_combout\ & ((\inst30|inst|Equal68~2_combout\))) # (!\inst30|inst3|PC[0]~5_combout\ & (!\inst30|inst|data[26]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[26]~79_combout\,
	datab => \inst30|inst|Equal68~2_combout\,
	datac => \RESET~input_o\,
	datad => \inst30|inst3|PC[0]~5_combout\,
	combout => \inst30|inst3|PC[0]~7_combout\);

-- Location: LCCOMB_X30_Y5_N0
\RegPC|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Equal0~0_combout\ = (\RESET~input_o\ & (!\inst30|inst|Equal69~0_combout\ & ((\inst30|inst3|PC[0]~7_combout\) # (\inst30|inst3|PC[0]~6_combout\)))) # (!\RESET~input_o\ & ((\inst30|inst3|PC[0]~7_combout\) # ((\inst30|inst3|PC[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst30|inst3|PC[0]~7_combout\,
	datac => \inst30|inst|Equal69~0_combout\,
	datad => \inst30|inst3|PC[0]~6_combout\,
	combout => \RegPC|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y5_N0
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

-- Location: LCCOMB_X23_Y6_N24
\inst30|inst|data[42]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[42]~43_combout\ = (!\inst30|inst|Equal58~0_combout\ & \inst30|inst3|nDUPA~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|Equal58~0_combout\,
	datac => \inst30|inst3|nDUPA~1_combout\,
	combout => \inst30|inst|data[42]~43_combout\);

-- Location: LCCOMB_X26_Y7_N10
\RegAux|data_out[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out[8]~1_combout\ = (\RESET~input_o\ & (((\inst30|inst|data[42]~42_combout\ & \inst30|inst|Equal66~0_combout\)) # (!\inst30|inst|data[42]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[42]~42_combout\,
	datab => \RESET~input_o\,
	datac => \inst30|inst|data[42]~43_combout\,
	datad => \inst30|inst|Equal66~0_combout\,
	combout => \RegAux|data_out[8]~1_combout\);

-- Location: LCCOMB_X26_Y3_N4
\inst1|PortR~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR~8_combout\ = (\inst30|inst3|nRW~0_combout\ & \inst30|inst3|BD~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nRW~0_combout\,
	datab => \inst30|inst3|BD~0_combout\,
	combout => \inst1|PortR~8_combout\);

-- Location: LCCOMB_X27_Y6_N30
\AcumuladorA|TRI_STATE~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|TRI_STATE~2_combout\ = (\inst30|inst3|EA[1]~13_combout\ & (\inst30|inst3|nWA~1_combout\ & ((\inst30|inst3|EA[0]~7_combout\) # (\inst30|inst3|EA[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EA[1]~13_combout\,
	datab => \inst30|inst3|nWA~1_combout\,
	datac => \inst30|inst3|EA[0]~7_combout\,
	datad => \inst30|inst3|EA[0]~6_combout\,
	combout => \AcumuladorA|TRI_STATE~2_combout\);

-- Location: LCCOMB_X30_Y4_N12
\AcumuladorA|C[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[6]~11_combout\ = (((\inst30|inst3|EA[1]~13_combout\) # (\AcumuladorA|data_out\(6))) # (!\inst30|inst3|nWA~1_combout\)) # (!\inst30|inst3|EA[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EA[0]~8_combout\,
	datab => \inst30|inst3|nWA~1_combout\,
	datac => \inst30|inst3|EA[1]~13_combout\,
	datad => \AcumuladorA|data_out\(6),
	combout => \AcumuladorA|C[6]~11_combout\);

-- Location: LCCOMB_X29_Y6_N6
\AcumuladorA|B[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|B[6]~2_combout\ = ((\AcumuladorA|data_out\(6)) # ((\inst30|inst3|EA[0]~8_combout\) # (\inst30|inst3|EA[1]~13_combout\))) # (!\inst30|inst3|nWA~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nWA~1_combout\,
	datab => \AcumuladorA|data_out\(6),
	datac => \inst30|inst3|EA[0]~8_combout\,
	datad => \inst30|inst3|EA[1]~13_combout\,
	combout => \AcumuladorA|B[6]~2_combout\);

-- Location: LCCOMB_X25_Y4_N24
\inst30|inst|Equal46~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal46~2_combout\ = (\inst30|inst|Equal41~0_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst30|inst|Equal24~5_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal41~0_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst30|inst|Equal24~5_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst30|inst|Equal46~2_combout\);

-- Location: LCCOMB_X25_Y4_N16
\inst30|inst|Equal45~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal45~2_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst30|inst|Equal24~5_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & \inst30|inst|Equal41~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst30|inst|Equal24~5_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst|Equal41~0_combout\,
	combout => \inst30|inst|Equal45~2_combout\);

-- Location: LCCOMB_X25_Y4_N26
\inst30|inst|data[51]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[51]~45_combout\ = (!\inst30|inst|Equal45~2_combout\ & (!\inst30|inst|Equal24~7_combout\ & ((!\inst30|inst|Equal24~6_combout\) # (!\inst30|inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal1~0_combout\,
	datab => \inst30|inst|Equal45~2_combout\,
	datac => \inst30|inst|Equal24~6_combout\,
	datad => \inst30|inst|Equal24~7_combout\,
	combout => \inst30|inst|data[51]~45_combout\);

-- Location: LCCOMB_X25_Y4_N14
\inst30|inst|data[51]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[51]~46_combout\ = (\inst30|inst|data[51]~45_combout\ & (((!\inst30|inst3|UPA[2]~3_combout\) # (!\inst30|inst|Equal46~2_combout\)) # (!\inst30|inst3|UPA[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[1]~4_combout\,
	datab => \inst30|inst|Equal46~2_combout\,
	datac => \inst30|inst3|UPA[2]~3_combout\,
	datad => \inst30|inst|data[51]~45_combout\,
	combout => \inst30|inst|data[51]~46_combout\);

-- Location: LCCOMB_X23_Y7_N18
\upa|Mux37~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux37~3_combout\ = (\inst30|inst|Equal35~2_combout\) # ((\inst30|inst|Equal36~0_combout\) # (!\inst30|inst|data[51]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal35~2_combout\,
	datab => \inst30|inst|data[51]~46_combout\,
	datac => \inst30|inst|Equal36~0_combout\,
	combout => \upa|Mux37~3_combout\);

-- Location: LCCOMB_X23_Y7_N28
\upa|Mux37~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux37~4_combout\ = (\RESET~input_o\ & ((\inst30|inst3|prueba[3]~0_combout\ & (!\inst30|inst|data~35_combout\)) # (!\inst30|inst3|prueba[3]~0_combout\ & ((\upa|Mux37~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data~35_combout\,
	datab => \RESET~input_o\,
	datac => \inst30|inst3|prueba[3]~0_combout\,
	datad => \upa|Mux37~3_combout\,
	combout => \upa|Mux37~4_combout\);

-- Location: LCCOMB_X26_Y4_N8
\inst30|inst3|selmux~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|selmux~1_combout\ = (!\inst30|inst|Equal32~1_combout\ & (!\inst30|inst|Equal42~0_combout\ & !\inst30|inst|Equal21~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|Equal32~1_combout\,
	datac => \inst30|inst|Equal42~0_combout\,
	datad => \inst30|inst|Equal21~2_combout\,
	combout => \inst30|inst3|selmux~1_combout\);

-- Location: LCCOMB_X26_Y4_N30
\inst30|inst3|UPA[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[1]~12_combout\ = (!\inst30|inst|Equal36~0_combout\ & (!\inst30|inst|Equal35~2_combout\ & \inst30|inst3|selmux~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal36~0_combout\,
	datab => \inst30|inst|Equal35~2_combout\,
	datac => \inst30|inst3|selmux~1_combout\,
	combout => \inst30|inst3|UPA[1]~12_combout\);

-- Location: LCCOMB_X26_Y4_N2
\inst30|inst3|UPA[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[2]~13_combout\ = (\inst30|inst|data[51]~45_combout\ & (!\inst30|inst|Equal46~2_combout\ & (\inst30|inst3|UPA[1]~12_combout\ & !\inst30|inst|Equal28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[51]~45_combout\,
	datab => \inst30|inst|Equal46~2_combout\,
	datac => \inst30|inst3|UPA[1]~12_combout\,
	datad => \inst30|inst|Equal28~0_combout\,
	combout => \inst30|inst3|UPA[2]~13_combout\);

-- Location: LCCOMB_X29_Y4_N24
\inst30|inst3|UPA[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[0]~24_combout\ = (!\inst30|inst|Equal49~0_combout\ & (\inst30|inst3|UPA[2]~13_combout\ & (!\inst30|inst|Equal53~2_combout\ & !\inst30|inst3|nEX2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal49~0_combout\,
	datab => \inst30|inst3|UPA[2]~13_combout\,
	datac => \inst30|inst|Equal53~2_combout\,
	datad => \inst30|inst3|nEX2~0_combout\,
	combout => \inst30|inst3|UPA[0]~24_combout\);

-- Location: LCCOMB_X22_Y5_N6
\inst30|inst|data[42]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[42]~75_combout\ = (\inst30|inst|data~35_combout\ & (\inst30|inst3|prueba[3]~0_combout\ & !\inst30|inst|Equal55~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data~35_combout\,
	datac => \inst30|inst3|prueba[3]~0_combout\,
	datad => \inst30|inst|Equal55~2_combout\,
	combout => \inst30|inst|data[42]~75_combout\);

-- Location: LCCOMB_X29_Y4_N14
\inst30|inst3|UPA[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[0]~25_combout\ = (\RESET~input_o\ & ((\inst30|inst|data[42]~75_combout\ & ((\inst30|inst|Equal62~4_combout\))) # (!\inst30|inst|data[42]~75_combout\ & (!\inst30|inst3|UPA[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst30|inst3|UPA[0]~24_combout\,
	datac => \inst30|inst|Equal62~4_combout\,
	datad => \inst30|inst|data[42]~75_combout\,
	combout => \inst30|inst3|UPA[0]~25_combout\);

-- Location: LCCOMB_X24_Y7_N4
\inst30|inst|data~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data~74_combout\ = (\inst30|inst|data~35_combout\ & (!\inst30|inst|Equal53~2_combout\ & !\inst30|inst|Equal54~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data~35_combout\,
	datac => \inst30|inst|Equal53~2_combout\,
	datad => \inst30|inst|Equal54~2_combout\,
	combout => \inst30|inst|data~74_combout\);

-- Location: LCCOMB_X24_Y7_N28
\inst30|inst3|UPA[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[1]~19_combout\ = (!\inst30|inst|Equal50~0_combout\ & (!\inst30|inst|data~74_combout\ & (\inst30|inst3|UPA[1]~0_combout\ & \inst30|inst3|nWB~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal50~0_combout\,
	datab => \inst30|inst|data~74_combout\,
	datac => \inst30|inst3|UPA[1]~0_combout\,
	datad => \inst30|inst3|nWB~3_combout\,
	combout => \inst30|inst3|UPA[1]~19_combout\);

-- Location: LCCOMB_X29_Y7_N14
\inst30|inst3|selmux~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|selmux~0_combout\ = (!\inst30|inst|Equal22~0_combout\ & (!\inst30|inst|Equal43~0_combout\ & !\inst30|inst|Equal33~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal22~0_combout\,
	datab => \inst30|inst|Equal43~0_combout\,
	datad => \inst30|inst|Equal33~1_combout\,
	combout => \inst30|inst3|selmux~0_combout\);

-- Location: LCCOMB_X29_Y7_N8
\inst30|inst3|UPA[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[2]~20_combout\ = (\inst30|inst3|UPA[2]~5_combout\ & (((\inst30|inst3|EB[1]~0_combout\) # (!\inst30|inst3|selmux~0_combout\)) # (!\inst30|inst3|UPA[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[2]~5_combout\,
	datab => \inst30|inst3|UPA[2]~13_combout\,
	datac => \inst30|inst3|selmux~0_combout\,
	datad => \inst30|inst3|EB[1]~0_combout\,
	combout => \inst30|inst3|UPA[2]~20_combout\);

-- Location: LCCOMB_X29_Y4_N2
\inst30|inst3|UPA[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[2]~21_combout\ = (\inst30|inst3|UPA[1]~19_combout\) # (\inst30|inst3|UPA[2]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst3|UPA[1]~19_combout\,
	datad => \inst30|inst3|UPA[2]~20_combout\,
	combout => \inst30|inst3|UPA[2]~21_combout\);

-- Location: LCCOMB_X29_Y7_N18
\inst30|inst3|UPA[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[1]~22_combout\ = (\inst30|inst3|UPA[2]~5_combout\ & (((!\inst30|inst|data[51]~46_combout\) # (!\inst30|inst3|selmux~0_combout\)) # (!\inst30|inst3|UPA[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[2]~5_combout\,
	datab => \inst30|inst3|UPA[1]~12_combout\,
	datac => \inst30|inst3|selmux~0_combout\,
	datad => \inst30|inst|data[51]~46_combout\,
	combout => \inst30|inst3|UPA[1]~22_combout\);

-- Location: LCCOMB_X29_Y7_N16
\inst30|inst3|UPA[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[1]~23_combout\ = (\inst30|inst3|UPA[1]~19_combout\) # (\inst30|inst3|UPA[1]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst3|UPA[1]~19_combout\,
	datad => \inst30|inst3|UPA[1]~22_combout\,
	combout => \inst30|inst3|UPA[1]~23_combout\);

-- Location: LCCOMB_X25_Y7_N28
\upa|Mux37~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux37~5_combout\ = (\upa|Mux37~4_combout\) # (((!\inst30|inst3|UPA[0]~25_combout\ & !\inst30|inst3|UPA[1]~23_combout\)) # (!\inst30|inst3|UPA[2]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux37~4_combout\,
	datab => \inst30|inst3|UPA[0]~25_combout\,
	datac => \inst30|inst3|UPA[2]~21_combout\,
	datad => \inst30|inst3|UPA[1]~23_combout\,
	combout => \upa|Mux37~5_combout\);

-- Location: LCCOMB_X27_Y7_N10
\upa|Mux37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux37~0_combout\ = (!\inst30|inst3|UPA[1]~19_combout\ & (!\inst30|inst3|UPA[2]~20_combout\ & \inst30|inst3|UPA[0]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst3|UPA[1]~19_combout\,
	datac => \inst30|inst3|UPA[2]~20_combout\,
	datad => \inst30|inst3|UPA[0]~25_combout\,
	combout => \upa|Mux37~0_combout\);

-- Location: LCCOMB_X34_Y6_N16
\AcumuladorB|data_out[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[6]~1_combout\ = (\inst30|inst3|EB[0]~1_combout\ & (\AcumuladorB|C[6]~9_combout\)) # (!\inst30|inst3|EB[0]~1_combout\ & ((\upa|Yupa2[6]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EB[0]~1_combout\,
	datab => \AcumuladorB|C[6]~9_combout\,
	datad => \upa|Yupa2[6]~20_combout\,
	combout => \AcumuladorB|data_out[6]~1_combout\);

-- Location: LCCOMB_X27_Y8_N26
\AcumuladorB|data_out[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[0]~8_combout\ = (!\inst30|inst3|nWB~4_combout\ & ((\inst30|inst3|EB[0]~1_combout\) # (!\inst30|inst3|EB[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst3|EB[1]~4_combout\,
	datac => \inst30|inst3|EB[0]~1_combout\,
	datad => \inst30|inst3|nWB~4_combout\,
	combout => \AcumuladorB|data_out[0]~8_combout\);

-- Location: FF_X34_Y6_N17
\AcumuladorB|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[6]~1_combout\,
	asdata => \upa|Yupa[6]~11_combout\,
	sload => \inst30|inst3|EB[1]~4_combout\,
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(6));

-- Location: LCCOMB_X29_Y6_N28
\AcumuladorB|C[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[6]~9_combout\ = (\AcumuladorB|data_out\(6)) # (((\inst30|inst3|EB[1]~4_combout\) # (!\inst30|inst3|EB[0]~1_combout\)) # (!\inst30|inst3|nWB~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(6),
	datab => \inst30|inst3|nWB~4_combout\,
	datac => \inst30|inst3|EB[1]~4_combout\,
	datad => \inst30|inst3|EB[0]~1_combout\,
	combout => \AcumuladorB|C[6]~9_combout\);

-- Location: LCCOMB_X25_Y2_N18
\inst30|inst|Equal25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal25~2_combout\ = (\inst30|inst|Equal21~0_combout\ & (\inst30|inst|Equal24~5_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal21~0_combout\,
	datab => \inst30|inst|Equal24~5_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst30|inst|Equal25~2_combout\);

-- Location: LCCOMB_X31_Y7_N4
\upa|Q[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[7]~0_combout\ = (!\inst30|inst|Equal24~7_combout\ & (!\inst30|inst|Equal25~2_combout\ & \inst30|inst3|nEX0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal24~7_combout\,
	datab => \inst30|inst|Equal25~2_combout\,
	datad => \inst30|inst3|nEX0~1_combout\,
	combout => \upa|Q[7]~0_combout\);

-- Location: LCCOMB_X31_Y7_N2
\upa|Q[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[7]~1_combout\ = ((\inst30|inst3|UPA[7]~11_combout\ & (!\inst30|inst|Equal54~2_combout\)) # (!\inst30|inst3|UPA[7]~11_combout\ & ((\upa|Q[7]~0_combout\)))) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[7]~11_combout\,
	datab => \inst30|inst|Equal54~2_combout\,
	datac => \upa|Q[7]~0_combout\,
	datad => \RESET~input_o\,
	combout => \upa|Q[7]~1_combout\);

-- Location: LCCOMB_X31_Y7_N14
\upa|Q[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[7]~2_combout\ = (\upa|Q[7]~1_combout\ & \inst30|inst3|nDUPA~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upa|Q[7]~1_combout\,
	datad => \inst30|inst3|nDUPA~6_combout\,
	combout => \upa|Q[7]~2_combout\);

-- Location: FF_X31_Y7_N5
\upa|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Add0~22_combout\,
	sload => VCC,
	ena => \upa|Q[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(6));

-- Location: LCCOMB_X31_Y7_N16
\AcumuladorA|C[7]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[7]~18_combout\ = (!\inst30|inst3|EA[1]~13_combout\ & (\inst30|inst3|nWA~1_combout\ & ((\inst30|inst3|EA[0]~7_combout\) # (\inst30|inst3|EA[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EA[1]~13_combout\,
	datab => \inst30|inst3|EA[0]~7_combout\,
	datac => \inst30|inst3|nWA~1_combout\,
	datad => \inst30|inst3|EA[0]~6_combout\,
	combout => \AcumuladorA|C[7]~18_combout\);

-- Location: LCCOMB_X31_Y7_N8
\upa|Mux34~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux34~2_combout\ = (\inst30|inst3|UPA[1]~23_combout\ & (((\upa|Q\(6))))) # (!\inst30|inst3|UPA[1]~23_combout\ & ((\AcumuladorA|data_out\(6)) # ((!\AcumuladorA|C[7]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(6),
	datab => \upa|Q\(6),
	datac => \inst30|inst3|UPA[1]~23_combout\,
	datad => \AcumuladorA|C[7]~18_combout\,
	combout => \upa|Mux34~2_combout\);

-- Location: LCCOMB_X29_Y7_N24
\upa|Mux37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux37~2_combout\ = (\inst30|inst3|UPA[1]~19_combout\) # ((\inst30|inst3|UPA[2]~20_combout\) # ((\inst30|inst3|UPA[0]~25_combout\ & \inst30|inst3|UPA[1]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[1]~19_combout\,
	datab => \inst30|inst3|UPA[0]~25_combout\,
	datac => \inst30|inst3|UPA[2]~20_combout\,
	datad => \inst30|inst3|UPA[1]~22_combout\,
	combout => \upa|Mux37~2_combout\);

-- Location: LCCOMB_X29_Y7_N30
\upa|Mux37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux37~1_combout\ = (\inst30|inst3|UPA[1]~19_combout\) # ((\inst30|inst3|UPA[0]~25_combout\ & (\inst30|inst3|UPA[2]~20_combout\)) # (!\inst30|inst3|UPA[0]~25_combout\ & ((\inst30|inst3|UPA[1]~22_combout\) # (!\inst30|inst3|UPA[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[1]~19_combout\,
	datab => \inst30|inst3|UPA[0]~25_combout\,
	datac => \inst30|inst3|UPA[2]~20_combout\,
	datad => \inst30|inst3|UPA[1]~22_combout\,
	combout => \upa|Mux37~1_combout\);

-- Location: LCCOMB_X30_Y6_N28
\upa|Mux42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux42~0_combout\ = (\upa|Mux37~2_combout\ & (((\upa|Mux37~1_combout\ & \upa|Yupa2[6]~20_combout\)))) # (!\upa|Mux37~2_combout\ & ((\upa|Mux34~2_combout\) # ((!\upa|Mux37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux34~2_combout\,
	datab => \upa|Mux37~2_combout\,
	datac => \upa|Mux37~1_combout\,
	datad => \upa|Yupa2[6]~20_combout\,
	combout => \upa|Mux42~0_combout\);

-- Location: LCCOMB_X29_Y6_N10
\upa|Mux42~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux42~1_combout\ = (\upa|Mux37~0_combout\ & ((\upa|Mux42~0_combout\ & ((\AcumuladorA|C[6]~11_combout\))) # (!\upa|Mux42~0_combout\ & (\AcumuladorB|C[6]~9_combout\)))) # (!\upa|Mux37~0_combout\ & (((\upa|Mux42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux37~0_combout\,
	datab => \AcumuladorB|C[6]~9_combout\,
	datac => \AcumuladorA|C[6]~11_combout\,
	datad => \upa|Mux42~0_combout\,
	combout => \upa|Mux42~1_combout\);

-- Location: LCCOMB_X29_Y6_N14
\upa|Mux42~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux42~2_combout\ = (\upa|Mux37~5_combout\ & ((\upa|Mux42~1_combout\))) # (!\upa|Mux37~5_combout\ & (\upa|Yupa[6]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upa|Mux37~5_combout\,
	datac => \upa|Yupa[6]~11_combout\,
	datad => \upa|Mux42~1_combout\,
	combout => \upa|Mux42~2_combout\);

-- Location: LCCOMB_X25_Y2_N20
\inst30|inst|Equal35~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal35~3_combout\ = (\inst30|inst|Equal24~5_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & 
-- \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal24~5_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	combout => \inst30|inst|Equal35~3_combout\);

-- Location: LCCOMB_X25_Y2_N28
\inst30|inst3|UPA[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[5]~15_combout\ = (\inst30|inst|Equal25~2_combout\) # ((!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & \inst30|inst|Equal35~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst30|inst|Equal25~2_combout\,
	datad => \inst30|inst|Equal35~3_combout\,
	combout => \inst30|inst3|UPA[5]~15_combout\);

-- Location: LCCOMB_X25_Y3_N8
\inst30|inst3|UPA[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[5]~16_combout\ = (\inst30|inst3|nEX2~0_combout\ & ((\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\) # ((!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\) # (!\inst30|inst|Equal35~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst30|inst|Equal35~3_combout\,
	datac => \inst30|inst3|nEX2~0_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	combout => \inst30|inst3|UPA[5]~16_combout\);

-- Location: LCCOMB_X25_Y2_N22
\inst30|inst3|UPA[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[1]~14_combout\ = (\inst30|inst|Equal46~2_combout\ & (\inst30|inst3|UPA[1]~4_combout\ & \inst30|inst3|UPA[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal46~2_combout\,
	datab => \inst30|inst3|UPA[1]~4_combout\,
	datad => \inst30|inst3|UPA[2]~3_combout\,
	combout => \inst30|inst3|UPA[1]~14_combout\);

-- Location: LCCOMB_X25_Y2_N30
\inst30|inst3|UPA[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[5]~17_combout\ = (\RESET~input_o\ & (!\inst30|inst3|UPA[5]~16_combout\ & ((\inst30|inst3|UPA[5]~15_combout\) # (\inst30|inst3|UPA[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst30|inst3|UPA[5]~15_combout\,
	datac => \inst30|inst3|UPA[5]~16_combout\,
	datad => \inst30|inst3|UPA[1]~14_combout\,
	combout => \inst30|inst3|UPA[5]~17_combout\);

-- Location: LCCOMB_X29_Y4_N26
\upa|Mux27~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux27~5_combout\ = (!\inst30|inst3|UPA[1]~19_combout\ & (\inst30|inst3|UPA[0]~25_combout\ & (!\inst30|inst3|UPA[1]~22_combout\ & !\inst30|inst3|UPA[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[1]~19_combout\,
	datab => \inst30|inst3|UPA[0]~25_combout\,
	datac => \inst30|inst3|UPA[1]~22_combout\,
	datad => \inst30|inst3|UPA[2]~20_combout\,
	combout => \upa|Mux27~5_combout\);

-- Location: LCCOMB_X30_Y4_N10
\upa|Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux34~0_combout\ = (\inst30|inst3|UPA[1]~23_combout\ & (!\inst30|inst3|UPA[0]~25_combout\ & (\upa|Q\(6)))) # (!\inst30|inst3|UPA[1]~23_combout\ & (((\AcumuladorA|C[6]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[0]~25_combout\,
	datab => \upa|Q\(6),
	datac => \inst30|inst3|UPA[1]~23_combout\,
	datad => \AcumuladorA|C[6]~11_combout\,
	combout => \upa|Mux34~0_combout\);

-- Location: LCCOMB_X30_Y4_N4
\upa|Mux34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux34~1_combout\ = (\inst30|inst3|UPA[2]~21_combout\ & ((\upa|Mux34~0_combout\) # ((\AcumuladorB|C[6]~9_combout\ & \upa|Mux27~5_combout\)))) # (!\inst30|inst3|UPA[2]~21_combout\ & (\AcumuladorB|C[6]~9_combout\ & (\upa|Mux27~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[2]~21_combout\,
	datab => \AcumuladorB|C[6]~9_combout\,
	datac => \upa|Mux27~5_combout\,
	datad => \upa|Mux34~0_combout\,
	combout => \upa|Mux34~1_combout\);

-- Location: LCCOMB_X25_Y3_N6
\inst30|inst3|UPA[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[5]~18_combout\ = (\inst30|inst3|UPA[5]~16_combout\ & (\inst30|inst|Equal57~0_combout\ & (\inst30|inst|Equal35~3_combout\ & \RESET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[5]~16_combout\,
	datab => \inst30|inst|Equal57~0_combout\,
	datac => \inst30|inst|Equal35~3_combout\,
	datad => \RESET~input_o\,
	combout => \inst30|inst3|UPA[5]~18_combout\);

-- Location: LCCOMB_X30_Y4_N26
\upa|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~1_combout\ = \upa|Mux34~1_combout\ $ (((\inst30|inst3|UPA[5]~17_combout\) # (\inst30|inst3|UPA[5]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst3|UPA[5]~17_combout\,
	datac => \upa|Mux34~1_combout\,
	datad => \inst30|inst3|UPA[5]~18_combout\,
	combout => \upa|Add0~1_combout\);

-- Location: LCCOMB_X26_Y5_N30
\RegAux|TRI_STATE_C~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|TRI_STATE_C~0_combout\ = ((\inst30|inst|Equal66~0_combout\) # ((\inst30|inst3|PC[0]~4_combout\ & \inst30|inst|Equal69~0_combout\))) # (!\inst30|inst|data[42]~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[42]~43_combout\,
	datab => \inst30|inst3|PC[0]~4_combout\,
	datac => \inst30|inst|Equal66~0_combout\,
	datad => \inst30|inst|Equal69~0_combout\,
	combout => \RegAux|TRI_STATE_C~0_combout\);

-- Location: LCCOMB_X27_Y6_N22
\RegAux|TRI_STATE_C~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|TRI_STATE_C~1_combout\ = (!\inst30|inst|data~39_combout\ & (!\inst30|inst|data[42]~84_combout\ & (\RESET~input_o\ & \RegAux|TRI_STATE_C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data~39_combout\,
	datab => \inst30|inst|data[42]~84_combout\,
	datac => \RESET~input_o\,
	datad => \RegAux|TRI_STATE_C~0_combout\,
	combout => \RegAux|TRI_STATE_C~1_combout\);

-- Location: LCCOMB_X27_Y6_N18
\RegAux|R15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|R15~0_combout\ = (\RegAux|data_out\(15)) # ((\RESET~input_o\ & ((\inst30|inst|data~39_combout\) # (\inst30|inst|data[42]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data~39_combout\,
	datab => \inst30|inst|data[42]~84_combout\,
	datac => \RESET~input_o\,
	datad => \RegAux|data_out\(15),
	combout => \RegAux|R15~0_combout\);

-- Location: LCCOMB_X27_Y6_N12
\RegAux|data_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~0_combout\ = (\inst30|inst|data~39_combout\ & (\RegAux|R15~0_combout\)) # (!\inst30|inst|data~39_combout\ & ((\upa|Yupa2[7]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegAux|R15~0_combout\,
	datac => \inst30|inst|data~39_combout\,
	datad => \upa|Yupa2[7]~15_combout\,
	combout => \RegAux|data_out~0_combout\);

-- Location: FF_X27_Y6_N13
\RegAux|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \RegAux|data_out~0_combout\,
	clrn => \RESET~input_o\,
	ena => \RegAux|data_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(15));

-- Location: LCCOMB_X32_Y6_N28
\RegAux|data_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~2_combout\ = (\inst30|inst|data~39_combout\ & (\RegAux|data_out\(15))) # (!\inst30|inst|data~39_combout\ & ((\upa|Yupa2[6]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegAux|data_out\(15),
	datac => \upa|Yupa2[6]~20_combout\,
	datad => \inst30|inst|data~39_combout\,
	combout => \RegAux|data_out~2_combout\);

-- Location: FF_X32_Y6_N29
\RegAux|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~2_combout\,
	clrn => \RESET~input_o\,
	ena => \RegAux|data_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(14));

-- Location: LCCOMB_X32_Y7_N4
\RegAux|data_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~3_combout\ = (\inst30|inst|data~39_combout\ & (\RegAux|data_out\(14))) # (!\inst30|inst|data~39_combout\ & ((\upa|Yupa2[5]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data~39_combout\,
	datac => \RegAux|data_out\(14),
	datad => \upa|Yupa2[5]~25_combout\,
	combout => \RegAux|data_out~3_combout\);

-- Location: FF_X32_Y7_N5
\RegAux|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~3_combout\,
	clrn => \RESET~input_o\,
	ena => \RegAux|data_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(13));

-- Location: LCCOMB_X27_Y7_N22
\AcumuladorA|C[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[5]~12_combout\ = (\inst30|inst3|EA[1]~13_combout\) # ((\AcumuladorA|data_out\(5)) # ((!\inst30|inst3|nWA~1_combout\) # (!\inst30|inst3|EA[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EA[1]~13_combout\,
	datab => \AcumuladorA|data_out\(5),
	datac => \inst30|inst3|EA[0]~8_combout\,
	datad => \inst30|inst3|nWA~1_combout\,
	combout => \AcumuladorA|C[5]~12_combout\);

-- Location: LCCOMB_X23_Y7_N24
\AcumuladorA|data_out[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[5]~2_combout\ = (\inst30|inst3|EA[0]~8_combout\ & ((\AcumuladorA|C[5]~12_combout\))) # (!\inst30|inst3|EA[0]~8_combout\ & (\upa|Yupa2[5]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[5]~25_combout\,
	datab => \inst30|inst3|EA[0]~8_combout\,
	datad => \AcumuladorA|C[5]~12_combout\,
	combout => \AcumuladorA|data_out[5]~2_combout\);

-- Location: LCCOMB_X31_Y7_N26
\AcumuladorA|data_out[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[0]~10_combout\ = (!\inst30|inst3|nWA~1_combout\ & (((\inst30|inst3|EA[0]~7_combout\) # (\inst30|inst3|EA[0]~6_combout\)) # (!\inst30|inst3|EA[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EA[1]~13_combout\,
	datab => \inst30|inst3|EA[0]~7_combout\,
	datac => \inst30|inst3|nWA~1_combout\,
	datad => \inst30|inst3|EA[0]~6_combout\,
	combout => \AcumuladorA|data_out[0]~10_combout\);

-- Location: FF_X23_Y7_N25
\AcumuladorA|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[5]~2_combout\,
	asdata => \upa|Yupa[5]~41_combout\,
	sload => \inst30|inst3|EA[1]~13_combout\,
	ena => \AcumuladorA|data_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(5));

-- Location: LCCOMB_X27_Y7_N2
\upa|Yupa[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[5]~12_combout\ = (\AcumuladorA|TRI_STATE~2_combout\ & (\AcumuladorA|data_out\(5) & ((\RegAux|data_out\(5)) # (!\RegAux|TRI_STATE_D~1_combout\)))) # (!\AcumuladorA|TRI_STATE~2_combout\ & (((\RegAux|data_out\(5)) # 
-- (!\RegAux|TRI_STATE_D~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|TRI_STATE~2_combout\,
	datab => \AcumuladorA|data_out\(5),
	datac => \RegAux|TRI_STATE_D~1_combout\,
	datad => \RegAux|data_out\(5),
	combout => \upa|Yupa[5]~12_combout\);

-- Location: LCCOMB_X25_Y6_N0
\inst9|TRI_STATE_D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|TRI_STATE_D~1_combout\ = (\inst9|TRI_STATE_D~0_combout\ & !\inst30|inst3|nEX0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|TRI_STATE_D~0_combout\,
	datad => \inst30|inst3|nEX0~3_combout\,
	combout => \inst9|TRI_STATE_D~1_combout\);

-- Location: LCCOMB_X27_Y5_N22
\inst9|data_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|data_out[0]~0_combout\ = (\RESET~input_o\ & (!\inst8~q\ & \inst30|inst|Equal17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \inst8~q\,
	datad => \inst30|inst|Equal17~0_combout\,
	combout => \inst9|data_out[0]~0_combout\);

-- Location: FF_X25_Y6_N11
\inst9|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa[5]~41_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst9|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(5));

-- Location: LCCOMB_X29_Y6_N24
\inst13|data_out[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_out[0]~1_combout\ = (\RESET~input_o\ & (\inst30|inst|Equal17~0_combout\ & \inst8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET~input_o\,
	datac => \inst30|inst|Equal17~0_combout\,
	datad => \inst8~q\,
	combout => \inst13|data_out[0]~1_combout\);

-- Location: FF_X27_Y7_N27
\inst13|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa[5]~41_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(5));

-- Location: LCCOMB_X25_Y6_N14
\inst13|TRI_STATE_D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|TRI_STATE_D~1_combout\ = (\inst13|TRI_STATE_D~0_combout\ & !\inst30|inst3|nEX0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|TRI_STATE_D~0_combout\,
	datad => \inst30|inst3|nEX0~3_combout\,
	combout => \inst13|TRI_STATE_D~1_combout\);

-- Location: LCCOMB_X27_Y7_N26
\upa|Yupa[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[5]~13_combout\ = (\inst9|TRI_STATE_D~1_combout\ & (\inst9|data_out\(5) & ((\inst13|data_out\(5)) # (!\inst13|TRI_STATE_D~1_combout\)))) # (!\inst9|TRI_STATE_D~1_combout\ & (((\inst13|data_out\(5)) # (!\inst13|TRI_STATE_D~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|TRI_STATE_D~1_combout\,
	datab => \inst9|data_out\(5),
	datac => \inst13|data_out\(5),
	datad => \inst13|TRI_STATE_D~1_combout\,
	combout => \upa|Yupa[5]~13_combout\);

-- Location: LCCOMB_X27_Y7_N8
\AcumuladorB|A[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|A[5]~1_combout\ = ((\AcumuladorB|data_out\(5)) # ((!\inst30|inst3|nWB~4_combout\) # (!\inst30|inst3|EB[0]~1_combout\))) # (!\inst30|inst3|EB[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EB[1]~4_combout\,
	datab => \AcumuladorB|data_out\(5),
	datac => \inst30|inst3|EB[0]~1_combout\,
	datad => \inst30|inst3|nWB~4_combout\,
	combout => \AcumuladorB|A[5]~1_combout\);

-- Location: FF_X31_Y7_N15
\upa|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Add0~20_combout\,
	sload => VCC,
	ena => \upa|Q[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(5));

-- Location: LCCOMB_X31_Y7_N18
\upa|Mux33~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux33~2_combout\ = (\inst30|inst3|UPA[1]~23_combout\ & (((\upa|Q\(5))))) # (!\inst30|inst3|UPA[1]~23_combout\ & ((\AcumuladorA|data_out\(5)) # ((!\AcumuladorA|C[7]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(5),
	datab => \upa|Q\(5),
	datac => \inst30|inst3|UPA[1]~23_combout\,
	datad => \AcumuladorA|C[7]~18_combout\,
	combout => \upa|Mux33~2_combout\);

-- Location: LCCOMB_X27_Y7_N6
\upa|Mux41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux41~0_combout\ = (\upa|Mux37~1_combout\ & ((\upa|Mux37~2_combout\ & ((\upa|Yupa2[5]~25_combout\))) # (!\upa|Mux37~2_combout\ & (\upa|Mux33~2_combout\)))) # (!\upa|Mux37~1_combout\ & (((!\upa|Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux33~2_combout\,
	datab => \upa|Mux37~1_combout\,
	datac => \upa|Mux37~2_combout\,
	datad => \upa|Yupa2[5]~25_combout\,
	combout => \upa|Mux41~0_combout\);

-- Location: LCCOMB_X27_Y7_N4
\upa|Mux41~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux41~1_combout\ = (\upa|Mux37~0_combout\ & ((\upa|Mux41~0_combout\ & ((\AcumuladorA|C[5]~12_combout\))) # (!\upa|Mux41~0_combout\ & (\AcumuladorB|C[5]~10_combout\)))) # (!\upa|Mux37~0_combout\ & (((\upa|Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux37~0_combout\,
	datab => \AcumuladorB|C[5]~10_combout\,
	datac => \AcumuladorA|C[5]~12_combout\,
	datad => \upa|Mux41~0_combout\,
	combout => \upa|Mux41~1_combout\);

-- Location: LCCOMB_X27_Y7_N14
\upa|Mux41~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux41~2_combout\ = (\upa|Mux37~5_combout\ & (((\upa|Mux41~1_combout\)))) # (!\upa|Mux37~5_combout\ & (((\upa|Yupa[5]~15_combout\)) # (!\upa|Yupa[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux37~5_combout\,
	datab => \upa|Yupa[7]~6_combout\,
	datac => \upa|Mux41~1_combout\,
	datad => \upa|Yupa[5]~15_combout\,
	combout => \upa|Mux41~2_combout\);

-- Location: LCCOMB_X29_Y5_N4
\AcumuladorB|data_out[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[4]~3_combout\ = (\inst30|inst3|EB[0]~1_combout\ & (\AcumuladorB|C[4]~11_combout\)) # (!\inst30|inst3|EB[0]~1_combout\ & ((\upa|Yupa2[4]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[4]~11_combout\,
	datab => \upa|Yupa2[4]~30_combout\,
	datad => \inst30|inst3|EB[0]~1_combout\,
	combout => \AcumuladorB|data_out[4]~3_combout\);

-- Location: LCCOMB_X30_Y6_N12
\AcumuladorA|C[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[4]~13_combout\ = ((\AcumuladorA|data_out\(4)) # ((\inst30|inst3|EA[1]~13_combout\) # (!\inst30|inst3|EA[0]~8_combout\))) # (!\inst30|inst3|nWA~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nWA~1_combout\,
	datab => \AcumuladorA|data_out\(4),
	datac => \inst30|inst3|EA[0]~8_combout\,
	datad => \inst30|inst3|EA[1]~13_combout\,
	combout => \AcumuladorA|C[4]~13_combout\);

-- Location: LCCOMB_X30_Y3_N16
\AcumuladorA|data_out[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[4]~3_combout\ = (\inst30|inst3|EA[0]~8_combout\ & (\AcumuladorA|C[4]~13_combout\)) # (!\inst30|inst3|EA[0]~8_combout\ & ((\upa|Yupa2[4]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EA[0]~8_combout\,
	datab => \AcumuladorA|C[4]~13_combout\,
	datad => \upa|Yupa2[4]~30_combout\,
	combout => \AcumuladorA|data_out[4]~3_combout\);

-- Location: FF_X30_Y3_N17
\AcumuladorA|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[4]~3_combout\,
	asdata => \upa|Yupa[4]~20_combout\,
	sload => \inst30|inst3|EA[1]~13_combout\,
	ena => \AcumuladorA|data_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(4));

-- Location: LCCOMB_X25_Y3_N24
\upa|Yupa[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[4]~16_combout\ = (\AcumuladorA|data_out\(4) & (((\RegAux|data_out\(4)) # (!\RegAux|TRI_STATE_D~1_combout\)))) # (!\AcumuladorA|data_out\(4) & (!\AcumuladorA|TRI_STATE~2_combout\ & ((\RegAux|data_out\(4)) # (!\RegAux|TRI_STATE_D~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(4),
	datab => \AcumuladorA|TRI_STATE~2_combout\,
	datac => \RegAux|data_out\(4),
	datad => \RegAux|TRI_STATE_D~1_combout\,
	combout => \upa|Yupa[4]~16_combout\);

-- Location: LCCOMB_X31_Y7_N20
\upa|Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[4]~feeder_combout\ = \upa|Add0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Add0~18_combout\,
	combout => \upa|Q[4]~feeder_combout\);

-- Location: FF_X31_Y7_N21
\upa|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[4]~feeder_combout\,
	ena => \upa|Q[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(4));

-- Location: LCCOMB_X30_Y6_N30
\upa|Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux32~0_combout\ = (\inst30|inst3|UPA[1]~23_combout\ & (!\inst30|inst3|UPA[0]~25_combout\ & (\upa|Q\(4)))) # (!\inst30|inst3|UPA[1]~23_combout\ & (((\AcumuladorA|C[4]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[0]~25_combout\,
	datab => \upa|Q\(4),
	datac => \inst30|inst3|UPA[1]~23_combout\,
	datad => \AcumuladorA|C[4]~13_combout\,
	combout => \upa|Mux32~0_combout\);

-- Location: LCCOMB_X30_Y6_N8
\upa|Mux32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux32~1_combout\ = (\AcumuladorB|C[4]~11_combout\ & ((\upa|Mux27~5_combout\) # ((\upa|Mux32~0_combout\ & \inst30|inst3|UPA[2]~21_combout\)))) # (!\AcumuladorB|C[4]~11_combout\ & (((\upa|Mux32~0_combout\ & \inst30|inst3|UPA[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[4]~11_combout\,
	datab => \upa|Mux27~5_combout\,
	datac => \upa|Mux32~0_combout\,
	datad => \inst30|inst3|UPA[2]~21_combout\,
	combout => \upa|Mux32~1_combout\);

-- Location: LCCOMB_X30_Y6_N26
\upa|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~3_combout\ = \upa|Mux32~1_combout\ $ (((\inst30|inst3|UPA[5]~17_combout\) # (\inst30|inst3|UPA[5]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[5]~17_combout\,
	datab => \inst30|inst3|UPA[5]~18_combout\,
	datac => \upa|Mux32~1_combout\,
	combout => \upa|Add0~3_combout\);

-- Location: LCCOMB_X29_Y7_N26
\AcumuladorA|C[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[3]~14_combout\ = (\inst30|inst3|EA[1]~13_combout\) # ((\AcumuladorA|data_out\(3)) # ((!\inst30|inst3|nWA~1_combout\) # (!\inst30|inst3|EA[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EA[1]~13_combout\,
	datab => \AcumuladorA|data_out\(3),
	datac => \inst30|inst3|EA[0]~8_combout\,
	datad => \inst30|inst3|nWA~1_combout\,
	combout => \AcumuladorA|C[3]~14_combout\);

-- Location: LCCOMB_X32_Y5_N28
\AcumuladorA|data_out[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[3]~4_combout\ = (\inst30|inst3|EA[0]~8_combout\ & ((\AcumuladorA|C[3]~14_combout\))) # (!\inst30|inst3|EA[0]~8_combout\ & (\upa|Yupa2[3]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[3]~35_combout\,
	datab => \AcumuladorA|C[3]~14_combout\,
	datad => \inst30|inst3|EA[0]~8_combout\,
	combout => \AcumuladorA|data_out[3]~4_combout\);

-- Location: LCCOMB_X31_Y7_N10
\upa|Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[3]~feeder_combout\ = \upa|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Add0~16_combout\,
	combout => \upa|Q[3]~feeder_combout\);

-- Location: FF_X31_Y7_N11
\upa|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[3]~feeder_combout\,
	ena => \upa|Q[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(3));

-- Location: LCCOMB_X31_Y7_N6
\upa|Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux31~2_combout\ = (\inst30|inst3|UPA[1]~23_combout\ & (\upa|Q\(3))) # (!\inst30|inst3|UPA[1]~23_combout\ & (((\AcumuladorA|data_out\(3)) # (!\AcumuladorA|C[7]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Q\(3),
	datab => \AcumuladorA|data_out\(3),
	datac => \inst30|inst3|UPA[1]~23_combout\,
	datad => \AcumuladorA|C[7]~18_combout\,
	combout => \upa|Mux31~2_combout\);

-- Location: LCCOMB_X29_Y7_N6
\upa|Mux39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux39~0_combout\ = (\upa|Mux37~1_combout\ & ((\upa|Mux37~2_combout\ & ((\upa|Yupa2[3]~35_combout\))) # (!\upa|Mux37~2_combout\ & (\upa|Mux31~2_combout\)))) # (!\upa|Mux37~1_combout\ & (!\upa|Mux37~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux37~1_combout\,
	datab => \upa|Mux37~2_combout\,
	datac => \upa|Mux31~2_combout\,
	datad => \upa|Yupa2[3]~35_combout\,
	combout => \upa|Mux39~0_combout\);

-- Location: LCCOMB_X30_Y7_N26
\upa|Mux39~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux39~1_combout\ = (\upa|Mux37~0_combout\ & ((\upa|Mux39~0_combout\ & ((\AcumuladorA|C[3]~14_combout\))) # (!\upa|Mux39~0_combout\ & (\AcumuladorB|C[3]~12_combout\)))) # (!\upa|Mux37~0_combout\ & (((\upa|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux37~0_combout\,
	datab => \AcumuladorB|C[3]~12_combout\,
	datac => \upa|Mux39~0_combout\,
	datad => \AcumuladorA|C[3]~14_combout\,
	combout => \upa|Mux39~1_combout\);

-- Location: LCCOMB_X30_Y7_N2
\upa|Mux39~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux39~2_combout\ = (\upa|Mux37~5_combout\ & (((\upa|Mux39~1_combout\)))) # (!\upa|Mux37~5_combout\ & (((\upa|Yupa[3]~24_combout\)) # (!\upa|Yupa[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux37~5_combout\,
	datab => \upa|Yupa[7]~6_combout\,
	datac => \upa|Mux39~1_combout\,
	datad => \upa|Yupa[3]~24_combout\,
	combout => \upa|Mux39~2_combout\);

-- Location: LCCOMB_X31_Y6_N6
\AcumuladorA|data_out[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[2]~5_combout\ = (\inst30|inst3|EA[0]~8_combout\ & ((\AcumuladorA|C[2]~15_combout\))) # (!\inst30|inst3|EA[0]~8_combout\ & (\upa|Yupa2[2]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[2]~40_combout\,
	datab => \AcumuladorA|C[2]~15_combout\,
	datad => \inst30|inst3|EA[0]~8_combout\,
	combout => \AcumuladorA|data_out[2]~5_combout\);

-- Location: FF_X31_Y6_N7
\AcumuladorA|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[2]~5_combout\,
	asdata => \upa|Yupa[2]~28_combout\,
	sload => \inst30|inst3|EA[1]~13_combout\,
	ena => \AcumuladorA|data_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(2));

-- Location: LCCOMB_X27_Y4_N10
\AcumuladorA|C[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[2]~15_combout\ = (\inst30|inst3|EA[1]~13_combout\) # ((\AcumuladorA|data_out\(2)) # ((!\inst30|inst3|EA[0]~8_combout\) # (!\inst30|inst3|nWA~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EA[1]~13_combout\,
	datab => \AcumuladorA|data_out\(2),
	datac => \inst30|inst3|nWA~1_combout\,
	datad => \inst30|inst3|EA[0]~8_combout\,
	combout => \AcumuladorA|C[2]~15_combout\);

-- Location: LCCOMB_X31_Y7_N12
\upa|Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Q[2]~feeder_combout\ = \upa|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Add0~14_combout\,
	combout => \upa|Q[2]~feeder_combout\);

-- Location: FF_X31_Y7_N13
\upa|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Q[2]~feeder_combout\,
	ena => \upa|Q[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(2));

-- Location: LCCOMB_X31_Y7_N24
\upa|Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux30~2_combout\ = (\inst30|inst3|UPA[1]~23_combout\ & (\upa|Q\(2))) # (!\inst30|inst3|UPA[1]~23_combout\ & (((\AcumuladorA|data_out\(2)) # (!\AcumuladorA|C[7]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Q\(2),
	datab => \AcumuladorA|data_out\(2),
	datac => \inst30|inst3|UPA[1]~23_combout\,
	datad => \AcumuladorA|C[7]~18_combout\,
	combout => \upa|Mux30~2_combout\);

-- Location: LCCOMB_X26_Y6_N18
\upa|Mux38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux38~0_combout\ = (\upa|Mux37~1_combout\ & ((\upa|Mux37~2_combout\ & ((\upa|Yupa2[2]~40_combout\))) # (!\upa|Mux37~2_combout\ & (\upa|Mux30~2_combout\)))) # (!\upa|Mux37~1_combout\ & (!\upa|Mux37~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux37~1_combout\,
	datab => \upa|Mux37~2_combout\,
	datac => \upa|Mux30~2_combout\,
	datad => \upa|Yupa2[2]~40_combout\,
	combout => \upa|Mux38~0_combout\);

-- Location: LCCOMB_X26_Y6_N28
\upa|Mux38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux38~1_combout\ = (\upa|Mux37~0_combout\ & ((\upa|Mux38~0_combout\ & ((\AcumuladorA|C[2]~15_combout\))) # (!\upa|Mux38~0_combout\ & (\AcumuladorB|C[2]~13_combout\)))) # (!\upa|Mux37~0_combout\ & (((\upa|Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[2]~13_combout\,
	datab => \AcumuladorA|C[2]~15_combout\,
	datac => \upa|Mux37~0_combout\,
	datad => \upa|Mux38~0_combout\,
	combout => \upa|Mux38~1_combout\);

-- Location: LCCOMB_X26_Y6_N22
\upa|Mux38~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux38~2_combout\ = (\upa|Mux37~5_combout\ & ((\upa|Mux38~1_combout\))) # (!\upa|Mux37~5_combout\ & (\upa|Yupa[2]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upa|Mux37~5_combout\,
	datac => \upa|Yupa[2]~28_combout\,
	datad => \upa|Mux38~1_combout\,
	combout => \upa|Mux38~2_combout\);

-- Location: LCCOMB_X27_Y3_N20
\AcumuladorA|data_out[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[1]~6_combout\ = (\inst30|inst3|EA[0]~8_combout\ & ((\AcumuladorA|C[1]~16_combout\))) # (!\inst30|inst3|EA[0]~8_combout\ & (\upa|Yupa2[1]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EA[0]~8_combout\,
	datab => \upa|Yupa2[1]~45_combout\,
	datad => \AcumuladorA|C[1]~16_combout\,
	combout => \AcumuladorA|data_out[1]~6_combout\);

-- Location: FF_X26_Y5_N27
\inst13|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa[0]~38_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(0));

-- Location: LCCOMB_X24_Y7_N18
\inst30|inst3|UPA[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|UPA[2]~26_combout\ = (\inst30|inst3|UPA[2]~1_combout\ & (\inst30|inst3|UPA[2]~2_combout\ & (\inst30|inst3|UPA[1]~4_combout\ & \inst30|inst|data~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[2]~1_combout\,
	datab => \inst30|inst3|UPA[2]~2_combout\,
	datac => \inst30|inst3|UPA[1]~4_combout\,
	datad => \inst30|inst|data~32_combout\,
	combout => \inst30|inst3|UPA[2]~26_combout\);

-- Location: LCCOMB_X25_Y2_N10
\inst30|inst|Equal27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal27~2_combout\ = (\inst30|inst|Equal21~0_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst30|inst|Equal24~5_combout\ & \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal21~0_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst30|inst|Equal24~5_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst30|inst|Equal27~2_combout\);

-- Location: LCCOMB_X25_Y2_N8
\inst30|inst3|nERA2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nERA2~0_combout\ = (!\inst30|inst|Equal38~1_combout\ & (!\inst30|inst|Equal27~2_combout\ & ((!\inst30|inst3|UPA[2]~26_combout\) # (!\inst30|inst|Equal48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal38~1_combout\,
	datab => \inst30|inst|Equal48~0_combout\,
	datac => \inst30|inst3|UPA[2]~26_combout\,
	datad => \inst30|inst|Equal27~2_combout\,
	combout => \inst30|inst3|nERA2~0_combout\);

-- Location: LCCOMB_X25_Y3_N10
\inst30|inst3|nERA2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nERA2~1_combout\ = ((\inst30|inst|data[42]~42_combout\ & (!\inst30|inst|Equal59~0_combout\)) # (!\inst30|inst|data[42]~42_combout\ & ((\inst30|inst3|nERA2~0_combout\)))) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[42]~42_combout\,
	datab => \inst30|inst|Equal59~0_combout\,
	datac => \inst30|inst3|nERA2~0_combout\,
	datad => \RESET~input_o\,
	combout => \inst30|inst3|nERA2~1_combout\);

-- Location: LCCOMB_X25_Y3_N0
\RegAux|TRI_STATE_E~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|TRI_STATE_E~0_combout\ = (!\inst30|inst3|nERA2~1_combout\ & (((!\inst30|inst|data[42]~84_combout\ & !\inst30|inst|data~39_combout\)) # (!\RESET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst30|inst|data[42]~84_combout\,
	datac => \inst30|inst|data~39_combout\,
	datad => \inst30|inst3|nERA2~1_combout\,
	combout => \RegAux|TRI_STATE_E~0_combout\);

-- Location: LCCOMB_X22_Y5_N26
\inst30|inst3|nEX2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nEX2~1_combout\ = (!\inst30|inst|Equal35~2_combout\ & (!\inst30|inst|Equal36~0_combout\ & ((\inst30|inst|Equal55~2_combout\) # (!\inst30|inst3|prueba[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal55~2_combout\,
	datab => \inst30|inst|Equal35~2_combout\,
	datac => \inst30|inst3|prueba[3]~0_combout\,
	datad => \inst30|inst|Equal36~0_combout\,
	combout => \inst30|inst3|nEX2~1_combout\);

-- Location: LCCOMB_X25_Y3_N2
\inst30|inst3|nEX2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nEX2~2_combout\ = (!\inst30|inst3|UPA[5]~18_combout\ & ((\inst30|inst3|nEX2~1_combout\) # ((\inst30|inst3|UPA[5]~16_combout\) # (!\RESET~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[5]~18_combout\,
	datab => \inst30|inst3|nEX2~1_combout\,
	datac => \inst30|inst3|UPA[5]~16_combout\,
	datad => \RESET~input_o\,
	combout => \inst30|inst3|nEX2~2_combout\);

-- Location: LCCOMB_X25_Y3_N28
\dir|valor_interno[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dir|valor_interno[7]~1_combout\ = (!\RegAux|TRI_STATE_E~0_combout\ & ((\inst30|inst3|nEX2~2_combout\) # (!\inst13|TRI_STATE_D~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|TRI_STATE_D~0_combout\,
	datab => \RegAux|TRI_STATE_E~0_combout\,
	datad => \inst30|inst3|nEX2~2_combout\,
	combout => \dir|valor_interno[7]~1_combout\);

-- Location: LCCOMB_X24_Y3_N2
\dir|valor_interno[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dir|valor_interno[7]~0_combout\ = (\RegAux|TRI_STATE_E~0_combout\) # ((!\inst30|inst3|nEX2~2_combout\ & \inst9|TRI_STATE_D~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nEX2~2_combout\,
	datab => \inst9|TRI_STATE_D~0_combout\,
	datad => \RegAux|TRI_STATE_E~0_combout\,
	combout => \dir|valor_interno[7]~0_combout\);

-- Location: LCCOMB_X24_Y3_N6
\ENTRADA~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ENTRADA~8_combout\ = (\dir|valor_interno[7]~1_combout\ & (((\dir|valor_interno[7]~0_combout\)))) # (!\dir|valor_interno[7]~1_combout\ & ((\dir|valor_interno[7]~0_combout\ & (\RegAux|data_out\(0))) # (!\dir|valor_interno[7]~0_combout\ & 
-- ((\inst13|data_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(0),
	datab => \inst13|data_out\(0),
	datac => \dir|valor_interno[7]~1_combout\,
	datad => \dir|valor_interno[7]~0_combout\,
	combout => \ENTRADA~8_combout\);

-- Location: FF_X26_Y5_N1
\inst9|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \upa|Yupa[0]~38_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst9|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(0));

-- Location: LCCOMB_X29_Y3_N24
\ENTRADA~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ENTRADA~9_combout\ = (\ENTRADA~8_combout\ & (((\inst9|data_out\(0)) # (!\dir|valor_interno[7]~1_combout\)))) # (!\ENTRADA~8_combout\ & (\RegPC|data_out\(0) & ((\dir|valor_interno[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(0),
	datab => \ENTRADA~8_combout\,
	datac => \inst9|data_out\(0),
	datad => \dir|valor_interno[7]~1_combout\,
	combout => \ENTRADA~9_combout\);

-- Location: FF_X29_Y3_N25
\dir|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst3|nCBD~clkctrl_outclk\,
	d => \ENTRADA~9_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(0));

-- Location: LCCOMB_X31_Y5_N8
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

-- Location: LCCOMB_X31_Y5_N10
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

-- Location: LCCOMB_X24_Y3_N24
\RegPC|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~42_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~10_combout\)) # (!\RegPC|Equal0~0_combout\ & (((\upa|Yupa[5]~15_combout\) # (!\upa|Yupa[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Add0~10_combout\,
	datab => \upa|Yupa[7]~6_combout\,
	datac => \RegPC|Equal0~0_combout\,
	datad => \upa|Yupa[5]~15_combout\,
	combout => \RegPC|Add0~42_combout\);

-- Location: LCCOMB_X30_Y5_N4
\inst30|inst3|PC[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|PC[0]~8_combout\ = (\inst30|inst3|PC[0]~7_combout\) # (\inst30|inst3|PC[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|PC[0]~7_combout\,
	datad => \inst30|inst3|PC[0]~6_combout\,
	combout => \inst30|inst3|PC[0]~8_combout\);

-- Location: FF_X24_Y3_N25
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
	ena => \inst30|inst3|PC[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(5));

-- Location: LCCOMB_X24_Y3_N8
\ENTRADA~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ENTRADA~4_combout\ = (\dir|valor_interno[7]~1_combout\ & (((\RegPC|data_out\(5)) # (\dir|valor_interno[7]~0_combout\)))) # (!\dir|valor_interno[7]~1_combout\ & (\inst13|data_out\(5) & ((!\dir|valor_interno[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|data_out\(5),
	datab => \RegPC|data_out\(5),
	datac => \dir|valor_interno[7]~1_combout\,
	datad => \dir|valor_interno[7]~0_combout\,
	combout => \ENTRADA~4_combout\);

-- Location: LCCOMB_X29_Y3_N12
\ENTRADA~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ENTRADA~5_combout\ = (\ENTRADA~4_combout\ & ((\inst9|data_out\(5)) # ((!\dir|valor_interno[7]~0_combout\)))) # (!\ENTRADA~4_combout\ & (((\RegAux|data_out\(5) & \dir|valor_interno[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENTRADA~4_combout\,
	datab => \inst9|data_out\(5),
	datac => \RegAux|data_out\(5),
	datad => \dir|valor_interno[7]~0_combout\,
	combout => \ENTRADA~5_combout\);

-- Location: FF_X29_Y3_N13
\dir|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst3|nCBD~clkctrl_outclk\,
	d => \ENTRADA~5_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(5));

-- Location: LCCOMB_X27_Y3_N10
\inst1|PortR~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR~10_combout\ = (\inst30|inst3|BD~0_combout\ & !\inst30|inst3|nRW~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|BD~0_combout\,
	datad => \inst30|inst3|nRW~0_combout\,
	combout => \inst1|PortR~10_combout\);

-- Location: LCCOMB_X26_Y3_N30
\inst13|data_out[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_out[3]~feeder_combout\ = \upa|Yupa[3]~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \upa|Yupa[3]~40_combout\,
	combout => \inst13|data_out[3]~feeder_combout\);

-- Location: FF_X26_Y3_N31
\inst13|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|data_out[3]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(3));

-- Location: LCCOMB_X31_Y3_N30
\ENTRADA~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ENTRADA~14_combout\ = (\dir|valor_interno[7]~1_combout\ & (((\dir|valor_interno[7]~0_combout\) # (\RegPC|data_out\(3))))) # (!\dir|valor_interno[7]~1_combout\ & (\inst13|data_out\(3) & (!\dir|valor_interno[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|data_out\(3),
	datab => \dir|valor_interno[7]~1_combout\,
	datac => \dir|valor_interno[7]~0_combout\,
	datad => \RegPC|data_out\(3),
	combout => \ENTRADA~14_combout\);

-- Location: LCCOMB_X27_Y5_N10
\inst9|data_out[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|data_out[3]~feeder_combout\ = \upa|Yupa[3]~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Yupa[3]~40_combout\,
	combout => \inst9|data_out[3]~feeder_combout\);

-- Location: FF_X27_Y5_N11
\inst9|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|data_out[3]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst9|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(3));

-- Location: LCCOMB_X30_Y3_N0
\ENTRADA~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ENTRADA~15_combout\ = (\ENTRADA~14_combout\ & (((\inst9|data_out\(3)) # (!\dir|valor_interno[7]~0_combout\)))) # (!\ENTRADA~14_combout\ & (\RegAux|data_out\(3) & ((\dir|valor_interno[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENTRADA~14_combout\,
	datab => \RegAux|data_out\(3),
	datac => \inst9|data_out\(3),
	datad => \dir|valor_interno[7]~0_combout\,
	combout => \ENTRADA~15_combout\);

-- Location: FF_X30_Y3_N1
\dir|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst3|nCBD~clkctrl_outclk\,
	d => \ENTRADA~15_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(3));

-- Location: FF_X24_Y6_N5
\inst13|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa[2]~28_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(2));

-- Location: LCCOMB_X24_Y3_N14
\ENTRADA~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ENTRADA~12_combout\ = (\dir|valor_interno[7]~1_combout\ & (((\dir|valor_interno[7]~0_combout\)))) # (!\dir|valor_interno[7]~1_combout\ & ((\dir|valor_interno[7]~0_combout\ & (\RegAux|data_out\(2))) # (!\dir|valor_interno[7]~0_combout\ & 
-- ((\inst13|data_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(2),
	datab => \inst13|data_out\(2),
	datac => \dir|valor_interno[7]~1_combout\,
	datad => \dir|valor_interno[7]~0_combout\,
	combout => \ENTRADA~12_combout\);

-- Location: FF_X25_Y6_N5
\inst9|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa[2]~28_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst9|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(2));

-- Location: LCCOMB_X30_Y3_N10
\ENTRADA~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ENTRADA~13_combout\ = (\ENTRADA~12_combout\ & ((\inst9|data_out\(2)) # ((!\dir|valor_interno[7]~1_combout\)))) # (!\ENTRADA~12_combout\ & (((\RegPC|data_out\(2) & \dir|valor_interno[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENTRADA~12_combout\,
	datab => \inst9|data_out\(2),
	datac => \RegPC|data_out\(2),
	datad => \dir|valor_interno[7]~1_combout\,
	combout => \ENTRADA~13_combout\);

-- Location: FF_X30_Y3_N11
\dir|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst3|nCBD~clkctrl_outclk\,
	d => \ENTRADA~13_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(2));

-- Location: FF_X25_Y7_N1
\inst9|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa[1]~33_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst9|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(1));

-- Location: FF_X25_Y7_N31
\inst13|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa[1]~33_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(1));

-- Location: LCCOMB_X24_Y3_N4
\ENTRADA~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ENTRADA~10_combout\ = (\dir|valor_interno[7]~1_combout\ & (((\RegPC|data_out\(1)) # (\dir|valor_interno[7]~0_combout\)))) # (!\dir|valor_interno[7]~1_combout\ & (\inst13|data_out\(1) & ((!\dir|valor_interno[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|data_out\(1),
	datab => \RegPC|data_out\(1),
	datac => \dir|valor_interno[7]~1_combout\,
	datad => \dir|valor_interno[7]~0_combout\,
	combout => \ENTRADA~10_combout\);

-- Location: LCCOMB_X30_Y3_N24
\ENTRADA~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ENTRADA~11_combout\ = (\ENTRADA~10_combout\ & ((\inst9|data_out\(1)) # ((!\dir|valor_interno[7]~0_combout\)))) # (!\ENTRADA~10_combout\ & (((\RegAux|data_out\(1) & \dir|valor_interno[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data_out\(1),
	datab => \RegAux|data_out\(1),
	datac => \ENTRADA~10_combout\,
	datad => \dir|valor_interno[7]~0_combout\,
	combout => \ENTRADA~11_combout\);

-- Location: FF_X30_Y3_N25
\dir|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst3|nCBD~clkctrl_outclk\,
	d => \ENTRADA~11_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(1));

-- Location: LCCOMB_X29_Y3_N22
\inst|mem~2065\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|mem~2065_combout\ = (\dir|valor_interno\(4) & ((\dir|valor_interno\(3)) # ((\dir|valor_interno\(2)) # (\dir|valor_interno\(1))))) # (!\dir|valor_interno\(4) & (\dir|valor_interno\(1) & (\dir|valor_interno\(3) $ (\dir|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(4),
	datab => \dir|valor_interno\(3),
	datac => \dir|valor_interno\(2),
	datad => \dir|valor_interno\(1),
	combout => \inst|mem~2065_combout\);

-- Location: LCCOMB_X29_Y3_N2
\inst|data[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[7]~3_combout\ = (\dir|valor_interno\(0) & (!\dir|valor_interno\(2) & \dir|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dir|valor_interno\(0),
	datac => \dir|valor_interno\(2),
	datad => \dir|valor_interno\(1),
	combout => \inst|data[7]~3_combout\);

-- Location: LCCOMB_X29_Y3_N4
\inst|data[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[7]~4_combout\ = (\dir|valor_interno\(4) & (!\dir|valor_interno\(3) & \inst|data[7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(4),
	datac => \dir|valor_interno\(3),
	datad => \inst|data[7]~3_combout\,
	combout => \inst|data[7]~4_combout\);

-- Location: LCCOMB_X29_Y3_N0
\inst|data[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[7]~5_combout\ = (\inst|data[7]~2_combout\ & ((\inst|data[7]~4_combout\) # ((!\inst|mem~2065_combout\ & !\dir|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mem~2065_combout\,
	datab => \dir|valor_interno\(0),
	datac => \inst|data[7]~4_combout\,
	datad => \inst|data[7]~2_combout\,
	combout => \inst|data[7]~5_combout\);

-- Location: LCCOMB_X26_Y5_N14
\inst|MEM_READ~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MEM_READ~0_combout\ = (!\inst30|inst|data[26]~81_combout\ & (\RESET~input_o\ & \inst30|inst3|nRW~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[26]~81_combout\,
	datab => \RESET~input_o\,
	datad => \inst30|inst3|nRW~0_combout\,
	combout => \inst|MEM_READ~0_combout\);

-- Location: LCCOMB_X27_Y3_N12
\inst1|PortR[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR[7]~11_combout\ = (\inst1|PortR~10_combout\ & (\upa|Yupa2[7]~15_combout\ & ((\inst|data[7]~5_combout\) # (!\inst|MEM_READ~0_combout\)))) # (!\inst1|PortR~10_combout\ & ((\inst|data[7]~5_combout\) # ((!\inst|MEM_READ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PortR~10_combout\,
	datab => \inst|data[7]~5_combout\,
	datac => \inst|MEM_READ~0_combout\,
	datad => \upa|Yupa2[7]~15_combout\,
	combout => \inst1|PortR[7]~11_combout\);

-- Location: LCCOMB_X25_Y3_N26
\inst1|PortR[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR[7]~13_combout\ = ((\inst1|PortR[7]~11_combout\ & ((\upa|Yupa[7]~39_combout\) # (\inst7|PortR~0_combout\)))) # (!\inst1|PortR[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PortR[7]~12_combout\,
	datab => \inst1|PortR[7]~11_combout\,
	datac => \upa|Yupa[7]~39_combout\,
	datad => \inst7|PortR~0_combout\,
	combout => \inst1|PortR[7]~13_combout\);

-- Location: LCCOMB_X31_Y6_N24
\upa|Yupa[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~0_combout\ = (\RegAux|TRI_STATE_D~1_combout\ & (\RegAux|data_out\(7) & ((\AcumuladorA|data_out\(7)) # (!\AcumuladorA|TRI_STATE~2_combout\)))) # (!\RegAux|TRI_STATE_D~1_combout\ & (((\AcumuladorA|data_out\(7)) # 
-- (!\AcumuladorA|TRI_STATE~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|TRI_STATE_D~1_combout\,
	datab => \RegAux|data_out\(7),
	datac => \AcumuladorA|data_out\(7),
	datad => \AcumuladorA|TRI_STATE~2_combout\,
	combout => \upa|Yupa[7]~0_combout\);

-- Location: LCCOMB_X27_Y8_N0
\AcumuladorB|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[7]~0_combout\ = (\inst30|inst3|EB[0]~1_combout\ & (\AcumuladorB|C[7]~8_combout\)) # (!\inst30|inst3|EB[0]~1_combout\ & ((\upa|Yupa2[7]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EB[0]~1_combout\,
	datab => \AcumuladorB|C[7]~8_combout\,
	datad => \upa|Yupa2[7]~15_combout\,
	combout => \AcumuladorB|data_out[7]~0_combout\);

-- Location: FF_X27_Y8_N1
\AcumuladorB|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[7]~0_combout\,
	asdata => \upa|Yupa[7]~39_combout\,
	sload => \inst30|inst3|EB[1]~4_combout\,
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(7));

-- Location: LCCOMB_X31_Y6_N26
\AcumuladorB|C[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[7]~8_combout\ = (\AcumuladorB|data_out\(7)) # (((\inst30|inst3|EB[1]~4_combout\) # (!\inst30|inst3|EB[0]~1_combout\)) # (!\inst30|inst3|nWB~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(7),
	datab => \inst30|inst3|nWB~4_combout\,
	datac => \inst30|inst3|EB[0]~1_combout\,
	datad => \inst30|inst3|EB[1]~4_combout\,
	combout => \AcumuladorB|C[7]~8_combout\);

-- Location: LCCOMB_X31_Y6_N20
\AcumuladorA|C[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[7]~10_combout\ = ((\AcumuladorA|data_out\(7)) # ((\inst30|inst3|EA[1]~13_combout\) # (!\inst30|inst3|nWA~1_combout\))) # (!\inst30|inst3|EA[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EA[0]~8_combout\,
	datab => \AcumuladorA|data_out\(7),
	datac => \inst30|inst3|EA[1]~13_combout\,
	datad => \inst30|inst3|nWA~1_combout\,
	combout => \AcumuladorA|C[7]~10_combout\);

-- Location: FF_X30_Y7_N1
\upa|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \upa|Add0~24_combout\,
	sload => VCC,
	ena => \upa|Q[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(7));

-- Location: LCCOMB_X31_Y7_N30
\upa|Mux35~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux35~2_combout\ = (\inst30|inst3|UPA[1]~23_combout\ & (\upa|Q\(7))) # (!\inst30|inst3|UPA[1]~23_combout\ & (((\AcumuladorA|data_out\(7)) # (!\AcumuladorA|C[7]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Q\(7),
	datab => \AcumuladorA|data_out\(7),
	datac => \inst30|inst3|UPA[1]~23_combout\,
	datad => \AcumuladorA|C[7]~18_combout\,
	combout => \upa|Mux35~2_combout\);

-- Location: LCCOMB_X27_Y6_N10
\upa|Mux43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux43~0_combout\ = (\upa|Mux37~1_combout\ & ((\upa|Mux37~2_combout\ & ((\upa|Yupa2[7]~15_combout\))) # (!\upa|Mux37~2_combout\ & (\upa|Mux35~2_combout\)))) # (!\upa|Mux37~1_combout\ & (((!\upa|Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux35~2_combout\,
	datab => \upa|Mux37~1_combout\,
	datac => \upa|Mux37~2_combout\,
	datad => \upa|Yupa2[7]~15_combout\,
	combout => \upa|Mux43~0_combout\);

-- Location: LCCOMB_X27_Y6_N20
\upa|Mux43~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux43~1_combout\ = (\upa|Mux37~0_combout\ & ((\upa|Mux43~0_combout\ & ((\AcumuladorA|C[7]~10_combout\))) # (!\upa|Mux43~0_combout\ & (\AcumuladorB|C[7]~8_combout\)))) # (!\upa|Mux37~0_combout\ & (((\upa|Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[7]~8_combout\,
	datab => \upa|Mux37~0_combout\,
	datac => \AcumuladorA|C[7]~10_combout\,
	datad => \upa|Mux43~0_combout\,
	combout => \upa|Mux43~1_combout\);

-- Location: LCCOMB_X27_Y6_N0
\upa|Mux43~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux43~2_combout\ = (\upa|Mux37~5_combout\ & (((\upa|Mux43~1_combout\)))) # (!\upa|Mux37~5_combout\ & (((\upa|Yupa[7]~3_combout\)) # (!\upa|Yupa[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux37~5_combout\,
	datab => \upa|Yupa[7]~6_combout\,
	datac => \upa|Yupa[7]~3_combout\,
	datad => \upa|Mux43~1_combout\,
	combout => \upa|Mux43~2_combout\);

-- Location: LCCOMB_X31_Y6_N22
\upa|Mux35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux35~0_combout\ = (\inst30|inst3|UPA[1]~23_combout\ & (\upa|Q\(7) & (!\inst30|inst3|UPA[0]~25_combout\))) # (!\inst30|inst3|UPA[1]~23_combout\ & (((\AcumuladorA|C[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Q\(7),
	datab => \inst30|inst3|UPA[0]~25_combout\,
	datac => \inst30|inst3|UPA[1]~23_combout\,
	datad => \AcumuladorA|C[7]~10_combout\,
	combout => \upa|Mux35~0_combout\);

-- Location: LCCOMB_X31_Y6_N12
\upa|Mux35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux35~1_combout\ = (\AcumuladorB|C[7]~8_combout\ & ((\upa|Mux27~5_combout\) # ((\inst30|inst3|UPA[2]~21_combout\ & \upa|Mux35~0_combout\)))) # (!\AcumuladorB|C[7]~8_combout\ & (\inst30|inst3|UPA[2]~21_combout\ & (\upa|Mux35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[7]~8_combout\,
	datab => \inst30|inst3|UPA[2]~21_combout\,
	datac => \upa|Mux35~0_combout\,
	datad => \upa|Mux27~5_combout\,
	combout => \upa|Mux35~1_combout\);

-- Location: LCCOMB_X31_Y6_N2
\upa|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~0_combout\ = \upa|Mux35~1_combout\ $ (((\inst30|inst3|UPA[5]~18_combout\) # (\inst30|inst3|UPA[5]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[5]~18_combout\,
	datac => \inst30|inst3|UPA[5]~17_combout\,
	datad => \upa|Mux35~1_combout\,
	combout => \upa|Add0~0_combout\);

-- Location: LCCOMB_X30_Y7_N18
\upa|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~22_combout\ = (\upa|Mux42~2_combout\ & ((\upa|Add0~1_combout\ & (\upa|Add0~21\ & VCC)) # (!\upa|Add0~1_combout\ & (!\upa|Add0~21\)))) # (!\upa|Mux42~2_combout\ & ((\upa|Add0~1_combout\ & (!\upa|Add0~21\)) # (!\upa|Add0~1_combout\ & 
-- ((\upa|Add0~21\) # (GND)))))
-- \upa|Add0~23\ = CARRY((\upa|Mux42~2_combout\ & (!\upa|Add0~1_combout\ & !\upa|Add0~21\)) # (!\upa|Mux42~2_combout\ & ((!\upa|Add0~21\) # (!\upa|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux42~2_combout\,
	datab => \upa|Add0~1_combout\,
	datad => VCC,
	cin => \upa|Add0~21\,
	combout => \upa|Add0~22_combout\,
	cout => \upa|Add0~23\);

-- Location: LCCOMB_X30_Y7_N20
\upa|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~24_combout\ = ((\upa|Mux43~2_combout\ $ (\upa|Add0~0_combout\ $ (!\upa|Add0~23\)))) # (GND)
-- \upa|Add0~25\ = CARRY((\upa|Mux43~2_combout\ & ((\upa|Add0~0_combout\) # (!\upa|Add0~23\))) # (!\upa|Mux43~2_combout\ & (\upa|Add0~0_combout\ & !\upa|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux43~2_combout\,
	datab => \upa|Add0~0_combout\,
	datad => VCC,
	cin => \upa|Add0~23\,
	combout => \upa|Add0~24_combout\,
	cout => \upa|Add0~25\);

-- Location: FF_X30_Y7_N25
\upa|Banderas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Add0~24_combout\,
	sload => VCC,
	ena => \inst30|inst3|nDUPA~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Banderas\(2));

-- Location: LCCOMB_X31_Y6_N30
\AcumuladorB|A[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|A[7]~0_combout\ = (\AcumuladorB|data_out\(7)) # (((!\inst30|inst3|EB[1]~4_combout\) # (!\inst30|inst3|EB[0]~1_combout\)) # (!\inst30|inst3|nWB~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(7),
	datab => \inst30|inst3|nWB~4_combout\,
	datac => \inst30|inst3|EB[0]~1_combout\,
	datad => \inst30|inst3|EB[1]~4_combout\,
	combout => \AcumuladorB|A[7]~0_combout\);

-- Location: FF_X31_Y5_N25
\inst13|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa[7]~39_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(7));

-- Location: LCCOMB_X31_Y6_N0
\upa|Yupa[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~1_combout\ = (\inst13|data_out\(7) & ((\inst9|data_out\(7)) # ((!\inst9|TRI_STATE_D~1_combout\)))) # (!\inst13|data_out\(7) & (!\inst13|TRI_STATE_D~1_combout\ & ((\inst9|data_out\(7)) # (!\inst9|TRI_STATE_D~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|data_out\(7),
	datab => \inst9|data_out\(7),
	datac => \inst13|TRI_STATE_D~1_combout\,
	datad => \inst9|TRI_STATE_D~1_combout\,
	combout => \upa|Yupa[7]~1_combout\);

-- Location: LCCOMB_X31_Y6_N18
\upa|Yupa[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~2_combout\ = (\AcumuladorB|A[7]~0_combout\ & (\upa|Yupa[7]~1_combout\ & ((\upa|Banderas\(2)) # (\inst30|inst3|nDUPA~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Banderas\(2),
	datab => \inst30|inst3|nDUPA~6_combout\,
	datac => \AcumuladorB|A[7]~0_combout\,
	datad => \upa|Yupa[7]~1_combout\,
	combout => \upa|Yupa[7]~2_combout\);

-- Location: LCCOMB_X31_Y6_N8
\upa|Yupa[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~3_combout\ = (\upa|Yupa[7]~0_combout\ & (\upa|Yupa[7]~2_combout\ & ((\inst1|PortR[7]~13_combout\) # (!\inst1|PortR~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PortR[7]~13_combout\,
	datab => \upa|Yupa[7]~0_combout\,
	datac => \inst1|PortR~9_combout\,
	datad => \upa|Yupa[7]~2_combout\,
	combout => \upa|Yupa[7]~3_combout\);

-- Location: LCCOMB_X24_Y5_N8
\upa|Yupa[7]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[7]~39_combout\ = (\upa|Yupa[7]~3_combout\) # (!\upa|Yupa[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[7]~6_combout\,
	datad => \upa|Yupa[7]~3_combout\,
	combout => \upa|Yupa[7]~39_combout\);

-- Location: FF_X31_Y5_N1
\inst9|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa[7]~39_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst9|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(7));

-- Location: LCCOMB_X31_Y5_N12
\RegPC|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~12_combout\ = (\RegPC|data_out\(6) & (\RegPC|Add0~11\ $ (GND))) # (!\RegPC|data_out\(6) & (!\RegPC|Add0~11\ & VCC))
-- \RegPC|Add0~13\ = CARRY((\RegPC|data_out\(6) & !\RegPC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(6),
	datad => VCC,
	cin => \RegPC|Add0~11\,
	combout => \RegPC|Add0~12_combout\,
	cout => \RegPC|Add0~13\);

-- Location: LCCOMB_X30_Y5_N22
\RegPC|Add0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~41_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~12_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa[6]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|Equal0~0_combout\,
	datac => \RegPC|Add0~12_combout\,
	datad => \upa|Yupa[6]~11_combout\,
	combout => \RegPC|Add0~41_combout\);

-- Location: FF_X30_Y5_N23
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
	ena => \inst30|inst3|PC[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(6));

-- Location: LCCOMB_X31_Y5_N14
\RegPC|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~14_combout\ = (\RegPC|data_out\(7) & (!\RegPC|Add0~13\)) # (!\RegPC|data_out\(7) & ((\RegPC|Add0~13\) # (GND)))
-- \RegPC|Add0~15\ = CARRY((!\RegPC|Add0~13\) # (!\RegPC|data_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(7),
	datad => VCC,
	cin => \RegPC|Add0~13\,
	combout => \RegPC|Add0~14_combout\,
	cout => \RegPC|Add0~15\);

-- Location: LCCOMB_X30_Y5_N12
\RegPC|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~40_combout\ = (\RegPC|Equal0~0_combout\ & (((\RegPC|Add0~14_combout\)))) # (!\RegPC|Equal0~0_combout\ & (((\upa|Yupa[7]~3_combout\)) # (!\upa|Yupa[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[7]~6_combout\,
	datab => \RegPC|Equal0~0_combout\,
	datac => \RegPC|Add0~14_combout\,
	datad => \upa|Yupa[7]~3_combout\,
	combout => \RegPC|Add0~40_combout\);

-- Location: FF_X30_Y5_N13
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
	ena => \inst30|inst3|PC[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(7));

-- Location: LCCOMB_X30_Y3_N12
\ENTRADA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ENTRADA~0_combout\ = (\dir|valor_interno[7]~1_combout\ & (((\RegPC|data_out\(7)) # (\dir|valor_interno[7]~0_combout\)))) # (!\dir|valor_interno[7]~1_combout\ & (\inst13|data_out\(7) & ((!\dir|valor_interno[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|data_out\(7),
	datab => \RegPC|data_out\(7),
	datac => \dir|valor_interno[7]~1_combout\,
	datad => \dir|valor_interno[7]~0_combout\,
	combout => \ENTRADA~0_combout\);

-- Location: LCCOMB_X29_Y3_N28
\ENTRADA~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ENTRADA~1_combout\ = (\ENTRADA~0_combout\ & (((\inst9|data_out\(7)) # (!\dir|valor_interno[7]~0_combout\)))) # (!\ENTRADA~0_combout\ & (\RegAux|data_out\(7) & ((\dir|valor_interno[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(7),
	datab => \inst9|data_out\(7),
	datac => \ENTRADA~0_combout\,
	datad => \dir|valor_interno[7]~0_combout\,
	combout => \ENTRADA~1_combout\);

-- Location: FF_X29_Y3_N29
\dir|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst3|nCBD~clkctrl_outclk\,
	d => \ENTRADA~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(7));

-- Location: LCCOMB_X29_Y3_N18
\inst|data[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[7]~2_combout\ = (!\dir|valor_interno\(5) & (!\dir|valor_interno\(6) & !\dir|valor_interno\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(5),
	datac => \dir|valor_interno\(6),
	datad => \dir|valor_interno\(7),
	combout => \inst|data[7]~2_combout\);

-- Location: LCCOMB_X30_Y3_N14
\inst|mem~2070\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|mem~2070_combout\ = (\dir|valor_interno\(2) & ((\dir|valor_interno\(4)) # ((!\dir|valor_interno\(3) & \dir|valor_interno\(1))))) # (!\dir|valor_interno\(2) & (\dir|valor_interno\(4) & ((\dir|valor_interno\(3)) # (\dir|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(2),
	datab => \dir|valor_interno\(3),
	datac => \dir|valor_interno\(4),
	datad => \dir|valor_interno\(1),
	combout => \inst|mem~2070_combout\);

-- Location: LCCOMB_X30_Y3_N28
\inst|mem~2069\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|mem~2069_combout\ = (!\dir|valor_interno\(3) & (\dir|valor_interno\(4) & ((\dir|valor_interno\(2)) # (\dir|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(2),
	datab => \dir|valor_interno\(3),
	datac => \dir|valor_interno\(4),
	datad => \dir|valor_interno\(1),
	combout => \inst|mem~2069_combout\);

-- Location: LCCOMB_X30_Y3_N20
\inst|data[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[1]~15_combout\ = (\inst|data[7]~2_combout\ & ((\dir|valor_interno\(0) & ((\inst|mem~2069_combout\))) # (!\dir|valor_interno\(0) & (!\inst|mem~2070_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(0),
	datab => \inst|data[7]~2_combout\,
	datac => \inst|mem~2070_combout\,
	datad => \inst|mem~2069_combout\,
	combout => \inst|data[1]~15_combout\);

-- Location: LCCOMB_X27_Y3_N8
\inst1|PortR[1]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR[1]~24_combout\ = (\inst|data[1]~15_combout\ & (((\upa|Yupa2[1]~45_combout\) # (!\inst1|PortR~10_combout\)))) # (!\inst|data[1]~15_combout\ & (!\inst|MEM_READ~0_combout\ & ((\upa|Yupa2[1]~45_combout\) # (!\inst1|PortR~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data[1]~15_combout\,
	datab => \inst|MEM_READ~0_combout\,
	datac => \inst1|PortR~10_combout\,
	datad => \upa|Yupa2[1]~45_combout\,
	combout => \inst1|PortR[1]~24_combout\);

-- Location: LCCOMB_X27_Y8_N28
\inst1|PortR[1]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR[1]~25_combout\ = ((\inst1|PortR[1]~24_combout\ & ((\inst7|PortR~0_combout\) # (\upa|Yupa[1]~33_combout\)))) # (!\inst1|PortR[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PortR~0_combout\,
	datab => \inst1|PortR[7]~12_combout\,
	datac => \upa|Yupa[1]~33_combout\,
	datad => \inst1|PortR[1]~24_combout\,
	combout => \inst1|PortR[1]~25_combout\);

-- Location: LCCOMB_X26_Y3_N22
\upa|Yupa[1]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[1]~32_combout\ = (\inst1|PortR[1]~25_combout\ & (((\upa|Yupa_interno\(1)) # (\inst30|inst3|nDUPA~6_combout\)))) # (!\inst1|PortR[1]~25_combout\ & (!\inst1|PortR~9_combout\ & ((\upa|Yupa_interno\(1)) # (\inst30|inst3|nDUPA~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PortR[1]~25_combout\,
	datab => \inst1|PortR~9_combout\,
	datac => \upa|Yupa_interno\(1),
	datad => \inst30|inst3|nDUPA~6_combout\,
	combout => \upa|Yupa[1]~32_combout\);

-- Location: LCCOMB_X25_Y7_N4
\upa|Yupa[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[1]~29_combout\ = (\RegAux|TRI_STATE_D~1_combout\ & (\RegAux|data_out\(1) & ((\AcumuladorA|data_out\(1)) # (!\AcumuladorA|TRI_STATE~2_combout\)))) # (!\RegAux|TRI_STATE_D~1_combout\ & (((\AcumuladorA|data_out\(1)) # 
-- (!\AcumuladorA|TRI_STATE~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|TRI_STATE_D~1_combout\,
	datab => \RegAux|data_out\(1),
	datac => \AcumuladorA|data_out\(1),
	datad => \AcumuladorA|TRI_STATE~2_combout\,
	combout => \upa|Yupa[1]~29_combout\);

-- Location: LCCOMB_X25_Y7_N0
\upa|Yupa[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[1]~30_combout\ = (\inst13|TRI_STATE_D~1_combout\ & (\inst13|data_out\(1) & ((\inst9|data_out\(1)) # (!\inst9|TRI_STATE_D~1_combout\)))) # (!\inst13|TRI_STATE_D~1_combout\ & (((\inst9|data_out\(1)) # (!\inst9|TRI_STATE_D~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|TRI_STATE_D~1_combout\,
	datab => \inst13|data_out\(1),
	datac => \inst9|data_out\(1),
	datad => \inst9|TRI_STATE_D~1_combout\,
	combout => \upa|Yupa[1]~30_combout\);

-- Location: LCCOMB_X25_Y7_N2
\upa|Yupa[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[1]~31_combout\ = (\upa|Yupa[1]~30_combout\ & ((\AcumuladorB|data_out\(1)) # (!\AcumuladorB|TRI_STATE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(1),
	datab => \upa|Yupa[1]~30_combout\,
	datad => \AcumuladorB|TRI_STATE~0_combout\,
	combout => \upa|Yupa[1]~31_combout\);

-- Location: LCCOMB_X25_Y7_N30
\upa|Yupa[1]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[1]~33_combout\ = ((\upa|Yupa[1]~32_combout\ & (\upa|Yupa[1]~29_combout\ & \upa|Yupa[1]~31_combout\))) # (!\upa|Yupa[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[7]~6_combout\,
	datab => \upa|Yupa[1]~32_combout\,
	datac => \upa|Yupa[1]~29_combout\,
	datad => \upa|Yupa[1]~31_combout\,
	combout => \upa|Yupa[1]~33_combout\);

-- Location: FF_X27_Y3_N21
\AcumuladorA|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[1]~6_combout\,
	asdata => \upa|Yupa[1]~33_combout\,
	sload => \inst30|inst3|EA[1]~13_combout\,
	ena => \AcumuladorA|data_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(1));

-- Location: LCCOMB_X25_Y7_N20
\AcumuladorA|C[1]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[1]~16_combout\ = (\AcumuladorA|data_out\(1)) # ((\inst30|inst3|EA[1]~13_combout\) # ((!\inst30|inst3|nWA~1_combout\) # (!\inst30|inst3|EA[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(1),
	datab => \inst30|inst3|EA[1]~13_combout\,
	datac => \inst30|inst3|EA[0]~8_combout\,
	datad => \inst30|inst3|nWA~1_combout\,
	combout => \AcumuladorA|C[1]~16_combout\);

-- Location: FF_X31_Y7_N23
\upa|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Add0~12_combout\,
	sload => VCC,
	ena => \upa|Q[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(1));

-- Location: LCCOMB_X31_Y7_N22
\upa|Mux29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux29~2_combout\ = (\inst30|inst3|UPA[1]~23_combout\ & (((\upa|Q\(1))))) # (!\inst30|inst3|UPA[1]~23_combout\ & ((\AcumuladorA|data_out\(1)) # ((!\AcumuladorA|C[7]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(1),
	datab => \inst30|inst3|UPA[1]~23_combout\,
	datac => \upa|Q\(1),
	datad => \AcumuladorA|C[7]~18_combout\,
	combout => \upa|Mux29~2_combout\);

-- Location: LCCOMB_X25_Y7_N12
\upa|Mux37~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux37~6_combout\ = (\upa|Mux37~2_combout\ & (((\upa|Yupa2[1]~45_combout\ & \upa|Mux37~1_combout\)))) # (!\upa|Mux37~2_combout\ & ((\upa|Mux29~2_combout\) # ((!\upa|Mux37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux37~2_combout\,
	datab => \upa|Mux29~2_combout\,
	datac => \upa|Yupa2[1]~45_combout\,
	datad => \upa|Mux37~1_combout\,
	combout => \upa|Mux37~6_combout\);

-- Location: LCCOMB_X25_Y7_N26
\upa|Mux37~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux37~7_combout\ = (\upa|Mux37~0_combout\ & ((\upa|Mux37~6_combout\ & ((\AcumuladorA|C[1]~16_combout\))) # (!\upa|Mux37~6_combout\ & (\AcumuladorB|C[1]~14_combout\)))) # (!\upa|Mux37~0_combout\ & (((\upa|Mux37~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[1]~14_combout\,
	datab => \AcumuladorA|C[1]~16_combout\,
	datac => \upa|Mux37~0_combout\,
	datad => \upa|Mux37~6_combout\,
	combout => \upa|Mux37~7_combout\);

-- Location: LCCOMB_X25_Y7_N8
\upa|Mux37~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux37~8_combout\ = (\upa|Mux37~5_combout\ & (\upa|Mux37~7_combout\)) # (!\upa|Mux37~5_combout\ & ((\upa|Yupa[1]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux37~7_combout\,
	datab => \upa|Mux37~5_combout\,
	datac => \upa|Yupa[1]~33_combout\,
	combout => \upa|Mux37~8_combout\);

-- Location: LCCOMB_X30_Y3_N18
\inst|mem~2072\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|mem~2072_combout\ = (!\dir|valor_interno\(0) & ((\dir|valor_interno\(3) & (!\dir|valor_interno\(4) & \dir|valor_interno\(2))) # (!\dir|valor_interno\(3) & (\dir|valor_interno\(4) & !\dir|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(0),
	datab => \dir|valor_interno\(3),
	datac => \dir|valor_interno\(4),
	datad => \dir|valor_interno\(2),
	combout => \inst|mem~2072_combout\);

-- Location: LCCOMB_X31_Y3_N28
\inst|mem~2071\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|mem~2071_combout\ = (\dir|valor_interno\(3) & (((!\dir|valor_interno\(0) & !\dir|valor_interno\(4))))) # (!\dir|valor_interno\(3) & (\dir|valor_interno\(0) $ (((\dir|valor_interno\(2) & !\dir|valor_interno\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(2),
	datab => \dir|valor_interno\(0),
	datac => \dir|valor_interno\(3),
	datad => \dir|valor_interno\(4),
	combout => \inst|mem~2071_combout\);

-- Location: LCCOMB_X27_Y3_N2
\inst|data[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[0]~16_combout\ = (\inst|data[7]~2_combout\ & ((\dir|valor_interno\(1) & ((\inst|mem~2071_combout\))) # (!\dir|valor_interno\(1) & (\inst|mem~2072_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mem~2072_combout\,
	datab => \dir|valor_interno\(1),
	datac => \inst|mem~2071_combout\,
	datad => \inst|data[7]~2_combout\,
	combout => \inst|data[0]~16_combout\);

-- Location: LCCOMB_X27_Y5_N26
\inst1|PortR[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR[0]~26_combout\ = (\inst1|PortR~10_combout\ & (\upa|Yupa2[0]~50_combout\ & ((\inst|data[0]~16_combout\) # (!\inst|MEM_READ~0_combout\)))) # (!\inst1|PortR~10_combout\ & (((\inst|data[0]~16_combout\) # (!\inst|MEM_READ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PortR~10_combout\,
	datab => \upa|Yupa2[0]~50_combout\,
	datac => \inst|data[0]~16_combout\,
	datad => \inst|MEM_READ~0_combout\,
	combout => \inst1|PortR[0]~26_combout\);

-- Location: LCCOMB_X27_Y5_N0
\inst1|PortR[0]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR[0]~27_combout\ = ((\inst1|PortR[0]~26_combout\ & ((\upa|Yupa[0]~38_combout\) # (\inst7|PortR~0_combout\)))) # (!\inst1|PortR[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PortR[0]~26_combout\,
	datab => \inst1|PortR[7]~12_combout\,
	datac => \upa|Yupa[0]~38_combout\,
	datad => \inst7|PortR~0_combout\,
	combout => \inst1|PortR[0]~27_combout\);

-- Location: LCCOMB_X27_Y4_N4
\upa|Yupa2[0]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[0]~46_combout\ = (\inst1|PortR~8_combout\ & (\inst1|PortR[0]~27_combout\ & ((\RegAux|data_out\(8)) # (!\RegAux|TRI_STATE_C~1_combout\)))) # (!\inst1|PortR~8_combout\ & ((\RegAux|data_out\(8)) # ((!\RegAux|TRI_STATE_C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PortR~8_combout\,
	datab => \RegAux|data_out\(8),
	datac => \RegAux|TRI_STATE_C~1_combout\,
	datad => \inst1|PortR[0]~27_combout\,
	combout => \upa|Yupa2[0]~46_combout\);

-- Location: LCCOMB_X29_Y4_N16
\AcumuladorB|C[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[0]~15_combout\ = (\AcumuladorB|data_out\(0)) # (((\inst30|inst3|EB[1]~4_combout\) # (!\inst30|inst3|EB[0]~1_combout\)) # (!\inst30|inst3|nWB~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(0),
	datab => \inst30|inst3|nWB~4_combout\,
	datac => \inst30|inst3|EB[1]~4_combout\,
	datad => \inst30|inst3|EB[0]~1_combout\,
	combout => \AcumuladorB|C[0]~15_combout\);

-- Location: LCCOMB_X27_Y5_N4
\AcumuladorB|data_out[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[0]~7_combout\ = (\inst30|inst3|EB[0]~1_combout\ & (\AcumuladorB|C[0]~15_combout\)) # (!\inst30|inst3|EB[0]~1_combout\ & ((\upa|Yupa2[0]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[0]~15_combout\,
	datab => \upa|Yupa2[0]~50_combout\,
	datad => \inst30|inst3|EB[0]~1_combout\,
	combout => \AcumuladorB|data_out[0]~7_combout\);

-- Location: FF_X27_Y5_N5
\AcumuladorB|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[0]~7_combout\,
	asdata => \upa|Yupa[0]~38_combout\,
	sload => \inst30|inst3|EB[1]~4_combout\,
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(0));

-- Location: LCCOMB_X25_Y4_N18
\inst9|TRI_STATE_C~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|TRI_STATE_C~0_combout\ = (\RESET~input_o\ & (\inst9|TRI_STATE_D~0_combout\ & ((!\inst30|inst|data[51]~46_combout\) # (!\inst30|inst|Equal15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal15~0_combout\,
	datab => \RESET~input_o\,
	datac => \inst30|inst|data[51]~46_combout\,
	datad => \inst9|TRI_STATE_D~0_combout\,
	combout => \inst9|TRI_STATE_C~0_combout\);

-- Location: LCCOMB_X26_Y8_N30
\inst13|data_out[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_out[8]~0_combout\ = (\RESET~input_o\ & (\inst8~q\ & !\inst30|inst|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst8~q\,
	datac => \inst30|inst|Equal15~0_combout\,
	combout => \inst13|data_out[8]~0_combout\);

-- Location: FF_X29_Y4_N23
\inst13|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa2[0]~50_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(8));

-- Location: LCCOMB_X26_Y7_N0
\inst9|data_out[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|data_out[8]~1_combout\ = (!\inst8~q\ & (\RESET~input_o\ & !\inst30|inst|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8~q\,
	datab => \RESET~input_o\,
	datad => \inst30|inst|Equal15~0_combout\,
	combout => \inst9|data_out[8]~1_combout\);

-- Location: FF_X29_Y4_N21
\inst9|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa2[0]~50_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst9|data_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(8));

-- Location: LCCOMB_X25_Y4_N20
\inst13|TRI_STATE_C~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|TRI_STATE_C~0_combout\ = (\RESET~input_o\ & (\inst13|TRI_STATE_D~0_combout\ & ((!\inst30|inst|data[51]~46_combout\) # (!\inst30|inst|Equal15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal15~0_combout\,
	datab => \RESET~input_o\,
	datac => \inst30|inst|data[51]~46_combout\,
	datad => \inst13|TRI_STATE_D~0_combout\,
	combout => \inst13|TRI_STATE_C~0_combout\);

-- Location: LCCOMB_X29_Y4_N20
\upa|Yupa2[0]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[0]~47_combout\ = (\inst9|TRI_STATE_C~0_combout\ & (\inst9|data_out\(8) & ((\inst13|data_out\(8)) # (!\inst13|TRI_STATE_C~0_combout\)))) # (!\inst9|TRI_STATE_C~0_combout\ & ((\inst13|data_out\(8)) # ((!\inst13|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|TRI_STATE_C~0_combout\,
	datab => \inst13|data_out\(8),
	datac => \inst9|data_out\(8),
	datad => \inst13|TRI_STATE_C~0_combout\,
	combout => \upa|Yupa2[0]~47_combout\);

-- Location: LCCOMB_X26_Y6_N6
\AcumuladorB|B[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|B[7]~0_combout\ = (\inst30|inst3|EB[1]~4_combout\) # ((\inst30|inst3|EB[0]~1_combout\) # (!\inst30|inst3|nWB~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EB[1]~4_combout\,
	datac => \inst30|inst3|EB[0]~1_combout\,
	datad => \inst30|inst3|nWB~4_combout\,
	combout => \AcumuladorB|B[7]~0_combout\);

-- Location: LCCOMB_X29_Y4_N30
\upa|Yupa2[0]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[0]~48_combout\ = (\upa|Yupa2[0]~47_combout\ & ((\AcumuladorB|data_out\(0)) # (\AcumuladorB|B[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(0),
	datac => \upa|Yupa2[0]~47_combout\,
	datad => \AcumuladorB|B[7]~0_combout\,
	combout => \upa|Yupa2[0]~48_combout\);

-- Location: FF_X31_Y7_N29
\upa|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Add0~10_combout\,
	sload => VCC,
	ena => \upa|Q[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Q\(0));

-- Location: LCCOMB_X31_Y7_N28
\upa|Mux27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux27~4_combout\ = (\inst30|inst3|UPA[1]~23_combout\ & (((\upa|Q\(0))))) # (!\inst30|inst3|UPA[1]~23_combout\ & ((\AcumuladorA|data_out\(0)) # ((!\AcumuladorA|C[7]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(0),
	datab => \inst30|inst3|UPA[1]~23_combout\,
	datac => \upa|Q\(0),
	datad => \AcumuladorA|C[7]~18_combout\,
	combout => \upa|Mux27~4_combout\);

-- Location: LCCOMB_X30_Y7_N30
\upa|Mux36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux36~0_combout\ = (\upa|Mux37~1_combout\ & ((\upa|Mux37~2_combout\ & ((\upa|Yupa2[0]~50_combout\))) # (!\upa|Mux37~2_combout\ & (\upa|Mux27~4_combout\)))) # (!\upa|Mux37~1_combout\ & (((!\upa|Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux37~1_combout\,
	datab => \upa|Mux27~4_combout\,
	datac => \upa|Mux37~2_combout\,
	datad => \upa|Yupa2[0]~50_combout\,
	combout => \upa|Mux36~0_combout\);

-- Location: LCCOMB_X30_Y7_N28
\upa|Mux36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux36~1_combout\ = (\upa|Mux37~0_combout\ & ((\upa|Mux36~0_combout\ & (\AcumuladorA|C[0]~17_combout\)) # (!\upa|Mux36~0_combout\ & ((\AcumuladorB|C[0]~15_combout\))))) # (!\upa|Mux37~0_combout\ & (((\upa|Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux37~0_combout\,
	datab => \AcumuladorA|C[0]~17_combout\,
	datac => \upa|Mux36~0_combout\,
	datad => \AcumuladorB|C[0]~15_combout\,
	combout => \upa|Mux36~1_combout\);

-- Location: LCCOMB_X30_Y7_N24
\upa|Mux36~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux36~2_combout\ = (\upa|Mux37~5_combout\ & (\upa|Mux36~1_combout\)) # (!\upa|Mux37~5_combout\ & ((\upa|Yupa[0]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux37~5_combout\,
	datab => \upa|Mux36~1_combout\,
	datad => \upa|Yupa[0]~38_combout\,
	combout => \upa|Mux36~2_combout\);

-- Location: LCCOMB_X29_Y8_N4
\inst30|inst3|selmux~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|selmux~2_combout\ = ((\inst30|inst|Equal28~0_combout\) # ((\inst30|inst|Equal49~0_combout\) # (!\inst30|inst3|selmux~0_combout\))) # (!\inst30|inst3|selmux~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|selmux~1_combout\,
	datab => \inst30|inst|Equal28~0_combout\,
	datac => \inst30|inst|Equal49~0_combout\,
	datad => \inst30|inst3|selmux~0_combout\,
	combout => \inst30|inst3|selmux~2_combout\);

-- Location: LCCOMB_X29_Y8_N18
\inst30|inst3|selmux~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|selmux~3_combout\ = (\inst30|inst3|selmux~2_combout\) # ((\inst30|inst|data[42]~41_combout\ & \inst30|inst3|EB[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|data[42]~41_combout\,
	datac => \inst30|inst3|selmux~2_combout\,
	datad => \inst30|inst3|EB[1]~0_combout\,
	combout => \inst30|inst3|selmux~3_combout\);

-- Location: LCCOMB_X29_Y8_N16
\inst30|inst3|selmux~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|selmux~4_combout\ = (\RESET~input_o\ & ((\inst30|inst3|prueba[3]~0_combout\ & ((\inst30|inst|Equal62~4_combout\))) # (!\inst30|inst3|prueba[3]~0_combout\ & (\inst30|inst3|selmux~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|prueba[3]~0_combout\,
	datab => \inst30|inst3|selmux~3_combout\,
	datac => \RESET~input_o\,
	datad => \inst30|inst|Equal62~4_combout\,
	combout => \inst30|inst3|selmux~4_combout\);

-- Location: LCCOMB_X22_Y5_N10
\inst30|inst3|CC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|CC~0_combout\ = (\inst30|inst|Equal29~0_combout\) # (((\inst30|inst3|prueba[3]~0_combout\) # (\inst30|inst|Equal50~0_combout\)) # (!\inst30|inst3|nDUPA~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal29~0_combout\,
	datab => \inst30|inst3|nDUPA~2_combout\,
	datac => \inst30|inst3|prueba[3]~0_combout\,
	datad => \inst30|inst|Equal50~0_combout\,
	combout => \inst30|inst3|CC~0_combout\);

-- Location: LCCOMB_X21_Y4_N0
\inst30|inst|Equal63~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal63~2_combout\ = ((\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\) # (!\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\)) # (!\inst30|inst|Equal62~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal62~3_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst30|inst|Equal63~2_combout\);

-- Location: LCCOMB_X21_Y5_N18
\inst30|inst3|CC\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|CC~combout\ = LCELL((\RESET~input_o\ & ((\inst30|inst3|nEX2~0_combout\ & ((!\inst30|inst|Equal63~2_combout\))) # (!\inst30|inst3|nEX2~0_combout\ & (\inst30|inst3|CC~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst30|inst3|nEX2~0_combout\,
	datac => \inst30|inst3|CC~0_combout\,
	datad => \inst30|inst|Equal63~2_combout\,
	combout => \inst30|inst3|CC~combout\);

-- Location: LCCOMB_X30_Y7_N22
\upa|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~26_combout\ = \upa|Add0~25\ $ (((\inst30|inst3|UPA[5]~17_combout\) # (\inst30|inst3|UPA[5]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst3|UPA[5]~17_combout\,
	datad => \inst30|inst3|UPA[5]~18_combout\,
	cin => \upa|Add0~25\,
	combout => \upa|Add0~26_combout\);

-- Location: FF_X30_Y7_N23
\upa|Banderas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~26_combout\,
	ena => \inst30|inst3|nDUPA~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Banderas\(1));

-- Location: LCCOMB_X26_Y8_N4
\flags|tCC|valor_interno~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flags|tCC|valor_interno~feeder_combout\ = \upa|Banderas\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Banderas\(1),
	combout => \flags|tCC|valor_interno~feeder_combout\);

-- Location: FF_X26_Y8_N5
\flags|tCC|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst3|CC~combout\,
	d => \flags|tCC|valor_interno~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flags|tCC|valor_interno~q\);

-- Location: LCCOMB_X30_Y7_N4
\upa|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~9_cout\ = CARRY((!\inst30|inst3|selmux~4_combout\ & \flags|tCC|valor_interno~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|selmux~4_combout\,
	datab => \flags|tCC|valor_interno~q\,
	datad => VCC,
	cout => \upa|Add0~9_cout\);

-- Location: LCCOMB_X30_Y7_N6
\upa|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~10_combout\ = (\upa|Add0~7_combout\ & ((\upa|Mux36~2_combout\ & (\upa|Add0~9_cout\ & VCC)) # (!\upa|Mux36~2_combout\ & (!\upa|Add0~9_cout\)))) # (!\upa|Add0~7_combout\ & ((\upa|Mux36~2_combout\ & (!\upa|Add0~9_cout\)) # (!\upa|Mux36~2_combout\ & 
-- ((\upa|Add0~9_cout\) # (GND)))))
-- \upa|Add0~11\ = CARRY((\upa|Add0~7_combout\ & (!\upa|Mux36~2_combout\ & !\upa|Add0~9_cout\)) # (!\upa|Add0~7_combout\ & ((!\upa|Add0~9_cout\) # (!\upa|Mux36~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Add0~7_combout\,
	datab => \upa|Mux36~2_combout\,
	datad => VCC,
	cin => \upa|Add0~9_cout\,
	combout => \upa|Add0~10_combout\,
	cout => \upa|Add0~11\);

-- Location: FF_X30_Y7_N7
\upa|Yupa_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~10_combout\,
	ena => \inst30|inst3|nDUPA~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(0));

-- Location: LCCOMB_X29_Y4_N8
\AcumuladorA|B[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|B[0]~8_combout\ = (\inst30|inst3|EA[1]~13_combout\) # ((\AcumuladorA|data_out\(0)) # ((\inst30|inst3|EA[0]~8_combout\) # (!\inst30|inst3|nWA~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EA[1]~13_combout\,
	datab => \AcumuladorA|data_out\(0),
	datac => \inst30|inst3|nWA~1_combout\,
	datad => \inst30|inst3|EA[0]~8_combout\,
	combout => \AcumuladorA|B[0]~8_combout\);

-- Location: LCCOMB_X29_Y4_N4
\upa|Yupa2[0]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[0]~49_combout\ = (\upa|Yupa2[0]~48_combout\ & (\AcumuladorA|B[0]~8_combout\ & ((\upa|Yupa_interno\(0)) # (\inst30|inst3|nDUPA~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[0]~48_combout\,
	datab => \upa|Yupa_interno\(0),
	datac => \inst30|inst3|nDUPA~6_combout\,
	datad => \AcumuladorA|B[0]~8_combout\,
	combout => \upa|Yupa2[0]~49_combout\);

-- Location: LCCOMB_X29_Y4_N22
\upa|Yupa2[0]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[0]~50_combout\ = ((\upa|Yupa2[0]~46_combout\ & \upa|Yupa2[0]~49_combout\)) # (!\upa|Yupa2[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upa|Yupa2[0]~46_combout\,
	datac => \upa|Yupa2[0]~49_combout\,
	datad => \upa|Yupa2[7]~14_combout\,
	combout => \upa|Yupa2[0]~50_combout\);

-- Location: LCCOMB_X27_Y4_N24
\AcumuladorA|data_out[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[0]~7_combout\ = (\inst30|inst3|EA[0]~8_combout\ & (\AcumuladorA|C[0]~17_combout\)) # (!\inst30|inst3|EA[0]~8_combout\ & ((\upa|Yupa2[0]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[0]~17_combout\,
	datab => \inst30|inst3|EA[0]~8_combout\,
	datad => \upa|Yupa2[0]~50_combout\,
	combout => \AcumuladorA|data_out[0]~7_combout\);

-- Location: FF_X27_Y4_N25
\AcumuladorA|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[0]~7_combout\,
	asdata => \upa|Yupa[0]~38_combout\,
	sload => \inst30|inst3|EA[1]~13_combout\,
	ena => \AcumuladorA|data_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(0));

-- Location: LCCOMB_X29_Y4_N10
\AcumuladorA|C[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|C[0]~17_combout\ = ((\AcumuladorA|data_out\(0)) # ((\inst30|inst3|EA[1]~13_combout\) # (!\inst30|inst3|EA[0]~8_combout\))) # (!\inst30|inst3|nWA~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nWA~1_combout\,
	datab => \AcumuladorA|data_out\(0),
	datac => \inst30|inst3|EA[1]~13_combout\,
	datad => \inst30|inst3|EA[0]~8_combout\,
	combout => \AcumuladorA|C[0]~17_combout\);

-- Location: LCCOMB_X29_Y4_N12
\upa|Mux27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux27~2_combout\ = (\inst30|inst3|UPA[1]~23_combout\ & (((\upa|Q\(0) & !\inst30|inst3|UPA[0]~25_combout\)))) # (!\inst30|inst3|UPA[1]~23_combout\ & (\AcumuladorA|C[0]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[0]~17_combout\,
	datab => \upa|Q\(0),
	datac => \inst30|inst3|UPA[0]~25_combout\,
	datad => \inst30|inst3|UPA[1]~23_combout\,
	combout => \upa|Mux27~2_combout\);

-- Location: LCCOMB_X29_Y4_N18
\upa|Mux27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux27~3_combout\ = (\upa|Mux27~2_combout\ & ((\inst30|inst3|UPA[2]~21_combout\) # ((\upa|Mux27~5_combout\ & \AcumuladorB|C[0]~15_combout\)))) # (!\upa|Mux27~2_combout\ & (((\upa|Mux27~5_combout\ & \AcumuladorB|C[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux27~2_combout\,
	datab => \inst30|inst3|UPA[2]~21_combout\,
	datac => \upa|Mux27~5_combout\,
	datad => \AcumuladorB|C[0]~15_combout\,
	combout => \upa|Mux27~3_combout\);

-- Location: LCCOMB_X29_Y4_N0
\upa|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~7_combout\ = \upa|Mux27~3_combout\ $ (((\inst30|inst3|UPA[5]~18_combout\) # (\inst30|inst3|UPA[5]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upa|Mux27~3_combout\,
	datac => \inst30|inst3|UPA[5]~18_combout\,
	datad => \inst30|inst3|UPA[5]~17_combout\,
	combout => \upa|Add0~7_combout\);

-- Location: LCCOMB_X30_Y7_N8
\upa|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~12_combout\ = ((\upa|Add0~6_combout\ $ (\upa|Mux37~8_combout\ $ (!\upa|Add0~11\)))) # (GND)
-- \upa|Add0~13\ = CARRY((\upa|Add0~6_combout\ & ((\upa|Mux37~8_combout\) # (!\upa|Add0~11\))) # (!\upa|Add0~6_combout\ & (\upa|Mux37~8_combout\ & !\upa|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Add0~6_combout\,
	datab => \upa|Mux37~8_combout\,
	datad => VCC,
	cin => \upa|Add0~11\,
	combout => \upa|Add0~12_combout\,
	cout => \upa|Add0~13\);

-- Location: FF_X30_Y7_N9
\upa|Yupa_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~12_combout\,
	ena => \inst30|inst3|nDUPA~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(1));

-- Location: FF_X26_Y7_N15
\inst13|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa2[1]~45_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(9));

-- Location: FF_X26_Y7_N19
\inst9|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa2[1]~45_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst9|data_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(9));

-- Location: LCCOMB_X26_Y7_N18
\upa|Yupa2[1]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[1]~42_combout\ = (\inst9|TRI_STATE_C~0_combout\ & (\inst9|data_out\(9) & ((\inst13|data_out\(9)) # (!\inst13|TRI_STATE_C~0_combout\)))) # (!\inst9|TRI_STATE_C~0_combout\ & ((\inst13|data_out\(9)) # ((!\inst13|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|TRI_STATE_C~0_combout\,
	datab => \inst13|data_out\(9),
	datac => \inst9|data_out\(9),
	datad => \inst13|TRI_STATE_C~0_combout\,
	combout => \upa|Yupa2[1]~42_combout\);

-- Location: LCCOMB_X26_Y7_N4
\upa|Yupa2[1]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[1]~43_combout\ = (\upa|Yupa2[1]~42_combout\ & ((\AcumuladorB|data_out\(1)) # (\AcumuladorB|B[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(1),
	datab => \upa|Yupa2[1]~42_combout\,
	datac => \AcumuladorB|B[7]~0_combout\,
	combout => \upa|Yupa2[1]~43_combout\);

-- Location: LCCOMB_X26_Y7_N6
\AcumuladorA|B[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|B[1]~7_combout\ = (\AcumuladorA|data_out\(1)) # (((\inst30|inst3|EA[0]~8_combout\) # (\inst30|inst3|EA[1]~13_combout\)) # (!\inst30|inst3|nWA~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(1),
	datab => \inst30|inst3|nWA~1_combout\,
	datac => \inst30|inst3|EA[0]~8_combout\,
	datad => \inst30|inst3|EA[1]~13_combout\,
	combout => \AcumuladorA|B[1]~7_combout\);

-- Location: LCCOMB_X26_Y7_N26
\upa|Yupa2[1]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[1]~44_combout\ = (\upa|Yupa2[1]~43_combout\ & (\AcumuladorA|B[1]~7_combout\ & ((\inst30|inst3|nDUPA~6_combout\) # (\upa|Yupa_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nDUPA~6_combout\,
	datab => \upa|Yupa_interno\(1),
	datac => \upa|Yupa2[1]~43_combout\,
	datad => \AcumuladorA|B[1]~7_combout\,
	combout => \upa|Yupa2[1]~44_combout\);

-- Location: LCCOMB_X26_Y7_N20
\upa|Yupa2[1]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[1]~41_combout\ = (\inst1|PortR~8_combout\ & (\inst1|PortR[1]~25_combout\ & ((\RegAux|data_out\(9)) # (!\RegAux|TRI_STATE_C~1_combout\)))) # (!\inst1|PortR~8_combout\ & (((\RegAux|data_out\(9))) # (!\RegAux|TRI_STATE_C~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PortR~8_combout\,
	datab => \RegAux|TRI_STATE_C~1_combout\,
	datac => \inst1|PortR[1]~25_combout\,
	datad => \RegAux|data_out\(9),
	combout => \upa|Yupa2[1]~41_combout\);

-- Location: LCCOMB_X26_Y7_N14
\upa|Yupa2[1]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[1]~45_combout\ = ((\upa|Yupa2[1]~44_combout\ & \upa|Yupa2[1]~41_combout\)) # (!\upa|Yupa2[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[1]~44_combout\,
	datac => \upa|Yupa2[7]~14_combout\,
	datad => \upa|Yupa2[1]~41_combout\,
	combout => \upa|Yupa2[1]~45_combout\);

-- Location: LCCOMB_X26_Y9_N20
\AcumuladorB|data_out[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[1]~6_combout\ = (\inst30|inst3|EB[0]~1_combout\ & (\AcumuladorB|C[1]~14_combout\)) # (!\inst30|inst3|EB[0]~1_combout\ & ((\upa|Yupa2[1]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EB[0]~1_combout\,
	datab => \AcumuladorB|C[1]~14_combout\,
	datad => \upa|Yupa2[1]~45_combout\,
	combout => \AcumuladorB|data_out[1]~6_combout\);

-- Location: FF_X26_Y9_N21
\AcumuladorB|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[1]~6_combout\,
	asdata => \upa|Yupa[1]~33_combout\,
	sload => \inst30|inst3|EB[1]~4_combout\,
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(1));

-- Location: LCCOMB_X25_Y7_N10
\AcumuladorB|C[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[1]~14_combout\ = (((\inst30|inst3|EB[1]~4_combout\) # (\AcumuladorB|data_out\(1))) # (!\inst30|inst3|nWB~4_combout\)) # (!\inst30|inst3|EB[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EB[0]~1_combout\,
	datab => \inst30|inst3|nWB~4_combout\,
	datac => \inst30|inst3|EB[1]~4_combout\,
	datad => \AcumuladorB|data_out\(1),
	combout => \AcumuladorB|C[1]~14_combout\);

-- Location: LCCOMB_X25_Y7_N6
\upa|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux29~0_combout\ = (\inst30|inst3|UPA[1]~23_combout\ & (\upa|Q\(1) & ((!\inst30|inst3|UPA[0]~25_combout\)))) # (!\inst30|inst3|UPA[1]~23_combout\ & (((\AcumuladorA|C[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Q\(1),
	datab => \AcumuladorA|C[1]~16_combout\,
	datac => \inst30|inst3|UPA[0]~25_combout\,
	datad => \inst30|inst3|UPA[1]~23_combout\,
	combout => \upa|Mux29~0_combout\);

-- Location: LCCOMB_X25_Y7_N24
\upa|Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux29~1_combout\ = (\AcumuladorB|C[1]~14_combout\ & ((\upa|Mux27~5_combout\) # ((\inst30|inst3|UPA[2]~21_combout\ & \upa|Mux29~0_combout\)))) # (!\AcumuladorB|C[1]~14_combout\ & (\inst30|inst3|UPA[2]~21_combout\ & ((\upa|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[1]~14_combout\,
	datab => \inst30|inst3|UPA[2]~21_combout\,
	datac => \upa|Mux27~5_combout\,
	datad => \upa|Mux29~0_combout\,
	combout => \upa|Mux29~1_combout\);

-- Location: LCCOMB_X25_Y7_N14
\upa|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~6_combout\ = \upa|Mux29~1_combout\ $ (((\inst30|inst3|UPA[5]~18_combout\) # (\inst30|inst3|UPA[5]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upa|Mux29~1_combout\,
	datac => \inst30|inst3|UPA[5]~18_combout\,
	datad => \inst30|inst3|UPA[5]~17_combout\,
	combout => \upa|Add0~6_combout\);

-- Location: LCCOMB_X30_Y7_N10
\upa|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~14_combout\ = (\upa|Add0~5_combout\ & ((\upa|Mux38~2_combout\ & (\upa|Add0~13\ & VCC)) # (!\upa|Mux38~2_combout\ & (!\upa|Add0~13\)))) # (!\upa|Add0~5_combout\ & ((\upa|Mux38~2_combout\ & (!\upa|Add0~13\)) # (!\upa|Mux38~2_combout\ & 
-- ((\upa|Add0~13\) # (GND)))))
-- \upa|Add0~15\ = CARRY((\upa|Add0~5_combout\ & (!\upa|Mux38~2_combout\ & !\upa|Add0~13\)) # (!\upa|Add0~5_combout\ & ((!\upa|Add0~13\) # (!\upa|Mux38~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Add0~5_combout\,
	datab => \upa|Mux38~2_combout\,
	datad => VCC,
	cin => \upa|Add0~13\,
	combout => \upa|Add0~14_combout\,
	cout => \upa|Add0~15\);

-- Location: FF_X30_Y7_N11
\upa|Yupa_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~14_combout\,
	ena => \inst30|inst3|nDUPA~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(2));

-- Location: FF_X26_Y6_N11
\inst13|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa2[2]~40_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(10));

-- Location: FF_X25_Y4_N7
\inst9|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa2[2]~40_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst9|data_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(10));

-- Location: LCCOMB_X25_Y4_N6
\upa|Yupa2[2]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[2]~37_combout\ = (\inst13|data_out\(10) & (((\inst9|data_out\(10))) # (!\inst9|TRI_STATE_C~0_combout\))) # (!\inst13|data_out\(10) & (!\inst13|TRI_STATE_C~0_combout\ & ((\inst9|data_out\(10)) # (!\inst9|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|data_out\(10),
	datab => \inst9|TRI_STATE_C~0_combout\,
	datac => \inst9|data_out\(10),
	datad => \inst13|TRI_STATE_C~0_combout\,
	combout => \upa|Yupa2[2]~37_combout\);

-- Location: LCCOMB_X26_Y6_N2
\upa|Yupa2[2]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[2]~38_combout\ = (\upa|Yupa2[2]~37_combout\ & ((\AcumuladorB|data_out\(2)) # (\AcumuladorB|B[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AcumuladorB|data_out\(2),
	datac => \upa|Yupa2[2]~37_combout\,
	datad => \AcumuladorB|B[7]~0_combout\,
	combout => \upa|Yupa2[2]~38_combout\);

-- Location: LCCOMB_X26_Y6_N0
\AcumuladorA|B[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|B[2]~6_combout\ = (\AcumuladorA|data_out\(2)) # (((\inst30|inst3|EA[0]~8_combout\) # (\inst30|inst3|EA[1]~13_combout\)) # (!\inst30|inst3|nWA~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(2),
	datab => \inst30|inst3|nWA~1_combout\,
	datac => \inst30|inst3|EA[0]~8_combout\,
	datad => \inst30|inst3|EA[1]~13_combout\,
	combout => \AcumuladorA|B[2]~6_combout\);

-- Location: LCCOMB_X26_Y6_N20
\upa|Yupa2[2]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[2]~39_combout\ = (\upa|Yupa2[2]~38_combout\ & (\AcumuladorA|B[2]~6_combout\ & ((\upa|Yupa_interno\(2)) # (\inst30|inst3|nDUPA~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa_interno\(2),
	datab => \upa|Yupa2[2]~38_combout\,
	datac => \inst30|inst3|nDUPA~6_combout\,
	datad => \AcumuladorA|B[2]~6_combout\,
	combout => \upa|Yupa2[2]~39_combout\);

-- Location: LCCOMB_X26_Y3_N16
\upa|Yupa2[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[2]~36_combout\ = (\RegAux|data_out\(10) & (((\inst1|PortR[2]~23_combout\)) # (!\inst1|PortR~8_combout\))) # (!\RegAux|data_out\(10) & (!\RegAux|TRI_STATE_C~1_combout\ & ((\inst1|PortR[2]~23_combout\) # (!\inst1|PortR~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(10),
	datab => \inst1|PortR~8_combout\,
	datac => \inst1|PortR[2]~23_combout\,
	datad => \RegAux|TRI_STATE_C~1_combout\,
	combout => \upa|Yupa2[2]~36_combout\);

-- Location: LCCOMB_X26_Y6_N10
\upa|Yupa2[2]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[2]~40_combout\ = ((\upa|Yupa2[2]~39_combout\ & \upa|Yupa2[2]~36_combout\)) # (!\upa|Yupa2[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upa|Yupa2[2]~39_combout\,
	datac => \upa|Yupa2[2]~36_combout\,
	datad => \upa|Yupa2[7]~14_combout\,
	combout => \upa|Yupa2[2]~40_combout\);

-- Location: LCCOMB_X26_Y6_N8
\AcumuladorB|data_out[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[2]~5_combout\ = (\inst30|inst3|EB[0]~1_combout\ & (\AcumuladorB|C[2]~13_combout\)) # (!\inst30|inst3|EB[0]~1_combout\ & ((\upa|Yupa2[2]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[2]~13_combout\,
	datab => \inst30|inst3|EB[0]~1_combout\,
	datad => \upa|Yupa2[2]~40_combout\,
	combout => \AcumuladorB|data_out[2]~5_combout\);

-- Location: FF_X26_Y6_N9
\AcumuladorB|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[2]~5_combout\,
	asdata => \upa|Yupa[2]~28_combout\,
	sload => \inst30|inst3|EB[1]~4_combout\,
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(2));

-- Location: LCCOMB_X31_Y6_N28
\AcumuladorB|C[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[2]~13_combout\ = (\AcumuladorB|data_out\(2)) # (((\inst30|inst3|EB[1]~4_combout\) # (!\inst30|inst3|EB[0]~1_combout\)) # (!\inst30|inst3|nWB~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(2),
	datab => \inst30|inst3|nWB~4_combout\,
	datac => \inst30|inst3|EB[0]~1_combout\,
	datad => \inst30|inst3|EB[1]~4_combout\,
	combout => \AcumuladorB|C[2]~13_combout\);

-- Location: LCCOMB_X29_Y4_N28
\upa|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux30~0_combout\ = (\inst30|inst3|UPA[1]~23_combout\ & (((\upa|Q\(2) & !\inst30|inst3|UPA[0]~25_combout\)))) # (!\inst30|inst3|UPA[1]~23_combout\ & (\AcumuladorA|C[2]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[2]~15_combout\,
	datab => \upa|Q\(2),
	datac => \inst30|inst3|UPA[0]~25_combout\,
	datad => \inst30|inst3|UPA[1]~23_combout\,
	combout => \upa|Mux30~0_combout\);

-- Location: LCCOMB_X29_Y4_N6
\upa|Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux30~1_combout\ = (\AcumuladorB|C[2]~13_combout\ & ((\upa|Mux27~5_combout\) # ((\upa|Mux30~0_combout\ & \inst30|inst3|UPA[2]~21_combout\)))) # (!\AcumuladorB|C[2]~13_combout\ & (\upa|Mux30~0_combout\ & ((\inst30|inst3|UPA[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[2]~13_combout\,
	datab => \upa|Mux30~0_combout\,
	datac => \upa|Mux27~5_combout\,
	datad => \inst30|inst3|UPA[2]~21_combout\,
	combout => \upa|Mux30~1_combout\);

-- Location: LCCOMB_X30_Y4_N24
\upa|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~5_combout\ = \upa|Mux30~1_combout\ $ (((\inst30|inst3|UPA[5]~17_combout\) # (\inst30|inst3|UPA[5]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst3|UPA[5]~17_combout\,
	datac => \upa|Mux30~1_combout\,
	datad => \inst30|inst3|UPA[5]~18_combout\,
	combout => \upa|Add0~5_combout\);

-- Location: LCCOMB_X30_Y7_N12
\upa|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~16_combout\ = ((\upa|Add0~4_combout\ $ (\upa|Mux39~2_combout\ $ (!\upa|Add0~15\)))) # (GND)
-- \upa|Add0~17\ = CARRY((\upa|Add0~4_combout\ & ((\upa|Mux39~2_combout\) # (!\upa|Add0~15\))) # (!\upa|Add0~4_combout\ & (\upa|Mux39~2_combout\ & !\upa|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Add0~4_combout\,
	datab => \upa|Mux39~2_combout\,
	datad => VCC,
	cin => \upa|Add0~15\,
	combout => \upa|Add0~16_combout\,
	cout => \upa|Add0~17\);

-- Location: FF_X30_Y7_N13
\upa|Yupa_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~16_combout\,
	ena => \inst30|inst3|nDUPA~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(3));

-- Location: LCCOMB_X26_Y3_N20
\AcumuladorB|A[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|A[3]~3_combout\ = (((\AcumuladorB|data_out\(3)) # (!\inst30|inst3|EB[0]~1_combout\)) # (!\inst30|inst3|nWB~4_combout\)) # (!\inst30|inst3|EB[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EB[1]~4_combout\,
	datab => \inst30|inst3|nWB~4_combout\,
	datac => \AcumuladorB|data_out\(3),
	datad => \inst30|inst3|EB[0]~1_combout\,
	combout => \AcumuladorB|A[3]~3_combout\);

-- Location: LCCOMB_X26_Y3_N26
\upa|Yupa[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[3]~22_combout\ = (\inst13|data_out\(3) & (((\inst9|data_out\(3)) # (!\inst9|TRI_STATE_D~1_combout\)))) # (!\inst13|data_out\(3) & (!\inst13|TRI_STATE_D~1_combout\ & ((\inst9|data_out\(3)) # (!\inst9|TRI_STATE_D~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|data_out\(3),
	datab => \inst13|TRI_STATE_D~1_combout\,
	datac => \inst9|data_out\(3),
	datad => \inst9|TRI_STATE_D~1_combout\,
	combout => \upa|Yupa[3]~22_combout\);

-- Location: LCCOMB_X26_Y3_N8
\upa|Yupa[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[3]~23_combout\ = (\AcumuladorB|A[3]~3_combout\ & (\upa|Yupa[3]~22_combout\ & ((\upa|Yupa_interno\(3)) # (\inst30|inst3|nDUPA~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa_interno\(3),
	datab => \AcumuladorB|A[3]~3_combout\,
	datac => \upa|Yupa[3]~22_combout\,
	datad => \inst30|inst3|nDUPA~6_combout\,
	combout => \upa|Yupa[3]~23_combout\);

-- Location: LCCOMB_X26_Y3_N24
\upa|Yupa[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[3]~21_combout\ = (\RegAux|data_out\(3) & ((\AcumuladorA|data_out\(3)) # ((!\AcumuladorA|TRI_STATE~2_combout\)))) # (!\RegAux|data_out\(3) & (!\RegAux|TRI_STATE_D~1_combout\ & ((\AcumuladorA|data_out\(3)) # (!\AcumuladorA|TRI_STATE~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(3),
	datab => \AcumuladorA|data_out\(3),
	datac => \RegAux|TRI_STATE_D~1_combout\,
	datad => \AcumuladorA|TRI_STATE~2_combout\,
	combout => \upa|Yupa[3]~21_combout\);

-- Location: LCCOMB_X30_Y3_N22
\inst|mem~2068\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|mem~2068_combout\ = (\dir|valor_interno\(4)) # ((\dir|valor_interno\(0) & ((\dir|valor_interno\(2)) # (!\dir|valor_interno\(1)))) # (!\dir|valor_interno\(0) & (\dir|valor_interno\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(0),
	datab => \dir|valor_interno\(1),
	datac => \dir|valor_interno\(4),
	datad => \dir|valor_interno\(2),
	combout => \inst|mem~2068_combout\);

-- Location: LCCOMB_X30_Y3_N8
\inst|mem~2067\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|mem~2067_combout\ = (\dir|valor_interno\(4) & (\dir|valor_interno\(0) $ (((!\dir|valor_interno\(2)))))) # (!\dir|valor_interno\(4) & (\dir|valor_interno\(2) & (\dir|valor_interno\(0) $ (!\dir|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(0),
	datab => \dir|valor_interno\(1),
	datac => \dir|valor_interno\(4),
	datad => \dir|valor_interno\(2),
	combout => \inst|mem~2067_combout\);

-- Location: LCCOMB_X31_Y3_N6
\inst|data[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[3]~12_combout\ = (\inst|data[7]~2_combout\ & ((\dir|valor_interno\(3) & (!\inst|mem~2068_combout\)) # (!\dir|valor_interno\(3) & ((\inst|mem~2067_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data[7]~2_combout\,
	datab => \inst|mem~2068_combout\,
	datac => \dir|valor_interno\(3),
	datad => \inst|mem~2067_combout\,
	combout => \inst|data[3]~12_combout\);

-- Location: LCCOMB_X27_Y3_N4
\inst1|PortR[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR[3]~20_combout\ = (\inst1|PortR~10_combout\ & (\upa|Yupa2[3]~35_combout\ & ((\inst|data[3]~12_combout\) # (!\inst|MEM_READ~0_combout\)))) # (!\inst1|PortR~10_combout\ & ((\inst|data[3]~12_combout\) # ((!\inst|MEM_READ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PortR~10_combout\,
	datab => \inst|data[3]~12_combout\,
	datac => \inst|MEM_READ~0_combout\,
	datad => \upa|Yupa2[3]~35_combout\,
	combout => \inst1|PortR[3]~20_combout\);

-- Location: LCCOMB_X27_Y5_N24
\inst1|PortR[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR[3]~21_combout\ = ((\inst1|PortR[3]~20_combout\ & ((\upa|Yupa[3]~40_combout\) # (\inst7|PortR~0_combout\)))) # (!\inst1|PortR[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PortR[3]~20_combout\,
	datab => \upa|Yupa[3]~40_combout\,
	datac => \inst1|PortR[7]~12_combout\,
	datad => \inst7|PortR~0_combout\,
	combout => \inst1|PortR[3]~21_combout\);

-- Location: LCCOMB_X26_Y3_N14
\upa|Yupa[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[3]~24_combout\ = (\upa|Yupa[3]~23_combout\ & (\upa|Yupa[3]~21_combout\ & ((\inst1|PortR[3]~21_combout\) # (!\inst1|PortR~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[3]~23_combout\,
	datab => \upa|Yupa[3]~21_combout\,
	datac => \inst1|PortR[3]~21_combout\,
	datad => \inst1|PortR~9_combout\,
	combout => \upa|Yupa[3]~24_combout\);

-- Location: LCCOMB_X24_Y5_N20
\upa|Yupa[3]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[3]~40_combout\ = (\upa|Yupa[3]~24_combout\) # (!\upa|Yupa[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \upa|Yupa[7]~6_combout\,
	datad => \upa|Yupa[3]~24_combout\,
	combout => \upa|Yupa[3]~40_combout\);

-- Location: FF_X32_Y5_N29
\AcumuladorA|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[3]~4_combout\,
	asdata => \upa|Yupa[3]~40_combout\,
	sload => \inst30|inst3|EA[1]~13_combout\,
	ena => \AcumuladorA|data_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(3));

-- Location: LCCOMB_X29_Y7_N28
\AcumuladorA|B[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|B[3]~5_combout\ = ((\AcumuladorA|data_out\(3)) # ((\inst30|inst3|EA[0]~8_combout\) # (\inst30|inst3|EA[1]~13_combout\))) # (!\inst30|inst3|nWA~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nWA~1_combout\,
	datab => \AcumuladorA|data_out\(3),
	datac => \inst30|inst3|EA[0]~8_combout\,
	datad => \inst30|inst3|EA[1]~13_combout\,
	combout => \AcumuladorA|B[3]~5_combout\);

-- Location: FF_X29_Y7_N3
\inst13|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa2[3]~35_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(11));

-- Location: FF_X29_Y7_N1
\inst9|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa2[3]~35_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst9|data_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(11));

-- Location: LCCOMB_X29_Y7_N0
\upa|Yupa2[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[3]~32_combout\ = (\inst13|data_out\(11) & (((\inst9|data_out\(11))) # (!\inst9|TRI_STATE_C~0_combout\))) # (!\inst13|data_out\(11) & (!\inst13|TRI_STATE_C~0_combout\ & ((\inst9|data_out\(11)) # (!\inst9|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|data_out\(11),
	datab => \inst9|TRI_STATE_C~0_combout\,
	datac => \inst9|data_out\(11),
	datad => \inst13|TRI_STATE_C~0_combout\,
	combout => \upa|Yupa2[3]~32_combout\);

-- Location: LCCOMB_X29_Y7_N22
\upa|Yupa2[3]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[3]~33_combout\ = (\upa|Yupa2[3]~32_combout\ & ((\AcumuladorB|data_out\(3)) # (\AcumuladorB|B[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upa|Yupa2[3]~32_combout\,
	datac => \AcumuladorB|data_out\(3),
	datad => \AcumuladorB|B[7]~0_combout\,
	combout => \upa|Yupa2[3]~33_combout\);

-- Location: LCCOMB_X29_Y7_N4
\upa|Yupa2[3]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[3]~34_combout\ = (\AcumuladorA|B[3]~5_combout\ & (\upa|Yupa2[3]~33_combout\ & ((\upa|Yupa_interno\(3)) # (\inst30|inst3|nDUPA~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|B[3]~5_combout\,
	datab => \upa|Yupa_interno\(3),
	datac => \upa|Yupa2[3]~33_combout\,
	datad => \inst30|inst3|nDUPA~6_combout\,
	combout => \upa|Yupa2[3]~34_combout\);

-- Location: LCCOMB_X26_Y3_N10
\upa|Yupa2[3]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[3]~31_combout\ = (\RegAux|data_out\(11) & ((\inst1|PortR[3]~21_combout\) # ((!\inst1|PortR~8_combout\)))) # (!\RegAux|data_out\(11) & (!\RegAux|TRI_STATE_C~1_combout\ & ((\inst1|PortR[3]~21_combout\) # (!\inst1|PortR~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(11),
	datab => \inst1|PortR[3]~21_combout\,
	datac => \inst1|PortR~8_combout\,
	datad => \RegAux|TRI_STATE_C~1_combout\,
	combout => \upa|Yupa2[3]~31_combout\);

-- Location: LCCOMB_X29_Y7_N2
\upa|Yupa2[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[3]~35_combout\ = ((\upa|Yupa2[3]~34_combout\ & \upa|Yupa2[3]~31_combout\)) # (!\upa|Yupa2[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upa|Yupa2[7]~14_combout\,
	datac => \upa|Yupa2[3]~34_combout\,
	datad => \upa|Yupa2[3]~31_combout\,
	combout => \upa|Yupa2[3]~35_combout\);

-- Location: LCCOMB_X29_Y5_N14
\AcumuladorB|data_out[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[3]~4_combout\ = (\inst30|inst3|EB[0]~1_combout\ & (\AcumuladorB|C[3]~12_combout\)) # (!\inst30|inst3|EB[0]~1_combout\ & ((\upa|Yupa2[3]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EB[0]~1_combout\,
	datab => \AcumuladorB|C[3]~12_combout\,
	datad => \upa|Yupa2[3]~35_combout\,
	combout => \AcumuladorB|data_out[3]~4_combout\);

-- Location: FF_X29_Y5_N15
\AcumuladorB|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[3]~4_combout\,
	asdata => \upa|Yupa[3]~40_combout\,
	sload => \inst30|inst3|EB[1]~4_combout\,
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(3));

-- Location: LCCOMB_X29_Y8_N30
\AcumuladorB|C[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[3]~12_combout\ = ((\AcumuladorB|data_out\(3)) # ((\inst30|inst3|EB[1]~4_combout\) # (!\inst30|inst3|EB[0]~1_combout\))) # (!\inst30|inst3|nWB~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nWB~4_combout\,
	datab => \AcumuladorB|data_out\(3),
	datac => \inst30|inst3|EB[1]~4_combout\,
	datad => \inst30|inst3|EB[0]~1_combout\,
	combout => \AcumuladorB|C[3]~12_combout\);

-- Location: LCCOMB_X29_Y7_N20
\upa|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux31~0_combout\ = (\inst30|inst3|UPA[1]~23_combout\ & (!\inst30|inst3|UPA[0]~25_combout\ & (\upa|Q\(3)))) # (!\inst30|inst3|UPA[1]~23_combout\ & (((\AcumuladorA|C[3]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[0]~25_combout\,
	datab => \upa|Q\(3),
	datac => \AcumuladorA|C[3]~14_combout\,
	datad => \inst30|inst3|UPA[1]~23_combout\,
	combout => \upa|Mux31~0_combout\);

-- Location: LCCOMB_X29_Y7_N10
\upa|Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux31~1_combout\ = (\inst30|inst3|UPA[2]~21_combout\ & ((\upa|Mux31~0_combout\) # ((\AcumuladorB|C[3]~12_combout\ & \upa|Mux27~5_combout\)))) # (!\inst30|inst3|UPA[2]~21_combout\ & (\AcumuladorB|C[3]~12_combout\ & (\upa|Mux27~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|UPA[2]~21_combout\,
	datab => \AcumuladorB|C[3]~12_combout\,
	datac => \upa|Mux27~5_combout\,
	datad => \upa|Mux31~0_combout\,
	combout => \upa|Mux31~1_combout\);

-- Location: LCCOMB_X29_Y7_N12
\upa|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~4_combout\ = \upa|Mux31~1_combout\ $ (((\inst30|inst3|UPA[5]~18_combout\) # (\inst30|inst3|UPA[5]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux31~1_combout\,
	datac => \inst30|inst3|UPA[5]~18_combout\,
	datad => \inst30|inst3|UPA[5]~17_combout\,
	combout => \upa|Add0~4_combout\);

-- Location: LCCOMB_X30_Y7_N14
\upa|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~18_combout\ = (\upa|Mux40~2_combout\ & ((\upa|Add0~3_combout\ & (\upa|Add0~17\ & VCC)) # (!\upa|Add0~3_combout\ & (!\upa|Add0~17\)))) # (!\upa|Mux40~2_combout\ & ((\upa|Add0~3_combout\ & (!\upa|Add0~17\)) # (!\upa|Add0~3_combout\ & 
-- ((\upa|Add0~17\) # (GND)))))
-- \upa|Add0~19\ = CARRY((\upa|Mux40~2_combout\ & (!\upa|Add0~3_combout\ & !\upa|Add0~17\)) # (!\upa|Mux40~2_combout\ & ((!\upa|Add0~17\) # (!\upa|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux40~2_combout\,
	datab => \upa|Add0~3_combout\,
	datad => VCC,
	cin => \upa|Add0~17\,
	combout => \upa|Add0~18_combout\,
	cout => \upa|Add0~19\);

-- Location: FF_X30_Y7_N15
\upa|Banderas[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~18_combout\,
	ena => \inst30|inst3|nDUPA~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Banderas\(4));

-- Location: FF_X25_Y3_N31
\inst13|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa[4]~20_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(4));

-- Location: FF_X25_Y3_N5
\inst9|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa[4]~20_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst9|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(4));

-- Location: LCCOMB_X25_Y3_N4
\upa|Yupa[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[4]~17_combout\ = (\inst13|TRI_STATE_D~1_combout\ & (\inst13|data_out\(4) & ((\inst9|data_out\(4)) # (!\inst9|TRI_STATE_D~1_combout\)))) # (!\inst13|TRI_STATE_D~1_combout\ & (((\inst9|data_out\(4)) # (!\inst9|TRI_STATE_D~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|TRI_STATE_D~1_combout\,
	datab => \inst13|data_out\(4),
	datac => \inst9|data_out\(4),
	datad => \inst9|TRI_STATE_D~1_combout\,
	combout => \upa|Yupa[4]~17_combout\);

-- Location: LCCOMB_X25_Y3_N14
\AcumuladorB|A[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|A[4]~2_combout\ = ((\AcumuladorB|data_out\(4)) # ((!\inst30|inst3|nWB~4_combout\) # (!\inst30|inst3|EB[0]~1_combout\))) # (!\inst30|inst3|EB[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EB[1]~4_combout\,
	datab => \AcumuladorB|data_out\(4),
	datac => \inst30|inst3|EB[0]~1_combout\,
	datad => \inst30|inst3|nWB~4_combout\,
	combout => \AcumuladorB|A[4]~2_combout\);

-- Location: LCCOMB_X25_Y3_N12
\upa|Yupa[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[4]~18_combout\ = (\upa|Yupa[4]~17_combout\ & (\AcumuladorB|A[4]~2_combout\ & ((\upa|Banderas\(4)) # (\inst30|inst3|nDUPA~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Banderas\(4),
	datab => \upa|Yupa[4]~17_combout\,
	datac => \AcumuladorB|A[4]~2_combout\,
	datad => \inst30|inst3|nDUPA~6_combout\,
	combout => \upa|Yupa[4]~18_combout\);

-- Location: LCCOMB_X25_Y3_N22
\upa|Yupa[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[4]~19_combout\ = (\upa|Yupa[4]~18_combout\ & ((\inst30|inst3|BD~0_combout\) # ((\inst1|PortR[4]~19_combout\) # (!\inst30|inst3|nRW~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|BD~0_combout\,
	datab => \inst1|PortR[4]~19_combout\,
	datac => \inst30|inst3|nRW~0_combout\,
	datad => \upa|Yupa[4]~18_combout\,
	combout => \upa|Yupa[4]~19_combout\);

-- Location: LCCOMB_X25_Y3_N30
\upa|Yupa[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[4]~20_combout\ = ((\upa|Yupa[4]~16_combout\ & \upa|Yupa[4]~19_combout\)) # (!\upa|Yupa[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[4]~16_combout\,
	datac => \upa|Yupa[4]~19_combout\,
	datad => \upa|Yupa[7]~6_combout\,
	combout => \upa|Yupa[4]~20_combout\);

-- Location: FF_X29_Y5_N5
\AcumuladorB|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[4]~3_combout\,
	asdata => \upa|Yupa[4]~20_combout\,
	sload => \inst30|inst3|EB[1]~4_combout\,
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(4));

-- Location: LCCOMB_X30_Y6_N10
\AcumuladorB|C[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[4]~11_combout\ = ((\AcumuladorB|data_out\(4)) # ((\inst30|inst3|EB[1]~4_combout\) # (!\inst30|inst3|nWB~4_combout\))) # (!\inst30|inst3|EB[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EB[0]~1_combout\,
	datab => \AcumuladorB|data_out\(4),
	datac => \inst30|inst3|nWB~4_combout\,
	datad => \inst30|inst3|EB[1]~4_combout\,
	combout => \AcumuladorB|C[4]~11_combout\);

-- Location: LCCOMB_X31_Y7_N0
\upa|Mux32~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux32~2_combout\ = (\inst30|inst3|UPA[1]~23_combout\ & (((\upa|Q\(4))))) # (!\inst30|inst3|UPA[1]~23_combout\ & ((\AcumuladorA|data_out\(4)) # ((!\AcumuladorA|C[7]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(4),
	datab => \upa|Q\(4),
	datac => \inst30|inst3|UPA[1]~23_combout\,
	datad => \AcumuladorA|C[7]~18_combout\,
	combout => \upa|Mux32~2_combout\);

-- Location: LCCOMB_X30_Y6_N24
\upa|Mux40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux40~0_combout\ = (\upa|Mux37~2_combout\ & (\upa|Yupa2[4]~30_combout\ & (\upa|Mux37~1_combout\))) # (!\upa|Mux37~2_combout\ & (((\upa|Mux32~2_combout\) # (!\upa|Mux37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[4]~30_combout\,
	datab => \upa|Mux37~2_combout\,
	datac => \upa|Mux37~1_combout\,
	datad => \upa|Mux32~2_combout\,
	combout => \upa|Mux40~0_combout\);

-- Location: LCCOMB_X30_Y6_N2
\upa|Mux40~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux40~1_combout\ = (\upa|Mux37~0_combout\ & ((\upa|Mux40~0_combout\ & ((\AcumuladorA|C[4]~13_combout\))) # (!\upa|Mux40~0_combout\ & (\AcumuladorB|C[4]~11_combout\)))) # (!\upa|Mux37~0_combout\ & (((\upa|Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[4]~11_combout\,
	datab => \upa|Mux37~0_combout\,
	datac => \AcumuladorA|C[4]~13_combout\,
	datad => \upa|Mux40~0_combout\,
	combout => \upa|Mux40~1_combout\);

-- Location: LCCOMB_X30_Y7_N0
\upa|Mux40~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux40~2_combout\ = (\upa|Mux37~5_combout\ & (\upa|Mux40~1_combout\)) # (!\upa|Mux37~5_combout\ & ((\upa|Yupa[4]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Mux37~5_combout\,
	datab => \upa|Mux40~1_combout\,
	datad => \upa|Yupa[4]~20_combout\,
	combout => \upa|Mux40~2_combout\);

-- Location: LCCOMB_X30_Y7_N16
\upa|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~20_combout\ = ((\upa|Add0~2_combout\ $ (\upa|Mux41~2_combout\ $ (!\upa|Add0~19\)))) # (GND)
-- \upa|Add0~21\ = CARRY((\upa|Add0~2_combout\ & ((\upa|Mux41~2_combout\) # (!\upa|Add0~19\))) # (!\upa|Add0~2_combout\ & (\upa|Mux41~2_combout\ & !\upa|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Add0~2_combout\,
	datab => \upa|Mux41~2_combout\,
	datad => VCC,
	cin => \upa|Add0~19\,
	combout => \upa|Add0~20_combout\,
	cout => \upa|Add0~21\);

-- Location: FF_X30_Y7_N17
\upa|Yupa_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~20_combout\,
	ena => \inst30|inst3|nDUPA~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(5));

-- Location: LCCOMB_X27_Y7_N18
\upa|Yupa[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[5]~14_combout\ = (\upa|Yupa[5]~13_combout\ & (\AcumuladorB|A[5]~1_combout\ & ((\upa|Yupa_interno\(5)) # (\inst30|inst3|nDUPA~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[5]~13_combout\,
	datab => \AcumuladorB|A[5]~1_combout\,
	datac => \upa|Yupa_interno\(5),
	datad => \inst30|inst3|nDUPA~6_combout\,
	combout => \upa|Yupa[5]~14_combout\);

-- Location: LCCOMB_X27_Y7_N20
\upa|Yupa[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[5]~15_combout\ = (\upa|Yupa[5]~12_combout\ & (\upa|Yupa[5]~14_combout\ & ((\inst1|PortR[5]~17_combout\) # (!\inst1|PortR~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PortR[5]~17_combout\,
	datab => \upa|Yupa[5]~12_combout\,
	datac => \inst1|PortR~9_combout\,
	datad => \upa|Yupa[5]~14_combout\,
	combout => \upa|Yupa[5]~15_combout\);

-- Location: LCCOMB_X24_Y5_N16
\upa|Yupa[5]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[5]~41_combout\ = (\upa|Yupa[5]~15_combout\) # (!\upa|Yupa[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upa|Yupa[5]~15_combout\,
	datad => \upa|Yupa[7]~6_combout\,
	combout => \upa|Yupa[5]~41_combout\);

-- Location: LCCOMB_X29_Y3_N6
\inst|data[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[5]~9_combout\ = (\dir|valor_interno\(0) & (\dir|valor_interno\(4) & (\dir|valor_interno\(2) $ (!\dir|valor_interno\(1))))) # (!\dir|valor_interno\(0) & ((\dir|valor_interno\(2)) # ((\dir|valor_interno\(4) & \dir|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(4),
	datab => \dir|valor_interno\(0),
	datac => \dir|valor_interno\(2),
	datad => \dir|valor_interno\(1),
	combout => \inst|data[5]~9_combout\);

-- Location: LCCOMB_X29_Y3_N8
\inst|data[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[5]~10_combout\ = (\inst|data[7]~2_combout\ & ((\dir|valor_interno\(4) & (!\dir|valor_interno\(3) & !\inst|data[5]~9_combout\)) # (!\dir|valor_interno\(4) & (\dir|valor_interno\(3) & \inst|data[5]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(4),
	datab => \inst|data[7]~2_combout\,
	datac => \dir|valor_interno\(3),
	datad => \inst|data[5]~9_combout\,
	combout => \inst|data[5]~10_combout\);

-- Location: LCCOMB_X27_Y3_N24
\inst1|PortR[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR[5]~16_combout\ = (\upa|Yupa2[5]~25_combout\ & ((\inst|data[5]~10_combout\) # ((!\inst|MEM_READ~0_combout\)))) # (!\upa|Yupa2[5]~25_combout\ & (!\inst1|PortR~10_combout\ & ((\inst|data[5]~10_combout\) # (!\inst|MEM_READ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[5]~25_combout\,
	datab => \inst|data[5]~10_combout\,
	datac => \inst|MEM_READ~0_combout\,
	datad => \inst1|PortR~10_combout\,
	combout => \inst1|PortR[5]~16_combout\);

-- Location: LCCOMB_X27_Y5_N2
\inst1|PortR[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR[5]~17_combout\ = ((\inst1|PortR[5]~16_combout\ & ((\upa|Yupa[5]~41_combout\) # (\inst7|PortR~0_combout\)))) # (!\inst1|PortR[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[5]~41_combout\,
	datab => \inst1|PortR[5]~16_combout\,
	datac => \inst1|PortR[7]~12_combout\,
	datad => \inst7|PortR~0_combout\,
	combout => \inst1|PortR[5]~17_combout\);

-- Location: LCCOMB_X32_Y6_N24
\upa|Yupa2[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[5]~21_combout\ = (\RegAux|TRI_STATE_C~1_combout\ & (\RegAux|data_out\(13) & ((\inst1|PortR[5]~17_combout\) # (!\inst1|PortR~8_combout\)))) # (!\RegAux|TRI_STATE_C~1_combout\ & (((\inst1|PortR[5]~17_combout\)) # (!\inst1|PortR~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|TRI_STATE_C~1_combout\,
	datab => \inst1|PortR~8_combout\,
	datac => \RegAux|data_out\(13),
	datad => \inst1|PortR[5]~17_combout\,
	combout => \upa|Yupa2[5]~21_combout\);

-- Location: LCCOMB_X27_Y7_N0
\AcumuladorA|B[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|B[5]~3_combout\ = (\inst30|inst3|EA[1]~13_combout\) # ((\AcumuladorA|data_out\(5)) # ((\inst30|inst3|EA[0]~8_combout\) # (!\inst30|inst3|nWA~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EA[1]~13_combout\,
	datab => \AcumuladorA|data_out\(5),
	datac => \inst30|inst3|EA[0]~8_combout\,
	datad => \inst30|inst3|nWA~1_combout\,
	combout => \AcumuladorA|B[5]~3_combout\);

-- Location: FF_X27_Y7_N13
\inst13|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa2[5]~25_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(13));

-- Location: FF_X26_Y7_N9
\inst9|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa2[5]~25_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst9|data_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(13));

-- Location: LCCOMB_X26_Y7_N8
\upa|Yupa2[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[5]~22_combout\ = (\inst9|TRI_STATE_C~0_combout\ & (\inst9|data_out\(13) & ((\inst13|data_out\(13)) # (!\inst13|TRI_STATE_C~0_combout\)))) # (!\inst9|TRI_STATE_C~0_combout\ & ((\inst13|data_out\(13)) # ((!\inst13|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|TRI_STATE_C~0_combout\,
	datab => \inst13|data_out\(13),
	datac => \inst9|data_out\(13),
	datad => \inst13|TRI_STATE_C~0_combout\,
	combout => \upa|Yupa2[5]~22_combout\);

-- Location: LCCOMB_X27_Y7_N30
\upa|Yupa2[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[5]~23_combout\ = (\upa|Yupa2[5]~22_combout\ & ((\AcumuladorB|data_out\(5)) # (\AcumuladorB|B[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[5]~22_combout\,
	datab => \AcumuladorB|data_out\(5),
	datac => \AcumuladorB|B[7]~0_combout\,
	combout => \upa|Yupa2[5]~23_combout\);

-- Location: LCCOMB_X27_Y7_N16
\upa|Yupa2[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[5]~24_combout\ = (\AcumuladorA|B[5]~3_combout\ & (\upa|Yupa2[5]~23_combout\ & ((\upa|Yupa_interno\(5)) # (\inst30|inst3|nDUPA~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa_interno\(5),
	datab => \AcumuladorA|B[5]~3_combout\,
	datac => \upa|Yupa2[5]~23_combout\,
	datad => \inst30|inst3|nDUPA~6_combout\,
	combout => \upa|Yupa2[5]~24_combout\);

-- Location: LCCOMB_X27_Y7_N12
\upa|Yupa2[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[5]~25_combout\ = ((\upa|Yupa2[5]~21_combout\ & \upa|Yupa2[5]~24_combout\)) # (!\upa|Yupa2[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[5]~21_combout\,
	datab => \upa|Yupa2[7]~14_combout\,
	datad => \upa|Yupa2[5]~24_combout\,
	combout => \upa|Yupa2[5]~25_combout\);

-- Location: LCCOMB_X27_Y8_N30
\AcumuladorB|data_out[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|data_out[5]~2_combout\ = (\inst30|inst3|EB[0]~1_combout\ & (\AcumuladorB|C[5]~10_combout\)) # (!\inst30|inst3|EB[0]~1_combout\ & ((\upa|Yupa2[5]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EB[0]~1_combout\,
	datab => \AcumuladorB|C[5]~10_combout\,
	datad => \upa|Yupa2[5]~25_combout\,
	combout => \AcumuladorB|data_out[5]~2_combout\);

-- Location: FF_X27_Y8_N31
\AcumuladorB|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorB|data_out[5]~2_combout\,
	asdata => \upa|Yupa[5]~41_combout\,
	sload => \inst30|inst3|EB[1]~4_combout\,
	ena => \AcumuladorB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorB|data_out\(5));

-- Location: LCCOMB_X27_Y7_N24
\AcumuladorB|C[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[5]~10_combout\ = (\inst30|inst3|EB[1]~4_combout\) # ((\AcumuladorB|data_out\(5)) # ((!\inst30|inst3|nWB~4_combout\) # (!\inst30|inst3|EB[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EB[1]~4_combout\,
	datab => \AcumuladorB|data_out\(5),
	datac => \inst30|inst3|EB[0]~1_combout\,
	datad => \inst30|inst3|nWB~4_combout\,
	combout => \AcumuladorB|C[5]~10_combout\);

-- Location: LCCOMB_X27_Y7_N28
\upa|Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux33~0_combout\ = (\inst30|inst3|UPA[1]~23_combout\ & (((!\inst30|inst3|UPA[0]~25_combout\ & \upa|Q\(5))))) # (!\inst30|inst3|UPA[1]~23_combout\ & (\AcumuladorA|C[5]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[5]~12_combout\,
	datab => \inst30|inst3|UPA[0]~25_combout\,
	datac => \upa|Q\(5),
	datad => \inst30|inst3|UPA[1]~23_combout\,
	combout => \upa|Mux33~0_combout\);

-- Location: LCCOMB_X25_Y7_N22
\upa|Mux33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Mux33~1_combout\ = (\AcumuladorB|C[5]~10_combout\ & ((\upa|Mux27~5_combout\) # ((\inst30|inst3|UPA[2]~21_combout\ & \upa|Mux33~0_combout\)))) # (!\AcumuladorB|C[5]~10_combout\ & (((\inst30|inst3|UPA[2]~21_combout\ & \upa|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|C[5]~10_combout\,
	datab => \upa|Mux27~5_combout\,
	datac => \inst30|inst3|UPA[2]~21_combout\,
	datad => \upa|Mux33~0_combout\,
	combout => \upa|Mux33~1_combout\);

-- Location: LCCOMB_X25_Y7_N16
\upa|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Add0~2_combout\ = \upa|Mux33~1_combout\ $ (((\inst30|inst3|UPA[5]~18_combout\) # (\inst30|inst3|UPA[5]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst3|UPA[5]~18_combout\,
	datac => \upa|Mux33~1_combout\,
	datad => \inst30|inst3|UPA[5]~17_combout\,
	combout => \upa|Add0~2_combout\);

-- Location: FF_X30_Y7_N19
\upa|Yupa_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Add0~22_combout\,
	ena => \inst30|inst3|nDUPA~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \upa|Yupa_interno\(6));

-- Location: LCCOMB_X30_Y6_N22
\inst13|data_out[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_out[14]~feeder_combout\ = \upa|Yupa2[6]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \upa|Yupa2[6]~20_combout\,
	combout => \inst13|data_out[14]~feeder_combout\);

-- Location: FF_X30_Y6_N23
\inst13|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|data_out[14]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(14));

-- Location: FF_X29_Y8_N29
\inst9|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa2[6]~20_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst9|data_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(14));

-- Location: LCCOMB_X29_Y8_N28
\upa|Yupa2[6]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[6]~17_combout\ = (\inst9|TRI_STATE_C~0_combout\ & (\inst9|data_out\(14) & ((\inst13|data_out\(14)) # (!\inst13|TRI_STATE_C~0_combout\)))) # (!\inst9|TRI_STATE_C~0_combout\ & ((\inst13|data_out\(14)) # ((!\inst13|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|TRI_STATE_C~0_combout\,
	datab => \inst13|data_out\(14),
	datac => \inst9|data_out\(14),
	datad => \inst13|TRI_STATE_C~0_combout\,
	combout => \upa|Yupa2[6]~17_combout\);

-- Location: LCCOMB_X29_Y6_N16
\upa|Yupa2[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[6]~18_combout\ = (\upa|Yupa2[6]~17_combout\ & ((\AcumuladorB|data_out\(6)) # (\AcumuladorB|B[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(6),
	datab => \upa|Yupa2[6]~17_combout\,
	datac => \AcumuladorB|B[7]~0_combout\,
	combout => \upa|Yupa2[6]~18_combout\);

-- Location: LCCOMB_X29_Y6_N26
\upa|Yupa2[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[6]~19_combout\ = (\AcumuladorA|B[6]~2_combout\ & (\upa|Yupa2[6]~18_combout\ & ((\upa|Yupa_interno\(6)) # (\inst30|inst3|nDUPA~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|B[6]~2_combout\,
	datab => \upa|Yupa_interno\(6),
	datac => \inst30|inst3|nDUPA~6_combout\,
	datad => \upa|Yupa2[6]~18_combout\,
	combout => \upa|Yupa2[6]~19_combout\);

-- Location: LCCOMB_X30_Y3_N2
\inst|data[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[6]~6_combout\ = (\dir|valor_interno\(2) & (!\dir|valor_interno\(3) & (!\dir|valor_interno\(4) & !\dir|valor_interno\(1)))) # (!\dir|valor_interno\(2) & ((\dir|valor_interno\(3) & (!\dir|valor_interno\(4) & !\dir|valor_interno\(1))) # 
-- (!\dir|valor_interno\(3) & (\dir|valor_interno\(4) $ (\dir|valor_interno\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(2),
	datab => \dir|valor_interno\(3),
	datac => \dir|valor_interno\(4),
	datad => \dir|valor_interno\(1),
	combout => \inst|data[6]~6_combout\);

-- Location: LCCOMB_X30_Y3_N4
\inst|data[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[6]~7_combout\ = (!\dir|valor_interno\(3) & (\dir|valor_interno\(4) & (\dir|valor_interno\(2) $ (\dir|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(2),
	datab => \dir|valor_interno\(3),
	datac => \dir|valor_interno\(4),
	datad => \dir|valor_interno\(1),
	combout => \inst|data[6]~7_combout\);

-- Location: LCCOMB_X30_Y3_N26
\inst|data[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[6]~8_combout\ = (\inst|data[7]~2_combout\ & ((\dir|valor_interno\(0) & (!\inst|data[6]~6_combout\ & \inst|data[6]~7_combout\)) # (!\dir|valor_interno\(0) & (\inst|data[6]~6_combout\ & !\inst|data[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(0),
	datab => \inst|data[6]~6_combout\,
	datac => \inst|data[6]~7_combout\,
	datad => \inst|data[7]~2_combout\,
	combout => \inst|data[6]~8_combout\);

-- Location: LCCOMB_X27_Y3_N18
\inst1|PortR[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR[6]~14_combout\ = (\upa|Yupa2[6]~20_combout\ & ((\inst|data[6]~8_combout\) # ((!\inst|MEM_READ~0_combout\)))) # (!\upa|Yupa2[6]~20_combout\ & (!\inst1|PortR~10_combout\ & ((\inst|data[6]~8_combout\) # (!\inst|MEM_READ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[6]~20_combout\,
	datab => \inst|data[6]~8_combout\,
	datac => \inst|MEM_READ~0_combout\,
	datad => \inst1|PortR~10_combout\,
	combout => \inst1|PortR[6]~14_combout\);

-- Location: LCCOMB_X27_Y5_N28
\inst1|PortR[6]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR[6]~15_combout\ = ((\inst1|PortR[6]~14_combout\ & ((\inst7|PortR~0_combout\) # (\upa|Yupa[6]~11_combout\)))) # (!\inst1|PortR[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PortR~0_combout\,
	datab => \inst1|PortR[7]~12_combout\,
	datac => \inst1|PortR[6]~14_combout\,
	datad => \upa|Yupa[6]~11_combout\,
	combout => \inst1|PortR[6]~15_combout\);

-- Location: LCCOMB_X32_Y6_N18
\upa|Yupa2[6]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[6]~16_combout\ = (\RegAux|data_out\(14) & (((\inst1|PortR[6]~15_combout\)) # (!\inst1|PortR~8_combout\))) # (!\RegAux|data_out\(14) & (!\RegAux|TRI_STATE_C~1_combout\ & ((\inst1|PortR[6]~15_combout\) # (!\inst1|PortR~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(14),
	datab => \inst1|PortR~8_combout\,
	datac => \inst1|PortR[6]~15_combout\,
	datad => \RegAux|TRI_STATE_C~1_combout\,
	combout => \upa|Yupa2[6]~16_combout\);

-- Location: LCCOMB_X30_Y6_N6
\upa|Yupa2[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[6]~20_combout\ = ((\upa|Yupa2[6]~19_combout\ & \upa|Yupa2[6]~16_combout\)) # (!\upa|Yupa2[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~14_combout\,
	datac => \upa|Yupa2[6]~19_combout\,
	datad => \upa|Yupa2[6]~16_combout\,
	combout => \upa|Yupa2[6]~20_combout\);

-- Location: LCCOMB_X30_Y4_N20
\AcumuladorA|data_out[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[6]~1_combout\ = (\inst30|inst3|EA[0]~8_combout\ & (\AcumuladorA|C[6]~11_combout\)) # (!\inst30|inst3|EA[0]~8_combout\ & ((\upa|Yupa2[6]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|C[6]~11_combout\,
	datab => \inst30|inst3|EA[0]~8_combout\,
	datad => \upa|Yupa2[6]~20_combout\,
	combout => \AcumuladorA|data_out[6]~1_combout\);

-- Location: FF_X30_Y4_N21
\AcumuladorA|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[6]~1_combout\,
	asdata => \upa|Yupa[6]~11_combout\,
	sload => \inst30|inst3|EA[1]~13_combout\,
	ena => \AcumuladorA|data_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(6));

-- Location: LCCOMB_X29_Y6_N2
\upa|Yupa[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[6]~7_combout\ = (\AcumuladorA|TRI_STATE~2_combout\ & (\AcumuladorA|data_out\(6) & ((\RegAux|data_out\(6)) # (!\RegAux|TRI_STATE_D~1_combout\)))) # (!\AcumuladorA|TRI_STATE~2_combout\ & (((\RegAux|data_out\(6)) # 
-- (!\RegAux|TRI_STATE_D~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|TRI_STATE~2_combout\,
	datab => \AcumuladorA|data_out\(6),
	datac => \RegAux|TRI_STATE_D~1_combout\,
	datad => \RegAux|data_out\(6),
	combout => \upa|Yupa[6]~7_combout\);

-- Location: LCCOMB_X29_Y6_N4
\upa|Yupa[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[6]~8_combout\ = (\AcumuladorB|data_out\(6) & ((\upa|Yupa_interno\(6)) # ((\inst30|inst3|nDUPA~6_combout\)))) # (!\AcumuladorB|data_out\(6) & (!\AcumuladorB|TRI_STATE~0_combout\ & ((\upa|Yupa_interno\(6)) # (\inst30|inst3|nDUPA~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(6),
	datab => \upa|Yupa_interno\(6),
	datac => \inst30|inst3|nDUPA~6_combout\,
	datad => \AcumuladorB|TRI_STATE~0_combout\,
	combout => \upa|Yupa[6]~8_combout\);

-- Location: FF_X29_Y6_N1
\inst13|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa[6]~11_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(6));

-- Location: LCCOMB_X29_Y6_N30
\upa|Yupa[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[6]~9_combout\ = (\inst9|TRI_STATE_D~1_combout\ & (\inst9|data_out\(6) & ((\inst13|data_out\(6)) # (!\inst13|TRI_STATE_D~1_combout\)))) # (!\inst9|TRI_STATE_D~1_combout\ & (((\inst13|data_out\(6))) # (!\inst13|TRI_STATE_D~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|TRI_STATE_D~1_combout\,
	datab => \inst13|TRI_STATE_D~1_combout\,
	datac => \inst9|data_out\(6),
	datad => \inst13|data_out\(6),
	combout => \upa|Yupa[6]~9_combout\);

-- Location: LCCOMB_X29_Y6_N20
\upa|Yupa[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[6]~10_combout\ = (\upa|Yupa[6]~9_combout\ & ((\inst30|inst3|BD~0_combout\) # ((\inst1|PortR[6]~15_combout\) # (!\inst30|inst3|nRW~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[6]~9_combout\,
	datab => \inst30|inst3|BD~0_combout\,
	datac => \inst1|PortR[6]~15_combout\,
	datad => \inst30|inst3|nRW~0_combout\,
	combout => \upa|Yupa[6]~10_combout\);

-- Location: LCCOMB_X29_Y6_N0
\upa|Yupa[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[6]~11_combout\ = ((\upa|Yupa[6]~7_combout\ & (\upa|Yupa[6]~8_combout\ & \upa|Yupa[6]~10_combout\))) # (!\upa|Yupa[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[7]~6_combout\,
	datab => \upa|Yupa[6]~7_combout\,
	datac => \upa|Yupa[6]~8_combout\,
	datad => \upa|Yupa[6]~10_combout\,
	combout => \upa|Yupa[6]~11_combout\);

-- Location: FF_X29_Y6_N15
\inst9|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa[6]~11_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst9|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(6));

-- Location: LCCOMB_X30_Y3_N6
\ENTRADA~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ENTRADA~2_combout\ = (\dir|valor_interno[7]~1_combout\ & (((\dir|valor_interno[7]~0_combout\)))) # (!\dir|valor_interno[7]~1_combout\ & ((\dir|valor_interno[7]~0_combout\ & (\RegAux|data_out\(6))) # (!\dir|valor_interno[7]~0_combout\ & 
-- ((\inst13|data_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(6),
	datab => \inst13|data_out\(6),
	datac => \dir|valor_interno[7]~1_combout\,
	datad => \dir|valor_interno[7]~0_combout\,
	combout => \ENTRADA~2_combout\);

-- Location: LCCOMB_X29_Y3_N30
\ENTRADA~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ENTRADA~3_combout\ = (\ENTRADA~2_combout\ & ((\inst9|data_out\(6)) # ((!\dir|valor_interno[7]~1_combout\)))) # (!\ENTRADA~2_combout\ & (((\RegPC|data_out\(6) & \dir|valor_interno[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data_out\(6),
	datab => \RegPC|data_out\(6),
	datac => \ENTRADA~2_combout\,
	datad => \dir|valor_interno[7]~1_combout\,
	combout => \ENTRADA~3_combout\);

-- Location: FF_X29_Y3_N31
\dir|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst3|nCBD~clkctrl_outclk\,
	d => \ENTRADA~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(6));

-- Location: LCCOMB_X29_Y3_N10
\inst|mem~2066\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|mem~2066_combout\ = (\dir|valor_interno\(2) & (\dir|valor_interno\(0) & (\dir|valor_interno\(4) $ (\dir|valor_interno\(1))))) # (!\dir|valor_interno\(2) & (\dir|valor_interno\(4) & (\dir|valor_interno\(1) & !\dir|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(4),
	datab => \dir|valor_interno\(1),
	datac => \dir|valor_interno\(2),
	datad => \dir|valor_interno\(0),
	combout => \inst|mem~2066_combout\);

-- Location: LCCOMB_X29_Y3_N16
\inst|data[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[4]~11_combout\ = (\dir|valor_interno\(3) & (!\dir|valor_interno\(4) & (\inst|data[7]~3_combout\))) # (!\dir|valor_interno\(3) & (((\inst|mem~2066_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(4),
	datab => \inst|data[7]~3_combout\,
	datac => \dir|valor_interno\(3),
	datad => \inst|mem~2066_combout\,
	combout => \inst|data[4]~11_combout\);

-- Location: LCCOMB_X29_Y3_N14
\inst|data[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[4]~17_combout\ = (!\dir|valor_interno\(6) & (!\dir|valor_interno\(7) & (\inst|data[4]~11_combout\ & !\dir|valor_interno\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(6),
	datab => \dir|valor_interno\(7),
	datac => \inst|data[4]~11_combout\,
	datad => \dir|valor_interno\(5),
	combout => \inst|data[4]~17_combout\);

-- Location: LCCOMB_X27_Y3_N22
\inst1|PortR[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR[4]~18_combout\ = (\inst|data[4]~17_combout\ & ((\upa|Yupa2[4]~30_combout\) # ((!\inst1|PortR~10_combout\)))) # (!\inst|data[4]~17_combout\ & (!\inst|MEM_READ~0_combout\ & ((\upa|Yupa2[4]~30_combout\) # (!\inst1|PortR~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data[4]~17_combout\,
	datab => \upa|Yupa2[4]~30_combout\,
	datac => \inst|MEM_READ~0_combout\,
	datad => \inst1|PortR~10_combout\,
	combout => \inst1|PortR[4]~18_combout\);

-- Location: LCCOMB_X25_Y3_N16
\inst1|PortR[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR[4]~19_combout\ = ((\inst1|PortR[4]~18_combout\ & ((\upa|Yupa[4]~20_combout\) # (\inst7|PortR~0_combout\)))) # (!\inst1|PortR[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PortR[7]~12_combout\,
	datab => \inst1|PortR[4]~18_combout\,
	datac => \upa|Yupa[4]~20_combout\,
	datad => \inst7|PortR~0_combout\,
	combout => \inst1|PortR[4]~19_combout\);

-- Location: LCCOMB_X30_Y6_N4
\upa|Yupa2[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[4]~26_combout\ = (\inst1|PortR~8_combout\ & (\inst1|PortR[4]~19_combout\ & ((\RegAux|data_out\(12)) # (!\RegAux|TRI_STATE_C~1_combout\)))) # (!\inst1|PortR~8_combout\ & (((\RegAux|data_out\(12)) # (!\RegAux|TRI_STATE_C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PortR~8_combout\,
	datab => \inst1|PortR[4]~19_combout\,
	datac => \RegAux|data_out\(12),
	datad => \RegAux|TRI_STATE_C~1_combout\,
	combout => \upa|Yupa2[4]~26_combout\);

-- Location: LCCOMB_X30_Y6_N14
\AcumuladorA|B[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|B[4]~4_combout\ = ((\AcumuladorA|data_out\(4)) # ((\inst30|inst3|EA[0]~8_combout\) # (\inst30|inst3|EA[1]~13_combout\))) # (!\inst30|inst3|nWA~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nWA~1_combout\,
	datab => \AcumuladorA|data_out\(4),
	datac => \inst30|inst3|EA[0]~8_combout\,
	datad => \inst30|inst3|EA[1]~13_combout\,
	combout => \AcumuladorA|B[4]~4_combout\);

-- Location: FF_X30_Y6_N21
\inst13|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \upa|Yupa2[4]~30_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(12));

-- Location: FF_X30_Y6_N17
\inst9|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa2[4]~30_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst9|data_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(12));

-- Location: LCCOMB_X30_Y6_N16
\upa|Yupa2[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[4]~27_combout\ = (\inst13|TRI_STATE_C~0_combout\ & (\inst13|data_out\(12) & ((\inst9|data_out\(12)) # (!\inst9|TRI_STATE_C~0_combout\)))) # (!\inst13|TRI_STATE_C~0_combout\ & (((\inst9|data_out\(12)) # (!\inst9|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|TRI_STATE_C~0_combout\,
	datab => \inst13|data_out\(12),
	datac => \inst9|data_out\(12),
	datad => \inst9|TRI_STATE_C~0_combout\,
	combout => \upa|Yupa2[4]~27_combout\);

-- Location: LCCOMB_X30_Y6_N0
\upa|Yupa2[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[4]~28_combout\ = (\upa|Yupa2[4]~27_combout\ & ((\AcumuladorB|data_out\(4)) # (\AcumuladorB|B[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upa|Yupa2[4]~27_combout\,
	datac => \AcumuladorB|data_out\(4),
	datad => \AcumuladorB|B[7]~0_combout\,
	combout => \upa|Yupa2[4]~28_combout\);

-- Location: LCCOMB_X30_Y6_N18
\upa|Yupa2[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[4]~29_combout\ = (\AcumuladorA|B[4]~4_combout\ & (\upa|Yupa2[4]~28_combout\ & ((\inst30|inst3|nDUPA~6_combout\) # (\upa|Banderas\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nDUPA~6_combout\,
	datab => \AcumuladorA|B[4]~4_combout\,
	datac => \upa|Yupa2[4]~28_combout\,
	datad => \upa|Banderas\(4),
	combout => \upa|Yupa2[4]~29_combout\);

-- Location: LCCOMB_X30_Y6_N20
\upa|Yupa2[4]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[4]~30_combout\ = ((\upa|Yupa2[4]~26_combout\ & \upa|Yupa2[4]~29_combout\)) # (!\upa|Yupa2[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upa|Yupa2[4]~26_combout\,
	datac => \upa|Yupa2[7]~14_combout\,
	datad => \upa|Yupa2[4]~29_combout\,
	combout => \upa|Yupa2[4]~30_combout\);

-- Location: LCCOMB_X32_Y6_N14
\RegAux|data_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~4_combout\ = (\inst30|inst|data~39_combout\ & ((\RegAux|data_out\(13)))) # (!\inst30|inst|data~39_combout\ & (\upa|Yupa2[4]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[4]~30_combout\,
	datab => \inst30|inst|data~39_combout\,
	datac => \RegAux|data_out\(13),
	combout => \RegAux|data_out~4_combout\);

-- Location: FF_X32_Y6_N15
\RegAux|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~4_combout\,
	clrn => \RESET~input_o\,
	ena => \RegAux|data_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(12));

-- Location: LCCOMB_X32_Y7_N30
\RegAux|data_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~5_combout\ = (\inst30|inst|data~39_combout\ & (\RegAux|data_out\(12))) # (!\inst30|inst|data~39_combout\ & ((\upa|Yupa2[3]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data~39_combout\,
	datac => \RegAux|data_out\(12),
	datad => \upa|Yupa2[3]~35_combout\,
	combout => \RegAux|data_out~5_combout\);

-- Location: FF_X32_Y7_N31
\RegAux|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~5_combout\,
	clrn => \RESET~input_o\,
	ena => \RegAux|data_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(11));

-- Location: LCCOMB_X31_Y6_N16
\RegAux|data_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~6_combout\ = (\inst30|inst|data~39_combout\ & (\RegAux|data_out\(11))) # (!\inst30|inst|data~39_combout\ & ((\upa|Yupa2[2]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegAux|data_out\(11),
	datac => \inst30|inst|data~39_combout\,
	datad => \upa|Yupa2[2]~40_combout\,
	combout => \RegAux|data_out~6_combout\);

-- Location: FF_X31_Y6_N17
\RegAux|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~6_combout\,
	clrn => \RESET~input_o\,
	ena => \RegAux|data_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(10));

-- Location: LCCOMB_X32_Y7_N24
\RegAux|data_out~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~7_combout\ = (\inst30|inst|data~39_combout\ & (\RegAux|data_out\(10))) # (!\inst30|inst|data~39_combout\ & ((\upa|Yupa2[1]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data~39_combout\,
	datac => \RegAux|data_out\(10),
	datad => \upa|Yupa2[1]~45_combout\,
	combout => \RegAux|data_out~7_combout\);

-- Location: FF_X32_Y7_N25
\RegAux|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~7_combout\,
	clrn => \RESET~input_o\,
	ena => \RegAux|data_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(9));

-- Location: LCCOMB_X30_Y4_N2
\RegAux|data_out~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~8_combout\ = (\inst30|inst|data~39_combout\ & (\RegAux|data_out\(9))) # (!\inst30|inst|data~39_combout\ & ((\upa|Yupa2[0]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data~39_combout\,
	datac => \RegAux|data_out\(9),
	datad => \upa|Yupa2[0]~50_combout\,
	combout => \RegAux|data_out~8_combout\);

-- Location: FF_X30_Y4_N3
\RegAux|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~8_combout\,
	clrn => \RESET~input_o\,
	ena => \RegAux|data_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(8));

-- Location: LCCOMB_X32_Y6_N4
\RegAux|data_out~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~9_combout\ = (\RegAux|data_out[8]~1_combout\ & (\RegAux|data_out\(8))) # (!\RegAux|data_out[8]~1_combout\ & (((\upa|Yupa[7]~3_combout\) # (!\upa|Yupa[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(8),
	datab => \RegAux|data_out[8]~1_combout\,
	datac => \upa|Yupa[7]~6_combout\,
	datad => \upa|Yupa[7]~3_combout\,
	combout => \RegAux|data_out~9_combout\);

-- Location: LCCOMB_X32_Y6_N10
\inst30|inst3|RA[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|RA[0]~0_combout\ = (\RESET~input_o\ & \inst30|inst|data~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst30|inst|data~39_combout\,
	combout => \inst30|inst3|RA[0]~0_combout\);

-- Location: FF_X32_Y6_N5
\RegAux|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~9_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|RA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(7));

-- Location: LCCOMB_X32_Y6_N30
\RegAux|data_out~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~10_combout\ = (\RegAux|data_out[8]~1_combout\ & (\RegAux|data_out\(7))) # (!\RegAux|data_out[8]~1_combout\ & ((\upa|Yupa[6]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegAux|data_out\(7),
	datac => \upa|Yupa[6]~11_combout\,
	datad => \RegAux|data_out[8]~1_combout\,
	combout => \RegAux|data_out~10_combout\);

-- Location: FF_X32_Y6_N31
\RegAux|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~10_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|RA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(6));

-- Location: LCCOMB_X24_Y3_N16
\RegAux|data_out~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~11_combout\ = (\RegAux|data_out[8]~1_combout\ & (\RegAux|data_out\(6))) # (!\RegAux|data_out[8]~1_combout\ & (((\upa|Yupa[5]~15_combout\) # (!\upa|Yupa[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(6),
	datab => \RegAux|data_out[8]~1_combout\,
	datac => \upa|Yupa[7]~6_combout\,
	datad => \upa|Yupa[5]~15_combout\,
	combout => \RegAux|data_out~11_combout\);

-- Location: FF_X24_Y3_N17
\RegAux|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~11_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|RA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(5));

-- Location: LCCOMB_X24_Y3_N10
\RegAux|data_out~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~12_combout\ = (\RegAux|data_out[8]~1_combout\ & (\RegAux|data_out\(5))) # (!\RegAux|data_out[8]~1_combout\ & ((\upa|Yupa[4]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out[8]~1_combout\,
	datac => \RegAux|data_out\(5),
	datad => \upa|Yupa[4]~20_combout\,
	combout => \RegAux|data_out~12_combout\);

-- Location: FF_X24_Y3_N11
\RegAux|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~12_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|RA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(4));

-- Location: LCCOMB_X24_Y3_N28
\RegAux|data_out~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~13_combout\ = (\RegAux|data_out[8]~1_combout\ & (\RegAux|data_out\(4))) # (!\RegAux|data_out[8]~1_combout\ & (((\upa|Yupa[3]~24_combout\) # (!\upa|Yupa[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(4),
	datab => \RegAux|data_out[8]~1_combout\,
	datac => \upa|Yupa[7]~6_combout\,
	datad => \upa|Yupa[3]~24_combout\,
	combout => \RegAux|data_out~13_combout\);

-- Location: FF_X24_Y3_N29
\RegAux|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~13_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|RA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(3));

-- Location: LCCOMB_X24_Y3_N22
\RegAux|data_out~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~14_combout\ = (\RegAux|data_out[8]~1_combout\ & ((\RegAux|data_out\(3)))) # (!\RegAux|data_out[8]~1_combout\ & (\upa|Yupa[2]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out[8]~1_combout\,
	datab => \upa|Yupa[2]~28_combout\,
	datad => \RegAux|data_out\(3),
	combout => \RegAux|data_out~14_combout\);

-- Location: FF_X24_Y3_N23
\RegAux|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~14_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|RA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(2));

-- Location: LCCOMB_X24_Y3_N12
\RegAux|data_out~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~15_combout\ = (\RegAux|data_out[8]~1_combout\ & (\RegAux|data_out\(2))) # (!\RegAux|data_out[8]~1_combout\ & ((\upa|Yupa[1]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out[8]~1_combout\,
	datac => \RegAux|data_out\(2),
	datad => \upa|Yupa[1]~33_combout\,
	combout => \RegAux|data_out~15_combout\);

-- Location: FF_X24_Y3_N13
\RegAux|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~15_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|RA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(1));

-- Location: LCCOMB_X29_Y5_N12
\RegAux|data_out~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|data_out~16_combout\ = (\RegAux|data_out[8]~1_combout\ & (\RegAux|data_out\(1))) # (!\RegAux|data_out[8]~1_combout\ & ((\upa|Yupa[0]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out[8]~1_combout\,
	datac => \RegAux|data_out\(1),
	datad => \upa|Yupa[0]~38_combout\,
	combout => \RegAux|data_out~16_combout\);

-- Location: FF_X29_Y5_N13
\RegAux|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegAux|data_out~16_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|RA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAux|data_out\(0));

-- Location: LCCOMB_X26_Y5_N12
\upa|Yupa[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[0]~34_combout\ = (\RegAux|data_out\(0) & ((\AcumuladorA|data_out\(0)) # ((!\AcumuladorA|TRI_STATE~2_combout\)))) # (!\RegAux|data_out\(0) & (!\RegAux|TRI_STATE_D~1_combout\ & ((\AcumuladorA|data_out\(0)) # (!\AcumuladorA|TRI_STATE~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(0),
	datab => \AcumuladorA|data_out\(0),
	datac => \RegAux|TRI_STATE_D~1_combout\,
	datad => \AcumuladorA|TRI_STATE~2_combout\,
	combout => \upa|Yupa[0]~34_combout\);

-- Location: LCCOMB_X25_Y6_N30
\upa|Yupa[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[0]~35_combout\ = (\inst9|data_out\(0) & ((\inst13|data_out\(0)) # ((!\inst13|TRI_STATE_D~1_combout\)))) # (!\inst9|data_out\(0) & (!\inst9|TRI_STATE_D~1_combout\ & ((\inst13|data_out\(0)) # (!\inst13|TRI_STATE_D~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data_out\(0),
	datab => \inst13|data_out\(0),
	datac => \inst13|TRI_STATE_D~1_combout\,
	datad => \inst9|TRI_STATE_D~1_combout\,
	combout => \upa|Yupa[0]~35_combout\);

-- Location: LCCOMB_X26_Y6_N16
\AcumuladorB|A[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|A[0]~5_combout\ = (\AcumuladorB|data_out\(0)) # (((!\inst30|inst3|EB[1]~4_combout\) # (!\inst30|inst3|EB[0]~1_combout\)) # (!\inst30|inst3|nWB~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorB|data_out\(0),
	datab => \inst30|inst3|nWB~4_combout\,
	datac => \inst30|inst3|EB[0]~1_combout\,
	datad => \inst30|inst3|EB[1]~4_combout\,
	combout => \AcumuladorB|A[0]~5_combout\);

-- Location: LCCOMB_X26_Y6_N30
\upa|Yupa[0]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[0]~36_combout\ = (\upa|Yupa[0]~35_combout\ & (\AcumuladorB|A[0]~5_combout\ & ((\inst30|inst3|nDUPA~6_combout\) # (\upa|Yupa_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[0]~35_combout\,
	datab => \AcumuladorB|A[0]~5_combout\,
	datac => \inst30|inst3|nDUPA~6_combout\,
	datad => \upa|Yupa_interno\(0),
	combout => \upa|Yupa[0]~36_combout\);

-- Location: LCCOMB_X26_Y6_N4
\upa|Yupa[0]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[0]~37_combout\ = (\upa|Yupa[0]~36_combout\ & ((\inst1|PortR[0]~27_combout\) # ((\inst30|inst3|BD~0_combout\) # (!\inst30|inst3|nRW~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PortR[0]~27_combout\,
	datab => \inst30|inst3|BD~0_combout\,
	datac => \inst30|inst3|nRW~0_combout\,
	datad => \upa|Yupa[0]~36_combout\,
	combout => \upa|Yupa[0]~37_combout\);

-- Location: LCCOMB_X26_Y5_N26
\upa|Yupa[0]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[0]~38_combout\ = ((\upa|Yupa[0]~34_combout\ & \upa|Yupa[0]~37_combout\)) # (!\upa|Yupa[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[0]~34_combout\,
	datab => \upa|Yupa[0]~37_combout\,
	datad => \upa|Yupa[7]~6_combout\,
	combout => \upa|Yupa[0]~38_combout\);

-- Location: LCCOMB_X30_Y5_N30
\RegPC|Add0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~47_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~0_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa[0]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|Equal0~0_combout\,
	datac => \RegPC|Add0~0_combout\,
	datad => \upa|Yupa[0]~38_combout\,
	combout => \RegPC|Add0~47_combout\);

-- Location: FF_X30_Y5_N31
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
	ena => \inst30|inst3|PC[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(0));

-- Location: LCCOMB_X31_Y5_N2
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

-- Location: LCCOMB_X24_Y3_N20
\RegPC|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~46_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~2_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa[1]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Equal0~0_combout\,
	datac => \RegPC|Add0~2_combout\,
	datad => \upa|Yupa[1]~33_combout\,
	combout => \RegPC|Add0~46_combout\);

-- Location: FF_X24_Y3_N21
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
	ena => \inst30|inst3|PC[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(1));

-- Location: LCCOMB_X31_Y5_N4
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

-- Location: LCCOMB_X30_Y5_N16
\RegPC|Add0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~45_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~4_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa[2]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|Equal0~0_combout\,
	datac => \RegPC|Add0~4_combout\,
	datad => \upa|Yupa[2]~28_combout\,
	combout => \RegPC|Add0~45_combout\);

-- Location: FF_X30_Y5_N17
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
	ena => \inst30|inst3|PC[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(2));

-- Location: LCCOMB_X31_Y5_N6
\RegPC|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~6_combout\ = (\RegPC|data_out\(3) & (!\RegPC|Add0~5\)) # (!\RegPC|data_out\(3) & ((\RegPC|Add0~5\) # (GND)))
-- \RegPC|Add0~7\ = CARRY((!\RegPC|Add0~5\) # (!\RegPC|data_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(3),
	datad => VCC,
	cin => \RegPC|Add0~5\,
	combout => \RegPC|Add0~6_combout\,
	cout => \RegPC|Add0~7\);

-- Location: LCCOMB_X31_Y3_N8
\RegPC|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~44_combout\ = (\RegPC|Equal0~0_combout\ & (((\RegPC|Add0~6_combout\)))) # (!\RegPC|Equal0~0_combout\ & (((\upa|Yupa[3]~24_combout\)) # (!\upa|Yupa[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[7]~6_combout\,
	datab => \RegPC|Add0~6_combout\,
	datac => \RegPC|Equal0~0_combout\,
	datad => \upa|Yupa[3]~24_combout\,
	combout => \RegPC|Add0~44_combout\);

-- Location: FF_X31_Y3_N9
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
	ena => \inst30|inst3|PC[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(3));

-- Location: LCCOMB_X24_Y3_N18
\RegPC|Add0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~43_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~8_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa[4]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Equal0~0_combout\,
	datab => \RegPC|Add0~8_combout\,
	datad => \upa|Yupa[4]~20_combout\,
	combout => \RegPC|Add0~43_combout\);

-- Location: FF_X24_Y3_N19
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
	ena => \inst30|inst3|PC[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|data_out\(4));

-- Location: LCCOMB_X25_Y3_N18
\ENTRADA~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ENTRADA~6_combout\ = (\dir|valor_interno[7]~0_combout\ & (((\RegAux|data_out\(4)) # (\dir|valor_interno[7]~1_combout\)))) # (!\dir|valor_interno[7]~0_combout\ & (\inst13|data_out\(4) & ((!\dir|valor_interno[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno[7]~0_combout\,
	datab => \inst13|data_out\(4),
	datac => \RegAux|data_out\(4),
	datad => \dir|valor_interno[7]~1_combout\,
	combout => \ENTRADA~6_combout\);

-- Location: LCCOMB_X30_Y3_N30
\ENTRADA~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ENTRADA~7_combout\ = (\ENTRADA~6_combout\ & (((\inst9|data_out\(4)) # (!\dir|valor_interno[7]~1_combout\)))) # (!\ENTRADA~6_combout\ & (\RegPC|data_out\(4) & ((\dir|valor_interno[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(4),
	datab => \inst9|data_out\(4),
	datac => \ENTRADA~6_combout\,
	datad => \dir|valor_interno[7]~1_combout\,
	combout => \ENTRADA~7_combout\);

-- Location: FF_X30_Y3_N31
\dir|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst3|nCBD~clkctrl_outclk\,
	d => \ENTRADA~7_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir|valor_interno\(4));

-- Location: LCCOMB_X29_Y3_N26
\inst|data[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[2]~13_combout\ = (\dir|valor_interno\(4) & (!\dir|valor_interno\(3) & (\dir|valor_interno\(2) $ (\dir|valor_interno\(1))))) # (!\dir|valor_interno\(4) & ((\dir|valor_interno\(3) & (\dir|valor_interno\(2) $ (\dir|valor_interno\(1)))) # 
-- (!\dir|valor_interno\(3) & (\dir|valor_interno\(2) & \dir|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir|valor_interno\(4),
	datab => \dir|valor_interno\(3),
	datac => \dir|valor_interno\(2),
	datad => \dir|valor_interno\(1),
	combout => \inst|data[2]~13_combout\);

-- Location: LCCOMB_X29_Y3_N20
\inst|data[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|data[2]~14_combout\ = (\inst|data[7]~2_combout\ & ((\inst|data[2]~13_combout\ & (\dir|valor_interno\(0) & \dir|valor_interno\(4))) # (!\inst|data[2]~13_combout\ & (!\dir|valor_interno\(0) & !\dir|valor_interno\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data[2]~13_combout\,
	datab => \dir|valor_interno\(0),
	datac => \dir|valor_interno\(4),
	datad => \inst|data[7]~2_combout\,
	combout => \inst|data[2]~14_combout\);

-- Location: LCCOMB_X27_Y3_N14
\inst1|PortR[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR[2]~22_combout\ = (\inst|data[2]~14_combout\ & ((\upa|Yupa2[2]~40_combout\) # ((!\inst1|PortR~10_combout\)))) # (!\inst|data[2]~14_combout\ & (!\inst|MEM_READ~0_combout\ & ((\upa|Yupa2[2]~40_combout\) # (!\inst1|PortR~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data[2]~14_combout\,
	datab => \upa|Yupa2[2]~40_combout\,
	datac => \inst|MEM_READ~0_combout\,
	datad => \inst1|PortR~10_combout\,
	combout => \inst1|PortR[2]~22_combout\);

-- Location: LCCOMB_X25_Y5_N22
\inst1|PortR[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|PortR[2]~23_combout\ = ((\inst1|PortR[2]~22_combout\ & ((\inst7|PortR~0_combout\) # (\upa|Yupa[2]~28_combout\)))) # (!\inst1|PortR[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PortR~0_combout\,
	datab => \inst1|PortR[7]~12_combout\,
	datac => \inst1|PortR[2]~22_combout\,
	datad => \upa|Yupa[2]~28_combout\,
	combout => \inst1|PortR[2]~23_combout\);

-- Location: LCCOMB_X29_Y6_N22
\inst7|PortL[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|PortL[2]~0_combout\ = ((\inst1|PortR[2]~23_combout\) # (\inst30|inst3|BD~0_combout\)) # (!\inst30|inst3|nRW~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst3|nRW~0_combout\,
	datac => \inst1|PortR[2]~23_combout\,
	datad => \inst30|inst3|BD~0_combout\,
	combout => \inst7|PortL[2]~0_combout\);

-- Location: LCCOMB_X26_Y7_N30
\upa|Yupa[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[2]~25_combout\ = (\AcumuladorA|data_out\(2) & ((\RegAux|data_out\(2)) # ((!\RegAux|TRI_STATE_D~1_combout\)))) # (!\AcumuladorA|data_out\(2) & (!\AcumuladorA|TRI_STATE~2_combout\ & ((\RegAux|data_out\(2)) # (!\RegAux|TRI_STATE_D~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AcumuladorA|data_out\(2),
	datab => \RegAux|data_out\(2),
	datac => \RegAux|TRI_STATE_D~1_combout\,
	datad => \AcumuladorA|TRI_STATE~2_combout\,
	combout => \upa|Yupa[2]~25_combout\);

-- Location: LCCOMB_X24_Y6_N8
\AcumuladorB|A[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|A[2]~4_combout\ = ((\AcumuladorB|data_out\(2)) # ((!\inst30|inst3|nWB~4_combout\) # (!\inst30|inst3|EB[1]~4_combout\))) # (!\inst30|inst3|EB[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EB[0]~1_combout\,
	datab => \AcumuladorB|data_out\(2),
	datac => \inst30|inst3|EB[1]~4_combout\,
	datad => \inst30|inst3|nWB~4_combout\,
	combout => \AcumuladorB|A[2]~4_combout\);

-- Location: LCCOMB_X25_Y6_N4
\upa|Yupa[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[2]~26_combout\ = (\inst13|data_out\(2) & (((\inst9|data_out\(2)) # (!\inst9|TRI_STATE_D~1_combout\)))) # (!\inst13|data_out\(2) & (!\inst13|TRI_STATE_D~1_combout\ & ((\inst9|data_out\(2)) # (!\inst9|TRI_STATE_D~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|data_out\(2),
	datab => \inst13|TRI_STATE_D~1_combout\,
	datac => \inst9|data_out\(2),
	datad => \inst9|TRI_STATE_D~1_combout\,
	combout => \upa|Yupa[2]~26_combout\);

-- Location: LCCOMB_X24_Y6_N20
\upa|Yupa[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[2]~27_combout\ = (\AcumuladorB|A[2]~4_combout\ & (\upa|Yupa[2]~26_combout\ & ((\inst30|inst3|nDUPA~6_combout\) # (\upa|Yupa_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nDUPA~6_combout\,
	datab => \upa|Yupa_interno\(2),
	datac => \AcumuladorB|A[2]~4_combout\,
	datad => \upa|Yupa[2]~26_combout\,
	combout => \upa|Yupa[2]~27_combout\);

-- Location: LCCOMB_X24_Y6_N4
\upa|Yupa[2]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa[2]~28_combout\ = ((\inst7|PortL[2]~0_combout\ & (\upa|Yupa[2]~25_combout\ & \upa|Yupa[2]~27_combout\))) # (!\upa|Yupa[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa[7]~6_combout\,
	datab => \inst7|PortL[2]~0_combout\,
	datac => \upa|Yupa[2]~25_combout\,
	datad => \upa|Yupa[2]~27_combout\,
	combout => \upa|Yupa[2]~28_combout\);

-- Location: FF_X24_Y6_N29
\inst11|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst3|nCRI~combout\,
	asdata => \upa|Yupa[2]~28_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(6));

-- Location: LCCOMB_X24_Y6_N28
\inst4|Y[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Y[6]~3_combout\ = (\inst30|inst3|instruccion\(0) & (\inst30|inst3|liga\(6) & ((!\inst30|inst3|instruccion\(1))))) # (!\inst30|inst3|instruccion\(0) & (((\inst11|valor_interno\(6)) # (!\inst30|inst3|instruccion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|liga\(6),
	datab => \inst30|inst3|instruccion\(0),
	datac => \inst11|valor_interno\(6),
	datad => \inst30|inst3|instruccion\(1),
	combout => \inst4|Y[6]~3_combout\);

-- Location: LCCOMB_X24_Y6_N16
\inst30|inst5|$00000|auto_generated|result_node[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\ = (\inst30|inst1|SELECTOR~0_combout\ & ((\inst4|Y[6]~3_combout\))) # (!\inst30|inst1|SELECTOR~0_combout\ & (\inst30|inst2|valor_interno\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst1|SELECTOR~0_combout\,
	datac => \inst30|inst2|valor_interno\(6),
	datad => \inst4|Y[6]~3_combout\,
	combout => \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\);

-- Location: LCCOMB_X23_Y5_N18
\inst30|inst2|valor_interno[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst2|valor_interno[7]~23_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (\inst30|inst2|valor_interno[6]~22\ $ (GND))) # (!\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\ & 
-- (!\inst30|inst2|valor_interno[6]~22\ & VCC))
-- \inst30|inst2|valor_interno[7]~24\ = CARRY((\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\ & !\inst30|inst2|valor_interno[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datad => VCC,
	cin => \inst30|inst2|valor_interno[6]~22\,
	combout => \inst30|inst2|valor_interno[7]~23_combout\,
	cout => \inst30|inst2|valor_interno[7]~24\);

-- Location: LCCOMB_X23_Y5_N20
\inst30|inst2|valor_interno[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst2|valor_interno[8]~25_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\ & (!\inst30|inst2|valor_interno[7]~24\)) # (!\inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\ & ((\inst30|inst2|valor_interno[7]~24\) 
-- # (GND)))
-- \inst30|inst2|valor_interno[8]~26\ = CARRY((!\inst30|inst2|valor_interno[7]~24\) # (!\inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	datad => VCC,
	cin => \inst30|inst2|valor_interno[7]~24\,
	combout => \inst30|inst2|valor_interno[8]~25_combout\,
	cout => \inst30|inst2|valor_interno[8]~26\);

-- Location: FF_X23_Y5_N21
\inst30|inst2|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30|inst2|valor_interno[8]~25_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst2|valor_interno\(8));

-- Location: CLKCTRL_G18
\inst30|inst3|nCRI~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst30|inst3|nCRI~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst30|inst3|nCRI~clkctrl_outclk\);

-- Location: FF_X24_Y5_N15
\inst11|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst3|nCRI~clkctrl_outclk\,
	asdata => \upa|Yupa[4]~20_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(8));

-- Location: LCCOMB_X24_Y5_N14
\inst30|inst8[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst8[8]~0_combout\ = (!\inst30|inst3|instruccion\(0) & ((\inst11|valor_interno\(8)) # (!\inst30|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|instruccion\(0),
	datac => \inst11|valor_interno\(8),
	datad => \inst30|inst3|instruccion\(1),
	combout => \inst30|inst8[8]~0_combout\);

-- Location: LCCOMB_X24_Y5_N4
\inst30|inst5|$00000|auto_generated|result_node[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\ = (\inst30|inst1|SELECTOR~0_combout\ & ((\inst30|inst8[8]~0_combout\))) # (!\inst30|inst1|SELECTOR~0_combout\ & (\inst30|inst2|valor_interno\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst2|valor_interno\(8),
	datac => \inst30|inst1|SELECTOR~0_combout\,
	datad => \inst30|inst8[8]~0_combout\,
	combout => \inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\);

-- Location: LCCOMB_X24_Y4_N6
\inst30|inst|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal3~3_combout\ = (!\inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\ & \inst30|inst5|$00000|auto_generated|result_node[11]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	combout => \inst30|inst|Equal3~3_combout\);

-- Location: LCCOMB_X25_Y6_N28
\inst30|inst|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal6~0_combout\ = (\inst30|inst|Equal65~0_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst30|inst|Equal3~3_combout\ & \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal65~0_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst30|inst|Equal3~3_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst30|inst|Equal6~0_combout\);

-- Location: LCCOMB_X24_Y7_N30
\inst30|inst|Equal34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal34~1_combout\ = (\inst30|inst|Equal6~0_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & \inst30|inst|Equal34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|Equal6~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => \inst30|inst|Equal34~0_combout\,
	combout => \inst30|inst|Equal34~1_combout\);

-- Location: LCCOMB_X22_Y6_N12
\inst30|inst3|nDUPA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|nDUPA~0_combout\ = (!\inst30|inst|Equal34~1_combout\ & (!\inst30|inst|Equal23~0_combout\ & (!\inst30|inst|Equal44~0_combout\ & !\inst30|inst|Equal55~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal34~1_combout\,
	datab => \inst30|inst|Equal23~0_combout\,
	datac => \inst30|inst|Equal44~0_combout\,
	datad => \inst30|inst|Equal55~2_combout\,
	combout => \inst30|inst3|nDUPA~0_combout\);

-- Location: LCCOMB_X22_Y5_N30
\inst30|inst|data~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data~49_combout\ = (\inst30|inst|data~37_combout\ & (\inst30|inst|data~35_combout\ & !\inst30|inst|Equal68~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|data~37_combout\,
	datac => \inst30|inst|data~35_combout\,
	datad => \inst30|inst|Equal68~2_combout\,
	combout => \inst30|inst|data~49_combout\);

-- Location: LCCOMB_X25_Y5_N16
\inst30|inst|Equal70~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal70~0_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\ & (\inst30|inst|Equal65~2_combout\ & 
-- !\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datac => \inst30|inst|Equal65~2_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst30|inst|Equal70~0_combout\);

-- Location: LCCOMB_X22_Y5_N18
\inst30|inst|data[86]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[86]~61_combout\ = (\inst30|inst|data~49_combout\ & (\inst30|inst|data~88_combout\ & (\inst30|inst|Equal70~0_combout\ & !\inst30|inst|Equal69~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data~49_combout\,
	datab => \inst30|inst|data~88_combout\,
	datac => \inst30|inst|Equal70~0_combout\,
	datad => \inst30|inst|Equal69~0_combout\,
	combout => \inst30|inst|data[86]~61_combout\);

-- Location: LCCOMB_X27_Y5_N14
\inst30|inst|data[74]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[74]~86_combout\ = (\inst30|inst|data[86]~61_combout\) # ((\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst30|inst|Equal62~3_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst30|inst|Equal62~3_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst30|inst|data[86]~61_combout\,
	combout => \inst30|inst|data[74]~86_combout\);

-- Location: LCCOMB_X26_Y8_N18
\inst30|inst|data[74]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[74]~62_combout\ = (!\inst30|inst|Equal19~0_combout\ & (\inst30|inst3|nCBD~0_combout\ & ((!\inst30|inst|data[74]~86_combout\) # (!\inst30|inst3|nEX2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal19~0_combout\,
	datab => \inst30|inst3|nCBD~0_combout\,
	datac => \inst30|inst3|nEX2~0_combout\,
	datad => \inst30|inst|data[74]~86_combout\,
	combout => \inst30|inst|data[74]~62_combout\);

-- Location: LCCOMB_X25_Y4_N8
\inst30|inst|data[74]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[74]~63_combout\ = ((\inst30|inst|Equal30~0_combout\) # (!\inst30|inst|data[74]~62_combout\)) # (!\inst30|inst3|nDUPA~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nDUPA~0_combout\,
	datac => \inst30|inst|Equal30~0_combout\,
	datad => \inst30|inst|data[74]~62_combout\,
	combout => \inst30|inst|data[74]~63_combout\);

-- Location: FF_X25_Y4_N9
\inst30|inst3|liga[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30|inst|data[74]~63_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst3|liga\(0));

-- Location: LCCOMB_X25_Y4_N10
\inst12[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[0]~0_combout\ = (!\inst30|inst3|instruccion\(1) & ((\inst30|inst3|liga\(0)) # (!\inst30|inst3|instruccion\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst3|instruccion\(0),
	datac => \inst30|inst3|liga\(0),
	datad => \inst30|inst3|instruccion\(1),
	combout => \inst12[0]~0_combout\);

-- Location: LCCOMB_X25_Y4_N4
\inst30|inst5|$00000|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ = (\inst30|inst1|SELECTOR~0_combout\ & ((\inst12[0]~0_combout\))) # (!\inst30|inst1|SELECTOR~0_combout\ & (\inst30|inst2|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst1|SELECTOR~0_combout\,
	datab => \inst30|inst2|valor_interno\(0),
	datad => \inst12[0]~0_combout\,
	combout => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X23_Y5_N8
\inst30|inst2|valor_interno[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst2|valor_interno[2]~13_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\ & (!\inst30|inst2|valor_interno[1]~12\)) # (!\inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\ & ((\inst30|inst2|valor_interno[1]~12\) 
-- # (GND)))
-- \inst30|inst2|valor_interno[2]~14\ = CARRY((!\inst30|inst2|valor_interno[1]~12\) # (!\inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datad => VCC,
	cin => \inst30|inst2|valor_interno[1]~12\,
	combout => \inst30|inst2|valor_interno[2]~13_combout\,
	cout => \inst30|inst2|valor_interno[2]~14\);

-- Location: FF_X23_Y5_N9
\inst30|inst2|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30|inst2|valor_interno[2]~13_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst2|valor_interno\(2));

-- Location: LCCOMB_X22_Y6_N16
\inst30|inst|data[81]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[81]~87_combout\ = (!\inst30|inst|Equal23~0_combout\ & ((\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\) # ((\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\) # (!\inst30|inst|Equal24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst30|inst|Equal23~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst|Equal24~6_combout\,
	combout => \inst30|inst|data[81]~87_combout\);

-- Location: LCCOMB_X23_Y8_N18
\inst30|inst|data[84]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[84]~68_combout\ = (!\inst30|inst|Equal29~0_combout\ & (\inst30|inst3|nWB~0_combout\ & ((\inst30|inst|Equal55~2_combout\) # (\inst30|inst|Equal44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal55~2_combout\,
	datab => \inst30|inst|Equal29~0_combout\,
	datac => \inst30|inst3|nWB~0_combout\,
	datad => \inst30|inst|Equal44~0_combout\,
	combout => \inst30|inst|data[84]~68_combout\);

-- Location: LCCOMB_X25_Y8_N12
\inst30|inst|data[84]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[84]~69_combout\ = (\inst30|inst|data[84]~68_combout\ & (\inst30|inst|data[92]~28_combout\ & \inst30|inst3|EA[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|data[84]~68_combout\,
	datac => \inst30|inst|data[92]~28_combout\,
	datad => \inst30|inst3|EA[1]~2_combout\,
	combout => \inst30|inst|data[84]~69_combout\);

-- Location: LCCOMB_X25_Y5_N24
\inst30|inst|data[85]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[85]~71_combout\ = (!\inst30|inst|Equal0~7_combout\ & (((\inst30|inst|Equal34~1_combout\) # (\inst30|inst|data[84]~69_combout\)) # (!\inst30|inst|data[81]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[81]~87_combout\,
	datab => \inst30|inst|Equal34~1_combout\,
	datac => \inst30|inst|Equal0~7_combout\,
	datad => \inst30|inst|data[84]~69_combout\,
	combout => \inst30|inst|data[85]~71_combout\);

-- Location: FF_X25_Y5_N7
\inst30|inst3|liga[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst30|inst|data[85]~71_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst3|liga\(2));

-- Location: LCCOMB_X25_Y5_N6
\inst12[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[2]~2_combout\ = (!\inst30|inst3|instruccion\(1) & ((\inst30|inst3|liga\(2)) # (!\inst30|inst3|instruccion\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|instruccion\(1),
	datac => \inst30|inst3|liga\(2),
	datad => \inst30|inst3|instruccion\(0),
	combout => \inst12[2]~2_combout\);

-- Location: LCCOMB_X25_Y5_N2
\inst30|inst5|$00000|auto_generated|result_node[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\ = (\inst30|inst1|SELECTOR~0_combout\ & ((\inst12[2]~2_combout\))) # (!\inst30|inst1|SELECTOR~0_combout\ & (\inst30|inst2|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst1|SELECTOR~0_combout\,
	datac => \inst30|inst2|valor_interno\(2),
	datad => \inst12[2]~2_combout\,
	combout => \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X23_Y5_N10
\inst30|inst2|valor_interno[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst2|valor_interno[3]~15_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\ & (\inst30|inst2|valor_interno[2]~14\ $ (GND))) # (!\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\ & 
-- (!\inst30|inst2|valor_interno[2]~14\ & VCC))
-- \inst30|inst2|valor_interno[3]~16\ = CARRY((\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\ & !\inst30|inst2|valor_interno[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datad => VCC,
	cin => \inst30|inst2|valor_interno[2]~14\,
	combout => \inst30|inst2|valor_interno[3]~15_combout\,
	cout => \inst30|inst2|valor_interno[3]~16\);

-- Location: FF_X23_Y5_N11
\inst30|inst2|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30|inst2|valor_interno[3]~15_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst2|valor_interno\(3));

-- Location: LCCOMB_X23_Y5_N30
\inst30|inst5|$00000|auto_generated|result_node[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\ = (\inst30|inst1|SELECTOR~0_combout\ & (!\inst30|inst1|SELECTOR~2_combout\)) # (!\inst30|inst1|SELECTOR~0_combout\ & ((\inst30|inst2|valor_interno\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst1|SELECTOR~0_combout\,
	datab => \inst30|inst1|SELECTOR~2_combout\,
	datad => \inst30|inst2|valor_interno\(3),
	combout => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X23_Y5_N12
\inst30|inst2|valor_interno[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst2|valor_interno[4]~17_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\ & (!\inst30|inst2|valor_interno[3]~16\)) # (!\inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\ & ((\inst30|inst2|valor_interno[3]~16\) 
-- # (GND)))
-- \inst30|inst2|valor_interno[4]~18\ = CARRY((!\inst30|inst2|valor_interno[3]~16\) # (!\inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\,
	datad => VCC,
	cin => \inst30|inst2|valor_interno[3]~16\,
	combout => \inst30|inst2|valor_interno[4]~17_combout\,
	cout => \inst30|inst2|valor_interno[4]~18\);

-- Location: FF_X23_Y5_N1
\inst30|inst2|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst30|inst2|valor_interno[4]~17_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst2|valor_interno\(4));

-- Location: FF_X25_Y5_N25
\inst30|inst3|liga[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30|inst|data[85]~71_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst3|liga\(4));

-- Location: FF_X23_Y5_N29
\inst11|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst3|nCRI~clkctrl_outclk\,
	asdata => \upa|Yupa[0]~38_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(4));

-- Location: LCCOMB_X23_Y5_N28
\inst4|Y[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Y[4]~5_combout\ = (\inst30|inst3|instruccion\(1) & (((\inst11|valor_interno\(4) & !\inst30|inst3|instruccion\(0))))) # (!\inst30|inst3|instruccion\(1) & ((\inst30|inst3|liga\(4)) # ((!\inst30|inst3|instruccion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|liga\(4),
	datab => \inst30|inst3|instruccion\(1),
	datac => \inst11|valor_interno\(4),
	datad => \inst30|inst3|instruccion\(0),
	combout => \inst4|Y[4]~5_combout\);

-- Location: LCCOMB_X23_Y5_N0
\inst30|inst5|$00000|auto_generated|result_node[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\ = (\inst30|inst1|SELECTOR~0_combout\ & ((\inst4|Y[4]~5_combout\))) # (!\inst30|inst1|SELECTOR~0_combout\ & (\inst30|inst2|valor_interno\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst1|SELECTOR~0_combout\,
	datac => \inst30|inst2|valor_interno\(4),
	datad => \inst4|Y[4]~5_combout\,
	combout => \inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: FF_X23_Y5_N5
\inst30|inst2|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst30|inst2|valor_interno[5]~19_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst2|valor_interno\(5));

-- Location: FF_X23_Y5_N31
\inst30|inst3|liga[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst30|inst|data[85]~71_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst3|liga\(5));

-- Location: FF_X23_Y5_N3
\inst11|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst3|nCRI~clkctrl_outclk\,
	asdata => \upa|Yupa[1]~33_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(5));

-- Location: LCCOMB_X23_Y5_N2
\inst4|Y[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Y[5]~2_combout\ = (\inst30|inst3|instruccion\(1) & (((\inst11|valor_interno\(5) & !\inst30|inst3|instruccion\(0))))) # (!\inst30|inst3|instruccion\(1) & ((\inst30|inst3|liga\(5)) # ((!\inst30|inst3|instruccion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|liga\(5),
	datab => \inst30|inst3|instruccion\(1),
	datac => \inst11|valor_interno\(5),
	datad => \inst30|inst3|instruccion\(0),
	combout => \inst4|Y[5]~2_combout\);

-- Location: LCCOMB_X23_Y5_N4
\inst30|inst5|$00000|auto_generated|result_node[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst5|$00000|auto_generated|result_node[5]~5_combout\ = (\inst30|inst1|SELECTOR~0_combout\ & ((\inst4|Y[5]~2_combout\))) # (!\inst30|inst1|SELECTOR~0_combout\ & (\inst30|inst2|valor_interno\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst1|SELECTOR~0_combout\,
	datac => \inst30|inst2|valor_interno\(5),
	datad => \inst4|Y[5]~2_combout\,
	combout => \inst30|inst5|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X27_Y3_N30
\inst30|inst|Equal65~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal65~0_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[5]~5_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\ & \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[5]~5_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[3]~3_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[6]~6_combout\,
	combout => \inst30|inst|Equal65~0_combout\);

-- Location: LCCOMB_X25_Y6_N26
\inst30|inst|Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal4~2_combout\ = (\inst30|inst|Equal65~0_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & (\inst30|inst|Equal3~3_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal65~0_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst30|inst|Equal3~3_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst30|inst|Equal4~2_combout\);

-- Location: LCCOMB_X23_Y4_N22
\inst30|inst|data[87]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[87]~66_combout\ = (\inst30|inst|data[87]~22_combout\ & (\inst30|inst3|nCBD~6_combout\ & ((!\inst30|inst|Equal3~4_combout\) # (!\inst30|inst|Equal4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal4~2_combout\,
	datab => \inst30|inst|data[87]~22_combout\,
	datac => \inst30|inst|Equal3~4_combout\,
	datad => \inst30|inst3|nCBD~6_combout\,
	combout => \inst30|inst|data[87]~66_combout\);

-- Location: LCCOMB_X23_Y4_N12
\inst30|inst|data[87]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[87]~54_combout\ = ((!\inst30|inst|Equal7~1_combout\ & (!\inst30|inst|Equal0~5_combout\ & !\inst30|inst|Equal3~5_combout\))) # (!\inst30|inst|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal7~1_combout\,
	datab => \inst30|inst|Equal0~5_combout\,
	datac => \inst30|inst|Equal3~5_combout\,
	datad => \inst30|inst|Equal2~1_combout\,
	combout => \inst30|inst|data[87]~54_combout\);

-- Location: LCCOMB_X23_Y4_N2
\inst30|inst3|prueba[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|prueba[0]~1_combout\ = (\inst30|inst|Equal1~0_combout\ & (!\inst30|inst|Equal11~0_combout\ & (!\inst30|inst|Equal0~5_combout\))) # (!\inst30|inst|Equal1~0_combout\ & (((!\inst30|inst|Equal2~1_combout\)) # (!\inst30|inst|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal1~0_combout\,
	datab => \inst30|inst|Equal11~0_combout\,
	datac => \inst30|inst|Equal0~5_combout\,
	datad => \inst30|inst|Equal2~1_combout\,
	combout => \inst30|inst3|prueba[0]~1_combout\);

-- Location: LCCOMB_X23_Y4_N0
\inst30|inst3|prueba[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|prueba[0]~2_combout\ = (!\inst30|inst|Equal8~0_combout\ & (\inst30|inst3|prueba[0]~1_combout\ & (\inst30|inst|data[87]~54_combout\ & \inst30|inst|data[87]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal8~0_combout\,
	datab => \inst30|inst3|prueba[0]~1_combout\,
	datac => \inst30|inst|data[87]~54_combout\,
	datad => \inst30|inst|data[87]~53_combout\,
	combout => \inst30|inst3|prueba[0]~2_combout\);

-- Location: LCCOMB_X27_Y4_N22
\inst30|inst|data~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data~85_combout\ = (\inst30|inst|Equal69~0_combout\) # ((!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\ & \inst30|inst|Equal62~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst30|inst|Equal69~0_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \inst30|inst|Equal62~3_combout\,
	combout => \inst30|inst|data~85_combout\);

-- Location: LCCOMB_X25_Y8_N18
\inst30|inst|data[87]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[87]~56_combout\ = (\inst9|Equal7~10_combout\ & (\inst30|inst|data[26]~55_combout\ & ((!\inst30|inst|Equal52~0_combout\) # (!\inst30|inst|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal2~1_combout\,
	datab => \inst9|Equal7~10_combout\,
	datac => \inst30|inst|Equal52~0_combout\,
	datad => \inst30|inst|data[26]~55_combout\,
	combout => \inst30|inst|data[87]~56_combout\);

-- Location: LCCOMB_X26_Y8_N26
\inst30|inst|data[87]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[87]~57_combout\ = (\inst30|inst|data[87]~56_combout\ & (\inst30|inst3|selmux~0_combout\ & \inst30|inst3|UPA[2]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|data[87]~56_combout\,
	datac => \inst30|inst3|selmux~0_combout\,
	datad => \inst30|inst3|UPA[2]~13_combout\,
	combout => \inst30|inst|data[87]~57_combout\);

-- Location: LCCOMB_X26_Y8_N16
\inst30|inst|data[87]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[87]~58_combout\ = (\inst30|inst3|nCBD~5_combout\ & (\inst30|inst|data~85_combout\ & (\inst30|inst3|nDUPA~4_combout\ & \inst30|inst|data[87]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nCBD~5_combout\,
	datab => \inst30|inst|data~85_combout\,
	datac => \inst30|inst3|nDUPA~4_combout\,
	datad => \inst30|inst|data[87]~57_combout\,
	combout => \inst30|inst|data[87]~58_combout\);

-- Location: LCCOMB_X26_Y8_N24
\inst30|inst|data[87]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[87]~59_combout\ = (\inst30|inst3|prueba[0]~2_combout\ & ((\inst30|inst|data[87]~58_combout\) # ((\inst30|inst|Equal18~1_combout\) # (\inst30|inst|Equal29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[87]~58_combout\,
	datab => \inst30|inst|Equal18~1_combout\,
	datac => \inst30|inst3|prueba[0]~2_combout\,
	datad => \inst30|inst|Equal29~0_combout\,
	combout => \inst30|inst|data[87]~59_combout\);

-- Location: LCCOMB_X24_Y5_N0
\inst30|inst|data[87]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[87]~67_combout\ = ((\inst30|inst|data[87]~59_combout\) # ((\inst30|inst|data[87]~66_combout\ & !\inst30|inst3|prueba[0]~2_combout\))) # (!\inst30|inst|data[87]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[87]~66_combout\,
	datab => \inst30|inst|data[87]~54_combout\,
	datac => \inst30|inst3|prueba[0]~2_combout\,
	datad => \inst30|inst|data[87]~59_combout\,
	combout => \inst30|inst|data[87]~67_combout\);

-- Location: FF_X24_Y5_N1
\inst30|inst3|instruccion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30|inst|data[87]~67_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst3|instruccion\(1));

-- Location: FF_X24_Y5_N11
\inst30|inst3|liga[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst30|inst|data[85]~71_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst3|liga\(9));

-- Location: FF_X24_Y5_N3
\inst11|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst3|nCRI~clkctrl_outclk\,
	asdata => \upa|Yupa[5]~41_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(9));

-- Location: LCCOMB_X24_Y5_N10
\inst4|Y[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Y[9]~6_combout\ = (\inst30|inst3|instruccion\(0) & (!\inst30|inst3|instruccion\(1) & (\inst30|inst3|liga\(9)))) # (!\inst30|inst3|instruccion\(0) & (((\inst11|valor_interno\(9))) # (!\inst30|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|instruccion\(0),
	datab => \inst30|inst3|instruccion\(1),
	datac => \inst30|inst3|liga\(9),
	datad => \inst11|valor_interno\(9),
	combout => \inst4|Y[9]~6_combout\);

-- Location: LCCOMB_X23_Y5_N22
\inst30|inst2|valor_interno[9]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst2|valor_interno[9]~27_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\ & (\inst30|inst2|valor_interno[8]~26\ $ (GND))) # (!\inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\ & 
-- (!\inst30|inst2|valor_interno[8]~26\ & VCC))
-- \inst30|inst2|valor_interno[9]~28\ = CARRY((\inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\ & !\inst30|inst2|valor_interno[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	datad => VCC,
	cin => \inst30|inst2|valor_interno[8]~26\,
	combout => \inst30|inst2|valor_interno[9]~27_combout\,
	cout => \inst30|inst2|valor_interno[9]~28\);

-- Location: FF_X23_Y5_N23
\inst30|inst2|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30|inst2|valor_interno[9]~27_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst2|valor_interno\(9));

-- Location: LCCOMB_X24_Y5_N28
\inst30|inst5|$00000|auto_generated|result_node[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\ = (\inst30|inst1|SELECTOR~0_combout\ & (\inst4|Y[9]~6_combout\)) # (!\inst30|inst1|SELECTOR~0_combout\ & ((\inst30|inst2|valor_interno\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[9]~6_combout\,
	datab => \inst30|inst2|valor_interno\(9),
	datad => \inst30|inst1|SELECTOR~0_combout\,
	combout => \inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\);

-- Location: LCCOMB_X23_Y5_N24
\inst30|inst2|valor_interno[10]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst2|valor_interno[10]~29_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & (!\inst30|inst2|valor_interno[9]~28\)) # (!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ & 
-- ((\inst30|inst2|valor_interno[9]~28\) # (GND)))
-- \inst30|inst2|valor_interno[10]~30\ = CARRY((!\inst30|inst2|valor_interno[9]~28\) # (!\inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	datad => VCC,
	cin => \inst30|inst2|valor_interno[9]~28\,
	combout => \inst30|inst2|valor_interno[10]~29_combout\,
	cout => \inst30|inst2|valor_interno[10]~30\);

-- Location: FF_X25_Y5_N19
\inst30|inst2|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst30|inst2|valor_interno[10]~29_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst2|valor_interno\(10));

-- Location: LCCOMB_X25_Y5_N20
\inst30|inst|data[84]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[84]~70_combout\ = (\inst30|inst|data[84]~69_combout\ & (!\inst30|inst|Equal34~1_combout\ & \inst30|inst|data[84]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[84]~69_combout\,
	datac => \inst30|inst|Equal34~1_combout\,
	datad => \inst30|inst|data[84]~40_combout\,
	combout => \inst30|inst|data[84]~70_combout\);

-- Location: FF_X25_Y5_N21
\inst30|inst3|liga[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30|inst|data[84]~70_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst3|liga\(10));

-- Location: FF_X25_Y5_N13
\inst11|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst3|nCRI~clkctrl_outclk\,
	asdata => \upa|Yupa[6]~11_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(10));

-- Location: LCCOMB_X25_Y5_N12
\inst4|Y[10]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Y[10]~0_combout\ = (\inst30|inst3|instruccion\(1) & (((\inst11|valor_interno\(10) & !\inst30|inst3|instruccion\(0))))) # (!\inst30|inst3|instruccion\(1) & ((\inst30|inst3|liga\(10)) # ((!\inst30|inst3|instruccion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|instruccion\(1),
	datab => \inst30|inst3|liga\(10),
	datac => \inst11|valor_interno\(10),
	datad => \inst30|inst3|instruccion\(0),
	combout => \inst4|Y[10]~0_combout\);

-- Location: LCCOMB_X25_Y5_N18
\inst30|inst5|$00000|auto_generated|result_node[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\ = (\inst30|inst1|SELECTOR~0_combout\ & ((\inst4|Y[10]~0_combout\))) # (!\inst30|inst1|SELECTOR~0_combout\ & (\inst30|inst2|valor_interno\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst1|SELECTOR~0_combout\,
	datac => \inst30|inst2|valor_interno\(10),
	datad => \inst4|Y[10]~0_combout\,
	combout => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\);

-- Location: LCCOMB_X23_Y5_N26
\inst30|inst2|valor_interno[11]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst2|valor_interno[11]~31_combout\ = \inst30|inst2|valor_interno[10]~30\ $ (!\inst30|inst5|$00000|auto_generated|result_node[11]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst30|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	cin => \inst30|inst2|valor_interno[10]~30\,
	combout => \inst30|inst2|valor_interno[11]~31_combout\);

-- Location: FF_X23_Y5_N27
\inst30|inst2|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30|inst2|valor_interno[11]~31_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst2|valor_interno\(11));

-- Location: FF_X24_Y5_N7
\inst30|inst3|liga[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst30|inst|data[85]~71_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst3|liga\(11));

-- Location: FF_X24_Y5_N29
\inst11|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst3|nCRI~clkctrl_outclk\,
	asdata => \upa|Yupa[7]~39_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(11));

-- Location: LCCOMB_X24_Y5_N6
\inst4|Y[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Y[11]~1_combout\ = (\inst30|inst3|instruccion\(0) & (!\inst30|inst3|instruccion\(1) & (\inst30|inst3|liga\(11)))) # (!\inst30|inst3|instruccion\(0) & (((\inst11|valor_interno\(11))) # (!\inst30|inst3|instruccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|instruccion\(0),
	datab => \inst30|inst3|instruccion\(1),
	datac => \inst30|inst3|liga\(11),
	datad => \inst11|valor_interno\(11),
	combout => \inst4|Y[11]~1_combout\);

-- Location: LCCOMB_X24_Y5_N24
\inst30|inst5|$00000|auto_generated|result_node[11]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst5|$00000|auto_generated|result_node[11]~11_combout\ = (\inst30|inst1|SELECTOR~0_combout\ & ((\inst4|Y[11]~1_combout\))) # (!\inst30|inst1|SELECTOR~0_combout\ & (\inst30|inst2|valor_interno\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst2|valor_interno\(11),
	datab => \inst30|inst1|SELECTOR~0_combout\,
	datad => \inst4|Y[11]~1_combout\,
	combout => \inst30|inst5|$00000|auto_generated|result_node[11]~11_combout\);

-- Location: LCCOMB_X24_Y4_N0
\inst30|inst|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal7~0_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[11]~11_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\ & (\inst30|inst|Equal65~0_combout\ & 
-- \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	datac => \inst30|inst|Equal65~0_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	combout => \inst30|inst|Equal7~0_combout\);

-- Location: LCCOMB_X22_Y5_N16
\inst30|inst|Equal55~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal55~2_combout\ = (\inst30|inst|Equal7~0_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & (\inst30|inst|Equal34~0_combout\ & \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal7~0_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datac => \inst30|inst|Equal34~0_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst30|inst|Equal55~2_combout\);

-- Location: LCCOMB_X22_Y5_N20
\inst30|inst|data[86]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[86]~64_combout\ = (\inst30|inst3|nDUPA~2_combout\ & ((!\inst30|inst3|prueba[3]~0_combout\) # (!\inst30|inst|Equal55~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal55~2_combout\,
	datab => \inst30|inst3|prueba[3]~0_combout\,
	datad => \inst30|inst3|nDUPA~2_combout\,
	combout => \inst30|inst|data[86]~64_combout\);

-- Location: LCCOMB_X22_Y5_N4
\inst30|inst|data[86]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[86]~48_combout\ = (!\inst30|inst|Equal29~0_combout\ & (\inst30|inst|data[86]~21_combout\ & ((!\inst30|inst|Equal0~6_combout\) # (!\inst30|inst|Equal24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal29~0_combout\,
	datab => \inst30|inst|Equal24~6_combout\,
	datac => \inst30|inst|Equal0~6_combout\,
	datad => \inst30|inst|data[86]~21_combout\,
	combout => \inst30|inst|data[86]~48_combout\);

-- Location: LCCOMB_X22_Y5_N28
\inst30|inst|data[86]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[86]~50_combout\ = ((\inst30|inst|data~49_combout\ & ((\inst30|inst|Equal70~0_combout\) # (\inst30|inst|Equal69~0_combout\)))) # (!\inst30|inst|data~88_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data~49_combout\,
	datab => \inst30|inst|data~88_combout\,
	datac => \inst30|inst|Equal70~0_combout\,
	datad => \inst30|inst|Equal69~0_combout\,
	combout => \inst30|inst|data[86]~50_combout\);

-- Location: LCCOMB_X22_Y5_N22
\inst30|inst|data[86]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[86]~51_combout\ = (\inst30|inst|data[86]~48_combout\ & ((\inst30|inst|Equal55~2_combout\) # ((!\inst30|inst|data[86]~50_combout\) # (!\inst30|inst3|prueba[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal55~2_combout\,
	datab => \inst30|inst3|prueba[3]~0_combout\,
	datac => \inst30|inst|data[86]~48_combout\,
	datad => \inst30|inst|data[86]~50_combout\,
	combout => \inst30|inst|data[86]~51_combout\);

-- Location: LCCOMB_X24_Y5_N30
\inst30|inst|data[86]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[86]~65_combout\ = ((\inst30|inst|Equal30~0_combout\) # (!\inst30|inst|data[86]~51_combout\)) # (!\inst30|inst|data[86]~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[86]~64_combout\,
	datab => \inst30|inst|Equal30~0_combout\,
	datad => \inst30|inst|data[86]~51_combout\,
	combout => \inst30|inst|data[86]~65_combout\);

-- Location: FF_X24_Y5_N31
\inst30|inst3|instruccion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30|inst|data[86]~65_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst3|instruccion\(0));

-- Location: LCCOMB_X24_Y5_N12
\inst30|inst1|SELECTOR~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst1|SELECTOR~3_combout\ = (!\inst30|inst3|instruccion\(0) & \inst30|inst3|instruccion\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst3|instruccion\(0),
	datad => \inst30|inst3|instruccion\(1),
	combout => \inst30|inst1|SELECTOR~3_combout\);

-- Location: LCCOMB_X24_Y8_N4
\inst30|inst|data[92]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[92]~47_combout\ = (\inst30|inst|data[92]~44_combout\ & (!\inst30|inst|Equal29~0_combout\ & (\inst30|inst3|nWB~0_combout\ & \inst30|inst|Equal30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[92]~44_combout\,
	datab => \inst30|inst|Equal29~0_combout\,
	datac => \inst30|inst3|nWB~0_combout\,
	datad => \inst30|inst|Equal30~0_combout\,
	combout => \inst30|inst|data[92]~47_combout\);

-- Location: LCCOMB_X26_Y8_N22
\inst30|inst|data[92]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[92]~52_combout\ = (\inst30|inst|data[92]~47_combout\) # (!\inst30|inst|data[86]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst|data[86]~51_combout\,
	datad => \inst30|inst|data[92]~47_combout\,
	combout => \inst30|inst|data[92]~52_combout\);

-- Location: FF_X26_Y8_N23
\inst30|inst3|prueba[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30|inst|data[92]~52_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst3|prueba\(3));

-- Location: LCCOMB_X26_Y8_N10
\inst30|inst6|$00001|auto_generated|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst6|$00001|auto_generated|_~1_combout\ = (\inst30|inst3|prueba\(3) & ((!\upa|Q\(7)))) # (!\inst30|inst3|prueba\(3) & (!\RegAux|R15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegAux|R15~0_combout\,
	datac => \upa|Q\(7),
	datad => \inst30|inst3|prueba\(3),
	combout => \inst30|inst6|$00001|auto_generated|_~1_combout\);

-- Location: LCCOMB_X26_Y5_N0
\inst30|inst6|$00001|auto_generated|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst6|$00001|auto_generated|_~3_combout\ = (\inst30|inst3|prueba\(3) & ((\inst9|data_out\(0)) # (!\inst9|TRI_STATE_D~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|TRI_STATE_D~0_combout\,
	datac => \inst9|data_out\(0),
	datad => \inst30|inst3|prueba\(3),
	combout => \inst30|inst6|$00001|auto_generated|_~3_combout\);

-- Location: LCCOMB_X26_Y8_N12
\inst30|inst|data[89]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[89]~60_combout\ = (\inst30|inst|data[87]~59_combout\) # ((!\inst30|inst3|prueba[0]~2_combout\ & !\inst30|inst|data[87]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|prueba[0]~2_combout\,
	datab => \inst30|inst|data[87]~20_combout\,
	datad => \inst30|inst|data[87]~59_combout\,
	combout => \inst30|inst|data[89]~60_combout\);

-- Location: FF_X26_Y8_N13
\inst30|inst3|prueba[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30|inst|data[89]~60_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst3|prueba\(0));

-- Location: LCCOMB_X26_Y8_N20
\inst30|inst6|$00001|auto_generated|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst6|$00001|auto_generated|_~0_combout\ = (\inst30|inst3|prueba\(0) & (\inst30|inst6|$00001|auto_generated|_~1_combout\)) # (!\inst30|inst3|prueba\(0) & ((!\inst30|inst6|$00001|auto_generated|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst6|$00001|auto_generated|_~1_combout\,
	datac => \inst30|inst6|$00001|auto_generated|_~3_combout\,
	datad => \inst30|inst3|prueba\(0),
	combout => \inst30|inst6|$00001|auto_generated|_~0_combout\);

-- Location: LCCOMB_X26_Y8_N8
\inst30|inst|data[93]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[93]~76_combout\ = (\inst30|inst|data[92]~47_combout\) # ((\inst30|inst|Equal24~7_combout\) # (!\inst30|inst|data[74]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[92]~47_combout\,
	datab => \inst30|inst|data[74]~62_combout\,
	datad => \inst30|inst|Equal24~7_combout\,
	combout => \inst30|inst|data[93]~76_combout\);

-- Location: FF_X26_Y8_N9
\inst30|inst3|prueba[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30|inst|data[93]~76_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst3|prueba\(4));

-- Location: LCCOMB_X26_Y8_N28
\inst30|inst6|$00001|auto_generated|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst6|$00001|auto_generated|_~2_combout\ = (\flags|tCC|valor_interno~q\ & (\inst30|inst3|prueba\(3) & \inst30|inst3|prueba\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flags|tCC|valor_interno~q\,
	datac => \inst30|inst3|prueba\(3),
	datad => \inst30|inst3|prueba\(0),
	combout => \inst30|inst6|$00001|auto_generated|_~2_combout\);

-- Location: LCCOMB_X26_Y8_N14
\inst30|inst6|$00001|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst6|$00001|auto_generated|result_node[0]~0_combout\ = (\inst30|inst3|prueba\(4) & (!\inst30|inst6|$00001|auto_generated|_~0_combout\)) # (!\inst30|inst3|prueba\(4) & ((\inst30|inst6|$00001|auto_generated|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst6|$00001|auto_generated|_~0_combout\,
	datac => \inst30|inst3|prueba\(4),
	datad => \inst30|inst6|$00001|auto_generated|_~2_combout\,
	combout => \inst30|inst6|$00001|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X23_Y6_N20
\inst30|inst|data[88]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[88]~77_combout\ = (((\inst30|inst|data~85_combout\ & \inst30|inst3|nEX2~0_combout\)) # (!\inst30|inst|data[87]~20_combout\)) # (!\inst30|inst|data[86]~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[86]~64_combout\,
	datab => \inst30|inst|data[87]~20_combout\,
	datac => \inst30|inst|data~85_combout\,
	datad => \inst30|inst3|nEX2~0_combout\,
	combout => \inst30|inst|data[88]~77_combout\);

-- Location: FF_X23_Y6_N21
\inst30|inst3|vf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30|inst|data[88]~77_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst3|vf~q\);

-- Location: LCCOMB_X23_Y6_N8
\inst30|inst7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst7~combout\ = \inst30|inst6|$00001|auto_generated|result_node[0]~0_combout\ $ (\inst30|inst3|vf~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst6|$00001|auto_generated|result_node[0]~0_combout\,
	datad => \inst30|inst3|vf~q\,
	combout => \inst30|inst7~combout\);

-- Location: LCCOMB_X24_Y5_N2
\inst30|inst1|SELECTOR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst1|SELECTOR~0_combout\ = (\inst30|inst7~combout\ & (\inst30|inst1|SELECTOR~3_combout\)) # (!\inst30|inst7~combout\ & ((\inst30|inst1|SELECTOR~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst1|SELECTOR~3_combout\,
	datab => \inst30|inst7~combout\,
	datad => \inst30|inst1|SELECTOR~2_combout\,
	combout => \inst30|inst1|SELECTOR~0_combout\);

-- Location: FF_X23_Y5_N19
\inst30|inst2|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30|inst2|valor_interno[7]~23_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst2|valor_interno\(7));

-- Location: LCCOMB_X25_Y5_N10
\inst30|inst|data[81]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[81]~73_combout\ = ((!\inst30|inst|Equal0~7_combout\ & (\inst30|inst|Equal44~0_combout\ & \inst30|inst3|UPA[7]~10_combout\))) # (!\inst30|inst|data[81]~87_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|data[81]~87_combout\,
	datab => \inst30|inst|Equal0~7_combout\,
	datac => \inst30|inst|Equal44~0_combout\,
	datad => \inst30|inst3|UPA[7]~10_combout\,
	combout => \inst30|inst|data[81]~73_combout\);

-- Location: FF_X24_Y5_N27
\inst30|inst3|liga[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst30|inst|data[81]~73_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst3|liga\(7));

-- Location: FF_X24_Y5_N25
\inst11|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst3|nCRI~clkctrl_outclk\,
	asdata => \upa|Yupa[3]~40_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(7));

-- Location: LCCOMB_X24_Y5_N22
\inst4|Y[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Y[7]~4_combout\ = (\inst30|inst3|instruccion\(1) & (((!\inst30|inst3|instruccion\(0) & \inst11|valor_interno\(7))))) # (!\inst30|inst3|instruccion\(1) & ((\inst30|inst3|liga\(7)) # ((!\inst30|inst3|instruccion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|liga\(7),
	datab => \inst30|inst3|instruccion\(1),
	datac => \inst30|inst3|instruccion\(0),
	datad => \inst11|valor_interno\(7),
	combout => \inst4|Y[7]~4_combout\);

-- Location: LCCOMB_X24_Y5_N26
\inst30|inst5|$00000|auto_generated|result_node[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\ = (\inst30|inst1|SELECTOR~0_combout\ & ((\inst4|Y[7]~4_combout\))) # (!\inst30|inst1|SELECTOR~0_combout\ & (\inst30|inst2|valor_interno\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst1|SELECTOR~0_combout\,
	datab => \inst30|inst2|valor_interno\(7),
	datad => \inst4|Y[7]~4_combout\,
	combout => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\);

-- Location: LCCOMB_X27_Y8_N14
\inst30|inst|Equal65~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal65~1_combout\ = (\inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\ & 
-- \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst5|$00000|auto_generated|result_node[7]~7_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[4]~4_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[10]~10_combout\,
	combout => \inst30|inst|Equal65~1_combout\);

-- Location: LCCOMB_X25_Y5_N4
\inst30|inst|Equal65~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal65~2_combout\ = (\inst30|inst|Equal65~1_combout\ & (\inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\ & (\inst30|inst|Equal65~0_combout\ & !\inst30|inst5|$00000|auto_generated|result_node[11]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal65~1_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[8]~8_combout\,
	datac => \inst30|inst|Equal65~0_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[11]~11_combout\,
	combout => \inst30|inst|Equal65~2_combout\);

-- Location: LCCOMB_X25_Y8_N22
\inst30|inst|Equal66~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|Equal66~0_combout\ = (\inst30|inst|Equal65~2_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\ & (!\inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\ & 
-- \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal65~2_combout\,
	datab => \inst30|inst5|$00000|auto_generated|result_node[2]~2_combout\,
	datac => \inst30|inst5|$00000|auto_generated|result_node[1]~1_combout\,
	datad => \inst30|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst30|inst|Equal66~0_combout\);

-- Location: LCCOMB_X26_Y7_N12
\inst30|inst3|BD~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|BD~0_combout\ = (\RESET~input_o\ & (((\inst30|inst|Equal66~0_combout\ & \inst30|inst|data[42]~42_combout\)) # (!\inst30|inst|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst30|inst|Equal66~0_combout\,
	datac => \inst30|inst|data[42]~42_combout\,
	datad => \inst30|inst|Equal15~0_combout\,
	combout => \inst30|inst3|BD~0_combout\);

-- Location: LCCOMB_X27_Y6_N14
\AcumuladorA|B[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|B[7]~1_combout\ = (\inst30|inst3|EA[1]~13_combout\) # (((\inst30|inst3|EA[0]~7_combout\) # (\inst30|inst3|EA[0]~6_combout\)) # (!\inst30|inst3|nWA~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EA[1]~13_combout\,
	datab => \inst30|inst3|nWA~1_combout\,
	datac => \inst30|inst3|EA[0]~7_combout\,
	datad => \inst30|inst3|EA[0]~6_combout\,
	combout => \AcumuladorA|B[7]~1_combout\);

-- Location: LCCOMB_X24_Y6_N14
\upa|Yupa2[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~12_combout\ = (\inst13|TRI_STATE_C~0_combout\) # ((!\inst30|inst3|EB[0]~1_combout\ & (!\inst30|inst3|EB[1]~4_combout\ & \inst30|inst3|nWB~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EB[0]~1_combout\,
	datab => \inst13|TRI_STATE_C~0_combout\,
	datac => \inst30|inst3|EB[1]~4_combout\,
	datad => \inst30|inst3|nWB~4_combout\,
	combout => \upa|Yupa2[7]~12_combout\);

-- Location: LCCOMB_X27_Y6_N26
\upa|Yupa2[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~13_combout\ = (\RegAux|TRI_STATE_C~1_combout\) # ((\inst9|TRI_STATE_C~0_combout\) # ((\upa|Yupa2[7]~12_combout\) # (!\AcumuladorA|B[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|TRI_STATE_C~1_combout\,
	datab => \inst9|TRI_STATE_C~0_combout\,
	datac => \AcumuladorA|B[7]~1_combout\,
	datad => \upa|Yupa2[7]~12_combout\,
	combout => \upa|Yupa2[7]~13_combout\);

-- Location: LCCOMB_X27_Y6_N2
\upa|Yupa2[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~14_combout\ = (\upa|Yupa2[7]~13_combout\) # (((\inst30|inst3|BD~0_combout\ & \inst30|inst3|nRW~0_combout\)) # (!\inst30|inst3|nDUPA~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|BD~0_combout\,
	datab => \upa|Yupa2[7]~13_combout\,
	datac => \inst30|inst3|nRW~0_combout\,
	datad => \inst30|inst3|nDUPA~6_combout\,
	combout => \upa|Yupa2[7]~14_combout\);

-- Location: LCCOMB_X31_Y6_N14
\AcumuladorA|B[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|B[7]~0_combout\ = (\inst30|inst3|EA[1]~13_combout\) # (((\AcumuladorA|data_out\(7)) # (\inst30|inst3|EA[0]~8_combout\)) # (!\inst30|inst3|nWA~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|EA[1]~13_combout\,
	datab => \inst30|inst3|nWA~1_combout\,
	datac => \AcumuladorA|data_out\(7),
	datad => \inst30|inst3|EA[0]~8_combout\,
	combout => \AcumuladorA|B[7]~0_combout\);

-- Location: LCCOMB_X26_Y7_N2
\inst9|data_out[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|data_out[15]~feeder_combout\ = \upa|Yupa2[7]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \upa|Yupa2[7]~15_combout\,
	combout => \inst9|data_out[15]~feeder_combout\);

-- Location: FF_X26_Y7_N3
\inst9|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|data_out[15]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst9|data_out[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(15));

-- Location: FF_X26_Y7_N17
\inst13|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \upa|Yupa2[7]~15_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst13|data_out[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_out\(15));

-- Location: LCCOMB_X26_Y7_N16
\upa|Yupa2[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~9_combout\ = (\inst9|TRI_STATE_C~0_combout\ & (\inst9|data_out\(15) & ((\inst13|data_out\(15)) # (!\inst13|TRI_STATE_C~0_combout\)))) # (!\inst9|TRI_STATE_C~0_combout\ & (((\inst13|data_out\(15)) # (!\inst13|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|TRI_STATE_C~0_combout\,
	datab => \inst9|data_out\(15),
	datac => \inst13|data_out\(15),
	datad => \inst13|TRI_STATE_C~0_combout\,
	combout => \upa|Yupa2[7]~9_combout\);

-- Location: LCCOMB_X27_Y8_N16
\upa|Yupa2[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~10_combout\ = (\upa|Yupa2[7]~9_combout\ & ((\AcumuladorB|data_out\(7)) # (\AcumuladorB|B[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AcumuladorB|data_out\(7),
	datac => \AcumuladorB|B[7]~0_combout\,
	datad => \upa|Yupa2[7]~9_combout\,
	combout => \upa|Yupa2[7]~10_combout\);

-- Location: LCCOMB_X27_Y6_N4
\upa|Yupa2[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~11_combout\ = (\AcumuladorA|B[7]~0_combout\ & (\upa|Yupa2[7]~10_combout\ & ((\inst30|inst3|nDUPA~6_combout\) # (\upa|Banderas\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|nDUPA~6_combout\,
	datab => \upa|Banderas\(2),
	datac => \AcumuladorA|B[7]~0_combout\,
	datad => \upa|Yupa2[7]~10_combout\,
	combout => \upa|Yupa2[7]~11_combout\);

-- Location: LCCOMB_X32_Y6_N12
\upa|Yupa2[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~8_combout\ = (\RegAux|TRI_STATE_C~1_combout\ & (\RegAux|data_out\(15) & ((\inst1|PortR[7]~13_combout\) # (!\inst1|PortR~8_combout\)))) # (!\RegAux|TRI_STATE_C~1_combout\ & (((\inst1|PortR[7]~13_combout\) # (!\inst1|PortR~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|TRI_STATE_C~1_combout\,
	datab => \RegAux|data_out\(15),
	datac => \inst1|PortR[7]~13_combout\,
	datad => \inst1|PortR~8_combout\,
	combout => \upa|Yupa2[7]~8_combout\);

-- Location: LCCOMB_X27_Y6_N24
\upa|Yupa2[7]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \upa|Yupa2[7]~15_combout\ = ((\upa|Yupa2[7]~11_combout\ & \upa|Yupa2[7]~8_combout\)) # (!\upa|Yupa2[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upa|Yupa2[7]~14_combout\,
	datac => \upa|Yupa2[7]~11_combout\,
	datad => \upa|Yupa2[7]~8_combout\,
	combout => \upa|Yupa2[7]~15_combout\);

-- Location: LCCOMB_X31_Y6_N4
\AcumuladorA|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorA|data_out[7]~0_combout\ = (\inst30|inst3|EA[0]~8_combout\ & ((\AcumuladorA|C[7]~10_combout\))) # (!\inst30|inst3|EA[0]~8_combout\ & (\upa|Yupa2[7]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upa|Yupa2[7]~15_combout\,
	datab => \AcumuladorA|C[7]~10_combout\,
	datad => \inst30|inst3|EA[0]~8_combout\,
	combout => \AcumuladorA|data_out[7]~0_combout\);

-- Location: FF_X31_Y6_N5
\AcumuladorA|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AcumuladorA|data_out[7]~0_combout\,
	asdata => \upa|Yupa[7]~39_combout\,
	sload => \inst30|inst3|EA[1]~13_combout\,
	ena => \AcumuladorA|data_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AcumuladorA|data_out\(7));

-- Location: LCCOMB_X31_Y6_N10
\AcumuladorB|C[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AcumuladorB|C[7]~16_combout\ = (\inst30|inst3|nWB~4_combout\ & (\inst30|inst3|EB[0]~1_combout\ & !\inst30|inst3|EB[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst3|nWB~4_combout\,
	datac => \inst30|inst3|EB[0]~1_combout\,
	datad => \inst30|inst3|EB[1]~4_combout\,
	combout => \AcumuladorB|C[7]~16_combout\);

-- Location: LCCOMB_X24_Y3_N30
\RegAux|WideOr0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~3_combout\ = (\RegAux|data_out\(1)) # ((\RegAux|data_out\(3)) # ((\RegAux|data_out\(2)) # (\RegAux|data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(1),
	datab => \RegAux|data_out\(3),
	datac => \RegAux|data_out\(2),
	datad => \RegAux|data_out\(0),
	combout => \RegAux|WideOr0~3_combout\);

-- Location: LCCOMB_X32_Y6_N16
\RegAux|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~0_combout\ = (\RegAux|data_out\(14)) # ((\RegAux|data_out\(15)) # ((\RegAux|data_out\(13)) # (\RegAux|data_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(14),
	datab => \RegAux|data_out\(15),
	datac => \RegAux|data_out\(13),
	datad => \RegAux|data_out\(12),
	combout => \RegAux|WideOr0~0_combout\);

-- Location: LCCOMB_X32_Y6_N22
\RegAux|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~1_combout\ = (\RegAux|data_out\(8)) # ((\RegAux|data_out\(11)) # ((\RegAux|data_out\(9)) # (\RegAux|data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(8),
	datab => \RegAux|data_out\(11),
	datac => \RegAux|data_out\(9),
	datad => \RegAux|data_out\(10),
	combout => \RegAux|WideOr0~1_combout\);

-- Location: LCCOMB_X32_Y6_N20
\RegAux|WideOr0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegAux|WideOr0~2_combout\ = (\RegAux|data_out\(6)) # ((\RegAux|data_out\(5)) # ((\RegAux|data_out\(7)) # (\RegAux|data_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|data_out\(6),
	datab => \RegAux|data_out\(5),
	datac => \RegAux|data_out\(7),
	datad => \RegAux|data_out\(4),
	combout => \RegAux|WideOr0~2_combout\);

-- Location: LCCOMB_X32_Y6_N6
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

-- Location: LCCOMB_X25_Y8_N24
\inst30|inst|data[42]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst|data[42]~78_combout\ = (\inst30|inst|data[42]~41_combout\ & \inst30|inst3|EB[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst|data[42]~41_combout\,
	datad => \inst30|inst3|EB[1]~0_combout\,
	combout => \inst30|inst|data[42]~78_combout\);

-- Location: LCCOMB_X29_Y8_N22
\inst30|inst3|AP[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30|inst3|AP[0]~0_combout\ = (\RESET~input_o\ & ((\inst30|inst|Equal32~1_combout\) # ((\inst30|inst|Equal53~2_combout\ & \inst30|inst|data[42]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|Equal53~2_combout\,
	datab => \RESET~input_o\,
	datac => \inst30|inst|Equal32~1_combout\,
	datad => \inst30|inst|data[42]~78_combout\,
	combout => \inst30|inst3|AP[0]~0_combout\);

-- Location: LCCOMB_X37_Y4_N0
\RegPila|data_out[0]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPila|data_out[0]~45_combout\ = \inst30|inst3|AP[0]~0_combout\ $ (\RegPila|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst3|AP[0]~0_combout\,
	datac => \RegPila|data_out\(0),
	combout => \RegPila|data_out[0]~45_combout\);

-- Location: FF_X37_Y4_N1
\RegPila|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPila|data_out[0]~45_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPila|data_out\(0));

-- Location: LCCOMB_X37_Y4_N2
\RegPila|data_out[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPila|data_out[1]~15_combout\ = (\RegPila|data_out\(1) & (\RegPila|data_out\(0) $ (VCC))) # (!\RegPila|data_out\(1) & (\RegPila|data_out\(0) & VCC))
-- \RegPila|data_out[1]~16\ = CARRY((\RegPila|data_out\(1) & \RegPila|data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPila|data_out\(1),
	datab => \RegPila|data_out\(0),
	datad => VCC,
	combout => \RegPila|data_out[1]~15_combout\,
	cout => \RegPila|data_out[1]~16\);

-- Location: FF_X37_Y4_N3
\RegPila|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPila|data_out[1]~15_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|AP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPila|data_out\(1));

-- Location: LCCOMB_X37_Y4_N4
\RegPila|data_out[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPila|data_out[2]~17_combout\ = (\RegPila|data_out\(2) & (!\RegPila|data_out[1]~16\)) # (!\RegPila|data_out\(2) & ((\RegPila|data_out[1]~16\) # (GND)))
-- \RegPila|data_out[2]~18\ = CARRY((!\RegPila|data_out[1]~16\) # (!\RegPila|data_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPila|data_out\(2),
	datad => VCC,
	cin => \RegPila|data_out[1]~16\,
	combout => \RegPila|data_out[2]~17_combout\,
	cout => \RegPila|data_out[2]~18\);

-- Location: FF_X37_Y4_N5
\RegPila|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPila|data_out[2]~17_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|AP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPila|data_out\(2));

-- Location: LCCOMB_X37_Y4_N6
\RegPila|data_out[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPila|data_out[3]~19_combout\ = (\RegPila|data_out\(3) & (\RegPila|data_out[2]~18\ $ (GND))) # (!\RegPila|data_out\(3) & (!\RegPila|data_out[2]~18\ & VCC))
-- \RegPila|data_out[3]~20\ = CARRY((\RegPila|data_out\(3) & !\RegPila|data_out[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPila|data_out\(3),
	datad => VCC,
	cin => \RegPila|data_out[2]~18\,
	combout => \RegPila|data_out[3]~19_combout\,
	cout => \RegPila|data_out[3]~20\);

-- Location: FF_X37_Y4_N7
\RegPila|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPila|data_out[3]~19_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|AP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPila|data_out\(3));

-- Location: LCCOMB_X37_Y4_N8
\RegPila|data_out[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPila|data_out[4]~21_combout\ = (\RegPila|data_out\(4) & (!\RegPila|data_out[3]~20\)) # (!\RegPila|data_out\(4) & ((\RegPila|data_out[3]~20\) # (GND)))
-- \RegPila|data_out[4]~22\ = CARRY((!\RegPila|data_out[3]~20\) # (!\RegPila|data_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPila|data_out\(4),
	datad => VCC,
	cin => \RegPila|data_out[3]~20\,
	combout => \RegPila|data_out[4]~21_combout\,
	cout => \RegPila|data_out[4]~22\);

-- Location: FF_X37_Y4_N9
\RegPila|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPila|data_out[4]~21_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|AP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPila|data_out\(4));

-- Location: LCCOMB_X37_Y4_N10
\RegPila|data_out[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPila|data_out[5]~23_combout\ = (\RegPila|data_out\(5) & (\RegPila|data_out[4]~22\ $ (GND))) # (!\RegPila|data_out\(5) & (!\RegPila|data_out[4]~22\ & VCC))
-- \RegPila|data_out[5]~24\ = CARRY((\RegPila|data_out\(5) & !\RegPila|data_out[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPila|data_out\(5),
	datad => VCC,
	cin => \RegPila|data_out[4]~22\,
	combout => \RegPila|data_out[5]~23_combout\,
	cout => \RegPila|data_out[5]~24\);

-- Location: FF_X37_Y4_N11
\RegPila|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPila|data_out[5]~23_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|AP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPila|data_out\(5));

-- Location: LCCOMB_X37_Y4_N12
\RegPila|data_out[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPila|data_out[6]~25_combout\ = (\RegPila|data_out\(6) & (!\RegPila|data_out[5]~24\)) # (!\RegPila|data_out\(6) & ((\RegPila|data_out[5]~24\) # (GND)))
-- \RegPila|data_out[6]~26\ = CARRY((!\RegPila|data_out[5]~24\) # (!\RegPila|data_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPila|data_out\(6),
	datad => VCC,
	cin => \RegPila|data_out[5]~24\,
	combout => \RegPila|data_out[6]~25_combout\,
	cout => \RegPila|data_out[6]~26\);

-- Location: FF_X37_Y4_N13
\RegPila|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPila|data_out[6]~25_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|AP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPila|data_out\(6));

-- Location: LCCOMB_X37_Y4_N14
\RegPila|data_out[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPila|data_out[7]~27_combout\ = (\RegPila|data_out\(7) & (\RegPila|data_out[6]~26\ $ (GND))) # (!\RegPila|data_out\(7) & (!\RegPila|data_out[6]~26\ & VCC))
-- \RegPila|data_out[7]~28\ = CARRY((\RegPila|data_out\(7) & !\RegPila|data_out[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPila|data_out\(7),
	datad => VCC,
	cin => \RegPila|data_out[6]~26\,
	combout => \RegPila|data_out[7]~27_combout\,
	cout => \RegPila|data_out[7]~28\);

-- Location: FF_X37_Y4_N15
\RegPila|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPila|data_out[7]~27_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|AP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPila|data_out\(7));

-- Location: LCCOMB_X37_Y4_N16
\RegPila|data_out[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPila|data_out[8]~29_combout\ = (\RegPila|data_out\(8) & (!\RegPila|data_out[7]~28\)) # (!\RegPila|data_out\(8) & ((\RegPila|data_out[7]~28\) # (GND)))
-- \RegPila|data_out[8]~30\ = CARRY((!\RegPila|data_out[7]~28\) # (!\RegPila|data_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPila|data_out\(8),
	datad => VCC,
	cin => \RegPila|data_out[7]~28\,
	combout => \RegPila|data_out[8]~29_combout\,
	cout => \RegPila|data_out[8]~30\);

-- Location: FF_X37_Y4_N17
\RegPila|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPila|data_out[8]~29_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|AP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPila|data_out\(8));

-- Location: LCCOMB_X37_Y4_N18
\RegPila|data_out[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPila|data_out[9]~31_combout\ = (\RegPila|data_out\(9) & (\RegPila|data_out[8]~30\ $ (GND))) # (!\RegPila|data_out\(9) & (!\RegPila|data_out[8]~30\ & VCC))
-- \RegPila|data_out[9]~32\ = CARRY((\RegPila|data_out\(9) & !\RegPila|data_out[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPila|data_out\(9),
	datad => VCC,
	cin => \RegPila|data_out[8]~30\,
	combout => \RegPila|data_out[9]~31_combout\,
	cout => \RegPila|data_out[9]~32\);

-- Location: FF_X37_Y4_N19
\RegPila|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPila|data_out[9]~31_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|AP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPila|data_out\(9));

-- Location: LCCOMB_X37_Y4_N20
\RegPila|data_out[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPila|data_out[10]~33_combout\ = (\RegPila|data_out\(10) & (!\RegPila|data_out[9]~32\)) # (!\RegPila|data_out\(10) & ((\RegPila|data_out[9]~32\) # (GND)))
-- \RegPila|data_out[10]~34\ = CARRY((!\RegPila|data_out[9]~32\) # (!\RegPila|data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPila|data_out\(10),
	datad => VCC,
	cin => \RegPila|data_out[9]~32\,
	combout => \RegPila|data_out[10]~33_combout\,
	cout => \RegPila|data_out[10]~34\);

-- Location: FF_X37_Y4_N21
\RegPila|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPila|data_out[10]~33_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|AP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPila|data_out\(10));

-- Location: LCCOMB_X37_Y4_N22
\RegPila|data_out[11]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPila|data_out[11]~35_combout\ = (\RegPila|data_out\(11) & (\RegPila|data_out[10]~34\ $ (GND))) # (!\RegPila|data_out\(11) & (!\RegPila|data_out[10]~34\ & VCC))
-- \RegPila|data_out[11]~36\ = CARRY((\RegPila|data_out\(11) & !\RegPila|data_out[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPila|data_out\(11),
	datad => VCC,
	cin => \RegPila|data_out[10]~34\,
	combout => \RegPila|data_out[11]~35_combout\,
	cout => \RegPila|data_out[11]~36\);

-- Location: FF_X37_Y4_N23
\RegPila|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPila|data_out[11]~35_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|AP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPila|data_out\(11));

-- Location: LCCOMB_X37_Y4_N24
\RegPila|data_out[12]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPila|data_out[12]~37_combout\ = (\RegPila|data_out\(12) & (!\RegPila|data_out[11]~36\)) # (!\RegPila|data_out\(12) & ((\RegPila|data_out[11]~36\) # (GND)))
-- \RegPila|data_out[12]~38\ = CARRY((!\RegPila|data_out[11]~36\) # (!\RegPila|data_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPila|data_out\(12),
	datad => VCC,
	cin => \RegPila|data_out[11]~36\,
	combout => \RegPila|data_out[12]~37_combout\,
	cout => \RegPila|data_out[12]~38\);

-- Location: FF_X37_Y4_N25
\RegPila|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPila|data_out[12]~37_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|AP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPila|data_out\(12));

-- Location: LCCOMB_X37_Y4_N26
\RegPila|data_out[13]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPila|data_out[13]~39_combout\ = (\RegPila|data_out\(13) & (\RegPila|data_out[12]~38\ $ (GND))) # (!\RegPila|data_out\(13) & (!\RegPila|data_out[12]~38\ & VCC))
-- \RegPila|data_out[13]~40\ = CARRY((\RegPila|data_out\(13) & !\RegPila|data_out[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPila|data_out\(13),
	datad => VCC,
	cin => \RegPila|data_out[12]~38\,
	combout => \RegPila|data_out[13]~39_combout\,
	cout => \RegPila|data_out[13]~40\);

-- Location: FF_X37_Y4_N27
\RegPila|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPila|data_out[13]~39_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|AP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPila|data_out\(13));

-- Location: LCCOMB_X37_Y4_N28
\RegPila|data_out[14]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPila|data_out[14]~41_combout\ = (\RegPila|data_out\(14) & (!\RegPila|data_out[13]~40\)) # (!\RegPila|data_out\(14) & ((\RegPila|data_out[13]~40\) # (GND)))
-- \RegPila|data_out[14]~42\ = CARRY((!\RegPila|data_out[13]~40\) # (!\RegPila|data_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPila|data_out\(14),
	datad => VCC,
	cin => \RegPila|data_out[13]~40\,
	combout => \RegPila|data_out[14]~41_combout\,
	cout => \RegPila|data_out[14]~42\);

-- Location: FF_X37_Y4_N29
\RegPila|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPila|data_out[14]~41_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|AP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPila|data_out\(14));

-- Location: LCCOMB_X37_Y4_N30
\RegPila|data_out[15]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPila|data_out[15]~43_combout\ = \RegPila|data_out\(15) $ (!\RegPila|data_out[14]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPila|data_out\(15),
	cin => \RegPila|data_out[14]~42\,
	combout => \RegPila|data_out[15]~43_combout\);

-- Location: FF_X37_Y4_N31
\RegPila|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RegPila|data_out[15]~43_combout\,
	clrn => \RESET~input_o\,
	ena => \inst30|inst3|AP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPila|data_out\(15));

-- Location: LCCOMB_X31_Y5_N16
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

-- Location: LCCOMB_X30_Y5_N10
\RegPC|Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~39_combout\ = (\RegPC|Equal0~0_combout\ & ((\RegPC|Add0~16_combout\))) # (!\RegPC|Equal0~0_combout\ & (\upa|Yupa2[0]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|Equal0~0_combout\,
	datac => \upa|Yupa2[0]~50_combout\,
	datad => \RegPC|Add0~16_combout\,
	combout => \RegPC|Add0~39_combout\);

-- Location: LCCOMB_X30_Y5_N2
\RegPC|data_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|data_out~0_combout\ = (\inst30|inst3|PC[0]~6_combout\) # ((\inst30|inst3|PC[0]~7_combout\) # ((\RESET~input_o\ & \inst30|inst|Equal69~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst30|inst3|PC[0]~6_combout\,
	datac => \inst30|inst3|PC[0]~7_combout\,
	datad => \inst30|inst|Equal69~0_combout\,
	combout => \RegPC|data_out~0_combout\);

-- Location: FF_X30_Y5_N11
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

-- Location: LCCOMB_X31_Y5_N18
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

-- Location: LCCOMB_X30_Y5_N28
\RegPC|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~38_combout\ = (\RegPC|Equal0~0_combout\ & ((\RegPC|Add0~18_combout\))) # (!\RegPC|Equal0~0_combout\ & (\upa|Yupa2[1]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|Equal0~0_combout\,
	datac => \upa|Yupa2[1]~45_combout\,
	datad => \RegPC|Add0~18_combout\,
	combout => \RegPC|Add0~38_combout\);

-- Location: FF_X30_Y5_N29
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

-- Location: LCCOMB_X31_Y5_N20
\RegPC|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~20_combout\ = (\RegPC|data_out\(10) & (\RegPC|Add0~19\ $ (GND))) # (!\RegPC|data_out\(10) & (!\RegPC|Add0~19\ & VCC))
-- \RegPC|Add0~21\ = CARRY((\RegPC|data_out\(10) & !\RegPC|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|data_out\(10),
	datad => VCC,
	cin => \RegPC|Add0~19\,
	combout => \RegPC|Add0~20_combout\,
	cout => \RegPC|Add0~21\);

-- Location: LCCOMB_X30_Y5_N14
\RegPC|Add0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~37_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~20_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa2[2]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|Equal0~0_combout\,
	datac => \RegPC|Add0~20_combout\,
	datad => \upa|Yupa2[2]~40_combout\,
	combout => \RegPC|Add0~37_combout\);

-- Location: FF_X30_Y5_N15
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

-- Location: LCCOMB_X31_Y5_N22
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

-- Location: LCCOMB_X30_Y5_N8
\RegPC|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~36_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~22_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa2[3]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Add0~22_combout\,
	datab => \RegPC|Equal0~0_combout\,
	datad => \upa|Yupa2[3]~35_combout\,
	combout => \RegPC|Add0~36_combout\);

-- Location: FF_X30_Y5_N9
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

-- Location: LCCOMB_X31_Y5_N24
\RegPC|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~24_combout\ = (\RegPC|data_out\(12) & (\RegPC|Add0~23\ $ (GND))) # (!\RegPC|data_out\(12) & (!\RegPC|Add0~23\ & VCC))
-- \RegPC|Add0~25\ = CARRY((\RegPC|data_out\(12) & !\RegPC|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(12),
	datad => VCC,
	cin => \RegPC|Add0~23\,
	combout => \RegPC|Add0~24_combout\,
	cout => \RegPC|Add0~25\);

-- Location: LCCOMB_X30_Y5_N18
\RegPC|Add0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~35_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~24_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa2[4]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|Equal0~0_combout\,
	datac => \RegPC|Add0~24_combout\,
	datad => \upa|Yupa2[4]~30_combout\,
	combout => \RegPC|Add0~35_combout\);

-- Location: FF_X30_Y5_N19
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

-- Location: LCCOMB_X31_Y5_N26
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

-- Location: LCCOMB_X30_Y5_N20
\RegPC|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~34_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~26_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa2[5]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|Add0~26_combout\,
	datab => \RegPC|Equal0~0_combout\,
	datad => \upa|Yupa2[5]~25_combout\,
	combout => \RegPC|Add0~34_combout\);

-- Location: FF_X30_Y5_N21
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

-- Location: LCCOMB_X31_Y5_N28
\RegPC|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~28_combout\ = (\RegPC|data_out\(14) & (\RegPC|Add0~27\ $ (GND))) # (!\RegPC|data_out\(14) & (!\RegPC|Add0~27\ & VCC))
-- \RegPC|Add0~29\ = CARRY((\RegPC|data_out\(14) & !\RegPC|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|data_out\(14),
	datad => VCC,
	cin => \RegPC|Add0~27\,
	combout => \RegPC|Add0~28_combout\,
	cout => \RegPC|Add0~29\);

-- Location: LCCOMB_X30_Y5_N6
\RegPC|Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~33_combout\ = (\RegPC|Equal0~0_combout\ & ((\RegPC|Add0~28_combout\))) # (!\RegPC|Equal0~0_combout\ & (\upa|Yupa2[6]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|Equal0~0_combout\,
	datac => \upa|Yupa2[6]~20_combout\,
	datad => \RegPC|Add0~28_combout\,
	combout => \RegPC|Add0~33_combout\);

-- Location: FF_X30_Y5_N7
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

-- Location: LCCOMB_X31_Y5_N30
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

-- Location: LCCOMB_X30_Y5_N24
\RegPC|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegPC|Add0~32_combout\ = (\RegPC|Equal0~0_combout\ & (\RegPC|Add0~30_combout\)) # (!\RegPC|Equal0~0_combout\ & ((\upa|Yupa2[7]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|Equal0~0_combout\,
	datac => \RegPC|Add0~30_combout\,
	datad => \upa|Yupa2[7]~15_combout\,
	combout => \RegPC|Add0~32_combout\);

-- Location: FF_X30_Y5_N25
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

-- Location: IOIBUF_X78_Y44_N8
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

-- Location: IOIBUF_X66_Y54_N1
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

ww_selector <= \selector~output_o\;

ww_muxentra <= \muxentra~output_o\;

ww_vf <= \vf~output_o\;

ww_A(7) <= \A[7]~output_o\;

ww_A(6) <= \A[6]~output_o\;

ww_A(5) <= \A[5]~output_o\;

ww_A(4) <= \A[4]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(0) <= \A[0]~output_o\;

ww_B(7) <= \B[7]~output_o\;

ww_B(6) <= \B[6]~output_o\;

ww_B(5) <= \B[5]~output_o\;

ww_B(4) <= \B[4]~output_o\;

ww_B(3) <= \B[3]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(0) <= \B[0]~output_o\;

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

ww_prueba(4) <= \prueba[4]~output_o\;

ww_prueba(3) <= \prueba[3]~output_o\;

ww_prueba(2) <= \prueba[2]~output_o\;

ww_prueba(1) <= \prueba[1]~output_o\;

ww_prueba(0) <= \prueba[0]~output_o\;

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


