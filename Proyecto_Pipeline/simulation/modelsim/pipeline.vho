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

-- DATE "11/25/2019 14:23:28"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
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

ENTITY 	pipeline IS
    PORT (
	n : OUT std_logic;
	btn_clk : IN std_logic;
	RELOJ : IN std_logic;
	RESET : IN std_logic;
	z : OUT std_logic;
	v : OUT std_logic;
	c : OUT std_logic;
	h : OUT std_logic;
	i : OUT std_logic;
	SelCtrl : OUT std_logic;
	SelD : OUT std_logic;
	ACCA_D : OUT std_logic_vector(15 DOWNTO 0);
	ACCB_D : OUT std_logic_vector(15 DOWNTO 0);
	AUX_D : OUT std_logic_vector(15 DOWNTO 0);
	disp1 : OUT std_logic_vector(6 DOWNTO 0);
	sw_selectReg : IN std_logic;
	disp2 : OUT std_logic_vector(6 DOWNTO 0);
	disp3 : OUT std_logic_vector(6 DOWNTO 0);
	disp4 : OUT std_logic_vector(6 DOWNTO 0);
	disp5 : OUT std_logic_vector(6 DOWNTO 0);
	disp6 : OUT std_logic_vector(6 DOWNTO 0);
	IX_D : OUT std_logic_vector(15 DOWNTO 0);
	IY_D : OUT std_logic_vector(15 DOWNTO 0);
	SP_D : OUT std_logic_vector(15 DOWNTO 0)
	);
END pipeline;

-- Design Ports Information
-- n	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelCtrl	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelD	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[15]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[14]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[13]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[12]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[11]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[10]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[9]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[8]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[7]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[5]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[4]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[3]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[2]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[15]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[14]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[13]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[12]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[11]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[10]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[9]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[8]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[7]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[6]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[5]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[3]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[1]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[0]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[15]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[14]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[13]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[12]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[11]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[10]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[9]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[8]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[7]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[6]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[5]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[4]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[6]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[5]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[4]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[3]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[0]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[6]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[5]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[4]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[3]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[2]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[1]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[0]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[3]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[2]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[0]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[6]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[5]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[4]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[3]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[1]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[0]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[6]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[4]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[2]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[1]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[0]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[6]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[5]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[4]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[3]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[2]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[1]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[15]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[14]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[13]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[12]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[11]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[10]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[9]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[8]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[7]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[2]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[15]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[14]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[13]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[12]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[11]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[10]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[9]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[8]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[7]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[6]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[4]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[3]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[1]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[15]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[14]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[13]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[12]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[11]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[10]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[9]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[8]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[5]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_selectReg	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_clk	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RELOJ	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pipeline IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_n : std_logic;
SIGNAL ww_btn_clk : std_logic;
SIGNAL ww_RELOJ : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_v : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_h : std_logic;
SIGNAL ww_i : std_logic;
SIGNAL ww_SelCtrl : std_logic;
SIGNAL ww_SelD : std_logic;
SIGNAL ww_ACCA_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ACCB_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_AUX_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sw_selectReg : std_logic;
SIGNAL ww_disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_IX_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IY_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SP_D : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|inst3|vi~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst|opres[16]~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|ESIGUIENTE~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \n~output_o\ : std_logic;
SIGNAL \z~output_o\ : std_logic;
SIGNAL \v~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \h~output_o\ : std_logic;
SIGNAL \i~output_o\ : std_logic;
SIGNAL \SelCtrl~output_o\ : std_logic;
SIGNAL \SelD~output_o\ : std_logic;
SIGNAL \ACCA_D[15]~output_o\ : std_logic;
SIGNAL \ACCA_D[14]~output_o\ : std_logic;
SIGNAL \ACCA_D[13]~output_o\ : std_logic;
SIGNAL \ACCA_D[12]~output_o\ : std_logic;
SIGNAL \ACCA_D[11]~output_o\ : std_logic;
SIGNAL \ACCA_D[10]~output_o\ : std_logic;
SIGNAL \ACCA_D[9]~output_o\ : std_logic;
SIGNAL \ACCA_D[8]~output_o\ : std_logic;
SIGNAL \ACCA_D[7]~output_o\ : std_logic;
SIGNAL \ACCA_D[6]~output_o\ : std_logic;
SIGNAL \ACCA_D[5]~output_o\ : std_logic;
SIGNAL \ACCA_D[4]~output_o\ : std_logic;
SIGNAL \ACCA_D[3]~output_o\ : std_logic;
SIGNAL \ACCA_D[2]~output_o\ : std_logic;
SIGNAL \ACCA_D[1]~output_o\ : std_logic;
SIGNAL \ACCA_D[0]~output_o\ : std_logic;
SIGNAL \ACCB_D[15]~output_o\ : std_logic;
SIGNAL \ACCB_D[14]~output_o\ : std_logic;
SIGNAL \ACCB_D[13]~output_o\ : std_logic;
SIGNAL \ACCB_D[12]~output_o\ : std_logic;
SIGNAL \ACCB_D[11]~output_o\ : std_logic;
SIGNAL \ACCB_D[10]~output_o\ : std_logic;
SIGNAL \ACCB_D[9]~output_o\ : std_logic;
SIGNAL \ACCB_D[8]~output_o\ : std_logic;
SIGNAL \ACCB_D[7]~output_o\ : std_logic;
SIGNAL \ACCB_D[6]~output_o\ : std_logic;
SIGNAL \ACCB_D[5]~output_o\ : std_logic;
SIGNAL \ACCB_D[4]~output_o\ : std_logic;
SIGNAL \ACCB_D[3]~output_o\ : std_logic;
SIGNAL \ACCB_D[2]~output_o\ : std_logic;
SIGNAL \ACCB_D[1]~output_o\ : std_logic;
SIGNAL \ACCB_D[0]~output_o\ : std_logic;
SIGNAL \AUX_D[15]~output_o\ : std_logic;
SIGNAL \AUX_D[14]~output_o\ : std_logic;
SIGNAL \AUX_D[13]~output_o\ : std_logic;
SIGNAL \AUX_D[12]~output_o\ : std_logic;
SIGNAL \AUX_D[11]~output_o\ : std_logic;
SIGNAL \AUX_D[10]~output_o\ : std_logic;
SIGNAL \AUX_D[9]~output_o\ : std_logic;
SIGNAL \AUX_D[8]~output_o\ : std_logic;
SIGNAL \AUX_D[7]~output_o\ : std_logic;
SIGNAL \AUX_D[6]~output_o\ : std_logic;
SIGNAL \AUX_D[5]~output_o\ : std_logic;
SIGNAL \AUX_D[4]~output_o\ : std_logic;
SIGNAL \AUX_D[3]~output_o\ : std_logic;
SIGNAL \AUX_D[2]~output_o\ : std_logic;
SIGNAL \AUX_D[1]~output_o\ : std_logic;
SIGNAL \AUX_D[0]~output_o\ : std_logic;
SIGNAL \disp1[6]~output_o\ : std_logic;
SIGNAL \disp1[5]~output_o\ : std_logic;
SIGNAL \disp1[4]~output_o\ : std_logic;
SIGNAL \disp1[3]~output_o\ : std_logic;
SIGNAL \disp1[2]~output_o\ : std_logic;
SIGNAL \disp1[1]~output_o\ : std_logic;
SIGNAL \disp1[0]~output_o\ : std_logic;
SIGNAL \disp2[6]~output_o\ : std_logic;
SIGNAL \disp2[5]~output_o\ : std_logic;
SIGNAL \disp2[4]~output_o\ : std_logic;
SIGNAL \disp2[3]~output_o\ : std_logic;
SIGNAL \disp2[2]~output_o\ : std_logic;
SIGNAL \disp2[1]~output_o\ : std_logic;
SIGNAL \disp2[0]~output_o\ : std_logic;
SIGNAL \disp3[6]~output_o\ : std_logic;
SIGNAL \disp3[5]~output_o\ : std_logic;
SIGNAL \disp3[4]~output_o\ : std_logic;
SIGNAL \disp3[3]~output_o\ : std_logic;
SIGNAL \disp3[2]~output_o\ : std_logic;
SIGNAL \disp3[1]~output_o\ : std_logic;
SIGNAL \disp3[0]~output_o\ : std_logic;
SIGNAL \disp4[6]~output_o\ : std_logic;
SIGNAL \disp4[5]~output_o\ : std_logic;
SIGNAL \disp4[4]~output_o\ : std_logic;
SIGNAL \disp4[3]~output_o\ : std_logic;
SIGNAL \disp4[2]~output_o\ : std_logic;
SIGNAL \disp4[1]~output_o\ : std_logic;
SIGNAL \disp4[0]~output_o\ : std_logic;
SIGNAL \disp5[6]~output_o\ : std_logic;
SIGNAL \disp5[5]~output_o\ : std_logic;
SIGNAL \disp5[4]~output_o\ : std_logic;
SIGNAL \disp5[3]~output_o\ : std_logic;
SIGNAL \disp5[2]~output_o\ : std_logic;
SIGNAL \disp5[1]~output_o\ : std_logic;
SIGNAL \disp5[0]~output_o\ : std_logic;
SIGNAL \disp6[6]~output_o\ : std_logic;
SIGNAL \disp6[5]~output_o\ : std_logic;
SIGNAL \disp6[4]~output_o\ : std_logic;
SIGNAL \disp6[3]~output_o\ : std_logic;
SIGNAL \disp6[2]~output_o\ : std_logic;
SIGNAL \disp6[1]~output_o\ : std_logic;
SIGNAL \disp6[0]~output_o\ : std_logic;
SIGNAL \IX_D[15]~output_o\ : std_logic;
SIGNAL \IX_D[14]~output_o\ : std_logic;
SIGNAL \IX_D[13]~output_o\ : std_logic;
SIGNAL \IX_D[12]~output_o\ : std_logic;
SIGNAL \IX_D[11]~output_o\ : std_logic;
SIGNAL \IX_D[10]~output_o\ : std_logic;
SIGNAL \IX_D[9]~output_o\ : std_logic;
SIGNAL \IX_D[8]~output_o\ : std_logic;
SIGNAL \IX_D[7]~output_o\ : std_logic;
SIGNAL \IX_D[6]~output_o\ : std_logic;
SIGNAL \IX_D[5]~output_o\ : std_logic;
SIGNAL \IX_D[4]~output_o\ : std_logic;
SIGNAL \IX_D[3]~output_o\ : std_logic;
SIGNAL \IX_D[2]~output_o\ : std_logic;
SIGNAL \IX_D[1]~output_o\ : std_logic;
SIGNAL \IX_D[0]~output_o\ : std_logic;
SIGNAL \IY_D[15]~output_o\ : std_logic;
SIGNAL \IY_D[14]~output_o\ : std_logic;
SIGNAL \IY_D[13]~output_o\ : std_logic;
SIGNAL \IY_D[12]~output_o\ : std_logic;
SIGNAL \IY_D[11]~output_o\ : std_logic;
SIGNAL \IY_D[10]~output_o\ : std_logic;
SIGNAL \IY_D[9]~output_o\ : std_logic;
SIGNAL \IY_D[8]~output_o\ : std_logic;
SIGNAL \IY_D[7]~output_o\ : std_logic;
SIGNAL \IY_D[6]~output_o\ : std_logic;
SIGNAL \IY_D[5]~output_o\ : std_logic;
SIGNAL \IY_D[4]~output_o\ : std_logic;
SIGNAL \IY_D[3]~output_o\ : std_logic;
SIGNAL \IY_D[2]~output_o\ : std_logic;
SIGNAL \IY_D[1]~output_o\ : std_logic;
SIGNAL \IY_D[0]~output_o\ : std_logic;
SIGNAL \SP_D[15]~output_o\ : std_logic;
SIGNAL \SP_D[14]~output_o\ : std_logic;
SIGNAL \SP_D[13]~output_o\ : std_logic;
SIGNAL \SP_D[12]~output_o\ : std_logic;
SIGNAL \SP_D[11]~output_o\ : std_logic;
SIGNAL \SP_D[10]~output_o\ : std_logic;
SIGNAL \SP_D[9]~output_o\ : std_logic;
SIGNAL \SP_D[8]~output_o\ : std_logic;
SIGNAL \SP_D[7]~output_o\ : std_logic;
SIGNAL \SP_D[6]~output_o\ : std_logic;
SIGNAL \SP_D[5]~output_o\ : std_logic;
SIGNAL \SP_D[4]~output_o\ : std_logic;
SIGNAL \SP_D[3]~output_o\ : std_logic;
SIGNAL \SP_D[2]~output_o\ : std_logic;
SIGNAL \SP_D[1]~output_o\ : std_logic;
SIGNAL \SP_D[0]~output_o\ : std_logic;
SIGNAL \RELOJ~input_o\ : std_logic;
SIGNAL \btn_clk~input_o\ : std_logic;
SIGNAL \inst6|ESIGUIENTE~q\ : std_logic;
SIGNAL \inst6|ESIGUIENTE~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst3|SALIDA[0]~6_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[0]~7\ : std_logic;
SIGNAL \inst|inst3|SALIDA[1]~8_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[1]~9\ : std_logic;
SIGNAL \inst|inst3|SALIDA[2]~10_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst1|Mux8~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux8~2_combout\ : std_logic;
SIGNAL \inst|inst1|Mux11~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux11~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux11~2_combout\ : std_logic;
SIGNAL \inst|inst1|Mux13~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux13~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux13~2_combout\ : std_logic;
SIGNAL \inst|inst1|Mux12~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux12~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux12~2_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal0~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux14~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux14~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux14~2_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal3~0_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal3~2_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|inst206|selregr[3]~0_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~13_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~12_combout\ : std_logic;
SIGNAL \inst3|inst206|vf~combout\ : std_logic;
SIGNAL \inst3|inst10|vf~0_combout\ : std_logic;
SIGNAL \inst3|inst10|vf~q\ : std_logic;
SIGNAL \inst2|inst100|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst2|inst100|valor_interno~q\ : std_logic;
SIGNAL \inst|inst3|SALIDA[2]~11\ : std_logic;
SIGNAL \inst|inst3|SALIDA[3]~12_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~2_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~14_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~8_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~4_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~5_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~6_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~7_combout\ : std_logic;
SIGNAL \inst3|inst700666|inst1000|Equal1~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux28~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux28~1_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[3]~2_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[3]~3_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[3]~12_combout\ : std_logic;
SIGNAL \inst3|inst700666|inst1000|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \inst|inst1|Mux31~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux31~1_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[0]~6_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[0]~7_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[15]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst2|inst|opres[13]~28_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst2|inst|opres[11]~24_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst2|inst|opres[9]~20_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst2|inst|opres[7]~16_combout\ : std_logic;
SIGNAL \inst2|inst|opres[16]~3_combout\ : std_logic;
SIGNAL \inst2|inst|opres[16]~3clkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst|inst1|Mux27~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux27~1_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[4]~0_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[4]~1_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~9\ : std_logic;
SIGNAL \inst2|inst|Add0~10_combout\ : std_logic;
SIGNAL \inst2|inst|opres[4]~10_combout\ : std_logic;
SIGNAL \inst2|inst|opres[4]~11_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~11\ : std_logic;
SIGNAL \inst2|inst|Add0~12_combout\ : std_logic;
SIGNAL \inst2|inst|opres[5]~12_combout\ : std_logic;
SIGNAL \inst2|inst|opres[5]~13_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~13\ : std_logic;
SIGNAL \inst2|inst|Add0~14_combout\ : std_logic;
SIGNAL \inst2|inst|opres[6]~14_combout\ : std_logic;
SIGNAL \inst2|inst|opres[6]~15_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~15\ : std_logic;
SIGNAL \inst2|inst|Add0~16_combout\ : std_logic;
SIGNAL \inst2|inst|opres[7]~17_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~17\ : std_logic;
SIGNAL \inst2|inst|Add0~18_combout\ : std_logic;
SIGNAL \inst2|inst|opres[8]~18_combout\ : std_logic;
SIGNAL \inst2|inst|opres[8]~19_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[8]~7_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~19\ : std_logic;
SIGNAL \inst2|inst|Add0~20_combout\ : std_logic;
SIGNAL \inst2|inst|opres[9]~21_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~21\ : std_logic;
SIGNAL \inst2|inst|Add0~22_combout\ : std_logic;
SIGNAL \inst2|inst|opres[10]~22_combout\ : std_logic;
SIGNAL \inst2|inst|opres[10]~23_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[10]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~23\ : std_logic;
SIGNAL \inst2|inst|Add0~24_combout\ : std_logic;
SIGNAL \inst2|inst|opres[11]~25_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~25\ : std_logic;
SIGNAL \inst2|inst|Add0~26_combout\ : std_logic;
SIGNAL \inst2|inst|opres[12]~26_combout\ : std_logic;
SIGNAL \inst2|inst|opres[12]~27_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~27\ : std_logic;
SIGNAL \inst2|inst|Add0~28_combout\ : std_logic;
SIGNAL \inst2|inst|opres[13]~29_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[13]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~29\ : std_logic;
SIGNAL \inst2|inst|Add0~30_combout\ : std_logic;
SIGNAL \inst2|inst|opres[14]~30_combout\ : std_logic;
SIGNAL \inst2|inst|opres[14]~31_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[14]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~31\ : std_logic;
SIGNAL \inst2|inst|Add0~33\ : std_logic;
SIGNAL \inst2|inst|Add0~34_combout\ : std_logic;
SIGNAL \inst2|inst|opres[16]~34_combout\ : std_logic;
SIGNAL \inst2|inst3|ci~combout\ : std_logic;
SIGNAL \inst3|inst206|comb~11_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~10_combout\ : std_logic;
SIGNAL \inst3|inst206|selc~combout\ : std_logic;
SIGNAL \inst3|inst10|selc~q\ : std_logic;
SIGNAL \inst2|inst|Add0~1_cout\ : std_logic;
SIGNAL \inst2|inst|Add0~3\ : std_logic;
SIGNAL \inst2|inst|Add0~5\ : std_logic;
SIGNAL \inst2|inst|Add0~7\ : std_logic;
SIGNAL \inst2|inst|Add0~8_combout\ : std_logic;
SIGNAL \inst2|inst|opres[3]~8_combout\ : std_logic;
SIGNAL \inst2|inst|opres[3]~9_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[3]~13\ : std_logic;
SIGNAL \inst|inst3|SALIDA[4]~14_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[4]~15\ : std_logic;
SIGNAL \inst|inst3|SALIDA[5]~16_combout\ : std_logic;
SIGNAL \inst|inst1|Mux15~3_combout\ : std_logic;
SIGNAL \inst|inst1|Mux15~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux15~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux15~2_combout\ : std_logic;
SIGNAL \inst|inst1|Mux15~4_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal2~0_combout\ : std_logic;
SIGNAL \inst3|inst206|seldato~2_combout\ : std_logic;
SIGNAL \inst|inst1|Mux29~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux29~1_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[2]~4_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[2]~5_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~6_combout\ : std_logic;
SIGNAL \inst2|inst|opres[2]~6_combout\ : std_logic;
SIGNAL \inst2|inst|opres[2]~7_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~4_combout\ : std_logic;
SIGNAL \inst2|inst|opres[1]~4_combout\ : std_logic;
SIGNAL \inst2|inst|opres[1]~5_combout\ : std_logic;
SIGNAL \inst|inst1|Mux10~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux10~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux10~2_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal4~0_combout\ : std_logic;
SIGNAL \inst3|inst206|selregr[3]~1_combout\ : std_logic;
SIGNAL \inst3|inst206|selregr[3]~2_combout\ : std_logic;
SIGNAL \inst2|inst|opres[0]~32_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~2_combout\ : std_logic;
SIGNAL \inst2|inst|opres[0]~33_combout\ : std_logic;
SIGNAL \inst|inst1|Mux9~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux9~2_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal3~1_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal2~1_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~9_combout\ : std_logic;
SIGNAL \inst2|inst|opres[15]~0_combout\ : std_logic;
SIGNAL \inst2|inst|opres[15]~1_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~32_combout\ : std_logic;
SIGNAL \inst2|inst|opres[15]~2_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~3_combout\ : std_logic;
SIGNAL \inst3|inst10|selfalgs[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst3|vi~0_combout\ : std_logic;
SIGNAL \inst2|inst3|vi~0clkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst3|ni~combout\ : std_logic;
SIGNAL \inst2|inst101|valor_interno~q\ : std_logic;
SIGNAL \inst2|inst|WideOr0~2_combout\ : std_logic;
SIGNAL \inst2|inst|WideOr0~1_combout\ : std_logic;
SIGNAL \inst2|inst|WideOr0~3_combout\ : std_logic;
SIGNAL \inst2|inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst2|inst|WideOr0~4_combout\ : std_logic;
SIGNAL \inst2|inst3|zi~combout\ : std_logic;
SIGNAL \inst2|inst102|valor_interno~q\ : std_logic;
SIGNAL \inst2|inst3|vi~1_combout\ : std_logic;
SIGNAL \inst2|inst3|vi~combout\ : std_logic;
SIGNAL \inst2|inst103|valor_interno~q\ : std_logic;
SIGNAL \inst2|inst104|valor_interno~q\ : std_logic;
SIGNAL \inst2|inst3|vi~2_combout\ : std_logic;
SIGNAL \inst2|inst3|hi~combout\ : std_logic;
SIGNAL \inst2|inst105|valor_interno~q\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[15]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|inst1000|Equal1~2_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[14]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[11]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[10]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[9]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[8]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[7]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[6]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[0]~feeder_combout\ : std_logic;
SIGNAL \sw_selectReg~input_o\ : std_logic;
SIGNAL \inst5|first_value[3]~3_combout\ : std_logic;
SIGNAL \inst5|first_value[0]~0_combout\ : std_logic;
SIGNAL \inst5|first_value[1]~1_combout\ : std_logic;
SIGNAL \inst5|first_value[2]~2_combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst5|second_value[3]~3_combout\ : std_logic;
SIGNAL \inst5|second_value[1]~1_combout\ : std_logic;
SIGNAL \inst5|second_value[0]~0_combout\ : std_logic;
SIGNAL \inst5|second_value[2]~2_combout\ : std_logic;
SIGNAL \inst5|Mux8~0_combout\ : std_logic;
SIGNAL \inst5|Mux9~0_combout\ : std_logic;
SIGNAL \inst5|Mux10~0_combout\ : std_logic;
SIGNAL \inst5|Mux11~0_combout\ : std_logic;
SIGNAL \inst5|Mux12~0_combout\ : std_logic;
SIGNAL \inst5|Mux13~0_combout\ : std_logic;
SIGNAL \inst5|third_value[2]~2_combout\ : std_logic;
SIGNAL \inst5|third_value[0]~0_combout\ : std_logic;
SIGNAL \inst5|third_value[3]~3_combout\ : std_logic;
SIGNAL \inst5|third_value[1]~1_combout\ : std_logic;
SIGNAL \inst5|Mux15~0_combout\ : std_logic;
SIGNAL \inst5|Mux16~0_combout\ : std_logic;
SIGNAL \inst5|Mux17~0_combout\ : std_logic;
SIGNAL \inst5|Mux18~0_combout\ : std_logic;
SIGNAL \inst5|Mux19~0_combout\ : std_logic;
SIGNAL \inst5|Mux20~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst4|second_value[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|second_value[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|Mux8~0_combout\ : std_logic;
SIGNAL \inst4|Mux9~0_combout\ : std_logic;
SIGNAL \inst4|Mux10~0_combout\ : std_logic;
SIGNAL \inst4|Mux11~0_combout\ : std_logic;
SIGNAL \inst4|Mux12~0_combout\ : std_logic;
SIGNAL \inst4|Mux13~0_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|inst5|valor_interno\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst3|inst700666|ACCA|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst107|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|inst700666|ACCB|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst6|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst700666|AUX|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst4|first_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|second_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst10|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst10|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|inst2|datow\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst10|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|inst10|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst700|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst10|selregR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst206|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst8|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst202|OP1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst202|OP2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst|opres\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst3|inst206|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|inst206|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|inst206|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst206|selregr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst206|selsrc\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

n <= ww_n;
ww_btn_clk <= btn_clk;
ww_RELOJ <= RELOJ;
ww_RESET <= RESET;
z <= ww_z;
v <= ww_v;
c <= ww_c;
h <= ww_h;
i <= ww_i;
SelCtrl <= ww_SelCtrl;
SelD <= ww_SelD;
ACCA_D <= ww_ACCA_D;
ACCB_D <= ww_ACCB_D;
AUX_D <= ww_AUX_D;
disp1 <= ww_disp1;
ww_sw_selectReg <= sw_selectReg;
disp2 <= ww_disp2;
disp3 <= ww_disp3;
disp4 <= ww_disp4;
disp5 <= ww_disp5;
disp6 <= ww_disp6;
IX_D <= ww_IX_D;
IY_D <= ww_IY_D;
SP_D <= ww_SP_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst2|inst3|vi~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst3|vi~0_combout\);

\inst2|inst|opres[16]~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst|opres[16]~3_combout\);

\inst6|ESIGUIENTE~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|ESIGUIENTE~q\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);
\inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\ <= NOT \inst6|ESIGUIENTE~clkctrl_outclk\;
\inst4|ALT_INV_Mux13~0_combout\ <= NOT \inst4|Mux13~0_combout\;
\inst4|ALT_INV_Mux6~0_combout\ <= NOT \inst4|Mux6~0_combout\;
\inst5|ALT_INV_Mux20~0_combout\ <= NOT \inst5|Mux20~0_combout\;
\inst5|ALT_INV_Mux13~0_combout\ <= NOT \inst5|Mux13~0_combout\;
\inst5|ALT_INV_Mux6~0_combout\ <= NOT \inst5|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y20_N20
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

-- Location: IOOBUF_X13_Y0_N2
\n~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst101|valor_interno~q\,
	devoe => ww_devoe,
	o => \n~output_o\);

-- Location: IOOBUF_X15_Y0_N16
\z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst102|valor_interno~q\,
	devoe => ww_devoe,
	o => \z~output_o\);

-- Location: IOOBUF_X15_Y0_N9
\v~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst103|valor_interno~q\,
	devoe => ww_devoe,
	o => \v~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\c~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst104|valor_interno~q\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\h~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst105|valor_interno~q\,
	devoe => ww_devoe,
	o => \h~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\i~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\SelCtrl~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SelCtrl~output_o\);

-- Location: IOOBUF_X31_Y22_N2
\SelD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SelD~output_o\);

-- Location: IOOBUF_X13_Y0_N9
\ACCA_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(15),
	devoe => ww_devoe,
	o => \ACCA_D[15]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\ACCA_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(14),
	devoe => ww_devoe,
	o => \ACCA_D[14]~output_o\);

-- Location: IOOBUF_X6_Y0_N16
\ACCA_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(13),
	devoe => ww_devoe,
	o => \ACCA_D[13]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\ACCA_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(12),
	devoe => ww_devoe,
	o => \ACCA_D[12]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\ACCA_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(11),
	devoe => ww_devoe,
	o => \ACCA_D[11]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\ACCA_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(10),
	devoe => ww_devoe,
	o => \ACCA_D[10]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\ACCA_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(9),
	devoe => ww_devoe,
	o => \ACCA_D[9]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\ACCA_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(8),
	devoe => ww_devoe,
	o => \ACCA_D[8]~output_o\);

-- Location: IOOBUF_X6_Y0_N30
\ACCA_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(7),
	devoe => ww_devoe,
	o => \ACCA_D[7]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\ACCA_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(6),
	devoe => ww_devoe,
	o => \ACCA_D[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N30
\ACCA_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(5),
	devoe => ww_devoe,
	o => \ACCA_D[5]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\ACCA_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(4),
	devoe => ww_devoe,
	o => \ACCA_D[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\ACCA_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(3),
	devoe => ww_devoe,
	o => \ACCA_D[3]~output_o\);

-- Location: IOOBUF_X3_Y10_N2
\ACCA_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(2),
	devoe => ww_devoe,
	o => \ACCA_D[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\ACCA_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(1),
	devoe => ww_devoe,
	o => \ACCA_D[1]~output_o\);

-- Location: IOOBUF_X31_Y7_N16
\ACCA_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(0),
	devoe => ww_devoe,
	o => \ACCA_D[0]~output_o\);

-- Location: IOOBUF_X15_Y0_N30
\ACCB_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(15),
	devoe => ww_devoe,
	o => \ACCB_D[15]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\ACCB_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(14),
	devoe => ww_devoe,
	o => \ACCB_D[14]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\ACCB_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(13),
	devoe => ww_devoe,
	o => \ACCB_D[13]~output_o\);

-- Location: IOOBUF_X1_Y10_N23
\ACCB_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(12),
	devoe => ww_devoe,
	o => \ACCB_D[12]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\ACCB_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(11),
	devoe => ww_devoe,
	o => \ACCB_D[11]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\ACCB_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(10),
	devoe => ww_devoe,
	o => \ACCB_D[10]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\ACCB_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(9),
	devoe => ww_devoe,
	o => \ACCB_D[9]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\ACCB_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(8),
	devoe => ww_devoe,
	o => \ACCB_D[8]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\ACCB_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(7),
	devoe => ww_devoe,
	o => \ACCB_D[7]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\ACCB_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(6),
	devoe => ww_devoe,
	o => \ACCB_D[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\ACCB_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(5),
	devoe => ww_devoe,
	o => \ACCB_D[5]~output_o\);

-- Location: IOOBUF_X10_Y17_N9
\ACCB_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(4),
	devoe => ww_devoe,
	o => \ACCB_D[4]~output_o\);

-- Location: IOOBUF_X1_Y10_N2
\ACCB_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(3),
	devoe => ww_devoe,
	o => \ACCB_D[3]~output_o\);

-- Location: IOOBUF_X31_Y7_N23
\ACCB_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(2),
	devoe => ww_devoe,
	o => \ACCB_D[2]~output_o\);

-- Location: IOOBUF_X31_Y6_N9
\ACCB_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(1),
	devoe => ww_devoe,
	o => \ACCB_D[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\ACCB_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(0),
	devoe => ww_devoe,
	o => \ACCB_D[0]~output_o\);

-- Location: IOOBUF_X10_Y15_N2
\AUX_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(15),
	devoe => ww_devoe,
	o => \AUX_D[15]~output_o\);

-- Location: IOOBUF_X3_Y10_N30
\AUX_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(14),
	devoe => ww_devoe,
	o => \AUX_D[14]~output_o\);

-- Location: IOOBUF_X10_Y15_N16
\AUX_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(13),
	devoe => ww_devoe,
	o => \AUX_D[13]~output_o\);

-- Location: IOOBUF_X10_Y18_N9
\AUX_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(12),
	devoe => ww_devoe,
	o => \AUX_D[12]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\AUX_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(11),
	devoe => ww_devoe,
	o => \AUX_D[11]~output_o\);

-- Location: IOOBUF_X6_Y10_N9
\AUX_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(10),
	devoe => ww_devoe,
	o => \AUX_D[10]~output_o\);

-- Location: IOOBUF_X31_Y5_N9
\AUX_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(9),
	devoe => ww_devoe,
	o => \AUX_D[9]~output_o\);

-- Location: IOOBUF_X6_Y10_N2
\AUX_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(8),
	devoe => ww_devoe,
	o => \AUX_D[8]~output_o\);

-- Location: IOOBUF_X15_Y0_N2
\AUX_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(7),
	devoe => ww_devoe,
	o => \AUX_D[7]~output_o\);

-- Location: IOOBUF_X10_Y15_N23
\AUX_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(6),
	devoe => ww_devoe,
	o => \AUX_D[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\AUX_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(5),
	devoe => ww_devoe,
	o => \AUX_D[5]~output_o\);

-- Location: IOOBUF_X6_Y10_N16
\AUX_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(4),
	devoe => ww_devoe,
	o => \AUX_D[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\AUX_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(3),
	devoe => ww_devoe,
	o => \AUX_D[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\AUX_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(2),
	devoe => ww_devoe,
	o => \AUX_D[2]~output_o\);

-- Location: IOOBUF_X6_Y0_N9
\AUX_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(1),
	devoe => ww_devoe,
	o => \AUX_D[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\AUX_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(0),
	devoe => ww_devoe,
	o => \AUX_D[0]~output_o\);

-- Location: IOOBUF_X10_Y18_N2
\disp1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \disp1[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\disp1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \disp1[5]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\disp1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp1[4]~output_o\);

-- Location: IOOBUF_X6_Y10_N23
\disp1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \disp1[3]~output_o\);

-- Location: IOOBUF_X3_Y10_N9
\disp1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp1[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\disp1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \disp1[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\disp1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \disp1[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\disp2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \disp2[6]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\disp2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \disp2[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\disp2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \disp2[4]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\disp2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \disp2[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\disp2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \disp2[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\disp2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \disp2[1]~output_o\);

-- Location: IOOBUF_X31_Y9_N23
\disp2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \disp2[0]~output_o\);

-- Location: IOOBUF_X10_Y18_N16
\disp3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \disp3[6]~output_o\);

-- Location: IOOBUF_X10_Y16_N2
\disp3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux16~0_combout\,
	devoe => ww_devoe,
	o => \disp3[5]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\disp3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux17~0_combout\,
	devoe => ww_devoe,
	o => \disp3[4]~output_o\);

-- Location: IOOBUF_X10_Y19_N2
\disp3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux18~0_combout\,
	devoe => ww_devoe,
	o => \disp3[3]~output_o\);

-- Location: IOOBUF_X10_Y15_N9
\disp3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux19~0_combout\,
	devoe => ww_devoe,
	o => \disp3[2]~output_o\);

-- Location: IOOBUF_X10_Y16_N9
\disp3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Mux20~0_combout\,
	devoe => ww_devoe,
	o => \disp3[1]~output_o\);

-- Location: IOOBUF_X31_Y17_N23
\disp3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \disp3[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\disp4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \disp4[6]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\disp4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \disp4[5]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\disp4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp4[4]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\disp4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \disp4[3]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\disp4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp4[2]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\disp4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \disp4[1]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\disp4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \disp4[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\disp5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \disp5[6]~output_o\);

-- Location: IOOBUF_X17_Y0_N2
\disp5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \disp5[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\disp5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \disp5[4]~output_o\);

-- Location: IOOBUF_X17_Y0_N16
\disp5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \disp5[3]~output_o\);

-- Location: IOOBUF_X17_Y0_N23
\disp5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \disp5[2]~output_o\);

-- Location: IOOBUF_X17_Y0_N9
\disp5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \disp5[1]~output_o\);

-- Location: IOOBUF_X31_Y17_N9
\disp5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \disp5[0]~output_o\);

-- Location: IOOBUF_X31_Y14_N16
\disp6[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp6[6]~output_o\);

-- Location: IOOBUF_X31_Y11_N16
\disp6[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp6[5]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\disp6[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp6[4]~output_o\);

-- Location: IOOBUF_X31_Y4_N2
\disp6[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp6[3]~output_o\);

-- Location: IOOBUF_X31_Y11_N2
\disp6[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp6[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\disp6[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \disp6[1]~output_o\);

-- Location: IOOBUF_X31_Y6_N16
\disp6[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \disp6[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\IX_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[15]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\IX_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[14]~output_o\);

-- Location: IOOBUF_X11_Y25_N30
\IX_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[13]~output_o\);

-- Location: IOOBUF_X31_Y5_N16
\IX_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[12]~output_o\);

-- Location: IOOBUF_X31_Y13_N16
\IX_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[11]~output_o\);

-- Location: IOOBUF_X31_Y21_N9
\IX_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[10]~output_o\);

-- Location: IOOBUF_X13_Y25_N23
\IX_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[9]~output_o\);

-- Location: IOOBUF_X17_Y25_N2
\IX_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[8]~output_o\);

-- Location: IOOBUF_X17_Y25_N16
\IX_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[7]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\IX_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[6]~output_o\);

-- Location: IOOBUF_X31_Y12_N23
\IX_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[5]~output_o\);

-- Location: IOOBUF_X27_Y25_N30
\IX_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[4]~output_o\);

-- Location: IOOBUF_X27_Y25_N23
\IX_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[3]~output_o\);

-- Location: IOOBUF_X17_Y25_N23
\IX_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[2]~output_o\);

-- Location: IOOBUF_X10_Y18_N23
\IX_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\IX_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[0]~output_o\);

-- Location: IOOBUF_X24_Y25_N23
\IY_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[15]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\IY_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[14]~output_o\);

-- Location: IOOBUF_X31_Y17_N2
\IY_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[13]~output_o\);

-- Location: IOOBUF_X1_Y10_N16
\IY_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[12]~output_o\);

-- Location: IOOBUF_X31_Y19_N9
\IY_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[11]~output_o\);

-- Location: IOOBUF_X31_Y17_N16
\IY_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[10]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\IY_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[9]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\IY_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[8]~output_o\);

-- Location: IOOBUF_X27_Y0_N16
\IY_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[7]~output_o\);

-- Location: IOOBUF_X10_Y19_N9
\IY_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[6]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\IY_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[5]~output_o\);

-- Location: IOOBUF_X19_Y25_N23
\IY_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[4]~output_o\);

-- Location: IOOBUF_X31_Y12_N16
\IY_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[3]~output_o\);

-- Location: IOOBUF_X22_Y25_N16
\IY_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[2]~output_o\);

-- Location: IOOBUF_X31_Y9_N9
\IY_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[1]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\IY_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[0]~output_o\);

-- Location: IOOBUF_X29_Y25_N16
\SP_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[15]~output_o\);

-- Location: IOOBUF_X17_Y25_N30
\SP_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[14]~output_o\);

-- Location: IOOBUF_X29_Y25_N30
\SP_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[13]~output_o\);

-- Location: IOOBUF_X11_Y25_N23
\SP_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[12]~output_o\);

-- Location: IOOBUF_X31_Y19_N2
\SP_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[11]~output_o\);

-- Location: IOOBUF_X31_Y9_N16
\SP_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[10]~output_o\);

-- Location: IOOBUF_X24_Y25_N9
\SP_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[9]~output_o\);

-- Location: IOOBUF_X19_Y25_N2
\SP_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[8]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\SP_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[7]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\SP_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[6]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\SP_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[5]~output_o\);

-- Location: IOOBUF_X27_Y25_N2
\SP_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[4]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\SP_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[3]~output_o\);

-- Location: IOOBUF_X27_Y25_N9
\SP_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[2]~output_o\);

-- Location: IOOBUF_X24_Y25_N30
\SP_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[1]~output_o\);

-- Location: IOOBUF_X24_Y25_N2
\SP_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[0]~output_o\);

-- Location: IOIBUF_X15_Y0_N22
\RELOJ~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RELOJ,
	o => \RELOJ~input_o\);

-- Location: IOIBUF_X17_Y0_N29
\btn_clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_clk,
	o => \btn_clk~input_o\);

-- Location: FF_X16_Y4_N15
\inst6|ESIGUIENTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	asdata => \btn_clk~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|ESIGUIENTE~q\);

-- Location: CLKCTRL_G8
\inst6|ESIGUIENTE~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|ESIGUIENTE~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|ESIGUIENTE~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y7_N0
\inst|inst3|SALIDA[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[0]~6_combout\ = \inst|inst3|SALIDA\(0) $ (VCC)
-- \inst|inst3|SALIDA[0]~7\ = CARRY(\inst|inst3|SALIDA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(0),
	datad => VCC,
	combout => \inst|inst3|SALIDA[0]~6_combout\,
	cout => \inst|inst3|SALIDA[0]~7\);

-- Location: LCCOMB_X17_Y7_N2
\inst|inst3|SALIDA[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[1]~8_combout\ = (\inst|inst3|SALIDA\(1) & (!\inst|inst3|SALIDA[0]~7\)) # (!\inst|inst3|SALIDA\(1) & ((\inst|inst3|SALIDA[0]~7\) # (GND)))
-- \inst|inst3|SALIDA[1]~9\ = CARRY((!\inst|inst3|SALIDA[0]~7\) # (!\inst|inst3|SALIDA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(1),
	datad => VCC,
	cin => \inst|inst3|SALIDA[0]~7\,
	combout => \inst|inst3|SALIDA[1]~8_combout\,
	cout => \inst|inst3|SALIDA[1]~9\);

-- Location: LCCOMB_X17_Y7_N4
\inst|inst3|SALIDA[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[2]~10_combout\ = (\inst|inst3|SALIDA\(2) & (\inst|inst3|SALIDA[1]~9\ $ (GND))) # (!\inst|inst3|SALIDA\(2) & (!\inst|inst3|SALIDA[1]~9\ & VCC))
-- \inst|inst3|SALIDA[2]~11\ = CARRY((\inst|inst3|SALIDA\(2) & !\inst|inst3|SALIDA[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(2),
	datad => VCC,
	cin => \inst|inst3|SALIDA[1]~9\,
	combout => \inst|inst3|SALIDA[2]~10_combout\,
	cout => \inst|inst3|SALIDA[2]~11\);

-- Location: IOIBUF_X0_Y6_N22
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

-- Location: LCCOMB_X17_Y4_N22
\inst|inst1|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux8~1_combout\ = (\inst|inst3|SALIDA\(4) & (\inst|inst3|SALIDA\(2) $ (\inst|inst3|SALIDA\(1) $ (\inst|inst3|SALIDA\(0))))) # (!\inst|inst3|SALIDA\(4) & ((\inst|inst3|SALIDA\(2) & ((!\inst|inst3|SALIDA\(0)) # (!\inst|inst3|SALIDA\(1)))) # 
-- (!\inst|inst3|SALIDA\(2) & ((\inst|inst3|SALIDA\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(4),
	datab => \inst|inst3|SALIDA\(2),
	datac => \inst|inst3|SALIDA\(1),
	datad => \inst|inst3|SALIDA\(0),
	combout => \inst|inst1|Mux8~1_combout\);

-- Location: LCCOMB_X17_Y4_N0
\inst|inst1|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux8~0_combout\ = (!\inst|inst3|SALIDA\(2) & ((\inst|inst3|SALIDA\(4) & (!\inst|inst3|SALIDA\(1) & !\inst|inst3|SALIDA\(0))) # (!\inst|inst3|SALIDA\(4) & (\inst|inst3|SALIDA\(1) $ (\inst|inst3|SALIDA\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(4),
	datab => \inst|inst3|SALIDA\(2),
	datac => \inst|inst3|SALIDA\(1),
	datad => \inst|inst3|SALIDA\(0),
	combout => \inst|inst1|Mux8~0_combout\);

-- Location: LCCOMB_X17_Y4_N26
\inst|inst1|Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux8~2_combout\ = (!\inst|inst3|SALIDA\(5) & ((\inst|inst3|SALIDA\(3) & ((\inst|inst1|Mux8~0_combout\))) # (!\inst|inst3|SALIDA\(3) & (!\inst|inst1|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Mux8~1_combout\,
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst3|SALIDA\(3),
	datad => \inst|inst1|Mux8~0_combout\,
	combout => \inst|inst1|Mux8~2_combout\);

-- Location: FF_X17_Y4_N27
\inst|inst5|valor_interno[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux8~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(23));

-- Location: LCCOMB_X17_Y5_N6
\inst|inst1|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux11~0_combout\ = (\inst|inst3|SALIDA\(3) & (\inst|inst3|SALIDA\(0) & (!\inst|inst3|SALIDA\(2)))) # (!\inst|inst3|SALIDA\(3) & (\inst|inst3|SALIDA\(1) & (\inst|inst3|SALIDA\(0) $ (!\inst|inst3|SALIDA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(0),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux11~0_combout\);

-- Location: LCCOMB_X17_Y5_N8
\inst|inst1|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux11~1_combout\ = (\inst|inst3|SALIDA\(3) & ((\inst|inst3|SALIDA\(2) $ (\inst|inst3|SALIDA\(1))))) # (!\inst|inst3|SALIDA\(3) & (\inst|inst3|SALIDA\(0) & (\inst|inst3|SALIDA\(2) & \inst|inst3|SALIDA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(0),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux11~1_combout\);

-- Location: LCCOMB_X17_Y5_N20
\inst|inst1|Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux11~2_combout\ = (!\inst|inst3|SALIDA\(5) & ((\inst|inst3|SALIDA\(4) & ((!\inst|inst1|Mux11~1_combout\))) # (!\inst|inst3|SALIDA\(4) & (\inst|inst1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Mux11~0_combout\,
	datab => \inst|inst3|SALIDA\(4),
	datac => \inst|inst1|Mux11~1_combout\,
	datad => \inst|inst3|SALIDA\(5),
	combout => \inst|inst1|Mux11~2_combout\);

-- Location: FF_X17_Y5_N21
\inst|inst5|valor_interno[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux11~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(20));

-- Location: LCCOMB_X19_Y4_N12
\inst|inst1|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux13~0_combout\ = (\inst|inst3|SALIDA\(2) & (!\inst|inst3|SALIDA\(1) & ((!\inst|inst3|SALIDA\(0))))) # (!\inst|inst3|SALIDA\(2) & (\inst|inst3|SALIDA\(1) $ (((!\inst|inst3|SALIDA\(3) & \inst|inst3|SALIDA\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst3|SALIDA\(2),
	datac => \inst|inst3|SALIDA\(3),
	datad => \inst|inst3|SALIDA\(0),
	combout => \inst|inst1|Mux13~0_combout\);

-- Location: LCCOMB_X19_Y4_N24
\inst|inst1|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux13~1_combout\ = (\inst|inst3|SALIDA\(1) & ((\inst|inst3|SALIDA\(2) & ((\inst|inst3|SALIDA\(3)) # (!\inst|inst3|SALIDA\(0)))) # (!\inst|inst3|SALIDA\(2) & ((\inst|inst3|SALIDA\(0)))))) # (!\inst|inst3|SALIDA\(1) & (\inst|inst3|SALIDA\(2) $ 
-- (\inst|inst3|SALIDA\(3) $ (\inst|inst3|SALIDA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst3|SALIDA\(2),
	datac => \inst|inst3|SALIDA\(3),
	datad => \inst|inst3|SALIDA\(0),
	combout => \inst|inst1|Mux13~1_combout\);

-- Location: LCCOMB_X19_Y4_N8
\inst|inst1|Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux13~2_combout\ = (!\inst|inst3|SALIDA\(5) & ((\inst|inst3|SALIDA\(4) & (!\inst|inst1|Mux13~0_combout\)) # (!\inst|inst3|SALIDA\(4) & ((!\inst|inst1|Mux13~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Mux13~0_combout\,
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst3|SALIDA\(4),
	datad => \inst|inst1|Mux13~1_combout\,
	combout => \inst|inst1|Mux13~2_combout\);

-- Location: FF_X19_Y4_N9
\inst|inst5|valor_interno[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux13~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(18));

-- Location: LCCOMB_X19_Y4_N14
\inst|inst1|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux12~1_combout\ = (\inst|inst3|SALIDA\(0) & (\inst|inst3|SALIDA\(2) & (!\inst|inst3|SALIDA\(3) & !\inst|inst3|SALIDA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(0),
	datab => \inst|inst3|SALIDA\(2),
	datac => \inst|inst3|SALIDA\(3),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux12~1_combout\);

-- Location: LCCOMB_X19_Y4_N20
\inst|inst1|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux12~0_combout\ = (\inst|inst3|SALIDA\(1) & (\inst|inst3|SALIDA\(2) $ (((!\inst|inst3|SALIDA\(3) & !\inst|inst3|SALIDA\(0)))))) # (!\inst|inst3|SALIDA\(1) & (\inst|inst3|SALIDA\(0) $ (((\inst|inst3|SALIDA\(2) & !\inst|inst3|SALIDA\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst3|SALIDA\(2),
	datac => \inst|inst3|SALIDA\(3),
	datad => \inst|inst3|SALIDA\(0),
	combout => \inst|inst1|Mux12~0_combout\);

-- Location: LCCOMB_X19_Y4_N30
\inst|inst1|Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux12~2_combout\ = (!\inst|inst3|SALIDA\(5) & ((\inst|inst3|SALIDA\(4) & ((\inst|inst1|Mux12~0_combout\))) # (!\inst|inst3|SALIDA\(4) & (\inst|inst1|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(4),
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst1|Mux12~1_combout\,
	datad => \inst|inst1|Mux12~0_combout\,
	combout => \inst|inst1|Mux12~2_combout\);

-- Location: FF_X19_Y4_N31
\inst|inst5|valor_interno[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux12~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(19));

-- Location: LCCOMB_X16_Y5_N6
\inst3|inst206|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal0~0_combout\ = (!\inst|inst5|valor_interno\(20) & (\inst|inst5|valor_interno\(18) & (!\inst|inst5|valor_interno\(16) & !\inst|inst5|valor_interno\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(20),
	datab => \inst|inst5|valor_interno\(18),
	datac => \inst|inst5|valor_interno\(16),
	datad => \inst|inst5|valor_interno\(19),
	combout => \inst3|inst206|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y4_N22
\inst|inst1|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux14~1_combout\ = (\inst|inst3|SALIDA\(2) & ((\inst|inst3|SALIDA\(1) & ((\inst|inst3|SALIDA\(3)) # (!\inst|inst3|SALIDA\(0)))) # (!\inst|inst3|SALIDA\(1) & ((\inst|inst3|SALIDA\(0)) # (!\inst|inst3|SALIDA\(3)))))) # (!\inst|inst3|SALIDA\(2) & 
-- (\inst|inst3|SALIDA\(0) $ (((!\inst|inst3|SALIDA\(1) & \inst|inst3|SALIDA\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst3|SALIDA\(2),
	datac => \inst|inst3|SALIDA\(3),
	datad => \inst|inst3|SALIDA\(0),
	combout => \inst|inst1|Mux14~1_combout\);

-- Location: LCCOMB_X19_Y4_N16
\inst|inst1|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux14~0_combout\ = (\inst|inst3|SALIDA\(3) & ((\inst|inst3|SALIDA\(1) & (!\inst|inst3|SALIDA\(2))) # (!\inst|inst3|SALIDA\(1) & (\inst|inst3|SALIDA\(2) & !\inst|inst3|SALIDA\(0))))) # (!\inst|inst3|SALIDA\(3) & (\inst|inst3|SALIDA\(0) & 
-- (\inst|inst3|SALIDA\(1) $ (!\inst|inst3|SALIDA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst3|SALIDA\(2),
	datac => \inst|inst3|SALIDA\(3),
	datad => \inst|inst3|SALIDA\(0),
	combout => \inst|inst1|Mux14~0_combout\);

-- Location: LCCOMB_X19_Y4_N26
\inst|inst1|Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux14~2_combout\ = (!\inst|inst3|SALIDA\(5) & ((\inst|inst3|SALIDA\(4) & ((!\inst|inst1|Mux14~0_combout\))) # (!\inst|inst3|SALIDA\(4) & (!\inst|inst1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(4),
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst1|Mux14~1_combout\,
	datad => \inst|inst1|Mux14~0_combout\,
	combout => \inst|inst1|Mux14~2_combout\);

-- Location: FF_X19_Y4_N27
\inst|inst5|valor_interno[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux14~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(17));

-- Location: LCCOMB_X16_Y4_N20
\inst3|inst206|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal0~2_combout\ = (!\inst|inst5|valor_interno\(21) & \inst|inst5|valor_interno\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst5|valor_interno\(21),
	datac => \inst|inst5|valor_interno\(17),
	combout => \inst3|inst206|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y4_N2
\inst3|inst206|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal0~3_combout\ = (\inst|inst5|valor_interno\(22) & (\inst|inst5|valor_interno\(23) & (\inst3|inst206|Equal0~0_combout\ & \inst3|inst206|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(22),
	datab => \inst|inst5|valor_interno\(23),
	datac => \inst3|inst206|Equal0~0_combout\,
	datad => \inst3|inst206|Equal0~2_combout\,
	combout => \inst3|inst206|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y4_N4
\inst3|inst206|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal3~0_combout\ = (\inst|inst5|valor_interno\(17) & (\inst|inst5|valor_interno\(20) & \inst|inst5|valor_interno\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(17),
	datac => \inst|inst5|valor_interno\(20),
	datad => \inst|inst5|valor_interno\(19),
	combout => \inst3|inst206|Equal3~0_combout\);

-- Location: LCCOMB_X16_Y4_N0
\inst3|inst206|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal3~2_combout\ = (\inst3|inst206|Equal3~1_combout\ & (\inst3|inst206|Equal3~0_combout\ & \inst|inst5|valor_interno\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal3~1_combout\,
	datac => \inst3|inst206|Equal3~0_combout\,
	datad => \inst|inst5|valor_interno\(16),
	combout => \inst3|inst206|Equal3~2_combout\);

-- Location: LCCOMB_X16_Y4_N8
\inst3|inst206|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal0~1_combout\ = (\inst3|inst206|Equal0~0_combout\ & (\inst|inst5|valor_interno\(23) & (\inst|inst5|valor_interno\(17) & !\inst|inst5|valor_interno\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal0~0_combout\,
	datab => \inst|inst5|valor_interno\(23),
	datac => \inst|inst5|valor_interno\(17),
	datad => \inst|inst5|valor_interno\(21),
	combout => \inst3|inst206|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y4_N16
\inst3|inst206|selregr[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregr[3]~0_combout\ = (\inst3|inst206|Equal2~1_combout\ & (!\inst3|inst206|Equal3~2_combout\ & ((\inst|inst5|valor_interno\(22)) # (!\inst3|inst206|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal2~1_combout\,
	datab => \inst3|inst206|Equal3~2_combout\,
	datac => \inst3|inst206|Equal0~1_combout\,
	datad => \inst|inst5|valor_interno\(22),
	combout => \inst3|inst206|selregr[3]~0_combout\);

-- Location: LCCOMB_X16_Y6_N16
\inst3|inst206|comb~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~13_combout\ = (\inst3|inst206|Equal0~3_combout\) # ((\inst3|inst206|selregr[3]~1_combout\ & !\inst3|inst206|selregr[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|selregr[3]~1_combout\,
	datac => \inst3|inst206|Equal0~3_combout\,
	datad => \inst3|inst206|selregr[3]~0_combout\,
	combout => \inst3|inst206|comb~13_combout\);

-- Location: LCCOMB_X16_Y6_N30
\inst3|inst206|comb~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~12_combout\ = (\inst3|inst206|selregr[3]~1_combout\ & (!\inst3|inst206|Equal0~3_combout\ & \inst3|inst206|selregr[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|selregr[3]~1_combout\,
	datac => \inst3|inst206|Equal0~3_combout\,
	datad => \inst3|inst206|selregr[3]~0_combout\,
	combout => \inst3|inst206|comb~12_combout\);

-- Location: LCCOMB_X16_Y6_N28
\inst3|inst206|vf\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|vf~combout\ = (!\inst3|inst206|comb~12_combout\ & ((\inst3|inst206|comb~13_combout\) # (\inst3|inst206|vf~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|comb~13_combout\,
	datac => \inst3|inst206|comb~12_combout\,
	datad => \inst3|inst206|vf~combout\,
	combout => \inst3|inst206|vf~combout\);

-- Location: LCCOMB_X17_Y7_N16
\inst3|inst10|vf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst10|vf~0_combout\ = !\inst3|inst206|vf~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst206|vf~combout\,
	combout => \inst3|inst10|vf~0_combout\);

-- Location: FF_X17_Y7_N17
\inst3|inst10|vf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst10|vf~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|vf~q\);

-- Location: LCCOMB_X17_Y7_N28
\inst2|inst100|valor_interno~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst100|valor_interno~feeder_combout\ = \inst3|inst10|vf~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst10|vf~q\,
	combout => \inst2|inst100|valor_interno~feeder_combout\);

-- Location: FF_X17_Y7_N29
\inst2|inst100|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst100|valor_interno~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst100|valor_interno~q\);

-- Location: FF_X17_Y7_N5
\inst|inst3|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst3|SALIDA[2]~10_combout\,
	asdata => \inst2|inst6|SALIDA\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(2));

-- Location: LCCOMB_X17_Y7_N6
\inst|inst3|SALIDA[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[3]~12_combout\ = (\inst|inst3|SALIDA\(3) & (!\inst|inst3|SALIDA[2]~11\)) # (!\inst|inst3|SALIDA\(3) & ((\inst|inst3|SALIDA[2]~11\) # (GND)))
-- \inst|inst3|SALIDA[3]~13\ = CARRY((!\inst|inst3|SALIDA[2]~11\) # (!\inst|inst3|SALIDA\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(3),
	datad => VCC,
	cin => \inst|inst3|SALIDA[2]~11\,
	combout => \inst|inst3|SALIDA[3]~12_combout\,
	cout => \inst|inst3|SALIDA[3]~13\);

-- Location: LCCOMB_X15_Y4_N14
\inst3|inst206|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~2_combout\ = (!\inst3|inst206|Equal3~2_combout\ & ((\inst3|inst206|Equal0~3_combout\) # (\inst3|inst206|selregr[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~3_combout\,
	datac => \inst3|inst206|Equal3~2_combout\,
	datad => \inst3|inst206|selregr[3]~1_combout\,
	combout => \inst3|inst206|comb~2_combout\);

-- Location: LCCOMB_X15_Y4_N6
\inst3|inst206|selregr[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregr\(0) = (!\inst3|inst206|comb~2_combout\ & ((\inst3|inst206|selregr\(0)) # (\inst3|inst206|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst206|Equal3~2_combout\,
	datad => \inst3|inst206|comb~2_combout\,
	combout => \inst3|inst206|selregr\(0));

-- Location: LCCOMB_X16_Y4_N6
\inst3|inst206|comb~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~14_combout\ = (((\inst|inst5|valor_interno\(21)) # (!\inst|inst5|valor_interno\(17))) # (!\inst|inst5|valor_interno\(23))) # (!\inst3|inst206|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal0~0_combout\,
	datab => \inst|inst5|valor_interno\(23),
	datac => \inst|inst5|valor_interno\(17),
	datad => \inst|inst5|valor_interno\(21),
	combout => \inst3|inst206|comb~14_combout\);

-- Location: LCCOMB_X16_Y4_N22
\inst3|inst206|comb~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~8_combout\ = (\inst3|inst206|selregr[3]~2_combout\ & (\inst3|inst206|comb~14_combout\ & ((\inst3|inst206|Equal3~2_combout\) # (!\inst3|inst206|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal2~1_combout\,
	datab => \inst3|inst206|Equal3~2_combout\,
	datac => \inst3|inst206|selregr[3]~2_combout\,
	datad => \inst3|inst206|comb~14_combout\,
	combout => \inst3|inst206|comb~8_combout\);

-- Location: LCCOMB_X15_Y4_N0
\inst3|inst206|selsrc[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selsrc\(1) = (!\inst3|inst206|comb~8_combout\ & ((\inst3|inst206|comb~9_combout\) # (\inst3|inst206|selsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~8_combout\,
	datab => \inst3|inst206|comb~9_combout\,
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst206|selsrc\(1));

-- Location: LCCOMB_X16_Y4_N14
\inst3|inst206|comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~4_combout\ = (!\inst3|inst206|Equal3~2_combout\ & ((\inst|inst5|valor_interno\(22)) # (!\inst3|inst206|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(22),
	datab => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst206|Equal3~2_combout\,
	combout => \inst3|inst206|comb~4_combout\);

-- Location: LCCOMB_X16_Y6_N12
\inst3|inst206|comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~5_combout\ = (\inst3|inst206|comb~4_combout\ & ((\inst3|inst206|Equal0~3_combout\) # (\inst3|inst206|selregr[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~3_combout\,
	datac => \inst3|inst206|selregr[3]~1_combout\,
	datad => \inst3|inst206|comb~4_combout\,
	combout => \inst3|inst206|comb~5_combout\);

-- Location: LCCOMB_X16_Y6_N22
\inst3|inst206|comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~6_combout\ = (!\inst3|inst206|comb~4_combout\ & ((\inst3|inst206|Equal0~3_combout\) # (\inst3|inst206|selregr[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~3_combout\,
	datac => \inst3|inst206|selregr[3]~1_combout\,
	datad => \inst3|inst206|comb~4_combout\,
	combout => \inst3|inst206|comb~6_combout\);

-- Location: LCCOMB_X16_Y6_N0
\inst3|inst206|selregw[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregw\(0) = (!\inst3|inst206|comb~5_combout\ & ((\inst3|inst206|comb~6_combout\) # (\inst3|inst206|selregw\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~5_combout\,
	datac => \inst3|inst206|comb~6_combout\,
	datad => \inst3|inst206|selregw\(0),
	combout => \inst3|inst206|selregw\(0));

-- Location: FF_X16_Y6_N1
\inst3|inst10|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst206|selregw\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selregw\(0));

-- Location: FF_X13_Y7_N29
\inst2|inst107|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst10|selregw\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst107|selregw\(0));

-- Location: LCCOMB_X16_Y6_N24
\inst3|inst206|comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~7_combout\ = (!\inst3|inst206|Equal0~3_combout\ & \inst3|inst206|selregr[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~3_combout\,
	datac => \inst3|inst206|selregr[3]~1_combout\,
	combout => \inst3|inst206|comb~7_combout\);

-- Location: LCCOMB_X16_Y6_N14
\inst3|inst206|selregw[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregw\(2) = (!\inst3|inst206|comb~7_combout\ & ((\inst3|inst206|Equal0~3_combout\) # (\inst3|inst206|selregw\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~7_combout\,
	datac => \inst3|inst206|Equal0~3_combout\,
	datad => \inst3|inst206|selregw\(2),
	combout => \inst3|inst206|selregw\(2));

-- Location: FF_X16_Y6_N15
\inst3|inst10|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst206|selregw\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selregw\(2));

-- Location: FF_X13_Y7_N11
\inst2|inst107|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst10|selregw\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst107|selregw\(2));

-- Location: LCCOMB_X13_Y7_N28
\inst3|inst700666|inst1000|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|inst1000|Equal1~1_combout\ = (!\inst2|inst107|selregw\(0) & \inst2|inst107|selregw\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst107|selregw\(0),
	datad => \inst2|inst107|selregw\(2),
	combout => \inst3|inst700666|inst1000|Equal1~1_combout\);

-- Location: FF_X13_Y7_N21
\inst3|inst700666|ACCB|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(3));

-- Location: LCCOMB_X16_Y5_N4
\inst|inst1|Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux28~0_combout\ = (!\inst|inst3|SALIDA\(1) & ((\inst|inst3|SALIDA\(0) & (!\inst|inst3|SALIDA\(2) & \inst|inst3|SALIDA\(4))) # (!\inst|inst3|SALIDA\(0) & (\inst|inst3|SALIDA\(2) & !\inst|inst3|SALIDA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst3|SALIDA\(0),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(4),
	combout => \inst|inst1|Mux28~0_combout\);

-- Location: LCCOMB_X16_Y5_N16
\inst|inst1|Mux28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux28~1_combout\ = (!\inst|inst3|SALIDA\(5) & (\inst|inst1|Mux28~0_combout\ & \inst|inst3|SALIDA\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst1|Mux28~0_combout\,
	datad => \inst|inst3|SALIDA\(3),
	combout => \inst|inst1|Mux28~1_combout\);

-- Location: FF_X16_Y5_N17
\inst|inst5|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux28~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(3));

-- Location: LCCOMB_X13_Y7_N20
\inst3|inst202|OP2[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[3]~2_combout\ = (\inst3|inst206|selsrc\(1) & (((\inst|inst5|valor_interno\(3))))) # (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCB|SALIDA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst700666|ACCB|SALIDA\(3),
	datad => \inst|inst5|valor_interno\(3),
	combout => \inst3|inst202|OP2[3]~2_combout\);

-- Location: LCCOMB_X15_Y7_N30
\inst3|inst202|OP2[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[3]~3_combout\ = (\inst3|inst206|selsrc\(0) & \inst3|inst202|OP2[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst202|OP2[3]~2_combout\,
	combout => \inst3|inst202|OP2[3]~3_combout\);

-- Location: FF_X15_Y7_N31
\inst3|inst8|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2[3]~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(3));

-- Location: FF_X13_Y7_N1
\inst3|inst10|selregR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst206|selregr\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selregR\(0));

-- Location: LCCOMB_X15_Y7_N6
\inst2|inst1357|$00000|auto_generated|result_node[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[3]~12_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst2|inst6|SALIDA\(3)))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst3|inst8|SALIDA\(3))))) # 
-- (!\inst3|inst10|selregR\(0) & (\inst3|inst8|SALIDA\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(3),
	datab => \inst3|inst10|selregR\(0),
	datac => \inst2|inst6|SALIDA\(3),
	datad => \inst3|inst700666|inst1000|Equal1~1_combout\,
	combout => \inst2|inst1357|$00000|auto_generated|result_node[3]~12_combout\);

-- Location: LCCOMB_X13_Y7_N10
\inst3|inst700666|inst1000|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|inst1000|Equal1~0_combout\ = (!\inst2|inst107|selregw\(2) & \inst2|inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst107|selregw\(2),
	datad => \inst2|inst107|selregw\(0),
	combout => \inst3|inst700666|inst1000|Equal1~0_combout\);

-- Location: FF_X12_Y7_N19
\inst3|inst700666|ACCA|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(3));

-- Location: LCCOMB_X12_Y7_N24
\inst3|inst202|OP1[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(3) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(3) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(3),
	combout => \inst3|inst202|OP1\(3));

-- Location: FF_X12_Y7_N25
\inst3|inst700|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(3));

-- Location: LCCOMB_X13_Y7_N26
\inst2|inst1356|$00000|auto_generated|result_node[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst2|inst6|SALIDA\(3))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst3|inst700|SALIDA\(3)))))) 
-- # (!\inst3|inst10|selregR\(0) & (((\inst3|inst700|SALIDA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(3),
	datab => \inst3|inst10|selregR\(0),
	datac => \inst3|inst700666|inst1000|Equal1~0_combout\,
	datad => \inst3|inst700|SALIDA\(3),
	combout => \inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\);

-- Location: FF_X14_Y6_N31
\inst3|inst700666|ACCB|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(1));

-- Location: LCCOMB_X12_Y7_N8
\inst3|inst202|OP2[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(1) = (\inst3|inst206|selsrc\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & \inst3|inst700666|ACCB|SALIDA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(1),
	combout => \inst3|inst202|OP2\(1));

-- Location: FF_X12_Y7_N9
\inst3|inst8|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(1));

-- Location: LCCOMB_X14_Y7_N6
\inst2|inst1357|$00000|auto_generated|result_node[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[1]~14_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst2|inst6|SALIDA\(1))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst8|SALIDA\(1)))))) # 
-- (!\inst3|inst10|selregR\(0) & (((\inst3|inst8|SALIDA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(1),
	datab => \inst3|inst8|SALIDA\(1),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst700666|inst1000|Equal1~1_combout\,
	combout => \inst2|inst1357|$00000|auto_generated|result_node[1]~14_combout\);

-- Location: FF_X12_Y7_N27
\inst3|inst700666|ACCA|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(1));

-- Location: LCCOMB_X12_Y7_N26
\inst3|inst202|OP1[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(1) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(1) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst700666|ACCA|SALIDA\(1),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP1\(1));

-- Location: FF_X13_Y7_N7
\inst3|inst700|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(1));

-- Location: LCCOMB_X13_Y7_N18
\inst2|inst1356|$00000|auto_generated|result_node[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst2|inst6|SALIDA\(1)))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst3|inst700|SALIDA\(1))))) 
-- # (!\inst3|inst10|selregR\(0) & (\inst3|inst700|SALIDA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(1),
	datab => \inst3|inst10|selregR\(0),
	datac => \inst3|inst700666|inst1000|Equal1~0_combout\,
	datad => \inst2|inst6|SALIDA\(1),
	combout => \inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\);

-- Location: FF_X12_Y7_N21
\inst3|inst700666|ACCA|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(0));

-- Location: LCCOMB_X12_Y7_N10
\inst3|inst202|OP1[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(0) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(0) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(0),
	combout => \inst3|inst202|OP1\(0));

-- Location: FF_X12_Y7_N11
\inst3|inst700|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(0));

-- Location: LCCOMB_X13_Y7_N14
\inst2|inst1356|$00000|auto_generated|result_node[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst2|inst6|SALIDA\(0)))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst3|inst700|SALIDA\(0))))) 
-- # (!\inst3|inst10|selregR\(0) & (\inst3|inst700|SALIDA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(0),
	datab => \inst3|inst10|selregR\(0),
	datac => \inst3|inst700666|inst1000|Equal1~0_combout\,
	datad => \inst2|inst6|SALIDA\(0),
	combout => \inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\);

-- Location: FF_X13_Y5_N19
\inst3|inst700666|ACCB|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(0));

-- Location: LCCOMB_X16_Y5_N8
\inst|inst1|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux31~0_combout\ = (\inst|inst3|SALIDA\(2) & (!\inst|inst3|SALIDA\(1) & (\inst|inst3|SALIDA\(3) $ (\inst|inst3|SALIDA\(4))))) # (!\inst|inst3|SALIDA\(2) & (\inst|inst3|SALIDA\(1) $ (((\inst|inst3|SALIDA\(3) & \inst|inst3|SALIDA\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(4),
	combout => \inst|inst1|Mux31~0_combout\);

-- Location: LCCOMB_X16_Y5_N20
\inst|inst1|Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux31~1_combout\ = (!\inst|inst3|SALIDA\(5) & (\inst|inst1|Mux31~0_combout\ & (\inst|inst3|SALIDA\(0) $ (!\inst|inst3|SALIDA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(5),
	datab => \inst|inst3|SALIDA\(0),
	datac => \inst|inst1|Mux31~0_combout\,
	datad => \inst|inst3|SALIDA\(4),
	combout => \inst|inst1|Mux31~1_combout\);

-- Location: FF_X16_Y5_N21
\inst|inst5|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux31~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(0));

-- Location: LCCOMB_X13_Y5_N18
\inst3|inst202|OP2[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[0]~6_combout\ = (\inst3|inst206|selsrc\(1) & (((\inst|inst5|valor_interno\(0))))) # (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCB|SALIDA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCB|SALIDA\(0),
	datad => \inst|inst5|valor_interno\(0),
	combout => \inst3|inst202|OP2[0]~6_combout\);

-- Location: LCCOMB_X13_Y5_N6
\inst3|inst202|OP2[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[0]~7_combout\ = (\inst3|inst206|selsrc\(0) & \inst3|inst202|OP2[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst202|OP2[0]~6_combout\,
	combout => \inst3|inst202|OP2[0]~7_combout\);

-- Location: FF_X13_Y5_N7
\inst3|inst8|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2[0]~7_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(0));

-- Location: LCCOMB_X13_Y7_N4
\inst2|inst1357|$00000|auto_generated|result_node[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst2|inst6|SALIDA\(0))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst8|SALIDA\(0)))))) # 
-- (!\inst3|inst10|selregR\(0) & (((\inst3|inst8|SALIDA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(0),
	datab => \inst3|inst10|selregR\(0),
	datac => \inst3|inst700666|inst1000|Equal1~1_combout\,
	datad => \inst3|inst8|SALIDA\(0),
	combout => \inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\);

-- Location: LCCOMB_X15_Y4_N28
\inst3|inst206|selfalgs[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selfalgs\(1) = (!\inst3|inst206|comb~2_combout\ & ((\inst3|inst206|Equal3~2_combout\) # (\inst3|inst206|selfalgs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal3~2_combout\,
	datac => \inst3|inst206|comb~2_combout\,
	datad => \inst3|inst206|selfalgs\(1),
	combout => \inst3|inst206|selfalgs\(1));

-- Location: FF_X15_Y4_N29
\inst3|inst10|selfalgs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst206|selfalgs\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selfalgs\(1));

-- Location: LCCOMB_X14_Y4_N4
\inst2|inst2|datow[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(15) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(15),
	combout => \inst2|inst2|datow\(15));

-- Location: FF_X14_Y4_N5
\inst2|inst6|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(15),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(15));

-- Location: FF_X14_Y4_N15
\inst3|inst700666|ACCB|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(15),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(15));

-- Location: LCCOMB_X14_Y4_N0
\inst3|inst202|OP2[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(15) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCB|SALIDA\(15) & (!\inst3|inst206|selsrc\(1) & \inst3|inst206|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst700666|ACCB|SALIDA\(15),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP2\(15));

-- Location: FF_X14_Y4_N1
\inst3|inst8|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(15),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(15));

-- Location: LCCOMB_X14_Y4_N2
\inst2|inst1357|$00000|auto_generated|result_node[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[15]~0_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst2|inst6|SALIDA\(15)))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst3|inst8|SALIDA\(15))))) 
-- # (!\inst3|inst10|selregR\(0) & (\inst3|inst8|SALIDA\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(15),
	datab => \inst2|inst6|SALIDA\(15),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst700666|inst1000|Equal1~1_combout\,
	combout => \inst2|inst1357|$00000|auto_generated|result_node[15]~0_combout\);

-- Location: LCCOMB_X13_Y4_N8
\inst3|inst700666|ACCA|SALIDA[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[15]~feeder_combout\ = \inst2|inst6|SALIDA\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(15),
	combout => \inst3|inst700666|ACCA|SALIDA[15]~feeder_combout\);

-- Location: FF_X13_Y4_N9
\inst3|inst700666|ACCA|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[15]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(15));

-- Location: LCCOMB_X14_Y4_N12
\inst3|inst202|OP1[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(15) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(15) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCA|SALIDA\(15),
	combout => \inst3|inst202|OP1\(15));

-- Location: FF_X14_Y4_N13
\inst3|inst700|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(15),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(15));

-- Location: LCCOMB_X14_Y4_N26
\inst2|inst1356|$00000|auto_generated|result_node[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst2|inst6|SALIDA\(15)))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & 
-- (\inst3|inst700|SALIDA\(15))))) # (!\inst3|inst10|selregR\(0) & (\inst3|inst700|SALIDA\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(15),
	datab => \inst2|inst6|SALIDA\(15),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst700666|inst1000|Equal1~0_combout\,
	combout => \inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\);

-- Location: FF_X13_Y7_N9
\inst3|inst700666|ACCB|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(14),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(14));

-- Location: LCCOMB_X15_Y7_N8
\inst3|inst202|OP2[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(14) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCB|SALIDA\(14) & (!\inst3|inst206|selsrc\(1) & \inst3|inst206|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst700666|ACCB|SALIDA\(14),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP2\(14));

-- Location: FF_X15_Y7_N9
\inst3|inst8|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(14),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(14));

-- Location: LCCOMB_X15_Y7_N28
\inst2|inst1357|$00000|auto_generated|result_node[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[14]~1_combout\ = (\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst10|selregR\(0) & ((\inst2|inst6|SALIDA\(14)))) # (!\inst3|inst10|selregR\(0) & (\inst3|inst8|SALIDA\(14))))) # 
-- (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst3|inst8|SALIDA\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|inst1000|Equal1~1_combout\,
	datab => \inst3|inst8|SALIDA\(14),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst2|inst6|SALIDA\(14),
	combout => \inst2|inst1357|$00000|auto_generated|result_node[14]~1_combout\);

-- Location: LCCOMB_X15_Y4_N24
\inst3|inst206|selop[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selop\(0) = (!\inst3|inst206|comb~2_combout\ & ((\inst3|inst206|Equal3~2_combout\) # (\inst3|inst206|selop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|comb~2_combout\,
	datac => \inst3|inst206|Equal3~2_combout\,
	datad => \inst3|inst206|selop\(0),
	combout => \inst3|inst206|selop\(0));

-- Location: FF_X15_Y7_N3
\inst3|inst10|selop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst206|selop\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selop\(0));

-- Location: FF_X14_Y7_N15
\inst3|inst700666|ACCA|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(13),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(13));

-- Location: LCCOMB_X12_Y6_N22
\inst3|inst202|OP1[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(13) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(13) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(13),
	combout => \inst3|inst202|OP1\(13));

-- Location: FF_X12_Y6_N23
\inst3|inst700|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(13),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(13));

-- Location: LCCOMB_X12_Y6_N12
\inst2|inst1356|$00000|auto_generated|result_node[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst2|inst6|SALIDA\(13)))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & 
-- (\inst3|inst700|SALIDA\(13))))) # (!\inst3|inst10|selregR\(0) & (\inst3|inst700|SALIDA\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(13),
	datab => \inst2|inst6|SALIDA\(13),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst700666|inst1000|Equal1~0_combout\,
	combout => \inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\);

-- Location: LCCOMB_X12_Y6_N16
\inst2|inst|opres[13]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[13]~28_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\ & ((!\inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\))))) # (!\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\,
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\,
	combout => \inst2|inst|opres[13]~28_combout\);

-- Location: FF_X13_Y7_N31
\inst3|inst700666|ACCB|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(12));

-- Location: LCCOMB_X13_Y7_N30
\inst3|inst202|OP2[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(12) = (\inst3|inst206|selregr\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst700666|ACCB|SALIDA\(12) & \inst3|inst206|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst700666|ACCB|SALIDA\(12),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP2\(12));

-- Location: FF_X13_Y7_N23
\inst3|inst8|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(12));

-- Location: LCCOMB_X13_Y7_N22
\inst2|inst1357|$00000|auto_generated|result_node[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\ = (\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst10|selregR\(0) & ((\inst2|inst6|SALIDA\(12)))) # (!\inst3|inst10|selregR\(0) & (\inst3|inst8|SALIDA\(12))))) # 
-- (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (((\inst3|inst8|SALIDA\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|inst1000|Equal1~1_combout\,
	datab => \inst3|inst10|selregR\(0),
	datac => \inst3|inst8|SALIDA\(12),
	datad => \inst2|inst6|SALIDA\(12),
	combout => \inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\);

-- Location: FF_X14_Y7_N9
\inst3|inst700666|ACCA|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(11),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(11));

-- Location: LCCOMB_X12_Y6_N10
\inst3|inst202|OP1[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(11) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(11) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(11),
	combout => \inst3|inst202|OP1\(11));

-- Location: FF_X12_Y6_N11
\inst3|inst700|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(11),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(11));

-- Location: LCCOMB_X12_Y6_N24
\inst2|inst1356|$00000|auto_generated|result_node[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst2|inst6|SALIDA\(11)))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & 
-- (\inst3|inst700|SALIDA\(11))))) # (!\inst3|inst10|selregR\(0) & (\inst3|inst700|SALIDA\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(11),
	datab => \inst2|inst6|SALIDA\(11),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst700666|inst1000|Equal1~0_combout\,
	combout => \inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\);

-- Location: LCCOMB_X12_Y6_N6
\inst2|inst|opres[11]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[11]~24_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[11]~4_combout\ & ((!\inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[11]~4_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\))))) # (!\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst1357|$00000|auto_generated|result_node[11]~4_combout\,
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\,
	combout => \inst2|inst|opres[11]~24_combout\);

-- Location: FF_X13_Y6_N23
\inst3|inst700666|ACCA|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(10),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(10));

-- Location: LCCOMB_X13_Y6_N22
\inst3|inst202|OP1[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(10) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(10) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(10),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP1\(10));

-- Location: FF_X13_Y6_N29
\inst3|inst700|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(10),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(10));

-- Location: LCCOMB_X13_Y6_N28
\inst2|inst1356|$00000|auto_generated|result_node[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\ = (\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst3|inst10|selregR\(0) & (\inst2|inst6|SALIDA\(10))) # (!\inst3|inst10|selregR\(0) & ((\inst3|inst700|SALIDA\(10)))))) # 
-- (!\inst3|inst700666|inst1000|Equal1~0_combout\ & (((\inst3|inst700|SALIDA\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|inst1000|Equal1~0_combout\,
	datab => \inst2|inst6|SALIDA\(10),
	datac => \inst3|inst700|SALIDA\(10),
	datad => \inst3|inst10|selregR\(0),
	combout => \inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\);

-- Location: FF_X13_Y5_N3
\inst3|inst700666|ACCB|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(9),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(9));

-- Location: LCCOMB_X13_Y5_N10
\inst3|inst202|OP2[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(9) = (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & (\inst3|inst206|selregr\(0) & \inst3|inst700666|ACCB|SALIDA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(9),
	combout => \inst3|inst202|OP2\(9));

-- Location: FF_X14_Y6_N25
\inst3|inst8|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(9),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(9));

-- Location: LCCOMB_X14_Y6_N24
\inst2|inst1357|$00000|auto_generated|result_node[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[9]~6_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst2|inst6|SALIDA\(9))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst8|SALIDA\(9)))))) # 
-- (!\inst3|inst10|selregR\(0) & (((\inst3|inst8|SALIDA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selregR\(0),
	datab => \inst2|inst6|SALIDA\(9),
	datac => \inst3|inst8|SALIDA\(9),
	datad => \inst3|inst700666|inst1000|Equal1~1_combout\,
	combout => \inst2|inst1357|$00000|auto_generated|result_node[9]~6_combout\);

-- Location: LCCOMB_X14_Y6_N28
\inst2|inst|opres[9]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[9]~20_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[9]~6_combout\ & ((!\inst3|inst10|selop\(0)) # (!\inst2|inst1356|$00000|auto_generated|result_node[9]~6_combout\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[9]~6_combout\ & (\inst2|inst1356|$00000|auto_generated|result_node[9]~6_combout\)))) # (!\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst1357|$00000|auto_generated|result_node[9]~6_combout\,
	datac => \inst2|inst1356|$00000|auto_generated|result_node[9]~6_combout\,
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[9]~20_combout\);

-- Location: FF_X14_Y5_N25
\inst3|inst700666|ACCA|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(8),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(8));

-- Location: LCCOMB_X13_Y5_N22
\inst3|inst202|OP1[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(8) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(8) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(8),
	combout => \inst3|inst202|OP1\(8));

-- Location: FF_X13_Y5_N23
\inst3|inst700|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(8),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(8));

-- Location: LCCOMB_X13_Y5_N0
\inst2|inst1356|$00000|auto_generated|result_node[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst2|inst6|SALIDA\(8)))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst3|inst700|SALIDA\(8))))) 
-- # (!\inst3|inst10|selregR\(0) & (\inst3|inst700|SALIDA\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(8),
	datab => \inst3|inst10|selregR\(0),
	datac => \inst2|inst6|SALIDA\(8),
	datad => \inst3|inst700666|inst1000|Equal1~0_combout\,
	combout => \inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\);

-- Location: FF_X13_Y5_N27
\inst3|inst700666|ACCB|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(7));

-- Location: LCCOMB_X13_Y5_N12
\inst3|inst202|OP2[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(7) = (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCB|SALIDA\(7) & \inst3|inst206|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCB|SALIDA\(7),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP2\(7));

-- Location: FF_X13_Y5_N13
\inst3|inst8|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(7));

-- Location: LCCOMB_X13_Y5_N20
\inst2|inst1357|$00000|auto_generated|result_node[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[7]~8_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst2|inst6|SALIDA\(7))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst8|SALIDA\(7)))))) # 
-- (!\inst3|inst10|selregR\(0) & (((\inst3|inst8|SALIDA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(7),
	datab => \inst3|inst10|selregR\(0),
	datac => \inst3|inst700666|inst1000|Equal1~1_combout\,
	datad => \inst3|inst8|SALIDA\(7),
	combout => \inst2|inst1357|$00000|auto_generated|result_node[7]~8_combout\);

-- Location: LCCOMB_X15_Y5_N6
\inst2|inst|opres[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[7]~16_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\ & ((!\inst2|inst1357|$00000|auto_generated|result_node[7]~8_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[7]~8_combout\))))) # (!\inst3|inst10|selop\(2) & (\inst3|inst10|selop\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\,
	datad => \inst2|inst1357|$00000|auto_generated|result_node[7]~8_combout\,
	combout => \inst2|inst|opres[7]~16_combout\);

-- Location: LCCOMB_X15_Y7_N24
\inst2|inst|opres[16]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[16]~3_combout\ = (!\inst3|inst10|selop\(2) & !\inst3|inst10|selop\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selop\(2),
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[16]~3_combout\);

-- Location: CLKCTRL_G5
\inst2|inst|opres[16]~3clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|inst|opres[16]~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|inst|opres[16]~3clkctrl_outclk\);

-- Location: FF_X13_Y5_N5
\inst3|inst700666|ACCB|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(6),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(6));

-- Location: LCCOMB_X12_Y7_N16
\inst3|inst202|OP2[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(6) = (\inst3|inst206|selsrc\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & \inst3|inst700666|ACCB|SALIDA\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(6),
	combout => \inst3|inst202|OP2\(6));

-- Location: FF_X12_Y7_N17
\inst3|inst8|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(6),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(6));

-- Location: LCCOMB_X13_Y7_N0
\inst2|inst1357|$00000|auto_generated|result_node[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\ = (\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst10|selregR\(0) & ((\inst2|inst6|SALIDA\(6)))) # (!\inst3|inst10|selregR\(0) & (\inst3|inst8|SALIDA\(6))))) # 
-- (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst3|inst8|SALIDA\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|inst1000|Equal1~1_combout\,
	datab => \inst3|inst8|SALIDA\(6),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst2|inst6|SALIDA\(6),
	combout => \inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\);

-- Location: FF_X14_Y5_N21
\inst3|inst700666|ACCA|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(5));

-- Location: LCCOMB_X14_Y5_N14
\inst3|inst202|OP1[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(5) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(5) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCA|SALIDA\(5),
	combout => \inst3|inst202|OP1\(5));

-- Location: FF_X14_Y5_N15
\inst3|inst700|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(5));

-- Location: LCCOMB_X14_Y5_N16
\inst2|inst1356|$00000|auto_generated|result_node[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[5]~10_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst2|inst6|SALIDA\(5))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst3|inst700|SALIDA\(5)))))) 
-- # (!\inst3|inst10|selregR\(0) & (((\inst3|inst700|SALIDA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(5),
	datab => \inst3|inst700|SALIDA\(5),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst700666|inst1000|Equal1~0_combout\,
	combout => \inst2|inst1356|$00000|auto_generated|result_node[5]~10_combout\);

-- Location: LCCOMB_X17_Y4_N16
\inst|inst1|Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux27~0_combout\ = (\inst|inst3|SALIDA\(3) & (\inst|inst3|SALIDA\(2) & !\inst|inst3|SALIDA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(0),
	combout => \inst|inst1|Mux27~0_combout\);

-- Location: LCCOMB_X17_Y7_N26
\inst|inst1|Mux27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux27~1_combout\ = (!\inst|inst3|SALIDA\(5) & (!\inst|inst3|SALIDA\(1) & (!\inst|inst3|SALIDA\(4) & \inst|inst1|Mux27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(5),
	datab => \inst|inst3|SALIDA\(1),
	datac => \inst|inst3|SALIDA\(4),
	datad => \inst|inst1|Mux27~0_combout\,
	combout => \inst|inst1|Mux27~1_combout\);

-- Location: FF_X17_Y7_N27
\inst|inst5|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux27~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(4));

-- Location: FF_X11_Y7_N3
\inst3|inst700666|ACCB|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(4));

-- Location: LCCOMB_X15_Y7_N20
\inst3|inst202|OP2[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[4]~0_combout\ = (\inst3|inst206|selsrc\(1) & (((\inst|inst5|valor_interno\(4))))) # (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & ((\inst3|inst700666|ACCB|SALIDA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst|inst5|valor_interno\(4),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCB|SALIDA\(4),
	combout => \inst3|inst202|OP2[4]~0_combout\);

-- Location: LCCOMB_X15_Y7_N22
\inst3|inst202|OP2[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[4]~1_combout\ = (\inst3|inst206|selsrc\(0) & \inst3|inst202|OP2[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst202|OP2[4]~0_combout\,
	combout => \inst3|inst202|OP2[4]~1_combout\);

-- Location: FF_X15_Y7_N23
\inst3|inst8|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2[4]~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(4));

-- Location: LCCOMB_X13_Y7_N24
\inst2|inst1357|$00000|auto_generated|result_node[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\ = (\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst10|selregR\(0) & (\inst2|inst6|SALIDA\(4))) # (!\inst3|inst10|selregR\(0) & ((\inst3|inst8|SALIDA\(4)))))) # 
-- (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (((\inst3|inst8|SALIDA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|inst1000|Equal1~1_combout\,
	datab => \inst3|inst10|selregR\(0),
	datac => \inst2|inst6|SALIDA\(4),
	datad => \inst3|inst8|SALIDA\(4),
	combout => \inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\);

-- Location: LCCOMB_X14_Y7_N22
\inst2|inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~8_combout\ = ((\inst2|inst1357|$00000|auto_generated|result_node[3]~12_combout\ $ (\inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\ $ (!\inst2|inst|Add0~7\)))) # (GND)
-- \inst2|inst|Add0~9\ = CARRY((\inst2|inst1357|$00000|auto_generated|result_node[3]~12_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\) # (!\inst2|inst|Add0~7\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[3]~12_combout\ & (\inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\ & !\inst2|inst|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[3]~12_combout\,
	datab => \inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~7\,
	combout => \inst2|inst|Add0~8_combout\,
	cout => \inst2|inst|Add0~9\);

-- Location: LCCOMB_X14_Y7_N24
\inst2|inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~10_combout\ = (\inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\ & (\inst2|inst|Add0~9\ & VCC)) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\ & (!\inst2|inst|Add0~9\)))) # (!\inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\ & 
-- (!\inst2|inst|Add0~9\)) # (!\inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\ & ((\inst2|inst|Add0~9\) # (GND)))))
-- \inst2|inst|Add0~11\ = CARRY((\inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\ & (!\inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\ & !\inst2|inst|Add0~9\)) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\ & ((!\inst2|inst|Add0~9\) # (!\inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\,
	datab => \inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~9\,
	combout => \inst2|inst|Add0~10_combout\,
	cout => \inst2|inst|Add0~11\);

-- Location: LCCOMB_X14_Y7_N10
\inst2|inst|opres[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[4]~10_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & (\inst2|inst|Add0~10_combout\)) # (!\inst3|inst10|selop\(0) & 
-- ((\inst2|inst1356|$00000|auto_generated|result_node[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|Add0~10_combout\,
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|inst1356|$00000|auto_generated|result_node[5]~10_combout\,
	combout => \inst2|inst|opres[4]~10_combout\);

-- Location: LCCOMB_X14_Y7_N0
\inst2|inst|opres[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[4]~11_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\ & ((!\inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\) # (!\inst2|inst|opres[4]~10_combout\))) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\))))) # (!\inst3|inst10|selop\(2) & (\inst2|inst|opres[4]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|opres[4]~10_combout\,
	datac => \inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\,
	datad => \inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\,
	combout => \inst2|inst|opres[4]~11_combout\);

-- Location: LCCOMB_X14_Y7_N4
\inst2|inst|opres[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(4) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(4))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[4]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(4),
	datab => \inst2|inst|opres[4]~11_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(4));

-- Location: LCCOMB_X13_Y7_N8
\inst2|inst2|datow[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(4) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(4),
	combout => \inst2|inst2|datow\(4));

-- Location: FF_X13_Y7_N25
\inst2|inst6|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst2|datow\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(4));

-- Location: FF_X12_Y7_N29
\inst3|inst700666|ACCA|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(4));

-- Location: LCCOMB_X12_Y7_N14
\inst3|inst202|OP1[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(4) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(4) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(4),
	combout => \inst3|inst202|OP1\(4));

-- Location: FF_X12_Y7_N15
\inst3|inst700|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(4));

-- Location: LCCOMB_X13_Y7_N16
\inst2|inst1356|$00000|auto_generated|result_node[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst2|inst6|SALIDA\(4)))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst3|inst700|SALIDA\(4))))) 
-- # (!\inst3|inst10|selregR\(0) & (\inst3|inst700|SALIDA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(4),
	datab => \inst3|inst10|selregR\(0),
	datac => \inst3|inst700666|inst1000|Equal1~0_combout\,
	datad => \inst2|inst6|SALIDA\(4),
	combout => \inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\);

-- Location: LCCOMB_X14_Y7_N26
\inst2|inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~12_combout\ = ((\inst2|inst1357|$00000|auto_generated|result_node[5]~10_combout\ $ (\inst2|inst1356|$00000|auto_generated|result_node[5]~10_combout\ $ (!\inst2|inst|Add0~11\)))) # (GND)
-- \inst2|inst|Add0~13\ = CARRY((\inst2|inst1357|$00000|auto_generated|result_node[5]~10_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[5]~10_combout\) # (!\inst2|inst|Add0~11\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[5]~10_combout\ & (\inst2|inst1356|$00000|auto_generated|result_node[5]~10_combout\ & !\inst2|inst|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[5]~10_combout\,
	datab => \inst2|inst1356|$00000|auto_generated|result_node[5]~10_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~11\,
	combout => \inst2|inst|Add0~12_combout\,
	cout => \inst2|inst|Add0~13\);

-- Location: LCCOMB_X14_Y5_N12
\inst2|inst|opres[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[5]~12_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[5]~10_combout\ & ((!\inst2|inst1356|$00000|auto_generated|result_node[5]~10_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[5]~10_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[5]~10_combout\))))) # (!\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[5]~10_combout\,
	datab => \inst3|inst10|selop\(0),
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst1356|$00000|auto_generated|result_node[5]~10_combout\,
	combout => \inst2|inst|opres[5]~12_combout\);

-- Location: LCCOMB_X15_Y5_N16
\inst2|inst|opres[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[5]~13_combout\ = (\inst2|inst|opres[5]~12_combout\ & (((\inst2|inst|Add0~12_combout\) # (\inst3|inst10|selop\(2))))) # (!\inst2|inst|opres[5]~12_combout\ & (\inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\ & 
-- ((!\inst3|inst10|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\,
	datab => \inst2|inst|Add0~12_combout\,
	datac => \inst2|inst|opres[5]~12_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[5]~13_combout\);

-- Location: LCCOMB_X15_Y5_N12
\inst2|inst|opres[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(5) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(5)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[5]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[5]~13_combout\,
	datac => \inst2|inst|opres\(5),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(5));

-- Location: LCCOMB_X15_Y5_N30
\inst2|inst2|datow[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(5) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(5),
	combout => \inst2|inst2|datow\(5));

-- Location: FF_X15_Y5_N31
\inst2|inst6|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(5));

-- Location: FF_X13_Y5_N15
\inst3|inst700666|ACCB|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(5));

-- Location: LCCOMB_X14_Y5_N2
\inst3|inst202|OP2[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(5) = (\inst3|inst206|selregr\(0) & (\inst3|inst206|selsrc\(0) & (!\inst3|inst206|selsrc\(1) & \inst3|inst700666|ACCB|SALIDA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCB|SALIDA\(5),
	combout => \inst3|inst202|OP2\(5));

-- Location: FF_X14_Y5_N3
\inst3|inst8|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(5));

-- Location: LCCOMB_X14_Y5_N28
\inst2|inst1357|$00000|auto_generated|result_node[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[5]~10_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst2|inst6|SALIDA\(5))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst8|SALIDA\(5)))))) # 
-- (!\inst3|inst10|selregR\(0) & (((\inst3|inst8|SALIDA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(5),
	datab => \inst3|inst8|SALIDA\(5),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst700666|inst1000|Equal1~1_combout\,
	combout => \inst2|inst1357|$00000|auto_generated|result_node[5]~10_combout\);

-- Location: LCCOMB_X14_Y7_N28
\inst2|inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~14_combout\ = (\inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\ & (\inst2|inst|Add0~13\ & VCC)) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\ & (!\inst2|inst|Add0~13\)))) # (!\inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\ & 
-- (!\inst2|inst|Add0~13\)) # (!\inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\ & ((\inst2|inst|Add0~13\) # (GND)))))
-- \inst2|inst|Add0~15\ = CARRY((\inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\ & (!\inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\ & !\inst2|inst|Add0~13\)) # (!\inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\ 
-- & ((!\inst2|inst|Add0~13\) # (!\inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\,
	datab => \inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~13\,
	combout => \inst2|inst|Add0~14_combout\,
	cout => \inst2|inst|Add0~15\);

-- Location: LCCOMB_X14_Y7_N2
\inst2|inst|opres[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[6]~14_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & ((\inst2|inst|Add0~14_combout\))) # (!\inst3|inst10|selop\(0) & 
-- (\inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\,
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|inst|Add0~14_combout\,
	combout => \inst2|inst|opres[6]~14_combout\);

-- Location: LCCOMB_X14_Y7_N12
\inst2|inst|opres[6]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[6]~15_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\ & ((!\inst2|inst|opres[6]~14_combout\) # (!\inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\))) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\ & (\inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\)))) # (!\inst3|inst10|selop\(2) & (((\inst2|inst|opres[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\,
	datab => \inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|opres[6]~14_combout\,
	combout => \inst2|inst|opres[6]~15_combout\);

-- Location: LCCOMB_X14_Y7_N8
\inst2|inst|opres[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(6) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(6))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[6]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(6),
	datab => \inst2|inst|opres[16]~3clkctrl_outclk\,
	datad => \inst2|inst|opres[6]~15_combout\,
	combout => \inst2|inst|opres\(6));

-- Location: LCCOMB_X14_Y4_N22
\inst2|inst2|datow[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(6) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(6),
	combout => \inst2|inst2|datow\(6));

-- Location: FF_X14_Y4_N23
\inst2|inst6|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(6),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(6));

-- Location: FF_X14_Y7_N19
\inst3|inst700666|ACCA|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(6),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(6));

-- Location: LCCOMB_X14_Y4_N20
\inst3|inst202|OP1[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(6) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(6) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst700666|ACCA|SALIDA\(6),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP1\(6));

-- Location: FF_X14_Y4_N21
\inst3|inst700|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(6),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(6));

-- Location: LCCOMB_X14_Y4_N6
\inst2|inst1356|$00000|auto_generated|result_node[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst2|inst6|SALIDA\(6))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst3|inst700|SALIDA\(6)))))) 
-- # (!\inst3|inst10|selregR\(0) & (((\inst3|inst700|SALIDA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(6),
	datab => \inst3|inst700|SALIDA\(6),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst700666|inst1000|Equal1~0_combout\,
	combout => \inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\);

-- Location: LCCOMB_X14_Y7_N30
\inst2|inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~16_combout\ = ((\inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\ $ (\inst2|inst1357|$00000|auto_generated|result_node[7]~8_combout\ $ (!\inst2|inst|Add0~15\)))) # (GND)
-- \inst2|inst|Add0~17\ = CARRY((\inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[7]~8_combout\) # (!\inst2|inst|Add0~15\))) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\ & (\inst2|inst1357|$00000|auto_generated|result_node[7]~8_combout\ & !\inst2|inst|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\,
	datab => \inst2|inst1357|$00000|auto_generated|result_node[7]~8_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~15\,
	combout => \inst2|inst|Add0~16_combout\,
	cout => \inst2|inst|Add0~17\);

-- Location: LCCOMB_X15_Y5_N28
\inst2|inst|opres[7]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[7]~17_combout\ = (\inst2|inst|opres[7]~16_combout\ & ((\inst3|inst10|selop\(2)) # ((\inst2|inst|Add0~16_combout\)))) # (!\inst2|inst|opres[7]~16_combout\ & (!\inst3|inst10|selop\(2) & 
-- ((\inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[7]~16_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|Add0~16_combout\,
	datad => \inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\,
	combout => \inst2|inst|opres[7]~17_combout\);

-- Location: LCCOMB_X15_Y5_N18
\inst2|inst|opres[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(7) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(7)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[7]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[7]~17_combout\,
	datab => \inst2|inst|opres\(7),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(7));

-- Location: LCCOMB_X15_Y5_N20
\inst2|inst2|datow[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(7) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(7),
	combout => \inst2|inst2|datow\(7));

-- Location: FF_X15_Y5_N21
\inst2|inst6|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(7));

-- Location: FF_X14_Y5_N31
\inst3|inst700666|ACCA|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(7));

-- Location: LCCOMB_X14_Y4_N8
\inst3|inst202|OP1[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(7) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(7) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst700666|ACCA|SALIDA\(7),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP1\(7));

-- Location: FF_X14_Y4_N9
\inst3|inst700|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(7));

-- Location: LCCOMB_X14_Y4_N10
\inst2|inst1356|$00000|auto_generated|result_node[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst2|inst6|SALIDA\(7))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst3|inst700|SALIDA\(7)))))) 
-- # (!\inst3|inst10|selregR\(0) & (((\inst3|inst700|SALIDA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(7),
	datab => \inst3|inst700|SALIDA\(7),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst700666|inst1000|Equal1~0_combout\,
	combout => \inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\);

-- Location: LCCOMB_X14_Y6_N0
\inst2|inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~18_combout\ = (\inst2|inst1357|$00000|auto_generated|result_node[8]~7_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\ & (\inst2|inst|Add0~17\ & VCC)) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\ & (!\inst2|inst|Add0~17\)))) # (!\inst2|inst1357|$00000|auto_generated|result_node[8]~7_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\ & 
-- (!\inst2|inst|Add0~17\)) # (!\inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\ & ((\inst2|inst|Add0~17\) # (GND)))))
-- \inst2|inst|Add0~19\ = CARRY((\inst2|inst1357|$00000|auto_generated|result_node[8]~7_combout\ & (!\inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\ & !\inst2|inst|Add0~17\)) # (!\inst2|inst1357|$00000|auto_generated|result_node[8]~7_combout\ 
-- & ((!\inst2|inst|Add0~17\) # (!\inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[8]~7_combout\,
	datab => \inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~17\,
	combout => \inst2|inst|Add0~18_combout\,
	cout => \inst2|inst|Add0~19\);

-- Location: LCCOMB_X14_Y6_N20
\inst2|inst|opres[8]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[8]~18_combout\ = (\inst3|inst10|selop\(2) & (\inst3|inst10|selop\(0))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & ((\inst2|inst|Add0~18_combout\))) # (!\inst3|inst10|selop\(0) & 
-- (\inst2|inst1356|$00000|auto_generated|result_node[9]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst3|inst10|selop\(0),
	datac => \inst2|inst1356|$00000|auto_generated|result_node[9]~6_combout\,
	datad => \inst2|inst|Add0~18_combout\,
	combout => \inst2|inst|opres[8]~18_combout\);

-- Location: LCCOMB_X14_Y6_N18
\inst2|inst|opres[8]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[8]~19_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[8]~7_combout\ & ((!\inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\) # (!\inst2|inst|opres[8]~18_combout\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[8]~7_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\))))) # (!\inst3|inst10|selop\(2) & (((\inst2|inst|opres[8]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[8]~7_combout\,
	datab => \inst2|inst|opres[8]~18_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\,
	combout => \inst2|inst|opres[8]~19_combout\);

-- Location: LCCOMB_X14_Y6_N30
\inst2|inst|opres[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(8) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(8))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[8]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(8),
	datab => \inst2|inst|opres[8]~19_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(8));

-- Location: LCCOMB_X13_Y5_N30
\inst2|inst2|datow[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(8) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(8),
	combout => \inst2|inst2|datow\(8));

-- Location: FF_X13_Y5_N31
\inst2|inst6|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(8),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(8));

-- Location: FF_X13_Y5_N29
\inst3|inst700666|ACCB|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(8),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(8));

-- Location: LCCOMB_X13_Y5_N16
\inst3|inst202|OP2[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(8) = (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & (\inst3|inst206|selsrc\(0) & \inst3|inst700666|ACCB|SALIDA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(8),
	combout => \inst3|inst202|OP2\(8));

-- Location: FF_X13_Y5_N17
\inst3|inst8|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(8),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(8));

-- Location: LCCOMB_X13_Y5_N24
\inst2|inst1357|$00000|auto_generated|result_node[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[8]~7_combout\ = (\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst10|selregR\(0) & (\inst2|inst6|SALIDA\(8))) # (!\inst3|inst10|selregR\(0) & ((\inst3|inst8|SALIDA\(8)))))) # 
-- (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (((\inst3|inst8|SALIDA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(8),
	datab => \inst3|inst8|SALIDA\(8),
	datac => \inst3|inst700666|inst1000|Equal1~1_combout\,
	datad => \inst3|inst10|selregR\(0),
	combout => \inst2|inst1357|$00000|auto_generated|result_node[8]~7_combout\);

-- Location: LCCOMB_X14_Y6_N2
\inst2|inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~20_combout\ = ((\inst2|inst1356|$00000|auto_generated|result_node[9]~6_combout\ $ (\inst2|inst1357|$00000|auto_generated|result_node[9]~6_combout\ $ (!\inst2|inst|Add0~19\)))) # (GND)
-- \inst2|inst|Add0~21\ = CARRY((\inst2|inst1356|$00000|auto_generated|result_node[9]~6_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[9]~6_combout\) # (!\inst2|inst|Add0~19\))) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[9]~6_combout\ & (\inst2|inst1357|$00000|auto_generated|result_node[9]~6_combout\ & !\inst2|inst|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[9]~6_combout\,
	datab => \inst2|inst1357|$00000|auto_generated|result_node[9]~6_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~19\,
	combout => \inst2|inst|Add0~20_combout\,
	cout => \inst2|inst|Add0~21\);

-- Location: LCCOMB_X14_Y6_N26
\inst2|inst|opres[9]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[9]~21_combout\ = (\inst2|inst|opres[9]~20_combout\ & ((\inst3|inst10|selop\(2)) # ((\inst2|inst|Add0~20_combout\)))) # (!\inst2|inst|opres[9]~20_combout\ & (!\inst3|inst10|selop\(2) & 
-- ((\inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[9]~20_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|Add0~20_combout\,
	datad => \inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\,
	combout => \inst2|inst|opres[9]~21_combout\);

-- Location: LCCOMB_X15_Y5_N0
\inst2|inst|opres[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(9) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(9))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[9]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(9),
	datac => \inst2|inst|opres[9]~21_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(9));

-- Location: LCCOMB_X15_Y5_N22
\inst2|inst2|datow[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(9) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(9),
	combout => \inst2|inst2|datow\(9));

-- Location: FF_X15_Y5_N23
\inst2|inst6|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(9),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(9));

-- Location: FF_X13_Y6_N17
\inst3|inst700666|ACCA|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(9),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(9));

-- Location: LCCOMB_X13_Y6_N16
\inst3|inst202|OP1[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(9) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(9) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(9),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP1\(9));

-- Location: FF_X14_Y6_N23
\inst3|inst700|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(9),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(9));

-- Location: LCCOMB_X14_Y6_N22
\inst2|inst1356|$00000|auto_generated|result_node[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[9]~6_combout\ = (\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst3|inst10|selregR\(0) & (\inst2|inst6|SALIDA\(9))) # (!\inst3|inst10|selregR\(0) & ((\inst3|inst700|SALIDA\(9)))))) # 
-- (!\inst3|inst700666|inst1000|Equal1~0_combout\ & (((\inst3|inst700|SALIDA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|inst1000|Equal1~0_combout\,
	datab => \inst2|inst6|SALIDA\(9),
	datac => \inst3|inst700|SALIDA\(9),
	datad => \inst3|inst10|selregR\(0),
	combout => \inst2|inst1356|$00000|auto_generated|result_node[9]~6_combout\);

-- Location: LCCOMB_X14_Y6_N4
\inst2|inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~22_combout\ = (\inst2|inst1357|$00000|auto_generated|result_node[10]~5_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\ & (\inst2|inst|Add0~21\ & VCC)) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\ & (!\inst2|inst|Add0~21\)))) # (!\inst2|inst1357|$00000|auto_generated|result_node[10]~5_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\ & 
-- (!\inst2|inst|Add0~21\)) # (!\inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\ & ((\inst2|inst|Add0~21\) # (GND)))))
-- \inst2|inst|Add0~23\ = CARRY((\inst2|inst1357|$00000|auto_generated|result_node[10]~5_combout\ & (!\inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\ & !\inst2|inst|Add0~21\)) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[10]~5_combout\ & ((!\inst2|inst|Add0~21\) # (!\inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[10]~5_combout\,
	datab => \inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~21\,
	combout => \inst2|inst|Add0~22_combout\,
	cout => \inst2|inst|Add0~23\);

-- Location: LCCOMB_X13_Y6_N6
\inst2|inst|opres[10]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[10]~22_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & ((\inst2|inst|Add0~22_combout\))) # (!\inst3|inst10|selop\(0) & 
-- (\inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|inst|Add0~22_combout\,
	combout => \inst2|inst|opres[10]~22_combout\);

-- Location: LCCOMB_X13_Y6_N14
\inst2|inst|opres[10]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[10]~23_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[10]~5_combout\ & ((!\inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\) # (!\inst2|inst|opres[10]~22_combout\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[10]~5_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\))))) # (!\inst3|inst10|selop\(2) & (\inst2|inst|opres[10]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[10]~22_combout\,
	datab => \inst2|inst1357|$00000|auto_generated|result_node[10]~5_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\,
	combout => \inst2|inst|opres[10]~23_combout\);

-- Location: LCCOMB_X13_Y6_N24
\inst2|inst|opres[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(10) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(10)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[10]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[10]~23_combout\,
	datab => \inst2|inst|opres\(10),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(10));

-- Location: LCCOMB_X13_Y6_N4
\inst2|inst2|datow[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(10) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(10),
	combout => \inst2|inst2|datow\(10));

-- Location: FF_X13_Y6_N5
\inst2|inst6|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(10),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(10));

-- Location: LCCOMB_X11_Y7_N24
\inst3|inst700666|ACCB|SALIDA[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[10]~feeder_combout\ = \inst2|inst6|SALIDA\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(10),
	combout => \inst3|inst700666|ACCB|SALIDA[10]~feeder_combout\);

-- Location: FF_X11_Y7_N25
\inst3|inst700666|ACCB|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(10));

-- Location: LCCOMB_X13_Y6_N26
\inst3|inst202|OP2[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(10) = (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & (\inst3|inst206|selregr\(0) & \inst3|inst700666|ACCB|SALIDA\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(10),
	combout => \inst3|inst202|OP2\(10));

-- Location: FF_X13_Y6_N27
\inst3|inst8|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(10),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(10));

-- Location: LCCOMB_X13_Y6_N8
\inst2|inst1357|$00000|auto_generated|result_node[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[10]~5_combout\ = (\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst10|selregR\(0) & ((\inst2|inst6|SALIDA\(10)))) # (!\inst3|inst10|selregR\(0) & (\inst3|inst8|SALIDA\(10))))) # 
-- (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst3|inst8|SALIDA\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(10),
	datab => \inst2|inst6|SALIDA\(10),
	datac => \inst3|inst700666|inst1000|Equal1~1_combout\,
	datad => \inst3|inst10|selregR\(0),
	combout => \inst2|inst1357|$00000|auto_generated|result_node[10]~5_combout\);

-- Location: LCCOMB_X14_Y6_N6
\inst2|inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~24_combout\ = ((\inst2|inst1357|$00000|auto_generated|result_node[11]~4_combout\ $ (\inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\ $ (!\inst2|inst|Add0~23\)))) # (GND)
-- \inst2|inst|Add0~25\ = CARRY((\inst2|inst1357|$00000|auto_generated|result_node[11]~4_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\) # (!\inst2|inst|Add0~23\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[11]~4_combout\ & (\inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\ & !\inst2|inst|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[11]~4_combout\,
	datab => \inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~23\,
	combout => \inst2|inst|Add0~24_combout\,
	cout => \inst2|inst|Add0~25\);

-- Location: LCCOMB_X15_Y6_N6
\inst2|inst|opres[11]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[11]~25_combout\ = (\inst2|inst|opres[11]~24_combout\ & (((\inst3|inst10|selop\(2)) # (\inst2|inst|Add0~24_combout\)))) # (!\inst2|inst|opres[11]~24_combout\ & (\inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\ & 
-- (!\inst3|inst10|selop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\,
	datab => \inst2|inst|opres[11]~24_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|Add0~24_combout\,
	combout => \inst2|inst|opres[11]~25_combout\);

-- Location: LCCOMB_X15_Y6_N2
\inst2|inst|opres[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(11) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(11)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[11]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[11]~25_combout\,
	datac => \inst2|inst|opres\(11),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(11));

-- Location: LCCOMB_X15_Y6_N8
\inst2|inst2|datow[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(11) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(11),
	combout => \inst2|inst2|datow\(11));

-- Location: FF_X15_Y6_N9
\inst2|inst6|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(11),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(11));

-- Location: FF_X14_Y6_N3
\inst3|inst700666|ACCB|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(11),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(11));

-- Location: LCCOMB_X12_Y6_N30
\inst3|inst202|OP2[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(11) = (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & (\inst3|inst700666|ACCB|SALIDA\(11) & \inst3|inst206|selregr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst700666|ACCB|SALIDA\(11),
	datad => \inst3|inst206|selregr\(0),
	combout => \inst3|inst202|OP2\(11));

-- Location: FF_X12_Y6_N31
\inst3|inst8|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(11),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(11));

-- Location: LCCOMB_X12_Y6_N8
\inst2|inst1357|$00000|auto_generated|result_node[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[11]~4_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst2|inst6|SALIDA\(11))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst8|SALIDA\(11)))))) 
-- # (!\inst3|inst10|selregR\(0) & (((\inst3|inst8|SALIDA\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selregR\(0),
	datab => \inst2|inst6|SALIDA\(11),
	datac => \inst3|inst8|SALIDA\(11),
	datad => \inst3|inst700666|inst1000|Equal1~1_combout\,
	combout => \inst2|inst1357|$00000|auto_generated|result_node[11]~4_combout\);

-- Location: LCCOMB_X14_Y6_N8
\inst2|inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~26_combout\ = (\inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\ & (\inst2|inst|Add0~25\ & VCC)) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\ & (!\inst2|inst|Add0~25\)))) # (!\inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\ & 
-- (!\inst2|inst|Add0~25\)) # (!\inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\ & ((\inst2|inst|Add0~25\) # (GND)))))
-- \inst2|inst|Add0~27\ = CARRY((\inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\ & (!\inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\ & !\inst2|inst|Add0~25\)) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\ & ((!\inst2|inst|Add0~25\) # (!\inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\,
	datab => \inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~25\,
	combout => \inst2|inst|Add0~26_combout\,
	cout => \inst2|inst|Add0~27\);

-- Location: LCCOMB_X15_Y6_N16
\inst2|inst|opres[12]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[12]~26_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & ((\inst2|inst|Add0~26_combout\))) # (!\inst3|inst10|selop\(0) & 
-- (\inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|inst|Add0~26_combout\,
	combout => \inst2|inst|opres[12]~26_combout\);

-- Location: LCCOMB_X15_Y6_N22
\inst2|inst|opres[12]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[12]~27_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\ & ((!\inst2|inst|opres[12]~26_combout\) # (!\inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\ & (\inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\)))) # (!\inst3|inst10|selop\(2) & (((\inst2|inst|opres[12]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\,
	datab => \inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\,
	datac => \inst2|inst|opres[12]~26_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[12]~27_combout\);

-- Location: LCCOMB_X15_Y6_N28
\inst2|inst|opres[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(12) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(12)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[12]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[12]~27_combout\,
	datab => \inst2|inst|opres\(12),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(12));

-- Location: LCCOMB_X15_Y6_N18
\inst2|inst2|datow[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(12) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(12),
	combout => \inst2|inst2|datow\(12));

-- Location: FF_X15_Y6_N19
\inst2|inst6|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(12));

-- Location: FF_X14_Y7_N31
\inst3|inst700666|ACCA|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(12));

-- Location: LCCOMB_X15_Y7_N26
\inst3|inst202|OP1[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(12) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(12) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst700666|ACCA|SALIDA\(12),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP1\(12));

-- Location: FF_X15_Y7_N27
\inst3|inst700|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(12));

-- Location: LCCOMB_X15_Y7_N14
\inst2|inst1356|$00000|auto_generated|result_node[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst2|inst6|SALIDA\(12)))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & 
-- (\inst3|inst700|SALIDA\(12))))) # (!\inst3|inst10|selregR\(0) & (\inst3|inst700|SALIDA\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(12),
	datab => \inst3|inst10|selregR\(0),
	datac => \inst2|inst6|SALIDA\(12),
	datad => \inst3|inst700666|inst1000|Equal1~0_combout\,
	combout => \inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\);

-- Location: LCCOMB_X14_Y6_N10
\inst2|inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~28_combout\ = ((\inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\ $ (\inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\ $ (!\inst2|inst|Add0~27\)))) # (GND)
-- \inst2|inst|Add0~29\ = CARRY((\inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\) # (!\inst2|inst|Add0~27\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\ & (\inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\ & !\inst2|inst|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\,
	datab => \inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~27\,
	combout => \inst2|inst|Add0~28_combout\,
	cout => \inst2|inst|Add0~29\);

-- Location: LCCOMB_X12_Y6_N14
\inst2|inst|opres[13]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[13]~29_combout\ = (\inst2|inst|opres[13]~28_combout\ & ((\inst2|inst|Add0~28_combout\) # ((\inst3|inst10|selop\(2))))) # (!\inst2|inst|opres[13]~28_combout\ & (((\inst2|inst1356|$00000|auto_generated|result_node[14]~1_combout\ & 
-- !\inst3|inst10|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[13]~28_combout\,
	datab => \inst2|inst|Add0~28_combout\,
	datac => \inst2|inst1356|$00000|auto_generated|result_node[14]~1_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[13]~29_combout\);

-- Location: LCCOMB_X12_Y6_N28
\inst2|inst|opres[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(13) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(13)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[13]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[13]~29_combout\,
	datab => \inst2|inst|opres\(13),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(13));

-- Location: LCCOMB_X12_Y6_N0
\inst2|inst2|datow[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(13) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(13),
	combout => \inst2|inst2|datow\(13));

-- Location: FF_X12_Y6_N1
\inst2|inst6|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(13),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(13));

-- Location: LCCOMB_X12_Y6_N20
\inst3|inst700666|ACCB|SALIDA[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[13]~feeder_combout\ = \inst2|inst6|SALIDA\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(13),
	combout => \inst3|inst700666|ACCB|SALIDA[13]~feeder_combout\);

-- Location: FF_X12_Y6_N21
\inst3|inst700666|ACCB|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[13]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(13));

-- Location: LCCOMB_X12_Y6_N18
\inst3|inst202|OP2[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(13) = (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & (\inst3|inst206|selregr\(0) & \inst3|inst700666|ACCB|SALIDA\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(13),
	combout => \inst3|inst202|OP2\(13));

-- Location: FF_X12_Y6_N19
\inst3|inst8|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(13),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(13));

-- Location: LCCOMB_X12_Y6_N4
\inst2|inst1357|$00000|auto_generated|result_node[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\ = (\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst10|selregR\(0) & (\inst2|inst6|SALIDA\(13))) # (!\inst3|inst10|selregR\(0) & ((\inst3|inst8|SALIDA\(13)))))) # 
-- (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (((\inst3|inst8|SALIDA\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|inst1000|Equal1~1_combout\,
	datab => \inst2|inst6|SALIDA\(13),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst8|SALIDA\(13),
	combout => \inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\);

-- Location: LCCOMB_X14_Y6_N12
\inst2|inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~30_combout\ = (\inst2|inst1356|$00000|auto_generated|result_node[14]~1_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[14]~1_combout\ & (\inst2|inst|Add0~29\ & VCC)) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[14]~1_combout\ & (!\inst2|inst|Add0~29\)))) # (!\inst2|inst1356|$00000|auto_generated|result_node[14]~1_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[14]~1_combout\ & 
-- (!\inst2|inst|Add0~29\)) # (!\inst2|inst1357|$00000|auto_generated|result_node[14]~1_combout\ & ((\inst2|inst|Add0~29\) # (GND)))))
-- \inst2|inst|Add0~31\ = CARRY((\inst2|inst1356|$00000|auto_generated|result_node[14]~1_combout\ & (!\inst2|inst1357|$00000|auto_generated|result_node[14]~1_combout\ & !\inst2|inst|Add0~29\)) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[14]~1_combout\ & ((!\inst2|inst|Add0~29\) # (!\inst2|inst1357|$00000|auto_generated|result_node[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[14]~1_combout\,
	datab => \inst2|inst1357|$00000|auto_generated|result_node[14]~1_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~29\,
	combout => \inst2|inst|Add0~30_combout\,
	cout => \inst2|inst|Add0~31\);

-- Location: LCCOMB_X13_Y6_N10
\inst2|inst|opres[14]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[14]~30_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & ((\inst2|inst|Add0~30_combout\))) # (!\inst3|inst10|selop\(0) & 
-- (\inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\,
	datac => \inst2|inst|Add0~30_combout\,
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[14]~30_combout\);

-- Location: LCCOMB_X13_Y6_N2
\inst2|inst|opres[14]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[14]~31_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[14]~1_combout\ & ((!\inst2|inst1356|$00000|auto_generated|result_node[14]~1_combout\) # (!\inst2|inst|opres[14]~30_combout\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[14]~1_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[14]~1_combout\))))) # (!\inst3|inst10|selop\(2) & (\inst2|inst|opres[14]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[14]~30_combout\,
	datab => \inst2|inst1357|$00000|auto_generated|result_node[14]~1_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst1356|$00000|auto_generated|result_node[14]~1_combout\,
	combout => \inst2|inst|opres[14]~31_combout\);

-- Location: LCCOMB_X13_Y6_N18
\inst2|inst|opres[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(14) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(14)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[14]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[14]~31_combout\,
	datab => \inst2|inst|opres\(14),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(14));

-- Location: LCCOMB_X13_Y6_N0
\inst2|inst2|datow[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(14) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(14),
	combout => \inst2|inst2|datow\(14));

-- Location: FF_X13_Y6_N1
\inst2|inst6|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(14),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(14));

-- Location: LCCOMB_X13_Y6_N20
\inst3|inst700666|ACCA|SALIDA[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[14]~feeder_combout\ = \inst2|inst6|SALIDA\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(14),
	combout => \inst3|inst700666|ACCA|SALIDA[14]~feeder_combout\);

-- Location: FF_X13_Y6_N21
\inst3|inst700666|ACCA|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[14]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(14));

-- Location: LCCOMB_X13_Y6_N30
\inst3|inst202|OP1[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(14) = (\inst3|inst700666|ACCA|SALIDA\(14) & (\inst3|inst206|selregr\(0) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst700666|ACCA|SALIDA\(14),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP1\(14));

-- Location: FF_X13_Y6_N31
\inst3|inst700|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(14),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(14));

-- Location: LCCOMB_X13_Y6_N12
\inst2|inst1356|$00000|auto_generated|result_node[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[14]~1_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst2|inst6|SALIDA\(14)))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & 
-- (\inst3|inst700|SALIDA\(14))))) # (!\inst3|inst10|selregR\(0) & (\inst3|inst700|SALIDA\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(14),
	datab => \inst3|inst10|selregR\(0),
	datac => \inst3|inst700666|inst1000|Equal1~0_combout\,
	datad => \inst2|inst6|SALIDA\(14),
	combout => \inst2|inst1356|$00000|auto_generated|result_node[14]~1_combout\);

-- Location: LCCOMB_X14_Y6_N14
\inst2|inst|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~32_combout\ = ((\inst2|inst1357|$00000|auto_generated|result_node[15]~0_combout\ $ (\inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\ $ (!\inst2|inst|Add0~31\)))) # (GND)
-- \inst2|inst|Add0~33\ = CARRY((\inst2|inst1357|$00000|auto_generated|result_node[15]~0_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\) # (!\inst2|inst|Add0~31\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[15]~0_combout\ & (\inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\ & !\inst2|inst|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[15]~0_combout\,
	datab => \inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~31\,
	combout => \inst2|inst|Add0~32_combout\,
	cout => \inst2|inst|Add0~33\);

-- Location: LCCOMB_X14_Y6_N16
\inst2|inst|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~34_combout\ = \inst2|inst|Add0~33\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|inst|Add0~33\,
	combout => \inst2|inst|Add0~34_combout\);

-- Location: LCCOMB_X15_Y4_N22
\inst2|inst|opres[16]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[16]~34_combout\ = (\inst2|inst|Add0~34_combout\ & (!\inst3|inst10|selop\(2) & \inst3|inst10|selop\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|Add0~34_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[16]~34_combout\);

-- Location: LCCOMB_X15_Y4_N20
\inst2|inst|opres[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(16) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(16)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[16]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[16]~34_combout\,
	datac => \inst2|inst|opres[16]~3clkctrl_outclk\,
	datad => \inst2|inst|opres\(16),
	combout => \inst2|inst|opres\(16));

-- Location: LCCOMB_X15_Y4_N26
\inst2|inst3|ci\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|ci~combout\ = (\RESET~input_o\ & ((\inst3|inst10|selfalgs\(1) & ((\inst2|inst|opres\(16)))) # (!\inst3|inst10|selfalgs\(1) & (\inst2|inst3|ci~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst3|inst10|selfalgs\(1),
	datac => \inst2|inst3|ci~combout\,
	datad => \inst2|inst|opres\(16),
	combout => \inst2|inst3|ci~combout\);

-- Location: LCCOMB_X16_Y6_N20
\inst3|inst206|comb~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~11_combout\ = (!\inst3|inst206|Equal0~3_combout\ & ((\inst3|inst206|comb~4_combout\) # (!\inst3|inst206|selregr[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~3_combout\,
	datac => \inst3|inst206|selregr[3]~1_combout\,
	datad => \inst3|inst206|comb~4_combout\,
	combout => \inst3|inst206|comb~11_combout\);

-- Location: LCCOMB_X16_Y6_N26
\inst3|inst206|comb~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~10_combout\ = (!\inst3|inst206|Equal0~3_combout\ & (\inst3|inst206|selregr[3]~1_combout\ & \inst3|inst206|comb~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~3_combout\,
	datac => \inst3|inst206|selregr[3]~1_combout\,
	datad => \inst3|inst206|comb~4_combout\,
	combout => \inst3|inst206|comb~10_combout\);

-- Location: LCCOMB_X16_Y6_N18
\inst3|inst206|selc\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selc~combout\ = (!\inst3|inst206|comb~10_combout\ & ((\inst3|inst206|selc~combout\) # (!\inst3|inst206|comb~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|comb~11_combout\,
	datac => \inst3|inst206|comb~10_combout\,
	datad => \inst3|inst206|selc~combout\,
	combout => \inst3|inst206|selc~combout\);

-- Location: FF_X14_Y7_N5
\inst3|inst10|selc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst206|selc~combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selc~q\);

-- Location: LCCOMB_X14_Y7_N14
\inst2|inst|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~1_cout\ = CARRY((\inst2|inst3|ci~combout\ & !\inst3|inst10|selc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|ci~combout\,
	datab => \inst3|inst10|selc~q\,
	datad => VCC,
	cout => \inst2|inst|Add0~1_cout\);

-- Location: LCCOMB_X14_Y7_N16
\inst2|inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~2_combout\ = (\inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\ & (\inst2|inst|Add0~1_cout\ & VCC)) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\ & (!\inst2|inst|Add0~1_cout\)))) # (!\inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\ & 
-- (!\inst2|inst|Add0~1_cout\)) # (!\inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\ & ((\inst2|inst|Add0~1_cout\) # (GND)))))
-- \inst2|inst|Add0~3\ = CARRY((\inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\ & (!\inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\ & !\inst2|inst|Add0~1_cout\)) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\ & ((!\inst2|inst|Add0~1_cout\) # (!\inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\,
	datab => \inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~1_cout\,
	combout => \inst2|inst|Add0~2_combout\,
	cout => \inst2|inst|Add0~3\);

-- Location: LCCOMB_X14_Y7_N18
\inst2|inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~4_combout\ = ((\inst2|inst1357|$00000|auto_generated|result_node[1]~14_combout\ $ (\inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\ $ (!\inst2|inst|Add0~3\)))) # (GND)
-- \inst2|inst|Add0~5\ = CARRY((\inst2|inst1357|$00000|auto_generated|result_node[1]~14_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\) # (!\inst2|inst|Add0~3\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[1]~14_combout\ & (\inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\ & !\inst2|inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[1]~14_combout\,
	datab => \inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~3\,
	combout => \inst2|inst|Add0~4_combout\,
	cout => \inst2|inst|Add0~5\);

-- Location: LCCOMB_X14_Y7_N20
\inst2|inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~6_combout\ = (\inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\ & (\inst2|inst|Add0~5\ & VCC)) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\ & (!\inst2|inst|Add0~5\)))) # (!\inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\ & 
-- (!\inst2|inst|Add0~5\)) # (!\inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\ & ((\inst2|inst|Add0~5\) # (GND)))))
-- \inst2|inst|Add0~7\ = CARRY((\inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\ & (!\inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\ & !\inst2|inst|Add0~5\)) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\ & ((!\inst2|inst|Add0~5\) # (!\inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\,
	datab => \inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~5\,
	combout => \inst2|inst|Add0~6_combout\,
	cout => \inst2|inst|Add0~7\);

-- Location: LCCOMB_X16_Y7_N8
\inst2|inst|opres[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[3]~8_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\ & ((!\inst2|inst1357|$00000|auto_generated|result_node[3]~12_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[3]~12_combout\))))) # (!\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\,
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|inst1357|$00000|auto_generated|result_node[3]~12_combout\,
	combout => \inst2|inst|opres[3]~8_combout\);

-- Location: LCCOMB_X16_Y7_N26
\inst2|inst|opres[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[3]~9_combout\ = (\inst3|inst10|selop\(2) & (((\inst2|inst|opres[3]~8_combout\)))) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[3]~8_combout\ & (\inst2|inst|Add0~8_combout\)) # (!\inst2|inst|opres[3]~8_combout\ & 
-- ((\inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Add0~8_combout\,
	datab => \inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|opres[3]~8_combout\,
	combout => \inst2|inst|opres[3]~9_combout\);

-- Location: LCCOMB_X16_Y7_N30
\inst2|inst|opres[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(3) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(3)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[3]~9_combout\,
	datac => \inst2|inst|opres\(3),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(3));

-- Location: LCCOMB_X16_Y7_N22
\inst2|inst2|datow[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(3) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datac => \inst2|inst|opres\(3),
	combout => \inst2|inst2|datow\(3));

-- Location: FF_X16_Y7_N23
\inst2|inst6|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(3));

-- Location: FF_X17_Y7_N7
\inst|inst3|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst3|SALIDA[3]~12_combout\,
	asdata => \inst2|inst6|SALIDA\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(3));

-- Location: LCCOMB_X17_Y7_N8
\inst|inst3|SALIDA[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[4]~14_combout\ = (\inst|inst3|SALIDA\(4) & (\inst|inst3|SALIDA[3]~13\ $ (GND))) # (!\inst|inst3|SALIDA\(4) & (!\inst|inst3|SALIDA[3]~13\ & VCC))
-- \inst|inst3|SALIDA[4]~15\ = CARRY((\inst|inst3|SALIDA\(4) & !\inst|inst3|SALIDA[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(4),
	datad => VCC,
	cin => \inst|inst3|SALIDA[3]~13\,
	combout => \inst|inst3|SALIDA[4]~14_combout\,
	cout => \inst|inst3|SALIDA[4]~15\);

-- Location: FF_X17_Y7_N9
\inst|inst3|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst3|SALIDA[4]~14_combout\,
	asdata => \inst2|inst6|SALIDA\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(4));

-- Location: LCCOMB_X17_Y7_N10
\inst|inst3|SALIDA[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[5]~16_combout\ = \inst|inst3|SALIDA[4]~15\ $ (\inst|inst3|SALIDA\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst3|SALIDA\(5),
	cin => \inst|inst3|SALIDA[4]~15\,
	combout => \inst|inst3|SALIDA[5]~16_combout\);

-- Location: FF_X17_Y7_N11
\inst|inst3|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst3|SALIDA[5]~16_combout\,
	asdata => \inst2|inst6|SALIDA\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(5));

-- Location: LCCOMB_X16_Y5_N22
\inst|inst1|Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux15~3_combout\ = (\inst|inst3|SALIDA\(0) & ((\inst|inst3|SALIDA\(1) & (!\inst|inst3|SALIDA\(2) & \inst|inst3|SALIDA\(3))) # (!\inst|inst3|SALIDA\(1) & (\inst|inst3|SALIDA\(2))))) # (!\inst|inst3|SALIDA\(0) & ((\inst|inst3|SALIDA\(3)) # 
-- (\inst|inst3|SALIDA\(1) $ (\inst|inst3|SALIDA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst3|SALIDA\(0),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(3),
	combout => \inst|inst1|Mux15~3_combout\);

-- Location: LCCOMB_X16_Y5_N30
\inst|inst1|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux15~1_combout\ = (\inst|inst3|SALIDA\(2)) # ((\inst|inst3|SALIDA\(3)) # ((\inst|inst3|SALIDA\(1) & \inst|inst3|SALIDA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst3|SALIDA\(0),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(3),
	combout => \inst|inst1|Mux15~1_combout\);

-- Location: LCCOMB_X16_Y5_N24
\inst|inst1|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux15~0_combout\ = (\inst|inst3|SALIDA\(0) & ((\inst|inst3|SALIDA\(1)) # (\inst|inst3|SALIDA\(2) $ (!\inst|inst3|SALIDA\(3))))) # (!\inst|inst3|SALIDA\(0) & ((\inst|inst3|SALIDA\(2)) # (\inst|inst3|SALIDA\(1) $ (\inst|inst3|SALIDA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst3|SALIDA\(0),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(3),
	combout => \inst|inst1|Mux15~0_combout\);

-- Location: LCCOMB_X16_Y5_N0
\inst|inst1|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux15~2_combout\ = (!\inst|inst3|SALIDA\(4) & ((\inst|inst3|SALIDA\(5) & (!\inst|inst1|Mux15~1_combout\)) # (!\inst|inst3|SALIDA\(5) & ((\inst|inst1|Mux15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(4),
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst1|Mux15~1_combout\,
	datad => \inst|inst1|Mux15~0_combout\,
	combout => \inst|inst1|Mux15~2_combout\);

-- Location: LCCOMB_X16_Y5_N28
\inst|inst1|Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux15~4_combout\ = (\inst|inst1|Mux15~2_combout\) # ((!\inst|inst3|SALIDA\(5) & (\inst|inst3|SALIDA\(4) & \inst|inst1|Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(5),
	datab => \inst|inst3|SALIDA\(4),
	datac => \inst|inst1|Mux15~3_combout\,
	datad => \inst|inst1|Mux15~2_combout\,
	combout => \inst|inst1|Mux15~4_combout\);

-- Location: FF_X16_Y5_N29
\inst|inst5|valor_interno[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux15~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(16));

-- Location: LCCOMB_X16_Y7_N20
\inst3|inst206|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal2~0_combout\ = (\inst|inst5|valor_interno\(17)) # ((\inst|inst5|valor_interno\(20)) # (\inst|inst5|valor_interno\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(17),
	datac => \inst|inst5|valor_interno\(20),
	datad => \inst|inst5|valor_interno\(19),
	combout => \inst3|inst206|Equal2~0_combout\);

-- Location: LCCOMB_X16_Y7_N18
\inst3|inst206|seldato~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|seldato~2_combout\ = (((\inst3|inst206|Equal2~0_combout\) # (!\inst3|inst206|comb~14_combout\)) # (!\inst|inst5|valor_interno\(16))) # (!\inst3|inst206|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal3~1_combout\,
	datab => \inst|inst5|valor_interno\(16),
	datac => \inst3|inst206|comb~14_combout\,
	datad => \inst3|inst206|Equal2~0_combout\,
	combout => \inst3|inst206|seldato~2_combout\);

-- Location: LCCOMB_X15_Y7_N16
\inst3|inst206|selsrc[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selsrc\(0) = (\inst3|inst206|seldato~2_combout\ & ((\inst3|inst206|selregr[3]~2_combout\) # (\inst3|inst206|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|selregr[3]~2_combout\,
	datac => \inst3|inst206|seldato~2_combout\,
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst206|selsrc\(0));

-- Location: FF_X13_Y7_N3
\inst3|inst700666|ACCB|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(2));

-- Location: LCCOMB_X16_Y5_N26
\inst|inst1|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux29~0_combout\ = (!\inst|inst3|SALIDA\(0) & (\inst|inst3|SALIDA\(3) & (\inst|inst3|SALIDA\(1) $ (\inst|inst3|SALIDA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst3|SALIDA\(0),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(3),
	combout => \inst|inst1|Mux29~0_combout\);

-- Location: LCCOMB_X16_Y5_N2
\inst|inst1|Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux29~1_combout\ = (!\inst|inst3|SALIDA\(4) & (\inst|inst1|Mux29~0_combout\ & !\inst|inst3|SALIDA\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(4),
	datac => \inst|inst1|Mux29~0_combout\,
	datad => \inst|inst3|SALIDA\(5),
	combout => \inst|inst1|Mux29~1_combout\);

-- Location: FF_X16_Y5_N3
\inst|inst5|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux29~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(2));

-- Location: LCCOMB_X13_Y7_N2
\inst3|inst202|OP2[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[2]~4_combout\ = (\inst3|inst206|selsrc\(1) & (((\inst|inst5|valor_interno\(2))))) # (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCB|SALIDA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst700666|ACCB|SALIDA\(2),
	datad => \inst|inst5|valor_interno\(2),
	combout => \inst3|inst202|OP2[2]~4_combout\);

-- Location: LCCOMB_X15_Y7_N4
\inst3|inst202|OP2[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[2]~5_combout\ = (\inst3|inst206|selsrc\(0) & \inst3|inst202|OP2[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst202|OP2[2]~4_combout\,
	combout => \inst3|inst202|OP2[2]~5_combout\);

-- Location: FF_X15_Y7_N5
\inst3|inst8|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2[2]~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(2));

-- Location: LCCOMB_X15_Y7_N18
\inst2|inst1357|$00000|auto_generated|result_node[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst2|inst6|SALIDA\(2))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst8|SALIDA\(2)))))) # 
-- (!\inst3|inst10|selregR\(0) & (((\inst3|inst8|SALIDA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(2),
	datab => \inst3|inst8|SALIDA\(2),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst700666|inst1000|Equal1~1_combout\,
	combout => \inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\);

-- Location: LCCOMB_X15_Y7_N0
\inst2|inst|opres[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[2]~6_combout\ = (\inst3|inst10|selop\(0) & ((\inst3|inst10|selop\(2)) # ((\inst2|inst|Add0~6_combout\)))) # (!\inst3|inst10|selop\(0) & (!\inst3|inst10|selop\(2) & (\inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\,
	datad => \inst2|inst|Add0~6_combout\,
	combout => \inst2|inst|opres[2]~6_combout\);

-- Location: LCCOMB_X16_Y7_N10
\inst2|inst|opres[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[2]~7_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\ & ((!\inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\) # (!\inst2|inst|opres[2]~6_combout\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\))))) # (!\inst3|inst10|selop\(2) & (((\inst2|inst|opres[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\,
	datac => \inst2|inst|opres[2]~6_combout\,
	datad => \inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\,
	combout => \inst2|inst|opres[2]~7_combout\);

-- Location: LCCOMB_X16_Y7_N24
\inst2|inst|opres[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(2) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(2)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[2]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[2]~7_combout\,
	datac => \inst2|inst|opres\(2),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(2));

-- Location: LCCOMB_X16_Y7_N16
\inst2|inst2|datow[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(2) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(2),
	combout => \inst2|inst2|datow\(2));

-- Location: FF_X16_Y7_N17
\inst2|inst6|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(2));

-- Location: FF_X12_Y7_N13
\inst3|inst700666|ACCA|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(2));

-- Location: LCCOMB_X12_Y7_N30
\inst3|inst202|OP1[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(2) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(2) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(2),
	combout => \inst3|inst202|OP1\(2));

-- Location: FF_X12_Y7_N31
\inst3|inst700|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(2));

-- Location: LCCOMB_X13_Y7_N12
\inst2|inst1356|$00000|auto_generated|result_node[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst2|inst6|SALIDA\(2))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst3|inst700|SALIDA\(2)))))) 
-- # (!\inst3|inst10|selregR\(0) & (((\inst3|inst700|SALIDA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(2),
	datab => \inst3|inst10|selregR\(0),
	datac => \inst3|inst700666|inst1000|Equal1~0_combout\,
	datad => \inst3|inst700|SALIDA\(2),
	combout => \inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\);

-- Location: LCCOMB_X14_Y5_N26
\inst2|inst|opres[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[1]~4_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\ & ((!\inst2|inst1357|$00000|auto_generated|result_node[1]~14_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[1]~14_combout\))))) # (!\inst3|inst10|selop\(2) & (\inst3|inst10|selop\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst3|inst10|selop\(0),
	datac => \inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\,
	datad => \inst2|inst1357|$00000|auto_generated|result_node[1]~14_combout\,
	combout => \inst2|inst|opres[1]~4_combout\);

-- Location: LCCOMB_X15_Y5_N10
\inst2|inst|opres[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[1]~5_combout\ = (\inst3|inst10|selop\(2) & (((\inst2|inst|opres[1]~4_combout\)))) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[1]~4_combout\ & ((\inst2|inst|Add0~4_combout\))) # (!\inst2|inst|opres[1]~4_combout\ & 
-- (\inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|Add0~4_combout\,
	datad => \inst2|inst|opres[1]~4_combout\,
	combout => \inst2|inst|opres[1]~5_combout\);

-- Location: LCCOMB_X15_Y5_N2
\inst2|inst|opres[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(1) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(1)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[1]~5_combout\,
	datac => \inst2|inst|opres\(1),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(1));

-- Location: LCCOMB_X15_Y5_N24
\inst2|inst2|datow[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(1) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(1),
	combout => \inst2|inst2|datow\(1));

-- Location: FF_X15_Y5_N25
\inst2|inst6|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(1));

-- Location: FF_X17_Y7_N3
\inst|inst3|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst3|SALIDA[1]~8_combout\,
	asdata => \inst2|inst6|SALIDA\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(1));

-- Location: LCCOMB_X16_Y5_N12
\inst|inst1|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux10~0_combout\ = (\inst|inst3|SALIDA\(2) & (\inst|inst3|SALIDA\(0) & (\inst|inst3|SALIDA\(1) $ (!\inst|inst3|SALIDA\(3))))) # (!\inst|inst3|SALIDA\(2) & (!\inst|inst3|SALIDA\(1) & ((\inst|inst3|SALIDA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst3|SALIDA\(0),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(3),
	combout => \inst|inst1|Mux10~0_combout\);

-- Location: LCCOMB_X16_Y5_N14
\inst|inst1|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux10~1_combout\ = (\inst|inst3|SALIDA\(1) & (!\inst|inst3|SALIDA\(3) & (\inst|inst3|SALIDA\(0) $ (!\inst|inst3|SALIDA\(2))))) # (!\inst|inst3|SALIDA\(1) & (!\inst|inst3|SALIDA\(0) & (\inst|inst3|SALIDA\(2) & \inst|inst3|SALIDA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst3|SALIDA\(0),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(3),
	combout => \inst|inst1|Mux10~1_combout\);

-- Location: LCCOMB_X16_Y5_N10
\inst|inst1|Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux10~2_combout\ = (!\inst|inst3|SALIDA\(5) & ((\inst|inst3|SALIDA\(4) & (\inst|inst1|Mux10~0_combout\)) # (!\inst|inst3|SALIDA\(4) & ((\inst|inst1|Mux10~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Mux10~0_combout\,
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst1|Mux10~1_combout\,
	datad => \inst|inst3|SALIDA\(4),
	combout => \inst|inst1|Mux10~2_combout\);

-- Location: FF_X16_Y5_N11
\inst|inst5|valor_interno[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux10~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(21));

-- Location: LCCOMB_X16_Y4_N30
\inst3|inst206|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal4~0_combout\ = (\inst|inst5|valor_interno\(22) & (\inst|inst5|valor_interno\(21) & (\inst|inst5|valor_interno\(18) & !\inst|inst5|valor_interno\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(22),
	datab => \inst|inst5|valor_interno\(21),
	datac => \inst|inst5|valor_interno\(18),
	datad => \inst|inst5|valor_interno\(16),
	combout => \inst3|inst206|Equal4~0_combout\);

-- Location: LCCOMB_X16_Y4_N18
\inst3|inst206|selregr[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregr[3]~1_combout\ = ((\inst3|inst206|Equal4~0_combout\ & (\inst3|inst206|Equal3~0_combout\ & !\inst|inst5|valor_interno\(23)))) # (!\inst3|inst206|selregr[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal4~0_combout\,
	datab => \inst3|inst206|selregr[3]~0_combout\,
	datac => \inst3|inst206|Equal3~0_combout\,
	datad => \inst|inst5|valor_interno\(23),
	combout => \inst3|inst206|selregr[3]~1_combout\);

-- Location: LCCOMB_X16_Y4_N12
\inst3|inst206|selregr[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregr[3]~2_combout\ = (\inst3|inst206|selregr[3]~1_combout\) # ((\inst3|inst206|Equal0~1_combout\ & \inst|inst5|valor_interno\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr[3]~1_combout\,
	datac => \inst3|inst206|Equal0~1_combout\,
	datad => \inst|inst5|valor_interno\(22),
	combout => \inst3|inst206|selregr[3]~2_combout\);

-- Location: LCCOMB_X15_Y7_N12
\inst3|inst206|selresult[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selresult\(0) = (\inst3|inst206|seldato~2_combout\ & ((\inst3|inst206|selregr[3]~2_combout\) # (\inst3|inst206|selresult\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|selregr[3]~2_combout\,
	datac => \inst3|inst206|seldato~2_combout\,
	datad => \inst3|inst206|selresult\(0),
	combout => \inst3|inst206|selresult\(0));

-- Location: FF_X15_Y7_N13
\inst3|inst10|selresult[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst206|selresult\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selresult\(0));

-- Location: LCCOMB_X15_Y7_N10
\inst2|inst|opres[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[0]~32_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\ & ((!\inst3|inst10|selop\(0)) # (!\inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\ & (\inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\)))) # (!\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[0]~32_combout\);

-- Location: LCCOMB_X15_Y6_N0
\inst2|inst|opres[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[0]~33_combout\ = (\inst2|inst|opres[0]~32_combout\ & (((\inst3|inst10|selop\(2)) # (\inst2|inst|Add0~2_combout\)))) # (!\inst2|inst|opres[0]~32_combout\ & (\inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\ & 
-- (!\inst3|inst10|selop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\,
	datab => \inst2|inst|opres[0]~32_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|Add0~2_combout\,
	combout => \inst2|inst|opres[0]~33_combout\);

-- Location: LCCOMB_X15_Y6_N10
\inst2|inst|opres[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(0) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(0)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[0]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[0]~33_combout\,
	datac => \inst2|inst|opres\(0),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(0));

-- Location: LCCOMB_X15_Y6_N26
\inst2|inst2|datow[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(0) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(0),
	combout => \inst2|inst2|datow\(0));

-- Location: FF_X15_Y6_N27
\inst2|inst6|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(0));

-- Location: FF_X17_Y7_N1
\inst|inst3|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst3|SALIDA[0]~6_combout\,
	asdata => \inst2|inst6|SALIDA\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(0));

-- Location: LCCOMB_X17_Y4_N30
\inst|inst1|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux9~1_combout\ = (\inst|inst3|SALIDA\(3) & ((\inst|inst3|SALIDA\(2) & (\inst|inst3|SALIDA\(4))) # (!\inst|inst3|SALIDA\(2) & ((!\inst|inst3|SALIDA\(1)))))) # (!\inst|inst3|SALIDA\(3) & (\inst|inst3|SALIDA\(4) $ (((!\inst|inst3|SALIDA\(1) & 
-- \inst|inst3|SALIDA\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(4),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(1),
	datad => \inst|inst3|SALIDA\(2),
	combout => \inst|inst1|Mux9~1_combout\);

-- Location: LCCOMB_X17_Y4_N20
\inst|inst1|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux9~0_combout\ = (\inst|inst3|SALIDA\(4) & (\inst|inst3|SALIDA\(1) & \inst|inst1|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(4),
	datac => \inst|inst3|SALIDA\(1),
	datad => \inst|inst1|Mux27~0_combout\,
	combout => \inst|inst1|Mux9~0_combout\);

-- Location: LCCOMB_X17_Y4_N4
\inst|inst1|Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux9~2_combout\ = (!\inst|inst3|SALIDA\(5) & ((\inst|inst1|Mux9~0_combout\) # ((\inst|inst3|SALIDA\(0) & \inst|inst1|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(0),
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst1|Mux9~1_combout\,
	datad => \inst|inst1|Mux9~0_combout\,
	combout => \inst|inst1|Mux9~2_combout\);

-- Location: FF_X17_Y4_N5
\inst|inst5|valor_interno[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux9~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(22));

-- Location: LCCOMB_X16_Y4_N24
\inst3|inst206|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal3~1_combout\ = (!\inst|inst5|valor_interno\(22) & (!\inst|inst5|valor_interno\(23) & (!\inst|inst5|valor_interno\(18) & !\inst|inst5|valor_interno\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(22),
	datab => \inst|inst5|valor_interno\(23),
	datac => \inst|inst5|valor_interno\(18),
	datad => \inst|inst5|valor_interno\(21),
	combout => \inst3|inst206|Equal3~1_combout\);

-- Location: LCCOMB_X16_Y4_N10
\inst3|inst206|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal2~1_combout\ = ((\inst3|inst206|Equal2~0_combout\) # (!\inst|inst5|valor_interno\(16))) # (!\inst3|inst206|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal3~1_combout\,
	datac => \inst3|inst206|Equal2~0_combout\,
	datad => \inst|inst5|valor_interno\(16),
	combout => \inst3|inst206|Equal2~1_combout\);

-- Location: LCCOMB_X16_Y4_N28
\inst3|inst206|comb~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~9_combout\ = (\inst3|inst206|selregr[3]~2_combout\ & (((\inst3|inst206|Equal2~1_combout\ & !\inst3|inst206|Equal3~2_combout\)) # (!\inst3|inst206|comb~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal2~1_combout\,
	datab => \inst3|inst206|Equal3~2_combout\,
	datac => \inst3|inst206|selregr[3]~2_combout\,
	datad => \inst3|inst206|comb~14_combout\,
	combout => \inst3|inst206|comb~9_combout\);

-- Location: LCCOMB_X16_Y4_N26
\inst3|inst206|selop[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selop\(2) = (!\inst3|inst206|comb~8_combout\ & ((\inst3|inst206|comb~9_combout\) # (\inst3|inst206|selop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~9_combout\,
	datac => \inst3|inst206|selop\(2),
	datad => \inst3|inst206|comb~8_combout\,
	combout => \inst3|inst206|selop\(2));

-- Location: FF_X16_Y4_N27
\inst3|inst10|selop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~q\,
	d => \inst3|inst206|selop\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selop\(2));

-- Location: LCCOMB_X14_Y4_N16
\inst2|inst|opres[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[15]~0_combout\ = (\inst3|inst10|selop\(2) & (((!\inst2|inst1357|$00000|auto_generated|result_node[15]~0_combout\)))) # (!\inst3|inst10|selop\(2) & (\inst2|inst3|ci~combout\ & (!\inst3|inst10|selc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst3|ci~combout\,
	datac => \inst3|inst10|selc~q\,
	datad => \inst2|inst1357|$00000|auto_generated|result_node[15]~0_combout\,
	combout => \inst2|inst|opres[15]~0_combout\);

-- Location: LCCOMB_X14_Y4_N30
\inst2|inst|opres[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[15]~1_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst|opres[15]~0_combout\ & (\inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\)) # (!\inst2|inst|opres[15]~0_combout\ & ((!\inst3|inst10|selop\(0)) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\))))) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[15]~0_combout\) # ((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|opres[15]~0_combout\,
	datac => \inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\,
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[15]~1_combout\);

-- Location: LCCOMB_X14_Y4_N24
\inst2|inst|opres[15]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[15]~2_combout\ = (\inst2|inst|opres[15]~1_combout\ & ((\inst3|inst10|selop\(2)) # ((\inst2|inst|Add0~32_combout\) # (!\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst3|inst10|selop\(0),
	datac => \inst2|inst|opres[15]~1_combout\,
	datad => \inst2|inst|Add0~32_combout\,
	combout => \inst2|inst|opres[15]~2_combout\);

-- Location: LCCOMB_X14_Y4_N18
\inst2|inst|opres[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(15) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(15)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[15]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[15]~2_combout\,
	datab => \inst2|inst|opres\(15),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(15));

-- Location: LCCOMB_X15_Y4_N4
\inst3|inst206|comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~3_combout\ = (\inst3|inst206|comb~14_combout\ & \inst3|inst206|selregr[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~14_combout\,
	datad => \inst3|inst206|selregr[3]~1_combout\,
	combout => \inst3|inst206|comb~3_combout\);

-- Location: LCCOMB_X15_Y4_N18
\inst3|inst206|selfalgs[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selfalgs\(0) = (!\inst3|inst206|comb~3_combout\ & ((\inst3|inst206|selfalgs\(0)) # (!\inst3|inst206|comb~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~14_combout\,
	datac => \inst3|inst206|comb~3_combout\,
	datad => \inst3|inst206|selfalgs\(0),
	combout => \inst3|inst206|selfalgs\(0));

-- Location: LCCOMB_X15_Y4_N12
\inst3|inst10|selfalgs[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst10|selfalgs[0]~feeder_combout\ = \inst3|inst206|selfalgs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst206|selfalgs\(0),
	combout => \inst3|inst10|selfalgs[0]~feeder_combout\);

-- Location: FF_X15_Y4_N13
\inst3|inst10|selfalgs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst10|selfalgs[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selfalgs\(0));

-- Location: LCCOMB_X15_Y4_N10
\inst2|inst3|vi~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|vi~0_combout\ = (\inst3|inst10|selfalgs\(0)) # (\inst3|inst10|selfalgs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(0),
	datad => \inst3|inst10|selfalgs\(1),
	combout => \inst2|inst3|vi~0_combout\);

-- Location: CLKCTRL_G7
\inst2|inst3|vi~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|inst3|vi~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|inst3|vi~0clkctrl_outclk\);

-- Location: LCCOMB_X14_Y4_N28
\inst2|inst3|ni\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|ni~combout\ = (\RESET~input_o\ & ((GLOBAL(\inst2|inst3|vi~0clkctrl_outclk\) & (\inst2|inst|opres\(15))) # (!GLOBAL(\inst2|inst3|vi~0clkctrl_outclk\) & ((\inst2|inst3|ni~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(15),
	datab => \RESET~input_o\,
	datac => \inst2|inst3|vi~0clkctrl_outclk\,
	datad => \inst2|inst3|ni~combout\,
	combout => \inst2|inst3|ni~combout\);

-- Location: FF_X14_Y4_N29
\inst2|inst101|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst3|ni~combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst101|valor_interno~q\);

-- Location: LCCOMB_X15_Y6_N4
\inst2|inst|WideOr0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~2_combout\ = (\inst2|inst|opres\(11)) # ((\inst2|inst|opres\(12)) # ((\inst2|inst|opres\(9)) # (\inst2|inst|opres\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(11),
	datab => \inst2|inst|opres\(12),
	datac => \inst2|inst|opres\(9),
	datad => \inst2|inst|opres\(10),
	combout => \inst2|inst|WideOr0~2_combout\);

-- Location: LCCOMB_X15_Y6_N14
\inst2|inst|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~1_combout\ = (\inst2|inst|opres\(8)) # ((\inst2|inst|opres\(5)) # ((\inst2|inst|opres\(7)) # (\inst2|inst|opres\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(8),
	datab => \inst2|inst|opres\(5),
	datac => \inst2|inst|opres\(7),
	datad => \inst2|inst|opres\(6),
	combout => \inst2|inst|WideOr0~1_combout\);

-- Location: LCCOMB_X15_Y6_N30
\inst2|inst|WideOr0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~3_combout\ = (\inst2|inst|opres\(0)) # ((\inst2|inst|opres\(13)) # ((\inst2|inst|opres\(14)) # (\inst2|inst|opres\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(0),
	datab => \inst2|inst|opres\(13),
	datac => \inst2|inst|opres\(14),
	datad => \inst2|inst|opres\(15),
	combout => \inst2|inst|WideOr0~3_combout\);

-- Location: LCCOMB_X15_Y6_N24
\inst2|inst|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~0_combout\ = (\inst2|inst|opres\(4)) # ((\inst2|inst|opres\(3)) # ((\inst2|inst|opres\(1)) # (\inst2|inst|opres\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(4),
	datab => \inst2|inst|opres\(3),
	datac => \inst2|inst|opres\(1),
	datad => \inst2|inst|opres\(2),
	combout => \inst2|inst|WideOr0~0_combout\);

-- Location: LCCOMB_X15_Y6_N20
\inst2|inst|WideOr0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~4_combout\ = (\inst2|inst|WideOr0~2_combout\) # ((\inst2|inst|WideOr0~1_combout\) # ((\inst2|inst|WideOr0~3_combout\) # (\inst2|inst|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|WideOr0~2_combout\,
	datab => \inst2|inst|WideOr0~1_combout\,
	datac => \inst2|inst|WideOr0~3_combout\,
	datad => \inst2|inst|WideOr0~0_combout\,
	combout => \inst2|inst|WideOr0~4_combout\);

-- Location: LCCOMB_X15_Y6_N12
\inst2|inst3|zi\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|zi~combout\ = (\RESET~input_o\ & ((GLOBAL(\inst2|inst3|vi~0clkctrl_outclk\) & ((!\inst2|inst|WideOr0~4_combout\))) # (!GLOBAL(\inst2|inst3|vi~0clkctrl_outclk\) & (\inst2|inst3|zi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|zi~combout\,
	datab => \RESET~input_o\,
	datac => \inst2|inst3|vi~0clkctrl_outclk\,
	datad => \inst2|inst|WideOr0~4_combout\,
	combout => \inst2|inst3|zi~combout\);

-- Location: FF_X15_Y6_N13
\inst2|inst102|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst3|zi~combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst102|valor_interno~q\);

-- Location: LCCOMB_X15_Y4_N30
\inst2|inst3|vi~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|vi~1_combout\ = (\inst2|inst|opres\(16) & ((\inst3|inst10|selfalgs\(1)) # (!\inst3|inst10|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(0),
	datab => \inst3|inst10|selfalgs\(1),
	datad => \inst2|inst|opres\(16),
	combout => \inst2|inst3|vi~1_combout\);

-- Location: LCCOMB_X15_Y4_N8
\inst2|inst3|vi\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|vi~combout\ = (\RESET~input_o\ & ((GLOBAL(\inst2|inst3|vi~0clkctrl_outclk\) & ((\inst2|inst3|vi~1_combout\))) # (!GLOBAL(\inst2|inst3|vi~0clkctrl_outclk\) & (\inst2|inst3|vi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst2|inst3|vi~combout\,
	datac => \inst2|inst3|vi~1_combout\,
	datad => \inst2|inst3|vi~0clkctrl_outclk\,
	combout => \inst2|inst3|vi~combout\);

-- Location: FF_X15_Y4_N9
\inst2|inst103|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst3|vi~combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst103|valor_interno~q\);

-- Location: FF_X15_Y4_N1
\inst2|inst104|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst3|ci~combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst104|valor_interno~q\);

-- Location: LCCOMB_X15_Y4_N16
\inst2|inst3|vi~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|vi~2_combout\ = (!\inst3|inst10|selfalgs\(0) & \inst3|inst10|selfalgs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(0),
	datab => \inst3|inst10|selfalgs\(1),
	combout => \inst2|inst3|vi~2_combout\);

-- Location: LCCOMB_X15_Y4_N2
\inst2|inst3|hi\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|hi~combout\ = (\RESET~input_o\ & ((\inst2|inst3|vi~2_combout\ & ((\inst2|inst|opres\(8)))) # (!\inst2|inst3|vi~2_combout\ & (\inst2|inst3|hi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst2|inst3|vi~2_combout\,
	datac => \inst2|inst3|hi~combout\,
	datad => \inst2|inst|opres\(8),
	combout => \inst2|inst3|hi~combout\);

-- Location: FF_X15_Y4_N11
\inst2|inst105|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst3|hi~combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst105|valor_interno~q\);

-- Location: LCCOMB_X11_Y7_N28
\inst3|inst700666|AUX|SALIDA[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[15]~feeder_combout\ = \inst2|inst6|SALIDA\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(15),
	combout => \inst3|inst700666|AUX|SALIDA[15]~feeder_combout\);

-- Location: LCCOMB_X13_Y7_N6
\inst3|inst700666|inst1000|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|inst1000|Equal1~2_combout\ = (\inst2|inst107|selregw\(2) & \inst2|inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst107|selregw\(2),
	datad => \inst2|inst107|selregw\(0),
	combout => \inst3|inst700666|inst1000|Equal1~2_combout\);

-- Location: FF_X11_Y7_N29
\inst3|inst700666|AUX|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[15]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(15));

-- Location: LCCOMB_X11_Y7_N26
\inst3|inst700666|AUX|SALIDA[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[14]~feeder_combout\ = \inst2|inst6|SALIDA\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(14),
	combout => \inst3|inst700666|AUX|SALIDA[14]~feeder_combout\);

-- Location: FF_X11_Y7_N27
\inst3|inst700666|AUX|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[14]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(14));

-- Location: FF_X11_Y7_N13
\inst3|inst700666|AUX|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(13),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(13));

-- Location: FF_X11_Y7_N19
\inst3|inst700666|AUX|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(12));

-- Location: LCCOMB_X11_Y7_N0
\inst3|inst700666|AUX|SALIDA[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[11]~feeder_combout\ = \inst2|inst6|SALIDA\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(11),
	combout => \inst3|inst700666|AUX|SALIDA[11]~feeder_combout\);

-- Location: FF_X11_Y7_N1
\inst3|inst700666|AUX|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(11));

-- Location: LCCOMB_X11_Y7_N10
\inst3|inst700666|AUX|SALIDA[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[10]~feeder_combout\ = \inst2|inst6|SALIDA\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(10),
	combout => \inst3|inst700666|AUX|SALIDA[10]~feeder_combout\);

-- Location: FF_X11_Y7_N11
\inst3|inst700666|AUX|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(10));

-- Location: LCCOMB_X12_Y5_N4
\inst3|inst700666|AUX|SALIDA[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[9]~feeder_combout\ = \inst2|inst6|SALIDA\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(9),
	combout => \inst3|inst700666|AUX|SALIDA[9]~feeder_combout\);

-- Location: FF_X12_Y5_N5
\inst3|inst700666|AUX|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(9));

-- Location: LCCOMB_X11_Y7_N16
\inst3|inst700666|AUX|SALIDA[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[8]~feeder_combout\ = \inst2|inst6|SALIDA\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(8),
	combout => \inst3|inst700666|AUX|SALIDA[8]~feeder_combout\);

-- Location: FF_X11_Y7_N17
\inst3|inst700666|AUX|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(8));

-- Location: LCCOMB_X15_Y5_N4
\inst3|inst700666|AUX|SALIDA[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[7]~feeder_combout\ = \inst2|inst6|SALIDA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(7),
	combout => \inst3|inst700666|AUX|SALIDA[7]~feeder_combout\);

-- Location: FF_X15_Y5_N5
\inst3|inst700666|AUX|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(7));

-- Location: LCCOMB_X11_Y7_N6
\inst3|inst700666|AUX|SALIDA[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[6]~feeder_combout\ = \inst2|inst6|SALIDA\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(6),
	combout => \inst3|inst700666|AUX|SALIDA[6]~feeder_combout\);

-- Location: FF_X11_Y7_N7
\inst3|inst700666|AUX|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(6));

-- Location: FF_X11_Y7_N21
\inst3|inst700666|AUX|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(5));

-- Location: FF_X11_Y7_N23
\inst3|inst700666|AUX|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(4));

-- Location: FF_X15_Y7_N25
\inst3|inst700666|AUX|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(3));

-- Location: LCCOMB_X11_Y7_N4
\inst3|inst700666|AUX|SALIDA[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[2]~feeder_combout\ = \inst2|inst6|SALIDA\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(2),
	combout => \inst3|inst700666|AUX|SALIDA[2]~feeder_combout\);

-- Location: FF_X11_Y7_N5
\inst3|inst700666|AUX|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(2));

-- Location: LCCOMB_X11_Y7_N30
\inst3|inst700666|AUX|SALIDA[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[1]~feeder_combout\ = \inst2|inst6|SALIDA\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(1),
	combout => \inst3|inst700666|AUX|SALIDA[1]~feeder_combout\);

-- Location: FF_X11_Y7_N31
\inst3|inst700666|AUX|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(1));

-- Location: LCCOMB_X11_Y7_N8
\inst3|inst700666|AUX|SALIDA[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[0]~feeder_combout\ = \inst2|inst6|SALIDA\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(0),
	combout => \inst3|inst700666|AUX|SALIDA[0]~feeder_combout\);

-- Location: FF_X11_Y7_N9
\inst3|inst700666|AUX|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(0));

-- Location: IOIBUF_X0_Y6_N1
\sw_selectReg~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_selectReg,
	o => \sw_selectReg~input_o\);

-- Location: LCCOMB_X12_Y7_N18
\inst5|first_value[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|first_value[3]~3_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(3)))) # (!\sw_selectReg~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_selectReg~input_o\,
	datab => \RESET~input_o\,
	datac => \inst3|inst700666|ACCA|SALIDA\(3),
	datad => \inst3|inst700666|ACCB|SALIDA\(3),
	combout => \inst5|first_value[3]~3_combout\);

-- Location: LCCOMB_X12_Y7_N20
\inst5|first_value[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|first_value[0]~0_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(0)))) # (!\sw_selectReg~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_selectReg~input_o\,
	datab => \RESET~input_o\,
	datac => \inst3|inst700666|ACCA|SALIDA\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(0),
	combout => \inst5|first_value[0]~0_combout\);

-- Location: LCCOMB_X11_Y7_N14
\inst5|first_value[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|first_value[1]~1_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(1))) # (!\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|ACCB|SALIDA\(1),
	datab => \sw_selectReg~input_o\,
	datac => \RESET~input_o\,
	datad => \inst3|inst700666|ACCA|SALIDA\(1),
	combout => \inst5|first_value[1]~1_combout\);

-- Location: LCCOMB_X12_Y7_N12
\inst5|first_value[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|first_value[2]~2_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(2)))) # (!\sw_selectReg~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_selectReg~input_o\,
	datab => \RESET~input_o\,
	datac => \inst3|inst700666|ACCA|SALIDA\(2),
	datad => \inst3|inst700666|ACCB|SALIDA\(2),
	combout => \inst5|first_value[2]~2_combout\);

-- Location: LCCOMB_X16_Y7_N28
\inst5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (\inst5|first_value[3]~3_combout\ & ((\inst5|first_value[0]~0_combout\ & (\inst5|first_value[1]~1_combout\)) # (!\inst5|first_value[0]~0_combout\ & ((\inst5|first_value[2]~2_combout\))))) # (!\inst5|first_value[3]~3_combout\ & 
-- (\inst5|first_value[2]~2_combout\ & (\inst5|first_value[0]~0_combout\ $ (\inst5|first_value[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|first_value[3]~3_combout\,
	datab => \inst5|first_value[0]~0_combout\,
	datac => \inst5|first_value[1]~1_combout\,
	datad => \inst5|first_value[2]~2_combout\,
	combout => \inst5|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y7_N6
\inst5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux2~0_combout\ = (\inst5|first_value[2]~2_combout\ & (\inst5|first_value[3]~3_combout\ & ((\inst5|first_value[1]~1_combout\) # (!\inst5|first_value[0]~0_combout\)))) # (!\inst5|first_value[2]~2_combout\ & (\inst5|first_value[1]~1_combout\ & 
-- (!\inst5|first_value[0]~0_combout\ & !\inst5|first_value[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|first_value[1]~1_combout\,
	datab => \inst5|first_value[2]~2_combout\,
	datac => \inst5|first_value[0]~0_combout\,
	datad => \inst5|first_value[3]~3_combout\,
	combout => \inst5|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y7_N4
\inst5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = (\inst5|first_value[1]~1_combout\ & (\inst5|first_value[2]~2_combout\ & (\inst5|first_value[0]~0_combout\))) # (!\inst5|first_value[1]~1_combout\ & (!\inst5|first_value[3]~3_combout\ & (\inst5|first_value[2]~2_combout\ $ 
-- (\inst5|first_value[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|first_value[1]~1_combout\,
	datab => \inst5|first_value[2]~2_combout\,
	datac => \inst5|first_value[0]~0_combout\,
	datad => \inst5|first_value[3]~3_combout\,
	combout => \inst5|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y7_N22
\inst5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = (\inst5|first_value[1]~1_combout\ & (((\inst5|first_value[0]~0_combout\ & !\inst5|first_value[3]~3_combout\)))) # (!\inst5|first_value[1]~1_combout\ & ((\inst5|first_value[2]~2_combout\ & ((!\inst5|first_value[3]~3_combout\))) # 
-- (!\inst5|first_value[2]~2_combout\ & (\inst5|first_value[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|first_value[1]~1_combout\,
	datab => \inst5|first_value[2]~2_combout\,
	datac => \inst5|first_value[0]~0_combout\,
	datad => \inst5|first_value[3]~3_combout\,
	combout => \inst5|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y7_N0
\inst5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = (\inst5|first_value[0]~0_combout\ & (\inst5|first_value[3]~3_combout\ $ (((\inst5|first_value[1]~1_combout\) # (!\inst5|first_value[2]~2_combout\))))) # (!\inst5|first_value[0]~0_combout\ & (\inst5|first_value[1]~1_combout\ & 
-- (!\inst5|first_value[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|first_value[1]~1_combout\,
	datab => \inst5|first_value[2]~2_combout\,
	datac => \inst5|first_value[0]~0_combout\,
	datad => \inst5|first_value[3]~3_combout\,
	combout => \inst5|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y7_N2
\inst5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\inst5|first_value[0]~0_combout\ & ((\inst5|first_value[3]~3_combout\) # (\inst5|first_value[1]~1_combout\ $ (\inst5|first_value[2]~2_combout\)))) # (!\inst5|first_value[0]~0_combout\ & ((\inst5|first_value[1]~1_combout\) # 
-- (\inst5|first_value[2]~2_combout\ $ (\inst5|first_value[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|first_value[1]~1_combout\,
	datab => \inst5|first_value[2]~2_combout\,
	datac => \inst5|first_value[0]~0_combout\,
	datad => \inst5|first_value[3]~3_combout\,
	combout => \inst5|Mux6~0_combout\);

-- Location: LCCOMB_X13_Y5_N26
\inst5|second_value[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|second_value[3]~3_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(7))) # (!\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \sw_selectReg~input_o\,
	datac => \inst3|inst700666|ACCB|SALIDA\(7),
	datad => \inst3|inst700666|ACCA|SALIDA\(7),
	combout => \inst5|second_value[3]~3_combout\);

-- Location: LCCOMB_X13_Y5_N14
\inst5|second_value[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|second_value[1]~1_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(5)))) # (!\sw_selectReg~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|ACCA|SALIDA\(5),
	datab => \sw_selectReg~input_o\,
	datac => \inst3|inst700666|ACCB|SALIDA\(5),
	datad => \RESET~input_o\,
	combout => \inst5|second_value[1]~1_combout\);

-- Location: LCCOMB_X12_Y7_N28
\inst5|second_value[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|second_value[0]~0_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(4))) # (!\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|ACCB|SALIDA\(4),
	datab => \RESET~input_o\,
	datac => \inst3|inst700666|ACCA|SALIDA\(4),
	datad => \sw_selectReg~input_o\,
	combout => \inst5|second_value[0]~0_combout\);

-- Location: LCCOMB_X13_Y5_N4
\inst5|second_value[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|second_value[2]~2_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(6))) # (!\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \sw_selectReg~input_o\,
	datac => \inst3|inst700666|ACCB|SALIDA\(6),
	datad => \inst3|inst700666|ACCA|SALIDA\(6),
	combout => \inst5|second_value[2]~2_combout\);

-- Location: LCCOMB_X4_Y5_N20
\inst5|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux8~0_combout\ = (\inst5|second_value[3]~3_combout\ & ((\inst5|second_value[0]~0_combout\ & (\inst5|second_value[1]~1_combout\)) # (!\inst5|second_value[0]~0_combout\ & ((\inst5|second_value[2]~2_combout\))))) # (!\inst5|second_value[3]~3_combout\ 
-- & (\inst5|second_value[2]~2_combout\ & (\inst5|second_value[1]~1_combout\ $ (\inst5|second_value[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|second_value[3]~3_combout\,
	datab => \inst5|second_value[1]~1_combout\,
	datac => \inst5|second_value[0]~0_combout\,
	datad => \inst5|second_value[2]~2_combout\,
	combout => \inst5|Mux8~0_combout\);

-- Location: LCCOMB_X4_Y5_N30
\inst5|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux9~0_combout\ = (\inst5|second_value[3]~3_combout\ & (\inst5|second_value[2]~2_combout\ & ((\inst5|second_value[1]~1_combout\) # (!\inst5|second_value[0]~0_combout\)))) # (!\inst5|second_value[3]~3_combout\ & (\inst5|second_value[1]~1_combout\ & 
-- (!\inst5|second_value[0]~0_combout\ & !\inst5|second_value[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|second_value[3]~3_combout\,
	datab => \inst5|second_value[1]~1_combout\,
	datac => \inst5|second_value[0]~0_combout\,
	datad => \inst5|second_value[2]~2_combout\,
	combout => \inst5|Mux9~0_combout\);

-- Location: LCCOMB_X4_Y5_N4
\inst5|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux10~0_combout\ = (\inst5|second_value[1]~1_combout\ & (((\inst5|second_value[0]~0_combout\ & \inst5|second_value[2]~2_combout\)))) # (!\inst5|second_value[1]~1_combout\ & (!\inst5|second_value[3]~3_combout\ & (\inst5|second_value[0]~0_combout\ $ 
-- (\inst5|second_value[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|second_value[3]~3_combout\,
	datab => \inst5|second_value[1]~1_combout\,
	datac => \inst5|second_value[0]~0_combout\,
	datad => \inst5|second_value[2]~2_combout\,
	combout => \inst5|Mux10~0_combout\);

-- Location: LCCOMB_X4_Y5_N2
\inst5|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux11~0_combout\ = (\inst5|second_value[1]~1_combout\ & (!\inst5|second_value[3]~3_combout\ & (\inst5|second_value[0]~0_combout\))) # (!\inst5|second_value[1]~1_combout\ & ((\inst5|second_value[2]~2_combout\ & (!\inst5|second_value[3]~3_combout\)) 
-- # (!\inst5|second_value[2]~2_combout\ & ((\inst5|second_value[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|second_value[3]~3_combout\,
	datab => \inst5|second_value[1]~1_combout\,
	datac => \inst5|second_value[0]~0_combout\,
	datad => \inst5|second_value[2]~2_combout\,
	combout => \inst5|Mux11~0_combout\);

-- Location: LCCOMB_X4_Y5_N8
\inst5|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux12~0_combout\ = (\inst5|second_value[0]~0_combout\ & (\inst5|second_value[3]~3_combout\ $ (((\inst5|second_value[1]~1_combout\) # (!\inst5|second_value[2]~2_combout\))))) # (!\inst5|second_value[0]~0_combout\ & 
-- (((\inst5|second_value[1]~1_combout\ & !\inst5|second_value[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|second_value[3]~3_combout\,
	datab => \inst5|second_value[1]~1_combout\,
	datac => \inst5|second_value[0]~0_combout\,
	datad => \inst5|second_value[2]~2_combout\,
	combout => \inst5|Mux12~0_combout\);

-- Location: LCCOMB_X4_Y5_N10
\inst5|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux13~0_combout\ = (\inst5|second_value[0]~0_combout\ & ((\inst5|second_value[3]~3_combout\) # (\inst5|second_value[1]~1_combout\ $ (\inst5|second_value[2]~2_combout\)))) # (!\inst5|second_value[0]~0_combout\ & ((\inst5|second_value[1]~1_combout\) 
-- # (\inst5|second_value[3]~3_combout\ $ (\inst5|second_value[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|second_value[3]~3_combout\,
	datab => \inst5|second_value[1]~1_combout\,
	datac => \inst5|second_value[0]~0_combout\,
	datad => \inst5|second_value[2]~2_combout\,
	combout => \inst5|Mux13~0_combout\);

-- Location: LCCOMB_X13_Y5_N8
\inst5|third_value[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|third_value[2]~2_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(10)))) # (!\sw_selectReg~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \sw_selectReg~input_o\,
	datac => \inst3|inst700666|ACCA|SALIDA\(10),
	datad => \inst3|inst700666|ACCB|SALIDA\(10),
	combout => \inst5|third_value[2]~2_combout\);

-- Location: LCCOMB_X13_Y5_N28
\inst5|third_value[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|third_value[0]~0_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(8))) # (!\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \sw_selectReg~input_o\,
	datac => \inst3|inst700666|ACCB|SALIDA\(8),
	datad => \inst3|inst700666|ACCA|SALIDA\(8),
	combout => \inst5|third_value[0]~0_combout\);

-- Location: LCCOMB_X12_Y6_N2
\inst5|third_value[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|third_value[3]~3_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(11))) # (!\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_selectReg~input_o\,
	datab => \RESET~input_o\,
	datac => \inst3|inst700666|ACCB|SALIDA\(11),
	datad => \inst3|inst700666|ACCA|SALIDA\(11),
	combout => \inst5|third_value[3]~3_combout\);

-- Location: LCCOMB_X13_Y5_N2
\inst5|third_value[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|third_value[1]~1_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(9)))) # (!\sw_selectReg~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|ACCA|SALIDA\(9),
	datab => \sw_selectReg~input_o\,
	datac => \inst3|inst700666|ACCB|SALIDA\(9),
	datad => \RESET~input_o\,
	combout => \inst5|third_value[1]~1_combout\);

-- Location: LCCOMB_X11_Y12_N16
\inst5|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux15~0_combout\ = (\inst5|third_value[3]~3_combout\ & ((\inst5|third_value[0]~0_combout\ & ((\inst5|third_value[1]~1_combout\))) # (!\inst5|third_value[0]~0_combout\ & (\inst5|third_value[2]~2_combout\)))) # (!\inst5|third_value[3]~3_combout\ & 
-- (\inst5|third_value[2]~2_combout\ & (\inst5|third_value[0]~0_combout\ $ (\inst5|third_value[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|third_value[2]~2_combout\,
	datab => \inst5|third_value[0]~0_combout\,
	datac => \inst5|third_value[3]~3_combout\,
	datad => \inst5|third_value[1]~1_combout\,
	combout => \inst5|Mux15~0_combout\);

-- Location: LCCOMB_X11_Y12_N26
\inst5|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux16~0_combout\ = (\inst5|third_value[2]~2_combout\ & (\inst5|third_value[3]~3_combout\ & ((\inst5|third_value[1]~1_combout\) # (!\inst5|third_value[0]~0_combout\)))) # (!\inst5|third_value[2]~2_combout\ & (!\inst5|third_value[0]~0_combout\ & 
-- (!\inst5|third_value[3]~3_combout\ & \inst5|third_value[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|third_value[2]~2_combout\,
	datab => \inst5|third_value[0]~0_combout\,
	datac => \inst5|third_value[3]~3_combout\,
	datad => \inst5|third_value[1]~1_combout\,
	combout => \inst5|Mux16~0_combout\);

-- Location: LCCOMB_X11_Y12_N0
\inst5|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux17~0_combout\ = (\inst5|third_value[1]~1_combout\ & (\inst5|third_value[2]~2_combout\ & (\inst5|third_value[0]~0_combout\))) # (!\inst5|third_value[1]~1_combout\ & (!\inst5|third_value[3]~3_combout\ & (\inst5|third_value[2]~2_combout\ $ 
-- (\inst5|third_value[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|third_value[2]~2_combout\,
	datab => \inst5|third_value[0]~0_combout\,
	datac => \inst5|third_value[3]~3_combout\,
	datad => \inst5|third_value[1]~1_combout\,
	combout => \inst5|Mux17~0_combout\);

-- Location: LCCOMB_X11_Y12_N2
\inst5|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux18~0_combout\ = (\inst5|third_value[1]~1_combout\ & (((\inst5|third_value[0]~0_combout\ & !\inst5|third_value[3]~3_combout\)))) # (!\inst5|third_value[1]~1_combout\ & ((\inst5|third_value[2]~2_combout\ & ((!\inst5|third_value[3]~3_combout\))) # 
-- (!\inst5|third_value[2]~2_combout\ & (\inst5|third_value[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|third_value[2]~2_combout\,
	datab => \inst5|third_value[0]~0_combout\,
	datac => \inst5|third_value[3]~3_combout\,
	datad => \inst5|third_value[1]~1_combout\,
	combout => \inst5|Mux18~0_combout\);

-- Location: LCCOMB_X11_Y12_N12
\inst5|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux19~0_combout\ = (\inst5|third_value[0]~0_combout\ & (\inst5|third_value[3]~3_combout\ $ (((\inst5|third_value[1]~1_combout\) # (!\inst5|third_value[2]~2_combout\))))) # (!\inst5|third_value[0]~0_combout\ & (!\inst5|third_value[2]~2_combout\ & 
-- ((\inst5|third_value[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|third_value[2]~2_combout\,
	datab => \inst5|third_value[0]~0_combout\,
	datac => \inst5|third_value[3]~3_combout\,
	datad => \inst5|third_value[1]~1_combout\,
	combout => \inst5|Mux19~0_combout\);

-- Location: LCCOMB_X11_Y12_N6
\inst5|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux20~0_combout\ = (\inst5|third_value[0]~0_combout\ & ((\inst5|third_value[3]~3_combout\) # (\inst5|third_value[2]~2_combout\ $ (\inst5|third_value[1]~1_combout\)))) # (!\inst5|third_value[0]~0_combout\ & ((\inst5|third_value[1]~1_combout\) # 
-- (\inst5|third_value[2]~2_combout\ $ (\inst5|third_value[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|third_value[2]~2_combout\,
	datab => \inst5|third_value[0]~0_combout\,
	datac => \inst5|third_value[3]~3_combout\,
	datad => \inst5|third_value[1]~1_combout\,
	combout => \inst5|Mux20~0_combout\);

-- Location: FF_X19_Y4_N11
\inst4|first_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst|inst5|valor_interno\(19),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|first_value\(3));

-- Location: FF_X19_Y4_N3
\inst4|first_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst|inst5|valor_interno\(16),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|first_value\(0));

-- Location: FF_X19_Y4_N29
\inst4|first_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst|inst5|valor_interno\(18),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|first_value\(2));

-- Location: FF_X19_Y4_N1
\inst4|first_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst|inst5|valor_interno\(17),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|first_value\(1));

-- Location: LCCOMB_X19_Y4_N6
\inst4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst4|first_value\(3) & ((\inst4|first_value\(0) & ((\inst4|first_value\(1)))) # (!\inst4|first_value\(0) & (\inst4|first_value\(2))))) # (!\inst4|first_value\(3) & (\inst4|first_value\(2) & (\inst4|first_value\(0) $ 
-- (\inst4|first_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|first_value\(3),
	datab => \inst4|first_value\(0),
	datac => \inst4|first_value\(2),
	datad => \inst4|first_value\(1),
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y4_N4
\inst4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\inst4|first_value\(3) & (\inst4|first_value\(2) & ((\inst4|first_value\(1)) # (!\inst4|first_value\(0))))) # (!\inst4|first_value\(3) & (!\inst4|first_value\(0) & (!\inst4|first_value\(2) & \inst4|first_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|first_value\(3),
	datab => \inst4|first_value\(0),
	datac => \inst4|first_value\(2),
	datad => \inst4|first_value\(1),
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y4_N18
\inst4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst4|first_value\(1) & (((\inst4|first_value\(0) & \inst4|first_value\(2))))) # (!\inst4|first_value\(1) & (!\inst4|first_value\(3) & (\inst4|first_value\(0) $ (\inst4|first_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|first_value\(3),
	datab => \inst4|first_value\(0),
	datac => \inst4|first_value\(2),
	datad => \inst4|first_value\(1),
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y4_N0
\inst4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (\inst4|first_value\(1) & (!\inst4|first_value\(3) & (\inst4|first_value\(0)))) # (!\inst4|first_value\(1) & ((\inst4|first_value\(2) & (!\inst4|first_value\(3))) # (!\inst4|first_value\(2) & ((\inst4|first_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|first_value\(3),
	datab => \inst4|first_value\(0),
	datac => \inst4|first_value\(1),
	datad => \inst4|first_value\(2),
	combout => \inst4|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y4_N28
\inst4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (\inst4|first_value\(0) & (\inst4|first_value\(3) $ (((\inst4|first_value\(1)) # (!\inst4|first_value\(2)))))) # (!\inst4|first_value\(0) & (((\inst4|first_value\(1) & !\inst4|first_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|first_value\(3),
	datab => \inst4|first_value\(1),
	datac => \inst4|first_value\(2),
	datad => \inst4|first_value\(0),
	combout => \inst4|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y4_N10
\inst4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = (\inst4|first_value\(0) & ((\inst4|first_value\(3)) # (\inst4|first_value\(2) $ (\inst4|first_value\(1))))) # (!\inst4|first_value\(0) & ((\inst4|first_value\(1)) # (\inst4|first_value\(2) $ (\inst4|first_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|first_value\(2),
	datab => \inst4|first_value\(0),
	datac => \inst4|first_value\(3),
	datad => \inst4|first_value\(1),
	combout => \inst4|Mux6~0_combout\);

-- Location: FF_X17_Y4_N13
\inst4|second_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst|inst5|valor_interno\(22),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|second_value\(2));

-- Location: LCCOMB_X17_Y4_N24
\inst4|second_value[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|second_value[1]~feeder_combout\ = \inst|inst5|valor_interno\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst5|valor_interno\(21),
	combout => \inst4|second_value[1]~feeder_combout\);

-- Location: FF_X17_Y4_N25
\inst4|second_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst4|second_value[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|second_value\(1));

-- Location: FF_X17_Y4_N9
\inst4|second_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst|inst5|valor_interno\(23),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|second_value\(3));

-- Location: LCCOMB_X17_Y4_N18
\inst4|second_value[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|second_value[0]~feeder_combout\ = \inst|inst5|valor_interno\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst5|valor_interno\(20),
	combout => \inst4|second_value[0]~feeder_combout\);

-- Location: FF_X17_Y4_N19
\inst4|second_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst4|second_value[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|second_value\(0));

-- Location: LCCOMB_X17_Y4_N14
\inst4|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux8~0_combout\ = (\inst4|second_value\(1) & ((\inst4|second_value\(0) & ((\inst4|second_value\(3)))) # (!\inst4|second_value\(0) & (\inst4|second_value\(2))))) # (!\inst4|second_value\(1) & (\inst4|second_value\(2) & (\inst4|second_value\(3) $ 
-- (\inst4|second_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|second_value\(2),
	datab => \inst4|second_value\(1),
	datac => \inst4|second_value\(3),
	datad => \inst4|second_value\(0),
	combout => \inst4|Mux8~0_combout\);

-- Location: LCCOMB_X17_Y4_N2
\inst4|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux9~0_combout\ = (\inst4|second_value\(2) & (\inst4|second_value\(3) & ((\inst4|second_value\(1)) # (!\inst4|second_value\(0))))) # (!\inst4|second_value\(2) & (\inst4|second_value\(1) & (!\inst4|second_value\(3) & !\inst4|second_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|second_value\(2),
	datab => \inst4|second_value\(1),
	datac => \inst4|second_value\(3),
	datad => \inst4|second_value\(0),
	combout => \inst4|Mux9~0_combout\);

-- Location: LCCOMB_X17_Y4_N10
\inst4|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux10~0_combout\ = (\inst4|second_value\(1) & (\inst4|second_value\(2) & ((\inst4|second_value\(0))))) # (!\inst4|second_value\(1) & (!\inst4|second_value\(3) & (\inst4|second_value\(2) $ (\inst4|second_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|second_value\(2),
	datab => \inst4|second_value\(1),
	datac => \inst4|second_value\(3),
	datad => \inst4|second_value\(0),
	combout => \inst4|Mux10~0_combout\);

-- Location: LCCOMB_X17_Y4_N28
\inst4|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux11~0_combout\ = (\inst4|second_value\(1) & (((!\inst4|second_value\(3) & \inst4|second_value\(0))))) # (!\inst4|second_value\(1) & ((\inst4|second_value\(2) & (!\inst4|second_value\(3))) # (!\inst4|second_value\(2) & 
-- ((\inst4|second_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|second_value\(2),
	datab => \inst4|second_value\(1),
	datac => \inst4|second_value\(3),
	datad => \inst4|second_value\(0),
	combout => \inst4|Mux11~0_combout\);

-- Location: LCCOMB_X17_Y4_N6
\inst4|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux12~0_combout\ = (\inst4|second_value\(0) & (\inst4|second_value\(3) $ (((\inst4|second_value\(1)) # (!\inst4|second_value\(2)))))) # (!\inst4|second_value\(0) & (!\inst4|second_value\(2) & (\inst4|second_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|second_value\(2),
	datab => \inst4|second_value\(1),
	datac => \inst4|second_value\(3),
	datad => \inst4|second_value\(0),
	combout => \inst4|Mux12~0_combout\);

-- Location: LCCOMB_X17_Y4_N8
\inst4|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux13~0_combout\ = (\inst4|second_value\(0) & ((\inst4|second_value\(3)) # (\inst4|second_value\(2) $ (\inst4|second_value\(1))))) # (!\inst4|second_value\(0) & ((\inst4|second_value\(1)) # (\inst4|second_value\(2) $ (\inst4|second_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|second_value\(2),
	datab => \inst4|second_value\(1),
	datac => \inst4|second_value\(3),
	datad => \inst4|second_value\(0),
	combout => \inst4|Mux13~0_combout\);

-- Location: UNVM_X0_Y11_N40
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

-- Location: ADCBLOCK_X10_Y24_N0
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

ww_n <= \n~output_o\;

ww_z <= \z~output_o\;

ww_v <= \v~output_o\;

ww_c <= \c~output_o\;

ww_h <= \h~output_o\;

ww_i <= \i~output_o\;

ww_SelCtrl <= \SelCtrl~output_o\;

ww_SelD <= \SelD~output_o\;

ww_ACCA_D(15) <= \ACCA_D[15]~output_o\;

ww_ACCA_D(14) <= \ACCA_D[14]~output_o\;

ww_ACCA_D(13) <= \ACCA_D[13]~output_o\;

ww_ACCA_D(12) <= \ACCA_D[12]~output_o\;

ww_ACCA_D(11) <= \ACCA_D[11]~output_o\;

ww_ACCA_D(10) <= \ACCA_D[10]~output_o\;

ww_ACCA_D(9) <= \ACCA_D[9]~output_o\;

ww_ACCA_D(8) <= \ACCA_D[8]~output_o\;

ww_ACCA_D(7) <= \ACCA_D[7]~output_o\;

ww_ACCA_D(6) <= \ACCA_D[6]~output_o\;

ww_ACCA_D(5) <= \ACCA_D[5]~output_o\;

ww_ACCA_D(4) <= \ACCA_D[4]~output_o\;

ww_ACCA_D(3) <= \ACCA_D[3]~output_o\;

ww_ACCA_D(2) <= \ACCA_D[2]~output_o\;

ww_ACCA_D(1) <= \ACCA_D[1]~output_o\;

ww_ACCA_D(0) <= \ACCA_D[0]~output_o\;

ww_ACCB_D(15) <= \ACCB_D[15]~output_o\;

ww_ACCB_D(14) <= \ACCB_D[14]~output_o\;

ww_ACCB_D(13) <= \ACCB_D[13]~output_o\;

ww_ACCB_D(12) <= \ACCB_D[12]~output_o\;

ww_ACCB_D(11) <= \ACCB_D[11]~output_o\;

ww_ACCB_D(10) <= \ACCB_D[10]~output_o\;

ww_ACCB_D(9) <= \ACCB_D[9]~output_o\;

ww_ACCB_D(8) <= \ACCB_D[8]~output_o\;

ww_ACCB_D(7) <= \ACCB_D[7]~output_o\;

ww_ACCB_D(6) <= \ACCB_D[6]~output_o\;

ww_ACCB_D(5) <= \ACCB_D[5]~output_o\;

ww_ACCB_D(4) <= \ACCB_D[4]~output_o\;

ww_ACCB_D(3) <= \ACCB_D[3]~output_o\;

ww_ACCB_D(2) <= \ACCB_D[2]~output_o\;

ww_ACCB_D(1) <= \ACCB_D[1]~output_o\;

ww_ACCB_D(0) <= \ACCB_D[0]~output_o\;

ww_AUX_D(15) <= \AUX_D[15]~output_o\;

ww_AUX_D(14) <= \AUX_D[14]~output_o\;

ww_AUX_D(13) <= \AUX_D[13]~output_o\;

ww_AUX_D(12) <= \AUX_D[12]~output_o\;

ww_AUX_D(11) <= \AUX_D[11]~output_o\;

ww_AUX_D(10) <= \AUX_D[10]~output_o\;

ww_AUX_D(9) <= \AUX_D[9]~output_o\;

ww_AUX_D(8) <= \AUX_D[8]~output_o\;

ww_AUX_D(7) <= \AUX_D[7]~output_o\;

ww_AUX_D(6) <= \AUX_D[6]~output_o\;

ww_AUX_D(5) <= \AUX_D[5]~output_o\;

ww_AUX_D(4) <= \AUX_D[4]~output_o\;

ww_AUX_D(3) <= \AUX_D[3]~output_o\;

ww_AUX_D(2) <= \AUX_D[2]~output_o\;

ww_AUX_D(1) <= \AUX_D[1]~output_o\;

ww_AUX_D(0) <= \AUX_D[0]~output_o\;

ww_disp1(6) <= \disp1[6]~output_o\;

ww_disp1(5) <= \disp1[5]~output_o\;

ww_disp1(4) <= \disp1[4]~output_o\;

ww_disp1(3) <= \disp1[3]~output_o\;

ww_disp1(2) <= \disp1[2]~output_o\;

ww_disp1(1) <= \disp1[1]~output_o\;

ww_disp1(0) <= \disp1[0]~output_o\;

ww_disp2(6) <= \disp2[6]~output_o\;

ww_disp2(5) <= \disp2[5]~output_o\;

ww_disp2(4) <= \disp2[4]~output_o\;

ww_disp2(3) <= \disp2[3]~output_o\;

ww_disp2(2) <= \disp2[2]~output_o\;

ww_disp2(1) <= \disp2[1]~output_o\;

ww_disp2(0) <= \disp2[0]~output_o\;

ww_disp3(6) <= \disp3[6]~output_o\;

ww_disp3(5) <= \disp3[5]~output_o\;

ww_disp3(4) <= \disp3[4]~output_o\;

ww_disp3(3) <= \disp3[3]~output_o\;

ww_disp3(2) <= \disp3[2]~output_o\;

ww_disp3(1) <= \disp3[1]~output_o\;

ww_disp3(0) <= \disp3[0]~output_o\;

ww_disp4(6) <= \disp4[6]~output_o\;

ww_disp4(5) <= \disp4[5]~output_o\;

ww_disp4(4) <= \disp4[4]~output_o\;

ww_disp4(3) <= \disp4[3]~output_o\;

ww_disp4(2) <= \disp4[2]~output_o\;

ww_disp4(1) <= \disp4[1]~output_o\;

ww_disp4(0) <= \disp4[0]~output_o\;

ww_disp5(6) <= \disp5[6]~output_o\;

ww_disp5(5) <= \disp5[5]~output_o\;

ww_disp5(4) <= \disp5[4]~output_o\;

ww_disp5(3) <= \disp5[3]~output_o\;

ww_disp5(2) <= \disp5[2]~output_o\;

ww_disp5(1) <= \disp5[1]~output_o\;

ww_disp5(0) <= \disp5[0]~output_o\;

ww_disp6(6) <= \disp6[6]~output_o\;

ww_disp6(5) <= \disp6[5]~output_o\;

ww_disp6(4) <= \disp6[4]~output_o\;

ww_disp6(3) <= \disp6[3]~output_o\;

ww_disp6(2) <= \disp6[2]~output_o\;

ww_disp6(1) <= \disp6[1]~output_o\;

ww_disp6(0) <= \disp6[0]~output_o\;

ww_IX_D(15) <= \IX_D[15]~output_o\;

ww_IX_D(14) <= \IX_D[14]~output_o\;

ww_IX_D(13) <= \IX_D[13]~output_o\;

ww_IX_D(12) <= \IX_D[12]~output_o\;

ww_IX_D(11) <= \IX_D[11]~output_o\;

ww_IX_D(10) <= \IX_D[10]~output_o\;

ww_IX_D(9) <= \IX_D[9]~output_o\;

ww_IX_D(8) <= \IX_D[8]~output_o\;

ww_IX_D(7) <= \IX_D[7]~output_o\;

ww_IX_D(6) <= \IX_D[6]~output_o\;

ww_IX_D(5) <= \IX_D[5]~output_o\;

ww_IX_D(4) <= \IX_D[4]~output_o\;

ww_IX_D(3) <= \IX_D[3]~output_o\;

ww_IX_D(2) <= \IX_D[2]~output_o\;

ww_IX_D(1) <= \IX_D[1]~output_o\;

ww_IX_D(0) <= \IX_D[0]~output_o\;

ww_IY_D(15) <= \IY_D[15]~output_o\;

ww_IY_D(14) <= \IY_D[14]~output_o\;

ww_IY_D(13) <= \IY_D[13]~output_o\;

ww_IY_D(12) <= \IY_D[12]~output_o\;

ww_IY_D(11) <= \IY_D[11]~output_o\;

ww_IY_D(10) <= \IY_D[10]~output_o\;

ww_IY_D(9) <= \IY_D[9]~output_o\;

ww_IY_D(8) <= \IY_D[8]~output_o\;

ww_IY_D(7) <= \IY_D[7]~output_o\;

ww_IY_D(6) <= \IY_D[6]~output_o\;

ww_IY_D(5) <= \IY_D[5]~output_o\;

ww_IY_D(4) <= \IY_D[4]~output_o\;

ww_IY_D(3) <= \IY_D[3]~output_o\;

ww_IY_D(2) <= \IY_D[2]~output_o\;

ww_IY_D(1) <= \IY_D[1]~output_o\;

ww_IY_D(0) <= \IY_D[0]~output_o\;

ww_SP_D(15) <= \SP_D[15]~output_o\;

ww_SP_D(14) <= \SP_D[14]~output_o\;

ww_SP_D(13) <= \SP_D[13]~output_o\;

ww_SP_D(12) <= \SP_D[12]~output_o\;

ww_SP_D(11) <= \SP_D[11]~output_o\;

ww_SP_D(10) <= \SP_D[10]~output_o\;

ww_SP_D(9) <= \SP_D[9]~output_o\;

ww_SP_D(8) <= \SP_D[8]~output_o\;

ww_SP_D(7) <= \SP_D[7]~output_o\;

ww_SP_D(6) <= \SP_D[6]~output_o\;

ww_SP_D(5) <= \SP_D[5]~output_o\;

ww_SP_D(4) <= \SP_D[4]~output_o\;

ww_SP_D(3) <= \SP_D[3]~output_o\;

ww_SP_D(2) <= \SP_D[2]~output_o\;

ww_SP_D(1) <= \SP_D[1]~output_o\;

ww_SP_D(0) <= \SP_D[0]~output_o\;
END structure;


