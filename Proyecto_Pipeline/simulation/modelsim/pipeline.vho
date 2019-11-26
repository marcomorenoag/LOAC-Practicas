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

-- DATE "11/25/2019 15:12:13"

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
	disp1 : OUT std_logic_vector(7 DOWNTO 0);
	sw_selectReg : IN std_logic;
	disp2 : OUT std_logic_vector(7 DOWNTO 0);
	disp3 : OUT std_logic_vector(7 DOWNTO 0);
	disp4 : OUT std_logic_vector(7 DOWNTO 0);
	disp5 : OUT std_logic_vector(7 DOWNTO 0);
	disp6 : OUT std_logic_vector(7 DOWNTO 0);
	IX_D : OUT std_logic_vector(15 DOWNTO 0);
	IY_D : OUT std_logic_vector(15 DOWNTO 0);
	SP_D : OUT std_logic_vector(15 DOWNTO 0)
	);
END pipeline;

-- Design Ports Information
-- n	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelCtrl	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelD	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[15]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[14]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[13]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[12]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[11]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[10]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[8]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[6]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[0]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[15]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[14]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[13]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[12]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[11]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[10]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[9]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[8]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[7]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[6]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[4]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[15]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[14]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[13]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[12]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[11]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[10]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[9]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[8]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[7]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[6]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[5]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[4]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[3]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[1]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[7]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[6]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[7]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[6]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[5]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[4]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[3]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[2]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[1]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[0]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[7]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[6]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[5]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[3]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[1]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[7]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[6]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[5]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[4]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[3]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[2]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[1]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[7]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[6]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[5]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[4]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[3]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[15]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[14]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[13]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[12]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[11]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[10]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[9]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[8]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[7]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[6]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[5]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[4]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[2]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[1]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[0]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[15]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[14]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[13]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[12]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[11]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[10]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[9]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[8]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[7]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[4]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[3]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[0]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[14]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[13]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[12]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[11]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[10]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[9]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[8]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[7]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[6]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[5]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[4]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[1]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_selectReg	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_clk	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RELOJ	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_disp1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sw_selectReg : std_logic;
SIGNAL ww_disp2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_disp3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_disp4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_disp5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_disp6 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IX_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IY_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SP_D : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|inst3|vi~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst|opres[16]~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|ESIGUIENTE~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
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
SIGNAL \disp1[7]~output_o\ : std_logic;
SIGNAL \disp1[6]~output_o\ : std_logic;
SIGNAL \disp1[5]~output_o\ : std_logic;
SIGNAL \disp1[4]~output_o\ : std_logic;
SIGNAL \disp1[3]~output_o\ : std_logic;
SIGNAL \disp1[2]~output_o\ : std_logic;
SIGNAL \disp1[1]~output_o\ : std_logic;
SIGNAL \disp1[0]~output_o\ : std_logic;
SIGNAL \disp2[7]~output_o\ : std_logic;
SIGNAL \disp2[6]~output_o\ : std_logic;
SIGNAL \disp2[5]~output_o\ : std_logic;
SIGNAL \disp2[4]~output_o\ : std_logic;
SIGNAL \disp2[3]~output_o\ : std_logic;
SIGNAL \disp2[2]~output_o\ : std_logic;
SIGNAL \disp2[1]~output_o\ : std_logic;
SIGNAL \disp2[0]~output_o\ : std_logic;
SIGNAL \disp3[7]~output_o\ : std_logic;
SIGNAL \disp3[6]~output_o\ : std_logic;
SIGNAL \disp3[5]~output_o\ : std_logic;
SIGNAL \disp3[4]~output_o\ : std_logic;
SIGNAL \disp3[3]~output_o\ : std_logic;
SIGNAL \disp3[2]~output_o\ : std_logic;
SIGNAL \disp3[1]~output_o\ : std_logic;
SIGNAL \disp3[0]~output_o\ : std_logic;
SIGNAL \disp4[7]~output_o\ : std_logic;
SIGNAL \disp4[6]~output_o\ : std_logic;
SIGNAL \disp4[5]~output_o\ : std_logic;
SIGNAL \disp4[4]~output_o\ : std_logic;
SIGNAL \disp4[3]~output_o\ : std_logic;
SIGNAL \disp4[2]~output_o\ : std_logic;
SIGNAL \disp4[1]~output_o\ : std_logic;
SIGNAL \disp4[0]~output_o\ : std_logic;
SIGNAL \disp5[7]~output_o\ : std_logic;
SIGNAL \disp5[6]~output_o\ : std_logic;
SIGNAL \disp5[5]~output_o\ : std_logic;
SIGNAL \disp5[4]~output_o\ : std_logic;
SIGNAL \disp5[3]~output_o\ : std_logic;
SIGNAL \disp5[2]~output_o\ : std_logic;
SIGNAL \disp5[1]~output_o\ : std_logic;
SIGNAL \disp5[0]~output_o\ : std_logic;
SIGNAL \disp6[7]~output_o\ : std_logic;
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
SIGNAL \inst6|ESIGUIENTE~feeder_combout\ : std_logic;
SIGNAL \inst6|ESIGUIENTE~q\ : std_logic;
SIGNAL \inst6|ESIGUIENTE~clkctrl_outclk\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst|inst3|SALIDA[0]~6_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[2]~11\ : std_logic;
SIGNAL \inst|inst3|SALIDA[3]~12_combout\ : std_logic;
SIGNAL \inst|inst1|Mux14~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux8~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux9~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux9~2_combout\ : std_logic;
SIGNAL \inst|inst1|Mux10~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux10~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux10~2_combout\ : std_logic;
SIGNAL \inst|inst1|Mux14~3_combout\ : std_logic;
SIGNAL \inst|inst1|Mux14~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux14~2_combout\ : std_logic;
SIGNAL \inst|inst1|Mux14~4_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal1~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux11~3_combout\ : std_logic;
SIGNAL \inst|inst1|Mux11~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux11~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux11~2_combout\ : std_logic;
SIGNAL \inst|inst1|Mux11~4_combout\ : std_logic;
SIGNAL \inst|inst1|Mux12~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux12~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux12~2_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal2~0_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal3~1_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal3~2_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal3~0_combout\ : std_logic;
SIGNAL \inst3|inst206|selregr[3]~0_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal4~0_combout\ : std_logic;
SIGNAL \inst3|inst206|selregr[3]~1_combout\ : std_logic;
SIGNAL \inst3|inst206|selregr[3]~2_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal2~1_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~9_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~10_combout\ : std_logic;
SIGNAL \inst3|inst10|selop[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|opres[16]~3_combout\ : std_logic;
SIGNAL \inst2|inst|opres[16]~3clkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst206|comb~6_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~8_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~7_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~16_combout\ : std_logic;
SIGNAL \inst3|inst700666|inst1000|Equal1~1_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst|inst1|Mux28~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux28~1_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[3]~2_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[3]~3_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[3]~12_combout\ : std_logic;
SIGNAL \inst3|inst700666|inst1000|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst|inst1|Mux31~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux31~1_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[0]~6_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[0]~7_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[15]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[14]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[13]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[12]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[11]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst2|inst|opres[11]~24_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst2|inst|opres[5]~12_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~11\ : std_logic;
SIGNAL \inst2|inst|Add0~12_combout\ : std_logic;
SIGNAL \inst2|inst|opres[5]~13_combout\ : std_logic;
SIGNAL \inst|inst1|Mux26~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux26~1_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[5]~0_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[5]~1_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~13\ : std_logic;
SIGNAL \inst2|inst|Add0~14_combout\ : std_logic;
SIGNAL \inst2|inst|opres[6]~14_combout\ : std_logic;
SIGNAL \inst2|inst|opres[6]~15_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~15\ : std_logic;
SIGNAL \inst2|inst|Add0~16_combout\ : std_logic;
SIGNAL \inst2|inst|opres[7]~16_combout\ : std_logic;
SIGNAL \inst2|inst|opres[7]~17_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~17\ : std_logic;
SIGNAL \inst2|inst|Add0~18_combout\ : std_logic;
SIGNAL \inst2|inst|opres[8]~18_combout\ : std_logic;
SIGNAL \inst2|inst|opres[8]~19_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[8]~7_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~19\ : std_logic;
SIGNAL \inst2|inst|Add0~20_combout\ : std_logic;
SIGNAL \inst2|inst|opres[9]~20_combout\ : std_logic;
SIGNAL \inst2|inst|opres[9]~21_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~21\ : std_logic;
SIGNAL \inst2|inst|Add0~22_combout\ : std_logic;
SIGNAL \inst2|inst|opres[10]~22_combout\ : std_logic;
SIGNAL \inst2|inst|opres[10]~23_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~23\ : std_logic;
SIGNAL \inst2|inst|Add0~24_combout\ : std_logic;
SIGNAL \inst2|inst|opres[11]~25_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~25\ : std_logic;
SIGNAL \inst2|inst|Add0~26_combout\ : std_logic;
SIGNAL \inst2|inst|opres[12]~26_combout\ : std_logic;
SIGNAL \inst2|inst|opres[12]~27_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~27\ : std_logic;
SIGNAL \inst2|inst|Add0~28_combout\ : std_logic;
SIGNAL \inst2|inst|opres[13]~28_combout\ : std_logic;
SIGNAL \inst2|inst|opres[13]~29_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[13]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~29\ : std_logic;
SIGNAL \inst2|inst|Add0~30_combout\ : std_logic;
SIGNAL \inst2|inst|opres[14]~30_combout\ : std_logic;
SIGNAL \inst2|inst|opres[14]~31_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[14]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~31\ : std_logic;
SIGNAL \inst2|inst|Add0~32_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~11_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~12_combout\ : std_logic;
SIGNAL \inst3|inst206|selc~combout\ : std_logic;
SIGNAL \inst3|inst10|selc~q\ : std_logic;
SIGNAL \inst2|inst|opres[15]~0_combout\ : std_logic;
SIGNAL \inst2|inst|opres[15]~1_combout\ : std_logic;
SIGNAL \inst2|inst|opres[15]~2_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[15]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~33\ : std_logic;
SIGNAL \inst2|inst|Add0~34_combout\ : std_logic;
SIGNAL \inst2|inst|opres[16]~34_combout\ : std_logic;
SIGNAL \inst2|inst3|ci~combout\ : std_logic;
SIGNAL \inst2|inst|Add0~1_cout\ : std_logic;
SIGNAL \inst2|inst|Add0~3\ : std_logic;
SIGNAL \inst2|inst|Add0~4_combout\ : std_logic;
SIGNAL \inst2|inst|opres[1]~4_combout\ : std_logic;
SIGNAL \inst2|inst|opres[1]~5_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~5\ : std_logic;
SIGNAL \inst2|inst|Add0~6_combout\ : std_logic;
SIGNAL \inst2|inst|opres[2]~6_combout\ : std_logic;
SIGNAL \inst2|inst|opres[2]~7_combout\ : std_logic;
SIGNAL \inst|inst1|Mux29~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux29~1_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[2]~4_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[2]~5_combout\ : std_logic;
SIGNAL \inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~7\ : std_logic;
SIGNAL \inst2|inst|Add0~9\ : std_logic;
SIGNAL \inst2|inst|Add0~10_combout\ : std_logic;
SIGNAL \inst2|inst|opres[4]~10_combout\ : std_logic;
SIGNAL \inst2|inst|opres[4]~11_combout\ : std_logic;
SIGNAL \inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst2|inst|opres[3]~8_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~8_combout\ : std_logic;
SIGNAL \inst2|inst|opres[3]~9_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~14_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~13_combout\ : std_logic;
SIGNAL \inst3|inst206|vf~combout\ : std_logic;
SIGNAL \inst3|inst10|vf~0_combout\ : std_logic;
SIGNAL \inst3|inst10|vf~q\ : std_logic;
SIGNAL \inst2|inst100|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst2|inst100|valor_interno~q\ : std_logic;
SIGNAL \inst|inst3|SALIDA[3]~13\ : std_logic;
SIGNAL \inst|inst3|SALIDA[4]~14_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[4]~15\ : std_logic;
SIGNAL \inst|inst3|SALIDA[5]~16_combout\ : std_logic;
SIGNAL \inst|inst1|Mux13~2_combout\ : std_logic;
SIGNAL \inst|inst1|Mux13~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux13~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux13~3_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~15_combout\ : std_logic;
SIGNAL \inst3|inst206|seldato~2_combout\ : std_logic;
SIGNAL \inst2|inst|opres[0]~32_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~2_combout\ : std_logic;
SIGNAL \inst2|inst|opres[0]~33_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[0]~7\ : std_logic;
SIGNAL \inst|inst3|SALIDA[1]~8_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[1]~9\ : std_logic;
SIGNAL \inst|inst3|SALIDA[2]~10_combout\ : std_logic;
SIGNAL \inst|inst1|Mux15~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux15~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux15~2_combout\ : std_logic;
SIGNAL \inst|inst1|Mux15~3_combout\ : std_logic;
SIGNAL \inst|inst1|Mux15~4_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal3~3_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~4_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~5_combout\ : std_logic;
SIGNAL \inst2|inst3|vi~0_combout\ : std_logic;
SIGNAL \inst2|inst3|vi~0clkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst3|ni~combout\ : std_logic;
SIGNAL \inst2|inst101|valor_interno~q\ : std_logic;
SIGNAL \inst2|inst|WideOr0~3_combout\ : std_logic;
SIGNAL \inst2|inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst2|inst|WideOr0~2_combout\ : std_logic;
SIGNAL \inst2|inst|WideOr0~1_combout\ : std_logic;
SIGNAL \inst2|inst|WideOr0~4_combout\ : std_logic;
SIGNAL \inst2|inst3|zi~combout\ : std_logic;
SIGNAL \inst2|inst102|valor_interno~q\ : std_logic;
SIGNAL \inst2|inst3|vi~1_combout\ : std_logic;
SIGNAL \inst2|inst3|vi~combout\ : std_logic;
SIGNAL \inst2|inst103|valor_interno~q\ : std_logic;
SIGNAL \inst2|inst104|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst2|inst104|valor_interno~q\ : std_logic;
SIGNAL \inst2|inst3|vi~2_combout\ : std_logic;
SIGNAL \inst2|inst3|hi~combout\ : std_logic;
SIGNAL \inst2|inst105|valor_interno~q\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[15]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|inst1000|Equal1~2_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[14]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[13]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[12]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[11]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[10]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[9]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[8]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[7]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[6]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[0]~feeder_combout\ : std_logic;
SIGNAL \sw_selectReg~input_o\ : std_logic;
SIGNAL \inst5|first_value[0]~0_combout\ : std_logic;
SIGNAL \inst5|first_value[1]~1_combout\ : std_logic;
SIGNAL \inst5|first_value[3]~3_combout\ : std_logic;
SIGNAL \inst5|first_value[2]~2_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst5|second_value[3]~3_combout\ : std_logic;
SIGNAL \inst5|second_value[2]~2_combout\ : std_logic;
SIGNAL \inst5|second_value[1]~1_combout\ : std_logic;
SIGNAL \inst5|second_value[0]~0_combout\ : std_logic;
SIGNAL \inst5|Mux7~0_combout\ : std_logic;
SIGNAL \inst5|Mux8~0_combout\ : std_logic;
SIGNAL \inst5|Mux9~0_combout\ : std_logic;
SIGNAL \inst5|Mux10~0_combout\ : std_logic;
SIGNAL \inst5|Mux11~0_combout\ : std_logic;
SIGNAL \inst5|Mux12~0_combout\ : std_logic;
SIGNAL \inst5|Mux13~0_combout\ : std_logic;
SIGNAL \inst5|third_value[1]~1_combout\ : std_logic;
SIGNAL \inst5|third_value[3]~3_combout\ : std_logic;
SIGNAL \inst5|third_value[2]~2_combout\ : std_logic;
SIGNAL \inst5|third_value[0]~0_combout\ : std_logic;
SIGNAL \inst5|Mux14~0_combout\ : std_logic;
SIGNAL \inst5|Mux15~0_combout\ : std_logic;
SIGNAL \inst5|Mux16~0_combout\ : std_logic;
SIGNAL \inst5|Mux17~0_combout\ : std_logic;
SIGNAL \inst5|Mux18~0_combout\ : std_logic;
SIGNAL \inst5|Mux19~0_combout\ : std_logic;
SIGNAL \inst5|Mux20~0_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst4|second_value[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|second_value[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|Mux7~0_combout\ : std_logic;
SIGNAL \inst4|Mux8~0_combout\ : std_logic;
SIGNAL \inst4|Mux9~0_combout\ : std_logic;
SIGNAL \inst4|Mux10~0_combout\ : std_logic;
SIGNAL \inst4|Mux11~0_combout\ : std_logic;
SIGNAL \inst4|Mux12~0_combout\ : std_logic;
SIGNAL \inst4|Mux13~0_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst4|first_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst700666|ACCA|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|inst5|valor_interno\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst3|inst202|OP1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst107|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|inst700666|ACCB|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst6|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst700666|AUX|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst4|second_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst10|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst10|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|inst2|datow\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst10|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|inst10|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst700|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst10|selregR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst206|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst8|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst202|OP2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst|opres\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst3|inst206|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst206|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|inst206|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|inst206|selregr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst206|selsrc\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux13~0_combout\ : std_logic;

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

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst2|inst3|vi~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst3|vi~0_combout\);

\inst2|inst|opres[16]~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst|opres[16]~3_combout\);

\inst6|ESIGUIENTE~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|ESIGUIENTE~q\);
\inst4|ALT_INV_Mux6~0_combout\ <= NOT \inst4|Mux6~0_combout\;
\inst5|ALT_INV_Mux20~0_combout\ <= NOT \inst5|Mux20~0_combout\;
\inst5|ALT_INV_Mux13~0_combout\ <= NOT \inst5|Mux13~0_combout\;
\inst5|ALT_INV_Mux6~0_combout\ <= NOT \inst5|Mux6~0_combout\;
\inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\ <= NOT \inst6|ESIGUIENTE~clkctrl_outclk\;
\inst4|ALT_INV_Mux13~0_combout\ <= NOT \inst4|Mux13~0_combout\;
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

-- Location: IOOBUF_X58_Y54_N23
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

-- Location: IOOBUF_X56_Y54_N30
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

-- Location: IOOBUF_X46_Y54_N9
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

-- Location: IOOBUF_X51_Y54_N16
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

-- Location: IOOBUF_X46_Y54_N23
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

-- Location: IOOBUF_X46_Y54_N2
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

-- Location: IOOBUF_X0_Y27_N23
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

-- Location: IOOBUF_X58_Y0_N2
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

-- Location: IOOBUF_X78_Y45_N2
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

-- Location: IOOBUF_X78_Y44_N24
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

-- Location: IOOBUF_X36_Y39_N16
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

-- Location: IOOBUF_X54_Y54_N2
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

-- Location: IOOBUF_X58_Y54_N30
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

-- Location: IOOBUF_X54_Y54_N23
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

-- Location: IOOBUF_X78_Y49_N16
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

-- Location: IOOBUF_X54_Y54_N9
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

-- Location: IOOBUF_X58_Y54_N9
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

-- Location: IOOBUF_X78_Y33_N23
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

-- Location: IOOBUF_X54_Y54_N16
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

-- Location: IOOBUF_X58_Y54_N2
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

-- Location: IOOBUF_X51_Y54_N9
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

-- Location: IOOBUF_X51_Y54_N2
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

-- Location: IOOBUF_X56_Y54_N2
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

-- Location: IOOBUF_X78_Y45_N16
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

-- Location: IOOBUF_X36_Y39_N23
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

-- Location: IOOBUF_X78_Y49_N23
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

-- Location: IOOBUF_X54_Y54_N30
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

-- Location: IOOBUF_X36_Y39_N30
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

-- Location: IOOBUF_X51_Y54_N23
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

-- Location: IOOBUF_X78_Y33_N16
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

-- Location: IOOBUF_X49_Y54_N23
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

-- Location: IOOBUF_X78_Y42_N23
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

-- Location: IOOBUF_X78_Y44_N16
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

-- Location: IOOBUF_X78_Y41_N16
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

-- Location: IOOBUF_X56_Y54_N23
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

-- Location: IOOBUF_X78_Y41_N24
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

-- Location: IOOBUF_X49_Y54_N9
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

-- Location: IOOBUF_X34_Y39_N23
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

-- Location: IOOBUF_X49_Y54_N2
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

-- Location: IOOBUF_X60_Y54_N30
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

-- Location: IOOBUF_X71_Y54_N30
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

-- Location: IOOBUF_X78_Y31_N16
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

-- Location: IOOBUF_X78_Y31_N23
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

-- Location: IOOBUF_X78_Y37_N2
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

-- Location: IOOBUF_X78_Y36_N9
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

-- Location: IOOBUF_X69_Y54_N2
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

-- Location: IOOBUF_X78_Y36_N24
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

-- Location: IOOBUF_X78_Y36_N16
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

-- Location: IOOBUF_X78_Y37_N23
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

-- Location: IOOBUF_X78_Y42_N9
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

-- Location: IOOBUF_X56_Y54_N16
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

-- Location: IOOBUF_X78_Y36_N2
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

-- Location: IOOBUF_X49_Y54_N16
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

-- Location: IOOBUF_X66_Y54_N23
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

-- Location: IOOBUF_X60_Y54_N23
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

-- Location: IOOBUF_X56_Y54_N9
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

-- Location: IOOBUF_X58_Y54_N16
\disp1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \disp1[7]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
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

-- Location: IOOBUF_X60_Y54_N2
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

-- Location: IOOBUF_X62_Y54_N30
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

-- Location: IOOBUF_X74_Y54_N2
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

-- Location: IOOBUF_X74_Y54_N16
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

-- Location: IOOBUF_X74_Y54_N23
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

-- Location: IOOBUF_X66_Y54_N16
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

-- Location: IOOBUF_X69_Y54_N23
\disp2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \disp2[7]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
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

-- Location: IOOBUF_X78_Y49_N2
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

-- Location: IOOBUF_X60_Y54_N9
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

-- Location: IOOBUF_X64_Y54_N2
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

-- Location: IOOBUF_X66_Y54_N30
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

-- Location: IOOBUF_X69_Y54_N30
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

-- Location: IOOBUF_X60_Y54_N16
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

-- Location: IOOBUF_X78_Y44_N9
\disp3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \disp3[7]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
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

-- Location: IOOBUF_X69_Y54_N16
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

-- Location: IOOBUF_X78_Y44_N2
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

-- Location: IOOBUF_X78_Y43_N2
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

-- Location: IOOBUF_X78_Y35_N2
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

-- Location: IOOBUF_X78_Y43_N9
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

-- Location: IOOBUF_X66_Y54_N9
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

-- Location: IOOBUF_X78_Y35_N23
\disp4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \disp4[7]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
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

-- Location: IOOBUF_X78_Y33_N2
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

-- Location: IOOBUF_X69_Y54_N9
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

-- Location: IOOBUF_X78_Y41_N9
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

-- Location: IOOBUF_X78_Y41_N2
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

-- Location: IOOBUF_X78_Y43_N16
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

-- Location: IOOBUF_X78_Y35_N9
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

-- Location: IOOBUF_X78_Y40_N16
\disp5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \disp5[7]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
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

-- Location: IOOBUF_X78_Y40_N23
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

-- Location: IOOBUF_X78_Y42_N16
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

-- Location: IOOBUF_X78_Y45_N23
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

-- Location: IOOBUF_X78_Y40_N9
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

-- Location: IOOBUF_X78_Y35_N16
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

-- Location: IOOBUF_X78_Y43_N23
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

-- Location: IOOBUF_X78_Y45_N9
\disp6[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp6[7]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
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

-- Location: IOOBUF_X78_Y37_N16
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

-- Location: IOOBUF_X78_Y34_N24
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

-- Location: IOOBUF_X78_Y34_N9
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

-- Location: IOOBUF_X78_Y34_N16
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

-- Location: IOOBUF_X78_Y34_N2
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

-- Location: IOOBUF_X78_Y37_N9
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

-- Location: IOOBUF_X0_Y34_N2
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

-- Location: IOOBUF_X78_Y21_N23
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

-- Location: IOOBUF_X0_Y25_N9
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

-- Location: IOOBUF_X20_Y0_N30
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

-- Location: IOOBUF_X20_Y39_N9
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

-- Location: IOOBUF_X0_Y23_N2
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

-- Location: IOOBUF_X78_Y24_N9
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

-- Location: IOOBUF_X38_Y0_N23
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

-- Location: IOOBUF_X78_Y16_N9
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

-- Location: IOOBUF_X0_Y30_N9
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

-- Location: IOOBUF_X26_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X58_Y0_N23
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

-- Location: IOOBUF_X78_Y18_N2
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

-- Location: IOOBUF_X78_Y3_N16
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

-- Location: IOOBUF_X51_Y0_N30
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

-- Location: IOOBUF_X26_Y0_N23
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

-- Location: IOOBUF_X78_Y25_N9
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X56_Y0_N30
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

-- Location: IOOBUF_X18_Y0_N9
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X24_Y39_N16
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

-- Location: IOOBUF_X0_Y18_N23
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

-- Location: IOOBUF_X0_Y15_N16
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

-- Location: IOOBUF_X51_Y0_N23
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

-- Location: IOOBUF_X0_Y13_N23
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

-- Location: IOOBUF_X0_Y23_N9
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

-- Location: IOOBUF_X26_Y39_N2
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

-- Location: IOOBUF_X34_Y39_N30
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

-- Location: IOOBUF_X78_Y30_N16
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

-- Location: IOOBUF_X0_Y3_N23
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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X26_Y0_N16
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

-- Location: IOOBUF_X34_Y0_N9
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

-- Location: IOOBUF_X78_Y21_N9
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

-- Location: IOOBUF_X78_Y16_N24
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

-- Location: IOOBUF_X78_Y29_N2
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

-- Location: IOOBUF_X78_Y23_N23
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

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X0_Y28_N9
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X26_Y39_N9
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

-- Location: IOOBUF_X78_Y18_N16
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

-- Location: IOOBUF_X22_Y39_N16
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

-- Location: IOOBUF_X78_Y3_N23
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

-- Location: IOOBUF_X38_Y0_N16
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

-- Location: IOIBUF_X78_Y29_N22
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

-- Location: IOIBUF_X49_Y54_N29
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

-- Location: LCCOMB_X77_Y39_N14
\inst6|ESIGUIENTE~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|ESIGUIENTE~feeder_combout\ = \btn_clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_clk~input_o\,
	combout => \inst6|ESIGUIENTE~feeder_combout\);

-- Location: FF_X77_Y39_N15
\inst6|ESIGUIENTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst6|ESIGUIENTE~feeder_combout\,
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

-- Location: IOIBUF_X46_Y54_N29
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

-- Location: LCCOMB_X64_Y48_N0
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

-- Location: LCCOMB_X64_Y48_N4
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

-- Location: LCCOMB_X64_Y48_N6
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

-- Location: LCCOMB_X61_Y49_N24
\inst3|inst206|selregr[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregr\(0) = (!\inst3|inst206|comb~4_combout\ & ((\inst3|inst206|Equal3~3_combout\) # (\inst3|inst206|selregr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~4_combout\,
	datab => \inst3|inst206|Equal3~3_combout\,
	datad => \inst3|inst206|selregr\(0),
	combout => \inst3|inst206|selregr\(0));

-- Location: FF_X63_Y50_N23
\inst3|inst10|selregR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst206|selregr\(0),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selregR\(0));

-- Location: LCCOMB_X64_Y48_N14
\inst|inst1|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux14~0_combout\ = (\inst|inst3|SALIDA\(1) & (((\inst|inst3|SALIDA\(3) & !\inst|inst3|SALIDA\(4))) # (!\inst|inst3|SALIDA\(0)))) # (!\inst|inst3|SALIDA\(1) & (\inst|inst3|SALIDA\(3) $ (((\inst|inst3|SALIDA\(4)) # (\inst|inst3|SALIDA\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(3),
	datab => \inst|inst3|SALIDA\(1),
	datac => \inst|inst3|SALIDA\(4),
	datad => \inst|inst3|SALIDA\(0),
	combout => \inst|inst1|Mux14~0_combout\);

-- Location: LCCOMB_X65_Y48_N20
\inst|inst1|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux8~0_combout\ = (\inst|inst3|SALIDA\(4) & (!\inst|inst3|SALIDA\(3) & (!\inst|inst3|SALIDA\(0) & \inst|inst3|SALIDA\(1)))) # (!\inst|inst3|SALIDA\(4) & (\inst|inst3|SALIDA\(3) & ((!\inst|inst3|SALIDA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(4),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(0),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux8~0_combout\);

-- Location: LCCOMB_X65_Y48_N0
\inst|inst1|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux8~1_combout\ = (!\inst|inst3|SALIDA\(5) & ((\inst|inst3|SALIDA\(2) & ((\inst|inst1|Mux8~0_combout\))) # (!\inst|inst3|SALIDA\(2) & (!\inst|inst1|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Mux14~0_combout\,
	datab => \inst|inst1|Mux8~0_combout\,
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(5),
	combout => \inst|inst1|Mux8~1_combout\);

-- Location: FF_X65_Y48_N1
\inst|inst5|valor_interno[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux8~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(23));

-- Location: LCCOMB_X63_Y48_N12
\inst|inst1|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux9~1_combout\ = (\inst|inst3|SALIDA\(3)) # ((\inst|inst3|SALIDA\(4)) # (\inst|inst3|SALIDA\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(4),
	datad => \inst|inst3|SALIDA\(2),
	combout => \inst|inst1|Mux9~1_combout\);

-- Location: LCCOMB_X63_Y48_N2
\inst|inst1|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux9~0_combout\ = (\inst|inst3|SALIDA\(1) & (\inst|inst3|SALIDA\(3) $ (((\inst|inst3|SALIDA\(2)) # (!\inst|inst3|SALIDA\(4)))))) # (!\inst|inst3|SALIDA\(1) & (\inst|inst3|SALIDA\(2) & ((\inst|inst3|SALIDA\(3)) # (\inst|inst3|SALIDA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(2),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(4),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux9~0_combout\);

-- Location: LCCOMB_X63_Y48_N8
\inst|inst1|Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux9~2_combout\ = (\inst|inst1|Mux9~0_combout\ & (!\inst|inst3|SALIDA\(0) & (\inst|inst1|Mux9~1_combout\ $ (\inst|inst3|SALIDA\(5))))) # (!\inst|inst1|Mux9~0_combout\ & (!\inst|inst1|Mux9~1_combout\ & (\inst|inst3|SALIDA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Mux9~1_combout\,
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst3|SALIDA\(0),
	datad => \inst|inst1|Mux9~0_combout\,
	combout => \inst|inst1|Mux9~2_combout\);

-- Location: FF_X63_Y48_N9
\inst|inst5|valor_interno[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux9~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(22));

-- Location: LCCOMB_X65_Y48_N24
\inst|inst1|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux10~0_combout\ = (\inst|inst3|SALIDA\(3) & (!\inst|inst3|SALIDA\(5) & ((\inst|inst3|SALIDA\(4))))) # (!\inst|inst3|SALIDA\(3) & (!\inst|inst3|SALIDA\(4) & (\inst|inst3|SALIDA\(5) $ (\inst|inst3|SALIDA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(5),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(0),
	datad => \inst|inst3|SALIDA\(4),
	combout => \inst|inst1|Mux10~0_combout\);

-- Location: LCCOMB_X65_Y48_N10
\inst|inst1|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux10~1_combout\ = (!\inst|inst3|SALIDA\(5) & (\inst|inst3|SALIDA\(3) & (\inst|inst3|SALIDA\(0) $ (\inst|inst3|SALIDA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(5),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(0),
	datad => \inst|inst3|SALIDA\(4),
	combout => \inst|inst1|Mux10~1_combout\);

-- Location: LCCOMB_X65_Y48_N2
\inst|inst1|Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux10~2_combout\ = (\inst|inst1|Mux10~1_combout\ & (\inst|inst3|SALIDA\(1) $ (((\inst|inst1|Mux10~0_combout\) # (!\inst|inst3|SALIDA\(2)))))) # (!\inst|inst1|Mux10~1_combout\ & (\inst|inst3|SALIDA\(1) & (\inst|inst1|Mux10~0_combout\ & 
-- !\inst|inst3|SALIDA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst1|Mux10~0_combout\,
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst1|Mux10~1_combout\,
	combout => \inst|inst1|Mux10~2_combout\);

-- Location: FF_X65_Y48_N3
\inst|inst5|valor_interno[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux10~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(21));

-- Location: LCCOMB_X65_Y48_N26
\inst|inst1|Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux14~3_combout\ = (\inst|inst3|SALIDA\(4) & (\inst|inst3|SALIDA\(3) $ (((\inst|inst3|SALIDA\(0)) # (\inst|inst3|SALIDA\(1)))))) # (!\inst|inst3|SALIDA\(4) & (\inst|inst3|SALIDA\(3) & ((\inst|inst3|SALIDA\(0)) # (!\inst|inst3|SALIDA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(4),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(0),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux14~3_combout\);

-- Location: LCCOMB_X64_Y48_N24
\inst|inst1|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux14~1_combout\ = (\inst|inst3|SALIDA\(3)) # ((\inst|inst3|SALIDA\(4)) # ((\inst|inst3|SALIDA\(1) & \inst|inst3|SALIDA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(3),
	datab => \inst|inst3|SALIDA\(1),
	datac => \inst|inst3|SALIDA\(4),
	datad => \inst|inst3|SALIDA\(0),
	combout => \inst|inst1|Mux14~1_combout\);

-- Location: LCCOMB_X64_Y48_N30
\inst|inst1|Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux14~2_combout\ = (!\inst|inst3|SALIDA\(2) & ((\inst|inst3|SALIDA\(5) & ((!\inst|inst1|Mux14~1_combout\))) # (!\inst|inst3|SALIDA\(5) & (!\inst|inst1|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(5),
	datab => \inst|inst3|SALIDA\(2),
	datac => \inst|inst1|Mux14~0_combout\,
	datad => \inst|inst1|Mux14~1_combout\,
	combout => \inst|inst1|Mux14~2_combout\);

-- Location: LCCOMB_X65_Y48_N6
\inst|inst1|Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux14~4_combout\ = (\inst|inst1|Mux14~2_combout\) # ((!\inst|inst3|SALIDA\(5) & (\inst|inst3|SALIDA\(2) & \inst|inst1|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(5),
	datab => \inst|inst3|SALIDA\(2),
	datac => \inst|inst1|Mux14~3_combout\,
	datad => \inst|inst1|Mux14~2_combout\,
	combout => \inst|inst1|Mux14~4_combout\);

-- Location: FF_X65_Y48_N7
\inst|inst5|valor_interno[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux14~4_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(17));

-- Location: LCCOMB_X65_Y48_N12
\inst3|inst206|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal0~1_combout\ = (\inst|inst5|valor_interno\(23) & (!\inst|inst5|valor_interno\(21) & \inst|inst5|valor_interno\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst5|valor_interno\(23),
	datac => \inst|inst5|valor_interno\(21),
	datad => \inst|inst5|valor_interno\(17),
	combout => \inst3|inst206|Equal0~1_combout\);

-- Location: LCCOMB_X69_Y45_N28
\inst3|inst206|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal1~0_combout\ = (\inst3|inst206|Equal0~0_combout\ & (!\inst|inst5|valor_interno\(22) & \inst3|inst206|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal0~0_combout\,
	datac => \inst|inst5|valor_interno\(22),
	datad => \inst3|inst206|Equal0~1_combout\,
	combout => \inst3|inst206|Equal1~0_combout\);

-- Location: LCCOMB_X65_Y48_N14
\inst|inst1|Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux11~3_combout\ = (\inst|inst3|SALIDA\(3) & ((\inst|inst3|SALIDA\(0) & (!\inst|inst3|SALIDA\(2))) # (!\inst|inst3|SALIDA\(0) & ((!\inst|inst3|SALIDA\(1)))))) # (!\inst|inst3|SALIDA\(3) & ((\inst|inst3|SALIDA\(2)) # ((\inst|inst3|SALIDA\(0) & 
-- \inst|inst3|SALIDA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(0),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux11~3_combout\);

-- Location: LCCOMB_X65_Y48_N16
\inst|inst1|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux11~0_combout\ = (!\inst|inst3|SALIDA\(3) & (!\inst|inst3|SALIDA\(2) & (\inst|inst3|SALIDA\(0) $ (\inst|inst3|SALIDA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(0),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux11~0_combout\);

-- Location: LCCOMB_X65_Y48_N22
\inst|inst1|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux11~1_combout\ = (\inst|inst3|SALIDA\(0) & (!\inst|inst3|SALIDA\(2) & (\inst|inst3|SALIDA\(3) $ (\inst|inst3|SALIDA\(1))))) # (!\inst|inst3|SALIDA\(0) & (\inst|inst3|SALIDA\(3) & (\inst|inst3|SALIDA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(0),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux11~1_combout\);

-- Location: LCCOMB_X65_Y48_N4
\inst|inst1|Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux11~2_combout\ = (!\inst|inst3|SALIDA\(4) & ((\inst|inst3|SALIDA\(5) & (\inst|inst1|Mux11~0_combout\)) # (!\inst|inst3|SALIDA\(5) & ((\inst|inst1|Mux11~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(4),
	datab => \inst|inst1|Mux11~0_combout\,
	datac => \inst|inst1|Mux11~1_combout\,
	datad => \inst|inst3|SALIDA\(5),
	combout => \inst|inst1|Mux11~2_combout\);

-- Location: LCCOMB_X65_Y48_N28
\inst|inst1|Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux11~4_combout\ = (\inst|inst1|Mux11~2_combout\) # ((\inst|inst3|SALIDA\(4) & (\inst|inst1|Mux11~3_combout\ & !\inst|inst3|SALIDA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(4),
	datab => \inst|inst1|Mux11~3_combout\,
	datac => \inst|inst1|Mux11~2_combout\,
	datad => \inst|inst3|SALIDA\(5),
	combout => \inst|inst1|Mux11~4_combout\);

-- Location: FF_X65_Y48_N29
\inst|inst5|valor_interno[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux11~4_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(20));

-- Location: LCCOMB_X63_Y48_N10
\inst|inst1|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux12~0_combout\ = (\inst|inst3|SALIDA\(2) & ((\inst|inst3|SALIDA\(0) & (\inst|inst3|SALIDA\(3))) # (!\inst|inst3|SALIDA\(0) & ((\inst|inst3|SALIDA\(1)))))) # (!\inst|inst3|SALIDA\(2) & ((\inst|inst3|SALIDA\(1) & ((\inst|inst3|SALIDA\(0)))) # 
-- (!\inst|inst3|SALIDA\(1) & (\inst|inst3|SALIDA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(2),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(0),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux12~0_combout\);

-- Location: LCCOMB_X63_Y48_N0
\inst|inst1|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux12~1_combout\ = (\inst|inst3|SALIDA\(3) & (!\inst|inst3|SALIDA\(0) & (\inst|inst3|SALIDA\(2) $ (\inst|inst3|SALIDA\(1))))) # (!\inst|inst3|SALIDA\(3) & (\inst|inst3|SALIDA\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(2),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(0),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux12~1_combout\);

-- Location: LCCOMB_X63_Y48_N30
\inst|inst1|Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux12~2_combout\ = (\inst|inst3|SALIDA\(5) & (!\inst|inst1|Mux12~0_combout\ & (!\inst|inst3|SALIDA\(4) & !\inst|inst1|Mux12~1_combout\))) # (!\inst|inst3|SALIDA\(5) & (\inst|inst1|Mux12~1_combout\ & (\inst|inst1|Mux12~0_combout\ $ 
-- (\inst|inst3|SALIDA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Mux12~0_combout\,
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst3|SALIDA\(4),
	datad => \inst|inst1|Mux12~1_combout\,
	combout => \inst|inst1|Mux12~2_combout\);

-- Location: FF_X63_Y48_N31
\inst|inst5|valor_interno[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux12~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(19));

-- Location: LCCOMB_X70_Y45_N0
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

-- Location: LCCOMB_X69_Y45_N16
\inst3|inst206|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal3~1_combout\ = (!\inst|inst5|valor_interno\(21) & (!\inst|inst5|valor_interno\(22) & (!\inst|inst5|valor_interno\(18) & !\inst|inst5|valor_interno\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(21),
	datab => \inst|inst5|valor_interno\(22),
	datac => \inst|inst5|valor_interno\(18),
	datad => \inst|inst5|valor_interno\(23),
	combout => \inst3|inst206|Equal3~1_combout\);

-- Location: LCCOMB_X69_Y45_N22
\inst3|inst206|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal3~2_combout\ = (\inst|inst5|valor_interno\(16) & \inst3|inst206|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(16),
	datad => \inst3|inst206|Equal3~1_combout\,
	combout => \inst3|inst206|Equal3~2_combout\);

-- Location: LCCOMB_X70_Y45_N22
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

-- Location: LCCOMB_X69_Y45_N2
\inst3|inst206|selregr[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregr[3]~0_combout\ = (!\inst3|inst206|Equal1~0_combout\ & (((\inst3|inst206|Equal2~0_combout\ & !\inst3|inst206|Equal3~0_combout\)) # (!\inst3|inst206|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal1~0_combout\,
	datab => \inst3|inst206|Equal2~0_combout\,
	datac => \inst3|inst206|Equal3~2_combout\,
	datad => \inst3|inst206|Equal3~0_combout\,
	combout => \inst3|inst206|selregr[3]~0_combout\);

-- Location: LCCOMB_X69_Y45_N30
\inst3|inst206|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal4~0_combout\ = (!\inst|inst5|valor_interno\(16) & (\inst|inst5|valor_interno\(22) & (\inst|inst5|valor_interno\(18) & \inst|inst5|valor_interno\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(16),
	datab => \inst|inst5|valor_interno\(22),
	datac => \inst|inst5|valor_interno\(18),
	datad => \inst|inst5|valor_interno\(21),
	combout => \inst3|inst206|Equal4~0_combout\);

-- Location: LCCOMB_X69_Y45_N4
\inst3|inst206|selregr[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregr[3]~1_combout\ = ((!\inst|inst5|valor_interno\(23) & (\inst3|inst206|Equal4~0_combout\ & \inst3|inst206|Equal3~0_combout\))) # (!\inst3|inst206|selregr[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(23),
	datab => \inst3|inst206|selregr[3]~0_combout\,
	datac => \inst3|inst206|Equal4~0_combout\,
	datad => \inst3|inst206|Equal3~0_combout\,
	combout => \inst3|inst206|selregr[3]~1_combout\);

-- Location: LCCOMB_X69_Y45_N20
\inst3|inst206|selregr[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregr[3]~2_combout\ = (\inst3|inst206|selregr[3]~1_combout\) # ((\inst3|inst206|Equal0~0_combout\ & (\inst|inst5|valor_interno\(22) & \inst3|inst206|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal0~0_combout\,
	datab => \inst3|inst206|selregr[3]~1_combout\,
	datac => \inst|inst5|valor_interno\(22),
	datad => \inst3|inst206|Equal0~1_combout\,
	combout => \inst3|inst206|selregr[3]~2_combout\);

-- Location: LCCOMB_X69_Y45_N18
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

-- Location: LCCOMB_X69_Y45_N12
\inst3|inst206|comb~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~9_combout\ = (\inst3|inst206|selregr[3]~2_combout\ & (\inst3|inst206|comb~15_combout\ & ((\inst3|inst206|Equal3~3_combout\) # (!\inst3|inst206|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr[3]~2_combout\,
	datab => \inst3|inst206|comb~15_combout\,
	datac => \inst3|inst206|Equal3~3_combout\,
	datad => \inst3|inst206|Equal2~1_combout\,
	combout => \inst3|inst206|comb~9_combout\);

-- Location: LCCOMB_X69_Y45_N26
\inst3|inst206|comb~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~10_combout\ = (\inst3|inst206|selregr[3]~2_combout\ & (((!\inst3|inst206|Equal3~3_combout\ & \inst3|inst206|Equal2~1_combout\)) # (!\inst3|inst206|comb~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr[3]~2_combout\,
	datab => \inst3|inst206|comb~15_combout\,
	datac => \inst3|inst206|Equal3~3_combout\,
	datad => \inst3|inst206|Equal2~1_combout\,
	combout => \inst3|inst206|comb~10_combout\);

-- Location: LCCOMB_X69_Y45_N24
\inst3|inst206|selop[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selop\(2) = (!\inst3|inst206|comb~9_combout\ & ((\inst3|inst206|comb~10_combout\) # (\inst3|inst206|selop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~9_combout\,
	datac => \inst3|inst206|comb~10_combout\,
	datad => \inst3|inst206|selop\(2),
	combout => \inst3|inst206|selop\(2));

-- Location: LCCOMB_X77_Y39_N24
\inst3|inst10|selop[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst10|selop[2]~feeder_combout\ = \inst3|inst206|selop\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst206|selop\(2),
	combout => \inst3|inst10|selop[2]~feeder_combout\);

-- Location: FF_X77_Y39_N25
\inst3|inst10|selop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~q\,
	d => \inst3|inst10|selop[2]~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selop\(2));

-- Location: LCCOMB_X59_Y49_N16
\inst3|inst206|selop[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selop\(0) = (!\inst3|inst206|comb~4_combout\ & ((\inst3|inst206|Equal3~3_combout\) # (\inst3|inst206|selop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~4_combout\,
	datac => \inst3|inst206|Equal3~3_combout\,
	datad => \inst3|inst206|selop\(0),
	combout => \inst3|inst206|selop\(0));

-- Location: FF_X58_Y50_N17
\inst3|inst10|selop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst206|selop\(0),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selop\(0));

-- Location: LCCOMB_X58_Y50_N26
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

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X69_Y45_N10
\inst3|inst206|selsrc[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selsrc\(1) = (!\inst3|inst206|comb~9_combout\ & ((\inst3|inst206|comb~10_combout\) # (\inst3|inst206|selsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~9_combout\,
	datac => \inst3|inst206|comb~10_combout\,
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst206|selsrc\(1));

-- Location: LCCOMB_X65_Y47_N16
\inst3|inst206|selsrc[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selsrc\(0) = (\inst3|inst206|seldato~2_combout\ & ((\inst3|inst206|selregr[3]~2_combout\) # (\inst3|inst206|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|seldato~2_combout\,
	datab => \inst3|inst206|selregr[3]~2_combout\,
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst206|selsrc\(0));

-- Location: LCCOMB_X67_Y45_N8
\inst3|inst206|comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~6_combout\ = (!\inst3|inst206|Equal3~3_combout\ & (((\inst|inst5|valor_interno\(22)) # (!\inst3|inst206|Equal0~1_combout\)) # (!\inst3|inst206|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal3~3_combout\,
	datab => \inst3|inst206|Equal0~0_combout\,
	datac => \inst3|inst206|Equal0~1_combout\,
	datad => \inst|inst5|valor_interno\(22),
	combout => \inst3|inst206|comb~6_combout\);

-- Location: LCCOMB_X67_Y45_N14
\inst3|inst206|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal0~2_combout\ = (\inst|inst5|valor_interno\(22) & (\inst3|inst206|Equal0~1_combout\ & \inst3|inst206|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(22),
	datac => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst206|Equal0~0_combout\,
	combout => \inst3|inst206|Equal0~2_combout\);

-- Location: LCCOMB_X67_Y45_N4
\inst3|inst206|comb~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~8_combout\ = (!\inst3|inst206|comb~6_combout\ & ((\inst3|inst206|selregr[3]~1_combout\) # (\inst3|inst206|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|selregr[3]~1_combout\,
	datac => \inst3|inst206|comb~6_combout\,
	datad => \inst3|inst206|Equal0~2_combout\,
	combout => \inst3|inst206|comb~8_combout\);

-- Location: LCCOMB_X67_Y45_N30
\inst3|inst206|comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~7_combout\ = (\inst3|inst206|comb~6_combout\ & ((\inst3|inst206|selregr[3]~1_combout\) # (\inst3|inst206|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|selregr[3]~1_combout\,
	datac => \inst3|inst206|comb~6_combout\,
	datad => \inst3|inst206|Equal0~2_combout\,
	combout => \inst3|inst206|comb~7_combout\);

-- Location: LCCOMB_X67_Y45_N6
\inst3|inst206|selregw[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregw\(0) = (!\inst3|inst206|comb~7_combout\ & ((\inst3|inst206|comb~8_combout\) # (\inst3|inst206|selregw\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|comb~8_combout\,
	datac => \inst3|inst206|comb~7_combout\,
	datad => \inst3|inst206|selregw\(0),
	combout => \inst3|inst206|selregw\(0));

-- Location: FF_X67_Y45_N7
\inst3|inst10|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst206|selregw\(0),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selregw\(0));

-- Location: FF_X63_Y50_N27
\inst2|inst107|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst10|selregw\(0),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst107|selregw\(0));

-- Location: LCCOMB_X67_Y45_N18
\inst3|inst206|comb~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~16_combout\ = (\inst3|inst206|selregr[3]~1_combout\ & (((!\inst3|inst206|Equal0~0_combout\) # (!\inst3|inst206|Equal0~1_combout\)) # (!\inst|inst5|valor_interno\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(22),
	datab => \inst3|inst206|Equal0~1_combout\,
	datac => \inst3|inst206|selregr[3]~1_combout\,
	datad => \inst3|inst206|Equal0~0_combout\,
	combout => \inst3|inst206|comb~16_combout\);

-- Location: LCCOMB_X67_Y45_N20
\inst3|inst206|selregw[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregw\(2) = (!\inst3|inst206|comb~16_combout\ & ((\inst3|inst206|Equal0~2_combout\) # (\inst3|inst206|selregw\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|comb~16_combout\,
	datac => \inst3|inst206|Equal0~2_combout\,
	datad => \inst3|inst206|selregw\(2),
	combout => \inst3|inst206|selregw\(2));

-- Location: FF_X67_Y45_N21
\inst3|inst10|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst206|selregw\(2),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selregw\(2));

-- Location: FF_X63_Y50_N21
\inst2|inst107|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst10|selregw\(2),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst107|selregw\(2));

-- Location: LCCOMB_X63_Y50_N0
\inst3|inst700666|inst1000|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|inst1000|Equal1~1_combout\ = (!\inst2|inst107|selregw\(0) & \inst2|inst107|selregw\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst107|selregw\(0),
	datad => \inst2|inst107|selregw\(2),
	combout => \inst3|inst700666|inst1000|Equal1~1_combout\);

-- Location: FF_X62_Y50_N17
\inst3|inst700666|ACCB|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(4),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(4));

-- Location: LCCOMB_X59_Y50_N12
\inst3|inst202|OP2[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(4) = (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & (\inst3|inst206|selregr\(0) & \inst3|inst700666|ACCB|SALIDA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(4),
	combout => \inst3|inst202|OP2\(4));

-- Location: FF_X59_Y50_N13
\inst3|inst8|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(4),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(4));

-- Location: LCCOMB_X59_Y50_N28
\inst2|inst1357|$00000|auto_generated|result_node[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst2|inst6|SALIDA\(4)))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst3|inst8|SALIDA\(4))))) # 
-- (!\inst3|inst10|selregR\(0) & (\inst3|inst8|SALIDA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(4),
	datab => \inst3|inst10|selregR\(0),
	datac => \inst2|inst6|SALIDA\(4),
	datad => \inst3|inst700666|inst1000|Equal1~1_combout\,
	combout => \inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\);

-- Location: LCCOMB_X63_Y48_N24
\inst|inst1|Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux28~0_combout\ = (\inst|inst3|SALIDA\(2) & (\inst|inst3|SALIDA\(3) & (!\inst|inst3|SALIDA\(0) & !\inst|inst3|SALIDA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(2),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(0),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux28~0_combout\);

-- Location: LCCOMB_X63_Y48_N4
\inst|inst1|Mux28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux28~1_combout\ = (\inst|inst3|SALIDA\(4) & \inst|inst1|Mux28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|SALIDA\(4),
	datad => \inst|inst1|Mux28~0_combout\,
	combout => \inst|inst1|Mux28~1_combout\);

-- Location: FF_X63_Y48_N5
\inst|inst5|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux28~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(3));

-- Location: FF_X62_Y50_N13
\inst3|inst700666|ACCB|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(3),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(3));

-- Location: LCCOMB_X62_Y48_N10
\inst3|inst202|OP2[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[3]~2_combout\ = (\inst3|inst206|selsrc\(1) & (((\inst|inst5|valor_interno\(3))))) # (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & ((\inst3|inst700666|ACCB|SALIDA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst|inst5|valor_interno\(3),
	datad => \inst3|inst700666|ACCB|SALIDA\(3),
	combout => \inst3|inst202|OP2[3]~2_combout\);

-- Location: LCCOMB_X62_Y48_N26
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

-- Location: FF_X62_Y48_N27
\inst3|inst8|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2[3]~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(3));

-- Location: LCCOMB_X62_Y50_N12
\inst2|inst1357|$00000|auto_generated|result_node[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[3]~12_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst2|inst6|SALIDA\(3))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst8|SALIDA\(3)))))) # 
-- (!\inst3|inst10|selregR\(0) & (((\inst3|inst8|SALIDA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selregR\(0),
	datab => \inst3|inst700666|inst1000|Equal1~1_combout\,
	datac => \inst2|inst6|SALIDA\(3),
	datad => \inst3|inst8|SALIDA\(3),
	combout => \inst2|inst1357|$00000|auto_generated|result_node[3]~12_combout\);

-- Location: LCCOMB_X63_Y50_N20
\inst3|inst700666|inst1000|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|inst1000|Equal1~0_combout\ = (\inst2|inst107|selregw\(0) & !\inst2|inst107|selregw\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst107|selregw\(0),
	datac => \inst2|inst107|selregw\(2),
	combout => \inst3|inst700666|inst1000|Equal1~0_combout\);

-- Location: FF_X60_Y50_N7
\inst3|inst700666|ACCA|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(3),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(3));

-- Location: LCCOMB_X60_Y50_N4
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

-- Location: FF_X61_Y50_N21
\inst3|inst700|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(3),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(3));

-- Location: LCCOMB_X61_Y50_N20
\inst2|inst1356|$00000|auto_generated|result_node[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst2|inst6|SALIDA\(3))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst3|inst700|SALIDA\(3)))))) 
-- # (!\inst3|inst10|selregR\(0) & (((\inst3|inst700|SALIDA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selregR\(0),
	datab => \inst2|inst6|SALIDA\(3),
	datac => \inst3|inst700|SALIDA\(3),
	datad => \inst3|inst700666|inst1000|Equal1~0_combout\,
	combout => \inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\);

-- Location: FF_X60_Y50_N1
\inst3|inst700666|ACCA|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(2),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(2));

-- Location: LCCOMB_X60_Y50_N22
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

-- Location: FF_X62_Y50_N1
\inst3|inst700|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(2),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(2));

-- Location: LCCOMB_X62_Y50_N0
\inst2|inst1356|$00000|auto_generated|result_node[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst2|inst6|SALIDA\(2))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst3|inst700|SALIDA\(2)))))) 
-- # (!\inst3|inst10|selregR\(0) & (((\inst3|inst700|SALIDA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(2),
	datab => \inst3|inst10|selregR\(0),
	datac => \inst3|inst700|SALIDA\(2),
	datad => \inst3|inst700666|inst1000|Equal1~0_combout\,
	combout => \inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\);

-- Location: FF_X62_Y50_N21
\inst3|inst700666|ACCB|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(1),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(1));

-- Location: LCCOMB_X61_Y50_N0
\inst3|inst202|OP2[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(1) = (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & (\inst3|inst700666|ACCB|SALIDA\(1) & \inst3|inst206|selregr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst700666|ACCB|SALIDA\(1),
	datad => \inst3|inst206|selregr\(0),
	combout => \inst3|inst202|OP2\(1));

-- Location: FF_X62_Y50_N3
\inst3|inst8|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(1),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(1));

-- Location: LCCOMB_X63_Y50_N28
\inst2|inst1357|$00000|auto_generated|result_node[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[1]~14_combout\ = (\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst10|selregR\(0) & ((\inst2|inst6|SALIDA\(1)))) # (!\inst3|inst10|selregR\(0) & (\inst3|inst8|SALIDA\(1))))) # 
-- (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst3|inst8|SALIDA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(1),
	datab => \inst3|inst700666|inst1000|Equal1~1_combout\,
	datac => \inst3|inst10|selregR\(0),
	datad => \inst2|inst6|SALIDA\(1),
	combout => \inst2|inst1357|$00000|auto_generated|result_node[1]~14_combout\);

-- Location: LCCOMB_X65_Y48_N18
\inst|inst1|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux31~0_combout\ = (\inst|inst3|SALIDA\(0) & (!\inst|inst3|SALIDA\(4) & (\inst|inst3|SALIDA\(3) $ (!\inst|inst3|SALIDA\(2))))) # (!\inst|inst3|SALIDA\(0) & (\inst|inst3|SALIDA\(4) & (\inst|inst3|SALIDA\(3) $ (\inst|inst3|SALIDA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(0),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(4),
	combout => \inst|inst1|Mux31~0_combout\);

-- Location: LCCOMB_X65_Y48_N8
\inst|inst1|Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux31~1_combout\ = (\inst|inst1|Mux31~0_combout\ & (\inst|inst3|SALIDA\(1) $ (\inst|inst3|SALIDA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datac => \inst|inst3|SALIDA\(3),
	datad => \inst|inst1|Mux31~0_combout\,
	combout => \inst|inst1|Mux31~1_combout\);

-- Location: FF_X65_Y48_N9
\inst|inst5|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux31~1_combout\,
	clrn => \RESET~input_o\,
	sclr => \inst|inst3|SALIDA\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(0));

-- Location: FF_X63_Y50_N9
\inst3|inst700666|ACCB|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(0),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(0));

-- Location: LCCOMB_X63_Y50_N22
\inst3|inst202|OP2[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[0]~6_combout\ = (\inst3|inst206|selsrc\(1) & (\inst|inst5|valor_interno\(0))) # (!\inst3|inst206|selsrc\(1) & (((\inst3|inst700666|ACCB|SALIDA\(0) & \inst3|inst206|selregr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(0),
	datab => \inst3|inst700666|ACCB|SALIDA\(0),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst202|OP2[0]~6_combout\);

-- Location: LCCOMB_X63_Y50_N4
\inst3|inst202|OP2[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[0]~7_combout\ = (\inst3|inst202|OP2[0]~6_combout\ & \inst3|inst206|selsrc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst202|OP2[0]~6_combout\,
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP2[0]~7_combout\);

-- Location: FF_X63_Y50_N5
\inst3|inst8|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2[0]~7_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(0));

-- Location: LCCOMB_X63_Y50_N6
\inst2|inst1357|$00000|auto_generated|result_node[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst2|inst6|SALIDA\(0)))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst3|inst8|SALIDA\(0))))) # 
-- (!\inst3|inst10|selregR\(0) & (\inst3|inst8|SALIDA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selregR\(0),
	datab => \inst3|inst8|SALIDA\(0),
	datac => \inst2|inst6|SALIDA\(0),
	datad => \inst3|inst700666|inst1000|Equal1~1_combout\,
	combout => \inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\);

-- Location: LCCOMB_X64_Y50_N20
\inst3|inst700666|ACCA|SALIDA[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[0]~feeder_combout\ = \inst2|inst6|SALIDA\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(0),
	combout => \inst3|inst700666|ACCA|SALIDA[0]~feeder_combout\);

-- Location: FF_X64_Y50_N21
\inst3|inst700666|ACCA|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[0]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(0));

-- Location: LCCOMB_X64_Y49_N0
\inst3|inst202|OP1[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(0) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(0) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(0),
	combout => \inst3|inst202|OP1\(0));

-- Location: FF_X64_Y49_N1
\inst3|inst700|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(0),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(0));

-- Location: LCCOMB_X63_Y50_N8
\inst2|inst1356|$00000|auto_generated|result_node[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\ = (\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst3|inst10|selregR\(0) & ((\inst2|inst6|SALIDA\(0)))) # (!\inst3|inst10|selregR\(0) & (\inst3|inst700|SALIDA\(0))))) # 
-- (!\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst3|inst700|SALIDA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|inst1000|Equal1~0_combout\,
	datab => \inst3|inst700|SALIDA\(0),
	datac => \inst2|inst6|SALIDA\(0),
	datad => \inst3|inst10|selregR\(0),
	combout => \inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\);

-- Location: LCCOMB_X64_Y50_N4
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

-- Location: FF_X64_Y50_N5
\inst3|inst700666|ACCA|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[15]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(15));

-- Location: LCCOMB_X64_Y49_N28
\inst3|inst202|OP1[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(15) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(15) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(15),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP1\(15));

-- Location: FF_X64_Y49_N29
\inst3|inst700|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(15),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(15));

-- Location: LCCOMB_X64_Y49_N26
\inst2|inst1356|$00000|auto_generated|result_node[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst2|inst6|SALIDA\(15))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & 
-- ((\inst3|inst700|SALIDA\(15)))))) # (!\inst3|inst10|selregR\(0) & (((\inst3|inst700|SALIDA\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(15),
	datab => \inst3|inst700|SALIDA\(15),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst700666|inst1000|Equal1~0_combout\,
	combout => \inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\);

-- Location: LCCOMB_X64_Y49_N22
\inst3|inst700666|ACCB|SALIDA[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[14]~feeder_combout\ = \inst2|inst6|SALIDA\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(14),
	combout => \inst3|inst700666|ACCB|SALIDA[14]~feeder_combout\);

-- Location: FF_X64_Y49_N23
\inst3|inst700666|ACCB|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[14]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(14));

-- Location: LCCOMB_X64_Y49_N24
\inst3|inst202|OP2[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(14) = (\inst3|inst206|selsrc\(0) & (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCB|SALIDA\(14) & !\inst3|inst206|selsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCB|SALIDA\(14),
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst202|OP2\(14));

-- Location: FF_X64_Y49_N25
\inst3|inst8|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(14),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(14));

-- Location: LCCOMB_X64_Y49_N14
\inst2|inst1357|$00000|auto_generated|result_node[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[14]~1_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst2|inst6|SALIDA\(14))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst8|SALIDA\(14)))))) 
-- # (!\inst3|inst10|selregR\(0) & (((\inst3|inst8|SALIDA\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(14),
	datab => \inst3|inst8|SALIDA\(14),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst700666|inst1000|Equal1~1_combout\,
	combout => \inst2|inst1357|$00000|auto_generated|result_node[14]~1_combout\);

-- Location: LCCOMB_X62_Y48_N12
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

-- Location: FF_X62_Y48_N13
\inst3|inst700666|ACCB|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[13]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(13));

-- Location: LCCOMB_X62_Y48_N16
\inst3|inst202|OP2[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(13) = (\inst3|inst700666|ACCB|SALIDA\(13) & (\inst3|inst206|selsrc\(0) & (\inst3|inst206|selregr\(0) & !\inst3|inst206|selsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|ACCB|SALIDA\(13),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst202|OP2\(13));

-- Location: FF_X62_Y48_N17
\inst3|inst8|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(13),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(13));

-- Location: LCCOMB_X62_Y48_N14
\inst2|inst1357|$00000|auto_generated|result_node[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst2|inst6|SALIDA\(13))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst8|SALIDA\(13)))))) 
-- # (!\inst3|inst10|selregR\(0) & (((\inst3|inst8|SALIDA\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(13),
	datab => \inst3|inst8|SALIDA\(13),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst700666|inst1000|Equal1~1_combout\,
	combout => \inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\);

-- Location: LCCOMB_X64_Y50_N28
\inst3|inst700666|ACCA|SALIDA[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[12]~feeder_combout\ = \inst2|inst6|SALIDA\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(12),
	combout => \inst3|inst700666|ACCA|SALIDA[12]~feeder_combout\);

-- Location: FF_X64_Y50_N29
\inst3|inst700666|ACCA|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[12]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(12));

-- Location: LCCOMB_X62_Y48_N2
\inst3|inst202|OP1[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(12) = (\inst3|inst700666|ACCA|SALIDA\(12) & (\inst3|inst206|selregr\(0) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(12),
	datad => \inst3|inst206|selregr\(0),
	combout => \inst3|inst202|OP1\(12));

-- Location: FF_X62_Y48_N3
\inst3|inst700|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(12),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(12));

-- Location: LCCOMB_X62_Y48_N0
\inst2|inst1356|$00000|auto_generated|result_node[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst2|inst6|SALIDA\(12)))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & 
-- (\inst3|inst700|SALIDA\(12))))) # (!\inst3|inst10|selregR\(0) & (\inst3|inst700|SALIDA\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selregR\(0),
	datab => \inst3|inst700|SALIDA\(12),
	datac => \inst2|inst6|SALIDA\(12),
	datad => \inst3|inst700666|inst1000|Equal1~0_combout\,
	combout => \inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\);

-- Location: LCCOMB_X65_Y50_N22
\inst3|inst700666|ACCA|SALIDA[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[11]~feeder_combout\ = \inst2|inst6|SALIDA\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(11),
	combout => \inst3|inst700666|ACCA|SALIDA[11]~feeder_combout\);

-- Location: FF_X65_Y50_N23
\inst3|inst700666|ACCA|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[11]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(11));

-- Location: LCCOMB_X59_Y50_N2
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

-- Location: FF_X59_Y50_N3
\inst3|inst700|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(11),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(11));

-- Location: LCCOMB_X59_Y50_N6
\inst2|inst1356|$00000|auto_generated|result_node[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\ = (\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst3|inst10|selregR\(0) & (\inst2|inst6|SALIDA\(11))) # (!\inst3|inst10|selregR\(0) & ((\inst3|inst700|SALIDA\(11)))))) # 
-- (!\inst3|inst700666|inst1000|Equal1~0_combout\ & (((\inst3|inst700|SALIDA\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(11),
	datab => \inst3|inst700|SALIDA\(11),
	datac => \inst3|inst700666|inst1000|Equal1~0_combout\,
	datad => \inst3|inst10|selregR\(0),
	combout => \inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\);

-- Location: LCCOMB_X59_Y50_N16
\inst2|inst|opres[11]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[11]~24_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\ & ((!\inst3|inst10|selop\(0)) # (!\inst2|inst1357|$00000|auto_generated|result_node[11]~4_combout\))) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\ & (\inst2|inst1357|$00000|auto_generated|result_node[11]~4_combout\)))) # (!\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\,
	datab => \inst2|inst1357|$00000|auto_generated|result_node[11]~4_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[11]~24_combout\);

-- Location: FF_X62_Y49_N19
\inst3|inst700666|ACCA|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(10),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(10));

-- Location: LCCOMB_X64_Y49_N12
\inst3|inst202|OP1[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(10) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(10) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(10),
	combout => \inst3|inst202|OP1\(10));

-- Location: FF_X63_Y49_N11
\inst3|inst700|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(10),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(10));

-- Location: LCCOMB_X63_Y49_N10
\inst2|inst1356|$00000|auto_generated|result_node[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst2|inst6|SALIDA\(10))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & 
-- ((\inst3|inst700|SALIDA\(10)))))) # (!\inst3|inst10|selregR\(0) & (((\inst3|inst700|SALIDA\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selregR\(0),
	datab => \inst2|inst6|SALIDA\(10),
	datac => \inst3|inst700|SALIDA\(10),
	datad => \inst3|inst700666|inst1000|Equal1~0_combout\,
	combout => \inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\);

-- Location: FF_X63_Y50_N1
\inst3|inst700666|ACCB|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(9),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(9));

-- Location: LCCOMB_X63_Y49_N12
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

-- Location: FF_X63_Y49_N13
\inst3|inst8|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(9),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(9));

-- Location: LCCOMB_X63_Y49_N18
\inst2|inst1357|$00000|auto_generated|result_node[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[9]~6_combout\ = (\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst10|selregR\(0) & (\inst2|inst6|SALIDA\(9))) # (!\inst3|inst10|selregR\(0) & ((\inst3|inst8|SALIDA\(9)))))) # 
-- (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (((\inst3|inst8|SALIDA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|inst1000|Equal1~1_combout\,
	datab => \inst2|inst6|SALIDA\(9),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst8|SALIDA\(9),
	combout => \inst2|inst1357|$00000|auto_generated|result_node[9]~6_combout\);

-- Location: FF_X61_Y50_N23
\inst3|inst700666|ACCA|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(8),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(8));

-- Location: LCCOMB_X61_Y50_N22
\inst3|inst202|OP1[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(8) = (\inst3|inst700666|ACCA|SALIDA\(8) & (\inst3|inst206|selregr\(0) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(8),
	datad => \inst3|inst206|selregr\(0),
	combout => \inst3|inst202|OP1\(8));

-- Location: FF_X63_Y50_N11
\inst3|inst700|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(8),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(8));

-- Location: LCCOMB_X63_Y50_N10
\inst2|inst1356|$00000|auto_generated|result_node[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\ = (\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst3|inst10|selregR\(0) & (\inst2|inst6|SALIDA\(8))) # (!\inst3|inst10|selregR\(0) & ((\inst3|inst700|SALIDA\(8)))))) # 
-- (!\inst3|inst700666|inst1000|Equal1~0_combout\ & (((\inst3|inst700|SALIDA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|inst1000|Equal1~0_combout\,
	datab => \inst2|inst6|SALIDA\(8),
	datac => \inst3|inst700|SALIDA\(8),
	datad => \inst3|inst10|selregR\(0),
	combout => \inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\);

-- Location: FF_X63_Y50_N15
\inst3|inst700666|ACCB|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(7),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(7));

-- Location: LCCOMB_X66_Y50_N4
\inst3|inst202|OP2[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(7) = (\inst3|inst206|selregr\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & \inst3|inst700666|ACCB|SALIDA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(7),
	combout => \inst3|inst202|OP2\(7));

-- Location: FF_X66_Y50_N5
\inst3|inst8|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(7),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(7));

-- Location: LCCOMB_X63_Y50_N14
\inst2|inst1357|$00000|auto_generated|result_node[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[7]~8_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst2|inst6|SALIDA\(7)))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst3|inst8|SALIDA\(7))))) # 
-- (!\inst3|inst10|selregR\(0) & (\inst3|inst8|SALIDA\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selregR\(0),
	datab => \inst3|inst8|SALIDA\(7),
	datac => \inst2|inst6|SALIDA\(7),
	datad => \inst3|inst700666|inst1000|Equal1~1_combout\,
	combout => \inst2|inst1357|$00000|auto_generated|result_node[7]~8_combout\);

-- Location: FF_X62_Y50_N23
\inst3|inst700666|ACCB|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(6),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(6));

-- Location: LCCOMB_X66_Y50_N6
\inst3|inst202|OP2[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(6) = (\inst3|inst206|selregr\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & \inst3|inst700666|ACCB|SALIDA\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(6),
	combout => \inst3|inst202|OP2\(6));

-- Location: FF_X66_Y50_N7
\inst3|inst8|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(6),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(6));

-- Location: LCCOMB_X63_Y50_N12
\inst2|inst1357|$00000|auto_generated|result_node[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst2|inst6|SALIDA\(6)))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst3|inst8|SALIDA\(6))))) # 
-- (!\inst3|inst10|selregR\(0) & (((\inst3|inst8|SALIDA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selregR\(0),
	datab => \inst3|inst700666|inst1000|Equal1~1_combout\,
	datac => \inst3|inst8|SALIDA\(6),
	datad => \inst2|inst6|SALIDA\(6),
	combout => \inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\);

-- Location: LCCOMB_X60_Y50_N10
\inst3|inst700666|ACCA|SALIDA[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[5]~feeder_combout\ = \inst2|inst6|SALIDA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(5),
	combout => \inst3|inst700666|ACCA|SALIDA[5]~feeder_combout\);

-- Location: FF_X60_Y50_N11
\inst3|inst700666|ACCA|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[5]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(5));

-- Location: LCCOMB_X63_Y50_N16
\inst3|inst202|OP1[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(5) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(5) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(5),
	combout => \inst3|inst202|OP1\(5));

-- Location: FF_X63_Y50_N17
\inst3|inst700|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(5),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(5));

-- Location: LCCOMB_X63_Y50_N18
\inst2|inst1356|$00000|auto_generated|result_node[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[5]~10_combout\ = (\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst3|inst10|selregR\(0) & (\inst2|inst6|SALIDA\(5))) # (!\inst3|inst10|selregR\(0) & ((\inst3|inst700|SALIDA\(5)))))) # 
-- (!\inst3|inst700666|inst1000|Equal1~0_combout\ & (((\inst3|inst700|SALIDA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(5),
	datab => \inst3|inst700|SALIDA\(5),
	datac => \inst3|inst700666|inst1000|Equal1~0_combout\,
	datad => \inst3|inst10|selregR\(0),
	combout => \inst2|inst1356|$00000|auto_generated|result_node[5]~10_combout\);

-- Location: LCCOMB_X60_Y50_N28
\inst2|inst|opres[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[5]~12_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[5]~10_combout\ & ((!\inst3|inst10|selop\(0)) # (!\inst2|inst1356|$00000|auto_generated|result_node[5]~10_combout\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[5]~10_combout\ & (\inst2|inst1356|$00000|auto_generated|result_node[5]~10_combout\)))) # (!\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst1357|$00000|auto_generated|result_node[5]~10_combout\,
	datac => \inst2|inst1356|$00000|auto_generated|result_node[5]~10_combout\,
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[5]~12_combout\);

-- Location: LCCOMB_X62_Y50_N24
\inst2|inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~10_combout\ = (\inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\ & (\inst2|inst|Add0~9\ & VCC)) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\ & (!\inst2|inst|Add0~9\)))) # (!\inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\ & 
-- (!\inst2|inst|Add0~9\)) # (!\inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\ & ((\inst2|inst|Add0~9\) # (GND)))))
-- \inst2|inst|Add0~11\ = CARRY((\inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\ & (!\inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\ & !\inst2|inst|Add0~9\)) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\ & ((!\inst2|inst|Add0~9\) # (!\inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\,
	datab => \inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~9\,
	combout => \inst2|inst|Add0~10_combout\,
	cout => \inst2|inst|Add0~11\);

-- Location: LCCOMB_X62_Y50_N26
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

-- Location: LCCOMB_X60_Y50_N20
\inst2|inst|opres[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[5]~13_combout\ = (\inst3|inst10|selop\(2) & (\inst2|inst|opres[5]~12_combout\)) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[5]~12_combout\ & (\inst2|inst|Add0~12_combout\)) # (!\inst2|inst|opres[5]~12_combout\ & 
-- ((\inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|opres[5]~12_combout\,
	datac => \inst2|inst|Add0~12_combout\,
	datad => \inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\,
	combout => \inst2|inst|opres[5]~13_combout\);

-- Location: LCCOMB_X60_Y50_N2
\inst2|inst|opres[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(5) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(5)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[5]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[5]~13_combout\,
	datac => \inst2|inst|opres\(5),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(5));

-- Location: LCCOMB_X60_Y50_N12
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

-- Location: FF_X60_Y50_N13
\inst2|inst6|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(5),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(5));

-- Location: FF_X59_Y50_N15
\inst3|inst700666|ACCB|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(5),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(5));

-- Location: LCCOMB_X63_Y48_N14
\inst|inst1|Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux26~0_combout\ = (\inst|inst3|SALIDA\(3) & (!\inst|inst3|SALIDA\(5) & (\inst|inst3|SALIDA\(0) & \inst|inst3|SALIDA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(3),
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst3|SALIDA\(0),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux26~0_combout\);

-- Location: LCCOMB_X63_Y48_N18
\inst|inst1|Mux26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux26~1_combout\ = (\inst|inst3|SALIDA\(2) & (\inst|inst1|Mux26~0_combout\ & !\inst|inst3|SALIDA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(2),
	datab => \inst|inst1|Mux26~0_combout\,
	datac => \inst|inst3|SALIDA\(4),
	combout => \inst|inst1|Mux26~1_combout\);

-- Location: FF_X63_Y48_N19
\inst|inst5|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux26~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(5));

-- Location: LCCOMB_X59_Y50_N14
\inst3|inst202|OP2[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[5]~0_combout\ = (\inst3|inst206|selsrc\(1) & (((\inst|inst5|valor_interno\(5))))) # (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCB|SALIDA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCB|SALIDA\(5),
	datad => \inst|inst5|valor_interno\(5),
	combout => \inst3|inst202|OP2[5]~0_combout\);

-- Location: LCCOMB_X61_Y50_N12
\inst3|inst202|OP2[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[5]~1_combout\ = (\inst3|inst206|selsrc\(0) & \inst3|inst202|OP2[5]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst202|OP2[5]~0_combout\,
	combout => \inst3|inst202|OP2[5]~1_combout\);

-- Location: FF_X61_Y50_N13
\inst3|inst8|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2[5]~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(5));

-- Location: LCCOMB_X61_Y50_N8
\inst2|inst1357|$00000|auto_generated|result_node[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[5]~10_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst2|inst6|SALIDA\(5)))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst3|inst8|SALIDA\(5))))) # 
-- (!\inst3|inst10|selregR\(0) & (\inst3|inst8|SALIDA\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(5),
	datab => \inst2|inst6|SALIDA\(5),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst700666|inst1000|Equal1~1_combout\,
	combout => \inst2|inst1357|$00000|auto_generated|result_node[5]~10_combout\);

-- Location: LCCOMB_X62_Y50_N28
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

-- Location: LCCOMB_X62_Y50_N4
\inst2|inst|opres[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[6]~14_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & ((\inst2|inst|Add0~14_combout\))) # (!\inst3|inst10|selop\(0) & 
-- (\inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|inst|Add0~14_combout\,
	combout => \inst2|inst|opres[6]~14_combout\);

-- Location: LCCOMB_X61_Y50_N28
\inst2|inst|opres[6]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[6]~15_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\ & ((!\inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\) # (!\inst2|inst|opres[6]~14_combout\))) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\))))) # (!\inst3|inst10|selop\(2) & (((\inst2|inst|opres[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\,
	datac => \inst2|inst|opres[6]~14_combout\,
	datad => \inst2|inst1357|$00000|auto_generated|result_node[6]~9_combout\,
	combout => \inst2|inst|opres[6]~15_combout\);

-- Location: LCCOMB_X60_Y50_N30
\inst2|inst|opres[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(6) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(6))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[6]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(6),
	datab => \inst2|inst|opres[6]~15_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(6));

-- Location: LCCOMB_X60_Y50_N8
\inst2|inst2|datow[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(6) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datac => \inst2|inst|opres\(6),
	combout => \inst2|inst2|datow\(6));

-- Location: FF_X60_Y50_N9
\inst2|inst6|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(6),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(6));

-- Location: FF_X60_Y50_N17
\inst3|inst700666|ACCA|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(6),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(6));

-- Location: LCCOMB_X60_Y50_N16
\inst3|inst202|OP1[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(6) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(6) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(6),
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst202|OP1\(6));

-- Location: FF_X63_Y50_N31
\inst3|inst700|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(6),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(6));

-- Location: LCCOMB_X63_Y50_N30
\inst2|inst1356|$00000|auto_generated|result_node[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\ = (\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst3|inst10|selregR\(0) & ((\inst2|inst6|SALIDA\(6)))) # (!\inst3|inst10|selregR\(0) & (\inst3|inst700|SALIDA\(6))))) # 
-- (!\inst3|inst700666|inst1000|Equal1~0_combout\ & (((\inst3|inst700|SALIDA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|inst1000|Equal1~0_combout\,
	datab => \inst3|inst10|selregR\(0),
	datac => \inst3|inst700|SALIDA\(6),
	datad => \inst2|inst6|SALIDA\(6),
	combout => \inst2|inst1356|$00000|auto_generated|result_node[6]~9_combout\);

-- Location: LCCOMB_X62_Y50_N30
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

-- Location: LCCOMB_X61_Y50_N26
\inst2|inst|opres[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[7]~16_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[7]~8_combout\ & ((!\inst3|inst10|selop\(0)) # (!\inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[7]~8_combout\ & (\inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\)))) # (!\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[7]~8_combout\,
	datab => \inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[7]~16_combout\);

-- Location: LCCOMB_X61_Y50_N2
\inst2|inst|opres[7]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[7]~17_combout\ = (\inst3|inst10|selop\(2) & (((\inst2|inst|opres[7]~16_combout\)))) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[7]~16_combout\ & (\inst2|inst|Add0~16_combout\)) # (!\inst2|inst|opres[7]~16_combout\ & 
-- ((\inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Add0~16_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|opres[7]~16_combout\,
	datad => \inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\,
	combout => \inst2|inst|opres[7]~17_combout\);

-- Location: LCCOMB_X61_Y50_N14
\inst2|inst|opres[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(7) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(7))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[7]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(7),
	datac => \inst2|inst|opres[7]~17_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(7));

-- Location: LCCOMB_X61_Y50_N10
\inst2|inst2|datow[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(7) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datac => \inst2|inst|opres\(7),
	combout => \inst2|inst2|datow\(7));

-- Location: FF_X61_Y50_N11
\inst2|inst6|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(7),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(7));

-- Location: LCCOMB_X61_Y50_N24
\inst3|inst700666|ACCA|SALIDA[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[7]~feeder_combout\ = \inst2|inst6|SALIDA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(7),
	combout => \inst3|inst700666|ACCA|SALIDA[7]~feeder_combout\);

-- Location: FF_X61_Y50_N25
\inst3|inst700666|ACCA|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[7]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(7));

-- Location: LCCOMB_X61_Y50_N4
\inst3|inst202|OP1[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(7) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(7) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(7),
	combout => \inst3|inst202|OP1\(7));

-- Location: FF_X61_Y50_N5
\inst3|inst700|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(7),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(7));

-- Location: LCCOMB_X61_Y50_N16
\inst2|inst1356|$00000|auto_generated|result_node[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst2|inst6|SALIDA\(7))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst3|inst700|SALIDA\(7)))))) 
-- # (!\inst3|inst10|selregR\(0) & (((\inst3|inst700|SALIDA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(7),
	datab => \inst3|inst10|selregR\(0),
	datac => \inst3|inst700|SALIDA\(7),
	datad => \inst3|inst700666|inst1000|Equal1~0_combout\,
	combout => \inst2|inst1356|$00000|auto_generated|result_node[7]~8_combout\);

-- Location: LCCOMB_X62_Y49_N0
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

-- Location: LCCOMB_X62_Y49_N30
\inst2|inst|opres[8]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[8]~18_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & (\inst2|inst|Add0~18_combout\)) # (!\inst3|inst10|selop\(0) & 
-- ((\inst2|inst1356|$00000|auto_generated|result_node[9]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|Add0~18_combout\,
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|inst1356|$00000|auto_generated|result_node[9]~6_combout\,
	combout => \inst2|inst|opres[8]~18_combout\);

-- Location: LCCOMB_X62_Y49_N20
\inst2|inst|opres[8]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[8]~19_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\ & ((!\inst2|inst|opres[8]~18_combout\) # (!\inst2|inst1357|$00000|auto_generated|result_node[8]~7_combout\))) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\ & (\inst2|inst1357|$00000|auto_generated|result_node[8]~7_combout\)))) # (!\inst3|inst10|selop\(2) & (((\inst2|inst|opres[8]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst1356|$00000|auto_generated|result_node[8]~7_combout\,
	datac => \inst2|inst1357|$00000|auto_generated|result_node[8]~7_combout\,
	datad => \inst2|inst|opres[8]~18_combout\,
	combout => \inst2|inst|opres[8]~19_combout\);

-- Location: LCCOMB_X62_Y49_N18
\inst2|inst|opres[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(8) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(8)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[8]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[16]~3clkctrl_outclk\,
	datab => \inst2|inst|opres[8]~19_combout\,
	datad => \inst2|inst|opres\(8),
	combout => \inst2|inst|opres\(8));

-- Location: LCCOMB_X61_Y50_N30
\inst2|inst2|datow[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(8) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(8),
	combout => \inst2|inst2|datow\(8));

-- Location: FF_X61_Y50_N31
\inst2|inst6|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(8),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(8));

-- Location: FF_X66_Y50_N25
\inst3|inst700666|ACCB|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(8),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(8));

-- Location: LCCOMB_X66_Y50_N26
\inst3|inst202|OP2[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(8) = (\inst3|inst206|selregr\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & \inst3|inst700666|ACCB|SALIDA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(8),
	combout => \inst3|inst202|OP2\(8));

-- Location: FF_X66_Y50_N27
\inst3|inst8|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(8),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(8));

-- Location: LCCOMB_X63_Y50_N24
\inst2|inst1357|$00000|auto_generated|result_node[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[8]~7_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst2|inst6|SALIDA\(8))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst8|SALIDA\(8)))))) # 
-- (!\inst3|inst10|selregR\(0) & (((\inst3|inst8|SALIDA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selregR\(0),
	datab => \inst2|inst6|SALIDA\(8),
	datac => \inst3|inst8|SALIDA\(8),
	datad => \inst3|inst700666|inst1000|Equal1~1_combout\,
	combout => \inst2|inst1357|$00000|auto_generated|result_node[8]~7_combout\);

-- Location: LCCOMB_X62_Y49_N2
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

-- Location: LCCOMB_X63_Y49_N30
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

-- Location: LCCOMB_X63_Y49_N28
\inst2|inst|opres[9]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[9]~21_combout\ = (\inst3|inst10|selop\(2) & (((\inst2|inst|opres[9]~20_combout\)))) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[9]~20_combout\ & (\inst2|inst|Add0~20_combout\)) # (!\inst2|inst|opres[9]~20_combout\ & 
-- ((\inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|Add0~20_combout\,
	datac => \inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\,
	datad => \inst2|inst|opres[9]~20_combout\,
	combout => \inst2|inst|opres[9]~21_combout\);

-- Location: LCCOMB_X63_Y49_N16
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

-- Location: LCCOMB_X63_Y49_N14
\inst2|inst2|datow[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(9) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(9),
	combout => \inst2|inst2|datow\(9));

-- Location: FF_X63_Y49_N15
\inst2|inst6|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(9),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(9));

-- Location: LCCOMB_X65_Y50_N20
\inst3|inst700666|ACCA|SALIDA[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[9]~feeder_combout\ = \inst2|inst6|SALIDA\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(9),
	combout => \inst3|inst700666|ACCA|SALIDA[9]~feeder_combout\);

-- Location: FF_X65_Y50_N21
\inst3|inst700666|ACCA|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[9]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(9));

-- Location: LCCOMB_X63_Y49_N22
\inst3|inst202|OP1[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(9) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(9) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(9),
	combout => \inst3|inst202|OP1\(9));

-- Location: FF_X63_Y49_N23
\inst3|inst700|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(9),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(9));

-- Location: LCCOMB_X63_Y49_N2
\inst2|inst1356|$00000|auto_generated|result_node[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[9]~6_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst2|inst6|SALIDA\(9)))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst3|inst700|SALIDA\(9))))) 
-- # (!\inst3|inst10|selregR\(0) & (\inst3|inst700|SALIDA\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(9),
	datab => \inst2|inst6|SALIDA\(9),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst700666|inst1000|Equal1~0_combout\,
	combout => \inst2|inst1356|$00000|auto_generated|result_node[9]~6_combout\);

-- Location: LCCOMB_X62_Y49_N4
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

-- Location: LCCOMB_X63_Y49_N6
\inst2|inst|opres[10]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[10]~22_combout\ = (\inst3|inst10|selop\(0) & (((\inst2|inst|Add0~22_combout\) # (\inst3|inst10|selop\(2))))) # (!\inst3|inst10|selop\(0) & (\inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\ & ((!\inst3|inst10|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst2|inst1356|$00000|auto_generated|result_node[11]~4_combout\,
	datac => \inst2|inst|Add0~22_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[10]~22_combout\);

-- Location: LCCOMB_X63_Y49_N26
\inst2|inst|opres[10]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[10]~23_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[10]~5_combout\ & ((!\inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\) # (!\inst2|inst|opres[10]~22_combout\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[10]~5_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\))))) # (!\inst3|inst10|selop\(2) & (((\inst2|inst|opres[10]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[10]~5_combout\,
	datab => \inst2|inst|opres[10]~22_combout\,
	datac => \inst2|inst1356|$00000|auto_generated|result_node[10]~5_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[10]~23_combout\);

-- Location: LCCOMB_X63_Y49_N0
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

-- Location: LCCOMB_X63_Y49_N4
\inst2|inst2|datow[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(10) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(10),
	combout => \inst2|inst2|datow\(10));

-- Location: FF_X63_Y49_N5
\inst2|inst6|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(10),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(10));

-- Location: FF_X63_Y49_N21
\inst3|inst700666|ACCB|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(10),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(10));

-- Location: LCCOMB_X63_Y49_N24
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

-- Location: FF_X63_Y49_N25
\inst3|inst8|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(10),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(10));

-- Location: LCCOMB_X63_Y49_N20
\inst2|inst1357|$00000|auto_generated|result_node[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[10]~5_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst2|inst6|SALIDA\(10)))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst3|inst8|SALIDA\(10))))) 
-- # (!\inst3|inst10|selregR\(0) & (\inst3|inst8|SALIDA\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selregR\(0),
	datab => \inst3|inst8|SALIDA\(10),
	datac => \inst2|inst6|SALIDA\(10),
	datad => \inst3|inst700666|inst1000|Equal1~1_combout\,
	combout => \inst2|inst1357|$00000|auto_generated|result_node[10]~5_combout\);

-- Location: LCCOMB_X62_Y49_N6
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

-- Location: LCCOMB_X59_Y50_N20
\inst2|inst|opres[11]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[11]~25_combout\ = (\inst3|inst10|selop\(2) & (\inst2|inst|opres[11]~24_combout\)) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[11]~24_combout\ & (\inst2|inst|Add0~24_combout\)) # (!\inst2|inst|opres[11]~24_combout\ & 
-- ((\inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|opres[11]~24_combout\,
	datac => \inst2|inst|Add0~24_combout\,
	datad => \inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\,
	combout => \inst2|inst|opres[11]~25_combout\);

-- Location: LCCOMB_X59_Y50_N30
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

-- Location: LCCOMB_X59_Y50_N22
\inst2|inst2|datow[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(11) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datac => \inst2|inst|opres\(11),
	combout => \inst2|inst2|datow\(11));

-- Location: FF_X59_Y50_N23
\inst2|inst6|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(11),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(11));

-- Location: FF_X59_Y50_N25
\inst3|inst700666|ACCB|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(11),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(11));

-- Location: LCCOMB_X59_Y50_N10
\inst3|inst202|OP2[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(11) = (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & (\inst3|inst206|selregr\(0) & \inst3|inst700666|ACCB|SALIDA\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(11),
	combout => \inst3|inst202|OP2\(11));

-- Location: FF_X59_Y50_N11
\inst3|inst8|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(11),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(11));

-- Location: LCCOMB_X59_Y50_N0
\inst2|inst1357|$00000|auto_generated|result_node[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[11]~4_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst2|inst6|SALIDA\(11)))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst3|inst8|SALIDA\(11))))) 
-- # (!\inst3|inst10|selregR\(0) & (\inst3|inst8|SALIDA\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(11),
	datab => \inst3|inst10|selregR\(0),
	datac => \inst2|inst6|SALIDA\(11),
	datad => \inst3|inst700666|inst1000|Equal1~1_combout\,
	combout => \inst2|inst1357|$00000|auto_generated|result_node[11]~4_combout\);

-- Location: LCCOMB_X62_Y49_N8
\inst2|inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~26_combout\ = (\inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\ & (\inst2|inst|Add0~25\ & VCC)) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\ & (!\inst2|inst|Add0~25\)))) # (!\inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\ & 
-- (!\inst2|inst|Add0~25\)) # (!\inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\ & ((\inst2|inst|Add0~25\) # (GND)))))
-- \inst2|inst|Add0~27\ = CARRY((\inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\ & (!\inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\ & !\inst2|inst|Add0~25\)) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\ & ((!\inst2|inst|Add0~25\) # (!\inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\,
	datab => \inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~25\,
	combout => \inst2|inst|Add0~26_combout\,
	cout => \inst2|inst|Add0~27\);

-- Location: LCCOMB_X61_Y49_N22
\inst2|inst|opres[12]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[12]~26_combout\ = (\inst3|inst10|selop\(0) & ((\inst3|inst10|selop\(2)) # ((\inst2|inst|Add0~26_combout\)))) # (!\inst3|inst10|selop\(0) & (!\inst3|inst10|selop\(2) & ((\inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|Add0~26_combout\,
	datad => \inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\,
	combout => \inst2|inst|opres[12]~26_combout\);

-- Location: LCCOMB_X61_Y49_N8
\inst2|inst|opres[12]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[12]~27_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\ & ((!\inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\) # (!\inst2|inst|opres[12]~26_combout\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\))))) # (!\inst3|inst10|selop\(2) & (((\inst2|inst|opres[12]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\,
	datac => \inst2|inst|opres[12]~26_combout\,
	datad => \inst2|inst1356|$00000|auto_generated|result_node[12]~3_combout\,
	combout => \inst2|inst|opres[12]~27_combout\);

-- Location: LCCOMB_X61_Y49_N14
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

-- Location: LCCOMB_X62_Y49_N24
\inst2|inst2|datow[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(12) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(12),
	combout => \inst2|inst2|datow\(12));

-- Location: FF_X62_Y49_N25
\inst2|inst6|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(12),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(12));

-- Location: FF_X62_Y50_N25
\inst3|inst700666|ACCB|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(12),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(12));

-- Location: LCCOMB_X62_Y48_N24
\inst3|inst202|OP2[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(12) = (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & (\inst3|inst700666|ACCB|SALIDA\(12) & \inst3|inst206|selregr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst700666|ACCB|SALIDA\(12),
	datad => \inst3|inst206|selregr\(0),
	combout => \inst3|inst202|OP2\(12));

-- Location: FF_X62_Y48_N25
\inst3|inst8|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(12),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(12));

-- Location: LCCOMB_X61_Y49_N16
\inst2|inst1357|$00000|auto_generated|result_node[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst2|inst6|SALIDA\(12))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst8|SALIDA\(12)))))) 
-- # (!\inst3|inst10|selregR\(0) & (((\inst3|inst8|SALIDA\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selregR\(0),
	datab => \inst2|inst6|SALIDA\(12),
	datac => \inst3|inst8|SALIDA\(12),
	datad => \inst3|inst700666|inst1000|Equal1~1_combout\,
	combout => \inst2|inst1357|$00000|auto_generated|result_node[12]~3_combout\);

-- Location: LCCOMB_X62_Y49_N10
\inst2|inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~28_combout\ = ((\inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\ $ (\inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\ $ (!\inst2|inst|Add0~27\)))) # (GND)
-- \inst2|inst|Add0~29\ = CARRY((\inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\) # (!\inst2|inst|Add0~27\))) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\ & (\inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\ & !\inst2|inst|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\,
	datab => \inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~27\,
	combout => \inst2|inst|Add0~28_combout\,
	cout => \inst2|inst|Add0~29\);

-- Location: LCCOMB_X58_Y50_N22
\inst2|inst|opres[13]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[13]~28_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\ & ((!\inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\))))) # (!\inst3|inst10|selop\(2) & (\inst3|inst10|selop\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst1357|$00000|auto_generated|result_node[13]~2_combout\,
	datad => \inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\,
	combout => \inst2|inst|opres[13]~28_combout\);

-- Location: LCCOMB_X64_Y49_N30
\inst2|inst|opres[13]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[13]~29_combout\ = (\inst3|inst10|selop\(2) & (((\inst2|inst|opres[13]~28_combout\)))) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[13]~28_combout\ & (\inst2|inst|Add0~28_combout\)) # (!\inst2|inst|opres[13]~28_combout\ & 
-- ((\inst2|inst1356|$00000|auto_generated|result_node[14]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|Add0~28_combout\,
	datac => \inst2|inst|opres[13]~28_combout\,
	datad => \inst2|inst1356|$00000|auto_generated|result_node[14]~1_combout\,
	combout => \inst2|inst|opres[13]~29_combout\);

-- Location: LCCOMB_X64_Y49_N10
\inst2|inst|opres[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(13) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(13))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[13]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(13),
	datac => \inst2|inst|opres[13]~29_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(13));

-- Location: LCCOMB_X64_Y49_N20
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

-- Location: FF_X64_Y49_N21
\inst2|inst6|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(13),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(13));

-- Location: LCCOMB_X65_Y50_N24
\inst3|inst700666|ACCA|SALIDA[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[13]~feeder_combout\ = \inst2|inst6|SALIDA\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(13),
	combout => \inst3|inst700666|ACCA|SALIDA[13]~feeder_combout\);

-- Location: FF_X65_Y50_N25
\inst3|inst700666|ACCA|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[13]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(13));

-- Location: LCCOMB_X62_Y48_N20
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

-- Location: FF_X62_Y48_N21
\inst3|inst700|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(13),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(13));

-- Location: LCCOMB_X62_Y48_N18
\inst2|inst1356|$00000|auto_generated|result_node[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst2|inst6|SALIDA\(13))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & 
-- ((\inst3|inst700|SALIDA\(13)))))) # (!\inst3|inst10|selregR\(0) & (((\inst3|inst700|SALIDA\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(13),
	datab => \inst3|inst700|SALIDA\(13),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst700666|inst1000|Equal1~0_combout\,
	combout => \inst2|inst1356|$00000|auto_generated|result_node[13]~2_combout\);

-- Location: LCCOMB_X62_Y49_N12
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

-- Location: LCCOMB_X62_Y49_N26
\inst2|inst|opres[14]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[14]~30_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & ((\inst2|inst|Add0~30_combout\))) # (!\inst3|inst10|selop\(0) & 
-- (\inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\,
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|inst|Add0~30_combout\,
	combout => \inst2|inst|opres[14]~30_combout\);

-- Location: LCCOMB_X62_Y49_N28
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

-- Location: LCCOMB_X62_Y49_N22
\inst2|inst|opres[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(14) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(14)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[14]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[14]~31_combout\,
	datac => \inst2|inst|opres\(14),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(14));

-- Location: LCCOMB_X63_Y49_N8
\inst2|inst2|datow[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(14) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(14),
	combout => \inst2|inst2|datow\(14));

-- Location: FF_X63_Y49_N9
\inst2|inst6|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(14),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(14));

-- Location: LCCOMB_X64_Y50_N30
\inst3|inst700666|ACCA|SALIDA[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[14]~feeder_combout\ = \inst2|inst6|SALIDA\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(14),
	combout => \inst3|inst700666|ACCA|SALIDA[14]~feeder_combout\);

-- Location: FF_X64_Y50_N31
\inst3|inst700666|ACCA|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[14]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(14));

-- Location: LCCOMB_X64_Y49_N4
\inst3|inst202|OP1[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(14) = (\inst3|inst700666|ACCA|SALIDA\(14) & (\inst3|inst206|selregr\(0) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|ACCA|SALIDA\(14),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst202|OP1\(14));

-- Location: FF_X64_Y49_N5
\inst3|inst700|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(14),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(14));

-- Location: LCCOMB_X64_Y49_N2
\inst2|inst1356|$00000|auto_generated|result_node[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[14]~1_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst2|inst6|SALIDA\(14))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & 
-- ((\inst3|inst700|SALIDA\(14)))))) # (!\inst3|inst10|selregR\(0) & (((\inst3|inst700|SALIDA\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(14),
	datab => \inst3|inst700|SALIDA\(14),
	datac => \inst3|inst10|selregR\(0),
	datad => \inst3|inst700666|inst1000|Equal1~0_combout\,
	combout => \inst2|inst1356|$00000|auto_generated|result_node[14]~1_combout\);

-- Location: LCCOMB_X62_Y49_N14
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

-- Location: LCCOMB_X67_Y45_N10
\inst3|inst206|comb~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~11_combout\ = (\inst3|inst206|comb~6_combout\ & (\inst3|inst206|selregr[3]~1_combout\ & !\inst3|inst206|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~6_combout\,
	datab => \inst3|inst206|selregr[3]~1_combout\,
	datad => \inst3|inst206|Equal0~2_combout\,
	combout => \inst3|inst206|comb~11_combout\);

-- Location: LCCOMB_X67_Y45_N0
\inst3|inst206|comb~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~12_combout\ = (!\inst3|inst206|Equal0~2_combout\ & ((\inst3|inst206|comb~6_combout\) # (!\inst3|inst206|selregr[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|selregr[3]~1_combout\,
	datac => \inst3|inst206|comb~6_combout\,
	datad => \inst3|inst206|Equal0~2_combout\,
	combout => \inst3|inst206|comb~12_combout\);

-- Location: LCCOMB_X66_Y45_N0
\inst3|inst206|selc\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selc~combout\ = (!\inst3|inst206|comb~11_combout\ & ((\inst3|inst206|selc~combout\) # (!\inst3|inst206|comb~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|comb~11_combout\,
	datac => \inst3|inst206|comb~12_combout\,
	datad => \inst3|inst206|selc~combout\,
	combout => \inst3|inst206|selc~combout\);

-- Location: FF_X62_Y50_N15
\inst3|inst10|selc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst206|selc~combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selc~q\);

-- Location: LCCOMB_X60_Y49_N30
\inst2|inst|opres[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[15]~0_combout\ = (\inst3|inst10|selop\(2) & (((!\inst2|inst1357|$00000|auto_generated|result_node[15]~0_combout\)))) # (!\inst3|inst10|selop\(2) & (!\inst3|inst10|selc~q\ & ((\inst2|inst3|ci~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selc~q\,
	datab => \inst2|inst1357|$00000|auto_generated|result_node[15]~0_combout\,
	datac => \inst2|inst3|ci~combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[15]~0_combout\);

-- Location: LCCOMB_X60_Y49_N28
\inst2|inst|opres[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[15]~1_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst|opres[15]~0_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\))) # (!\inst2|inst|opres[15]~0_combout\ & 
-- ((!\inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\) # (!\inst3|inst10|selop\(0)))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0)) # ((\inst2|inst|opres[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|opres[15]~0_combout\,
	datad => \inst2|inst1356|$00000|auto_generated|result_node[15]~0_combout\,
	combout => \inst2|inst|opres[15]~1_combout\);

-- Location: LCCOMB_X60_Y49_N26
\inst2|inst|opres[15]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[15]~2_combout\ = (\inst2|inst|opres[15]~1_combout\ & (((\inst3|inst10|selop\(2)) # (\inst2|inst|Add0~32_combout\)) # (!\inst3|inst10|selop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|Add0~32_combout\,
	datad => \inst2|inst|opres[15]~1_combout\,
	combout => \inst2|inst|opres[15]~2_combout\);

-- Location: LCCOMB_X60_Y49_N10
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

-- Location: LCCOMB_X60_Y49_N4
\inst2|inst2|datow[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(15) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(15),
	combout => \inst2|inst2|datow\(15));

-- Location: FF_X60_Y49_N5
\inst2|inst6|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(15),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(15));

-- Location: LCCOMB_X64_Y49_N16
\inst3|inst700666|ACCB|SALIDA[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[15]~feeder_combout\ = \inst2|inst6|SALIDA\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(15),
	combout => \inst3|inst700666|ACCB|SALIDA[15]~feeder_combout\);

-- Location: FF_X64_Y49_N17
\inst3|inst700666|ACCB|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[15]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(15));

-- Location: LCCOMB_X64_Y49_N8
\inst3|inst202|OP2[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(15) = (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & (\inst3|inst206|selsrc\(0) & \inst3|inst700666|ACCB|SALIDA\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(15),
	combout => \inst3|inst202|OP2\(15));

-- Location: FF_X64_Y49_N9
\inst3|inst8|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(15),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(15));

-- Location: LCCOMB_X64_Y49_N18
\inst2|inst1357|$00000|auto_generated|result_node[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[15]~0_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst2|inst6|SALIDA\(15))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst3|inst8|SALIDA\(15)))))) 
-- # (!\inst3|inst10|selregR\(0) & (((\inst3|inst8|SALIDA\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|SALIDA\(15),
	datab => \inst3|inst10|selregR\(0),
	datac => \inst3|inst8|SALIDA\(15),
	datad => \inst3|inst700666|inst1000|Equal1~1_combout\,
	combout => \inst2|inst1357|$00000|auto_generated|result_node[15]~0_combout\);

-- Location: LCCOMB_X62_Y49_N16
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

-- Location: LCCOMB_X61_Y49_N28
\inst2|inst|opres[16]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[16]~34_combout\ = (!\inst3|inst10|selop\(2) & (\inst3|inst10|selop\(0) & \inst2|inst|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|inst|Add0~34_combout\,
	combout => \inst2|inst|opres[16]~34_combout\);

-- Location: LCCOMB_X61_Y49_N6
\inst2|inst|opres[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(16) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(16))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[16]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(16),
	datab => \inst2|inst|opres[16]~34_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(16));

-- Location: LCCOMB_X61_Y49_N0
\inst2|inst3|ci\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|ci~combout\ = (\RESET~input_o\ & ((\inst3|inst10|selfalgs\(1) & ((\inst2|inst|opres\(16)))) # (!\inst3|inst10|selfalgs\(1) & (\inst2|inst3|ci~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst2|inst3|ci~combout\,
	datac => \inst3|inst10|selfalgs\(1),
	datad => \inst2|inst|opres\(16),
	combout => \inst2|inst3|ci~combout\);

-- Location: LCCOMB_X62_Y50_N14
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

-- Location: LCCOMB_X62_Y50_N16
\inst2|inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~2_combout\ = (\inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\ & (\inst2|inst|Add0~1_cout\ & VCC)) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\ & (!\inst2|inst|Add0~1_cout\)))) # (!\inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\ & 
-- (!\inst2|inst|Add0~1_cout\)) # (!\inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\ & ((\inst2|inst|Add0~1_cout\) # (GND)))))
-- \inst2|inst|Add0~3\ = CARRY((\inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\ & (!\inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\ & !\inst2|inst|Add0~1_cout\)) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\ & ((!\inst2|inst|Add0~1_cout\) # (!\inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\,
	datab => \inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~1_cout\,
	combout => \inst2|inst|Add0~2_combout\,
	cout => \inst2|inst|Add0~3\);

-- Location: LCCOMB_X62_Y50_N18
\inst2|inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~4_combout\ = ((\inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\ $ (\inst2|inst1357|$00000|auto_generated|result_node[1]~14_combout\ $ (!\inst2|inst|Add0~3\)))) # (GND)
-- \inst2|inst|Add0~5\ = CARRY((\inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\ & ((\inst2|inst1357|$00000|auto_generated|result_node[1]~14_combout\) # (!\inst2|inst|Add0~3\))) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\ & (\inst2|inst1357|$00000|auto_generated|result_node[1]~14_combout\ & !\inst2|inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\,
	datab => \inst2|inst1357|$00000|auto_generated|result_node[1]~14_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~3\,
	combout => \inst2|inst|Add0~4_combout\,
	cout => \inst2|inst|Add0~5\);

-- Location: LCCOMB_X58_Y50_N10
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

-- Location: LCCOMB_X59_Y50_N4
\inst2|inst|opres[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[1]~5_combout\ = (\inst2|inst|opres[1]~4_combout\ & (((\inst2|inst|Add0~4_combout\) # (\inst3|inst10|selop\(2))))) # (!\inst2|inst|opres[1]~4_combout\ & (\inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\ & 
-- ((!\inst3|inst10|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\,
	datab => \inst2|inst|Add0~4_combout\,
	datac => \inst2|inst|opres[1]~4_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[1]~5_combout\);

-- Location: LCCOMB_X59_Y50_N18
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

-- Location: LCCOMB_X59_Y50_N8
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

-- Location: FF_X59_Y50_N9
\inst2|inst6|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(1),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(1));

-- Location: FF_X64_Y50_N3
\inst3|inst700666|ACCA|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(1),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(1));

-- Location: LCCOMB_X64_Y50_N2
\inst3|inst202|OP1[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(1) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(1) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(1),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP1\(1));

-- Location: FF_X63_Y50_N3
\inst3|inst700|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(1),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(1));

-- Location: LCCOMB_X63_Y50_N2
\inst2|inst1356|$00000|auto_generated|result_node[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\ = (\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst3|inst10|selregR\(0) & (\inst2|inst6|SALIDA\(1))) # (!\inst3|inst10|selregR\(0) & ((\inst3|inst700|SALIDA\(1)))))) # 
-- (!\inst3|inst700666|inst1000|Equal1~0_combout\ & (((\inst3|inst700|SALIDA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|inst1000|Equal1~0_combout\,
	datab => \inst2|inst6|SALIDA\(1),
	datac => \inst3|inst700|SALIDA\(1),
	datad => \inst3|inst10|selregR\(0),
	combout => \inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\);

-- Location: LCCOMB_X62_Y50_N20
\inst2|inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~6_combout\ = (\inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\ & (\inst2|inst|Add0~5\ & VCC)) # 
-- (!\inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\ & (!\inst2|inst|Add0~5\)))) # (!\inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\ & 
-- (!\inst2|inst|Add0~5\)) # (!\inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\ & ((\inst2|inst|Add0~5\) # (GND)))))
-- \inst2|inst|Add0~7\ = CARRY((\inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\ & (!\inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\ & !\inst2|inst|Add0~5\)) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\ & ((!\inst2|inst|Add0~5\) # (!\inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\,
	datab => \inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\,
	datad => VCC,
	cin => \inst2|inst|Add0~5\,
	combout => \inst2|inst|Add0~6_combout\,
	cout => \inst2|inst|Add0~7\);

-- Location: LCCOMB_X58_Y50_N8
\inst2|inst|opres[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[2]~6_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & ((\inst2|inst|Add0~6_combout\))) # (!\inst3|inst10|selop\(0) & 
-- (\inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|Add0~6_combout\,
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[2]~6_combout\);

-- Location: LCCOMB_X58_Y50_N0
\inst2|inst|opres[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[2]~7_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\ & ((!\inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\) # (!\inst2|inst|opres[2]~6_combout\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\))))) # (!\inst3|inst10|selop\(2) & (\inst2|inst|opres[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[2]~6_combout\,
	datab => \inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst1356|$00000|auto_generated|result_node[2]~13_combout\,
	combout => \inst2|inst|opres[2]~7_combout\);

-- Location: LCCOMB_X58_Y50_N12
\inst2|inst|opres[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(2) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(2))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(2),
	datab => \inst2|inst|opres[2]~7_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(2));

-- Location: LCCOMB_X58_Y50_N24
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

-- Location: FF_X58_Y50_N25
\inst2|inst6|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(2),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(2));

-- Location: FF_X62_Y48_N23
\inst3|inst700666|ACCB|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(2),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(2));

-- Location: LCCOMB_X63_Y48_N6
\inst|inst1|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux29~0_combout\ = (\inst|inst3|SALIDA\(2) & (!\inst|inst3|SALIDA\(1) & (\inst|inst3|SALIDA\(4) $ (\inst|inst3|SALIDA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(2),
	datab => \inst|inst3|SALIDA\(4),
	datac => \inst|inst3|SALIDA\(0),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux29~0_combout\);

-- Location: LCCOMB_X64_Y48_N22
\inst|inst1|Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux29~1_combout\ = (!\inst|inst3|SALIDA\(5) & (\inst|inst1|Mux29~0_combout\ & \inst|inst3|SALIDA\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(5),
	datac => \inst|inst1|Mux29~0_combout\,
	datad => \inst|inst3|SALIDA\(3),
	combout => \inst|inst1|Mux29~1_combout\);

-- Location: FF_X64_Y48_N23
\inst|inst5|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux29~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(2));

-- Location: LCCOMB_X62_Y48_N22
\inst3|inst202|OP2[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[2]~4_combout\ = (\inst3|inst206|selsrc\(1) & (((\inst|inst5|valor_interno\(2))))) # (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCB|SALIDA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCB|SALIDA\(2),
	datad => \inst|inst5|valor_interno\(2),
	combout => \inst3|inst202|OP2[2]~4_combout\);

-- Location: LCCOMB_X62_Y48_N8
\inst3|inst202|OP2[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[2]~5_combout\ = (\inst3|inst206|selsrc\(0) & \inst3|inst202|OP2[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst202|OP2[2]~4_combout\,
	combout => \inst3|inst202|OP2[2]~5_combout\);

-- Location: FF_X62_Y48_N9
\inst3|inst8|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst202|OP2[2]~5_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(2));

-- Location: LCCOMB_X62_Y50_N6
\inst2|inst1357|$00000|auto_generated|result_node[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~1_combout\ & ((\inst2|inst6|SALIDA\(2)))) # (!\inst3|inst700666|inst1000|Equal1~1_combout\ & (\inst3|inst8|SALIDA\(2))))) # 
-- (!\inst3|inst10|selregR\(0) & (\inst3|inst8|SALIDA\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(2),
	datab => \inst3|inst10|selregR\(0),
	datac => \inst3|inst700666|inst1000|Equal1~1_combout\,
	datad => \inst2|inst6|SALIDA\(2),
	combout => \inst2|inst1357|$00000|auto_generated|result_node[2]~13_combout\);

-- Location: LCCOMB_X62_Y50_N22
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

-- Location: LCCOMB_X62_Y50_N8
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

-- Location: LCCOMB_X62_Y50_N10
\inst2|inst|opres[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[4]~11_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\ & ((!\inst2|inst|opres[4]~10_combout\) # (!\inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\ & (\inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\)))) # (!\inst3|inst10|selop\(2) & (((\inst2|inst|opres[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[4]~11_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\,
	datad => \inst2|inst|opres[4]~10_combout\,
	combout => \inst2|inst|opres[4]~11_combout\);

-- Location: LCCOMB_X62_Y50_N2
\inst2|inst|opres[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(4) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(4))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[4]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[16]~3clkctrl_outclk\,
	datab => \inst2|inst|opres\(4),
	datad => \inst2|inst|opres[4]~11_combout\,
	combout => \inst2|inst|opres\(4));

-- Location: LCCOMB_X61_Y50_N18
\inst2|inst2|datow[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(4) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datac => \inst2|inst|opres\(4),
	combout => \inst2|inst2|datow\(4));

-- Location: FF_X61_Y50_N19
\inst2|inst6|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(4),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(4));

-- Location: FF_X60_Y50_N15
\inst3|inst700666|ACCA|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(4),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(4));

-- Location: LCCOMB_X60_Y50_N14
\inst3|inst202|OP1[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(4) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(4) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(4),
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst202|OP1\(4));

-- Location: FF_X61_Y50_N7
\inst3|inst700|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(4),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(4));

-- Location: LCCOMB_X61_Y50_N6
\inst2|inst1356|$00000|auto_generated|result_node[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\ = (\inst3|inst10|selregR\(0) & ((\inst3|inst700666|inst1000|Equal1~0_combout\ & (\inst2|inst6|SALIDA\(4))) # (!\inst3|inst700666|inst1000|Equal1~0_combout\ & ((\inst3|inst700|SALIDA\(4)))))) 
-- # (!\inst3|inst10|selregR\(0) & (((\inst3|inst700|SALIDA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selregR\(0),
	datab => \inst2|inst6|SALIDA\(4),
	datac => \inst3|inst700|SALIDA\(4),
	datad => \inst3|inst700666|inst1000|Equal1~0_combout\,
	combout => \inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\);

-- Location: LCCOMB_X58_Y50_N14
\inst2|inst|opres[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[3]~8_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[3]~12_combout\ & ((!\inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[3]~12_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\))))) # (!\inst3|inst10|selop\(2) & (\inst3|inst10|selop\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst2|inst1357|$00000|auto_generated|result_node[3]~12_combout\,
	datac => \inst2|inst1356|$00000|auto_generated|result_node[3]~12_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[3]~8_combout\);

-- Location: LCCOMB_X58_Y50_N20
\inst2|inst|opres[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[3]~9_combout\ = (\inst2|inst|opres[3]~8_combout\ & (((\inst3|inst10|selop\(2)) # (\inst2|inst|Add0~8_combout\)))) # (!\inst2|inst|opres[3]~8_combout\ & (\inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\ & 
-- (!\inst3|inst10|selop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[4]~11_combout\,
	datab => \inst2|inst|opres[3]~8_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|Add0~8_combout\,
	combout => \inst2|inst|opres[3]~9_combout\);

-- Location: LCCOMB_X58_Y50_N30
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

-- Location: LCCOMB_X58_Y50_N28
\inst2|inst2|datow[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(3) = (\inst2|inst|opres\(3) & \inst3|inst10|selresult\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|opres\(3),
	datad => \inst3|inst10|selresult\(0),
	combout => \inst2|inst2|datow\(3));

-- Location: FF_X58_Y50_N29
\inst2|inst6|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(3),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(3));

-- Location: LCCOMB_X67_Y45_N24
\inst3|inst206|comb~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~14_combout\ = (\inst3|inst206|Equal0~2_combout\) # ((\inst3|inst206|selregr[3]~1_combout\ & !\inst3|inst206|selregr[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|selregr[3]~1_combout\,
	datac => \inst3|inst206|Equal0~2_combout\,
	datad => \inst3|inst206|selregr[3]~0_combout\,
	combout => \inst3|inst206|comb~14_combout\);

-- Location: LCCOMB_X67_Y45_N22
\inst3|inst206|comb~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~13_combout\ = (\inst3|inst206|selregr[3]~1_combout\ & (!\inst3|inst206|Equal0~2_combout\ & \inst3|inst206|selregr[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|selregr[3]~1_combout\,
	datac => \inst3|inst206|Equal0~2_combout\,
	datad => \inst3|inst206|selregr[3]~0_combout\,
	combout => \inst3|inst206|comb~13_combout\);

-- Location: LCCOMB_X67_Y45_N12
\inst3|inst206|vf\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|vf~combout\ = (!\inst3|inst206|comb~13_combout\ & ((\inst3|inst206|comb~14_combout\) # (\inst3|inst206|vf~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|comb~14_combout\,
	datac => \inst3|inst206|comb~13_combout\,
	datad => \inst3|inst206|vf~combout\,
	combout => \inst3|inst206|vf~combout\);

-- Location: LCCOMB_X67_Y45_N26
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

-- Location: FF_X67_Y45_N27
\inst3|inst10|vf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst10|vf~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|vf~q\);

-- Location: LCCOMB_X65_Y48_N30
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

-- Location: FF_X65_Y48_N31
\inst2|inst100|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst100|valor_interno~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst100|valor_interno~q\);

-- Location: FF_X64_Y48_N7
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
	clrn => \RESET~input_o\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(3));

-- Location: LCCOMB_X64_Y48_N8
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

-- Location: FF_X64_Y48_N9
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
	clrn => \RESET~input_o\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(4));

-- Location: LCCOMB_X64_Y48_N10
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

-- Location: FF_X64_Y48_N11
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
	clrn => \RESET~input_o\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(5));

-- Location: LCCOMB_X64_Y48_N20
\inst|inst1|Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux13~2_combout\ = (\inst|inst3|SALIDA\(0) & (\inst|inst3|SALIDA\(3) & ((!\inst|inst3|SALIDA\(4))))) # (!\inst|inst3|SALIDA\(0) & (\inst|inst3|SALIDA\(3) $ ((\inst|inst3|SALIDA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(3),
	datab => \inst|inst3|SALIDA\(1),
	datac => \inst|inst3|SALIDA\(4),
	datad => \inst|inst3|SALIDA\(0),
	combout => \inst|inst1|Mux13~2_combout\);

-- Location: LCCOMB_X64_Y48_N28
\inst|inst1|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux13~0_combout\ = (\inst|inst3|SALIDA\(1) & ((\inst|inst3|SALIDA\(3) & (!\inst|inst3|SALIDA\(4))) # (!\inst|inst3|SALIDA\(3) & ((!\inst|inst3|SALIDA\(0)))))) # (!\inst|inst3|SALIDA\(1) & (\inst|inst3|SALIDA\(3) $ (((\inst|inst3|SALIDA\(4)) # 
-- (\inst|inst3|SALIDA\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(3),
	datab => \inst|inst3|SALIDA\(1),
	datac => \inst|inst3|SALIDA\(4),
	datad => \inst|inst3|SALIDA\(0),
	combout => \inst|inst1|Mux13~0_combout\);

-- Location: LCCOMB_X64_Y48_N18
\inst|inst1|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux13~1_combout\ = (!\inst|inst3|SALIDA\(2) & ((\inst|inst3|SALIDA\(5) & (!\inst|inst1|Mux14~1_combout\)) # (!\inst|inst3|SALIDA\(5) & ((!\inst|inst1|Mux13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(5),
	datab => \inst|inst1|Mux14~1_combout\,
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst1|Mux13~0_combout\,
	combout => \inst|inst1|Mux13~1_combout\);

-- Location: LCCOMB_X64_Y48_N16
\inst|inst1|Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux13~3_combout\ = (\inst|inst1|Mux13~1_combout\) # ((!\inst|inst3|SALIDA\(5) & (\inst|inst1|Mux13~2_combout\ & \inst|inst3|SALIDA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(5),
	datab => \inst|inst1|Mux13~2_combout\,
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst1|Mux13~1_combout\,
	combout => \inst|inst1|Mux13~3_combout\);

-- Location: FF_X64_Y48_N17
\inst|inst5|valor_interno[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux13~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(18));

-- Location: LCCOMB_X70_Y45_N6
\inst3|inst206|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal0~0_combout\ = (\inst|inst5|valor_interno\(18) & (!\inst|inst5|valor_interno\(16) & (!\inst|inst5|valor_interno\(20) & !\inst|inst5|valor_interno\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(18),
	datab => \inst|inst5|valor_interno\(16),
	datac => \inst|inst5|valor_interno\(20),
	datad => \inst|inst5|valor_interno\(19),
	combout => \inst3|inst206|Equal0~0_combout\);

-- Location: LCCOMB_X69_Y45_N0
\inst3|inst206|comb~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~15_combout\ = (((\inst|inst5|valor_interno\(21)) # (!\inst|inst5|valor_interno\(23))) # (!\inst|inst5|valor_interno\(17))) # (!\inst3|inst206|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal0~0_combout\,
	datab => \inst|inst5|valor_interno\(17),
	datac => \inst|inst5|valor_interno\(21),
	datad => \inst|inst5|valor_interno\(23),
	combout => \inst3|inst206|comb~15_combout\);

-- Location: LCCOMB_X69_Y45_N6
\inst3|inst206|seldato~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|seldato~2_combout\ = (((\inst3|inst206|Equal2~0_combout\) # (!\inst3|inst206|Equal3~1_combout\)) # (!\inst3|inst206|comb~15_combout\)) # (!\inst|inst5|valor_interno\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(16),
	datab => \inst3|inst206|comb~15_combout\,
	datac => \inst3|inst206|Equal2~0_combout\,
	datad => \inst3|inst206|Equal3~1_combout\,
	combout => \inst3|inst206|seldato~2_combout\);

-- Location: LCCOMB_X64_Y49_N6
\inst3|inst206|selresult[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selresult\(0) = (\inst3|inst206|seldato~2_combout\ & ((\inst3|inst206|selregr[3]~2_combout\) # (\inst3|inst206|selresult\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|seldato~2_combout\,
	datac => \inst3|inst206|selregr[3]~2_combout\,
	datad => \inst3|inst206|selresult\(0),
	combout => \inst3|inst206|selresult\(0));

-- Location: FF_X64_Y49_N7
\inst3|inst10|selresult[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst206|selresult\(0),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selresult\(0));

-- Location: LCCOMB_X58_Y50_N18
\inst2|inst|opres[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[0]~32_combout\ = (\inst3|inst10|selop\(2) & ((\inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\ & ((!\inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\) # (!\inst3|inst10|selop\(0)))) # 
-- (!\inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\ & ((\inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\))))) # (!\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1357|$00000|auto_generated|result_node[0]~15_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|inst1356|$00000|auto_generated|result_node[0]~15_combout\,
	combout => \inst2|inst|opres[0]~32_combout\);

-- Location: LCCOMB_X60_Y49_N12
\inst2|inst|opres[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[0]~33_combout\ = (\inst3|inst10|selop\(2) & (((\inst2|inst|opres[0]~32_combout\)))) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[0]~32_combout\ & ((\inst2|inst|Add0~2_combout\))) # (!\inst2|inst|opres[0]~32_combout\ & 
-- (\inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1356|$00000|auto_generated|result_node[1]~14_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|opres[0]~32_combout\,
	datad => \inst2|inst|Add0~2_combout\,
	combout => \inst2|inst|opres[0]~33_combout\);

-- Location: LCCOMB_X60_Y49_N20
\inst2|inst|opres[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(0) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(0))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[0]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(0),
	datac => \inst2|inst|opres[0]~33_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(0));

-- Location: LCCOMB_X60_Y49_N22
\inst2|inst2|datow[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(0) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(0),
	combout => \inst2|inst2|datow\(0));

-- Location: FF_X60_Y49_N23
\inst2|inst6|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst2|datow\(0),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(0));

-- Location: FF_X64_Y48_N1
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
	clrn => \RESET~input_o\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(0));

-- Location: LCCOMB_X64_Y48_N2
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

-- Location: FF_X64_Y48_N3
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
	clrn => \RESET~input_o\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(1));

-- Location: FF_X64_Y48_N5
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
	clrn => \RESET~input_o\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(2));

-- Location: LCCOMB_X63_Y48_N26
\inst|inst1|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux15~0_combout\ = (\inst|inst3|SALIDA\(3) & (((\inst|inst3|SALIDA\(1))) # (!\inst|inst3|SALIDA\(2)))) # (!\inst|inst3|SALIDA\(3) & ((\inst|inst3|SALIDA\(0)) # (\inst|inst3|SALIDA\(2) $ (\inst|inst3|SALIDA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(2),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(0),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux15~0_combout\);

-- Location: LCCOMB_X63_Y48_N28
\inst|inst1|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux15~1_combout\ = (\inst|inst3|SALIDA\(3)) # ((\inst|inst3|SALIDA\(1) & ((\inst|inst3|SALIDA\(2)) # (!\inst|inst3|SALIDA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(2),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(0),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux15~1_combout\);

-- Location: LCCOMB_X63_Y48_N22
\inst|inst1|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux15~2_combout\ = (!\inst|inst3|SALIDA\(4) & ((\inst|inst3|SALIDA\(5) & ((!\inst|inst1|Mux15~1_combout\))) # (!\inst|inst3|SALIDA\(5) & (\inst|inst1|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Mux15~0_combout\,
	datab => \inst|inst3|SALIDA\(4),
	datac => \inst|inst3|SALIDA\(5),
	datad => \inst|inst1|Mux15~1_combout\,
	combout => \inst|inst1|Mux15~2_combout\);

-- Location: LCCOMB_X63_Y48_N16
\inst|inst1|Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux15~3_combout\ = (\inst|inst3|SALIDA\(0) & (!\inst|inst3|SALIDA\(2) & (\inst|inst3|SALIDA\(3) $ (\inst|inst3|SALIDA\(1))))) # (!\inst|inst3|SALIDA\(0) & (\inst|inst3|SALIDA\(2) $ (((\inst|inst3|SALIDA\(3) & \inst|inst3|SALIDA\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(2),
	datab => \inst|inst3|SALIDA\(3),
	datac => \inst|inst3|SALIDA\(0),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux15~3_combout\);

-- Location: LCCOMB_X63_Y48_N20
\inst|inst1|Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux15~4_combout\ = (\inst|inst1|Mux15~2_combout\) # ((\inst|inst3|SALIDA\(4) & (!\inst|inst3|SALIDA\(5) & !\inst|inst1|Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Mux15~2_combout\,
	datab => \inst|inst3|SALIDA\(4),
	datac => \inst|inst3|SALIDA\(5),
	datad => \inst|inst1|Mux15~3_combout\,
	combout => \inst|inst1|Mux15~4_combout\);

-- Location: FF_X63_Y48_N21
\inst|inst5|valor_interno[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst|inst1|Mux15~4_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(16));

-- Location: LCCOMB_X69_Y45_N14
\inst3|inst206|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal3~3_combout\ = (\inst|inst5|valor_interno\(16) & (\inst3|inst206|Equal3~1_combout\ & \inst3|inst206|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(16),
	datab => \inst3|inst206|Equal3~1_combout\,
	datad => \inst3|inst206|Equal3~0_combout\,
	combout => \inst3|inst206|Equal3~3_combout\);

-- Location: LCCOMB_X62_Y45_N16
\inst3|inst206|comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~4_combout\ = (!\inst3|inst206|Equal3~3_combout\ & ((\inst3|inst206|Equal0~2_combout\) # (\inst3|inst206|selregr[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal3~3_combout\,
	datac => \inst3|inst206|Equal0~2_combout\,
	datad => \inst3|inst206|selregr[3]~1_combout\,
	combout => \inst3|inst206|comb~4_combout\);

-- Location: LCCOMB_X61_Y49_N30
\inst3|inst206|selfalgs[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selfalgs\(1) = (!\inst3|inst206|comb~4_combout\ & ((\inst3|inst206|Equal3~3_combout\) # (\inst3|inst206|selfalgs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~4_combout\,
	datab => \inst3|inst206|Equal3~3_combout\,
	datad => \inst3|inst206|selfalgs\(1),
	combout => \inst3|inst206|selfalgs\(1));

-- Location: FF_X61_Y49_N31
\inst3|inst10|selfalgs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst206|selfalgs\(1),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selfalgs\(1));

-- Location: LCCOMB_X61_Y49_N10
\inst3|inst206|comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~5_combout\ = (\inst3|inst206|comb~15_combout\ & \inst3|inst206|selregr[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|comb~15_combout\,
	datad => \inst3|inst206|selregr[3]~1_combout\,
	combout => \inst3|inst206|comb~5_combout\);

-- Location: LCCOMB_X61_Y49_N20
\inst3|inst206|selfalgs[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selfalgs\(0) = (!\inst3|inst206|comb~5_combout\ & ((\inst3|inst206|selfalgs\(0)) # (!\inst3|inst206|comb~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~5_combout\,
	datac => \inst3|inst206|comb~15_combout\,
	datad => \inst3|inst206|selfalgs\(0),
	combout => \inst3|inst206|selfalgs\(0));

-- Location: FF_X61_Y49_N11
\inst3|inst10|selfalgs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst3|inst206|selfalgs\(0),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selfalgs\(0));

-- Location: LCCOMB_X61_Y49_N2
\inst2|inst3|vi~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|vi~0_combout\ = (\inst3|inst10|selfalgs\(1)) # (\inst3|inst10|selfalgs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selfalgs\(1),
	datad => \inst3|inst10|selfalgs\(0),
	combout => \inst2|inst3|vi~0_combout\);

-- Location: CLKCTRL_G13
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

-- Location: LCCOMB_X60_Y49_N0
\inst2|inst3|ni\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|ni~combout\ = (\RESET~input_o\ & ((GLOBAL(\inst2|inst3|vi~0clkctrl_outclk\) & ((\inst2|inst|opres\(15)))) # (!GLOBAL(\inst2|inst3|vi~0clkctrl_outclk\) & (\inst2|inst3|ni~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst2|inst3|ni~combout\,
	datac => \inst2|inst3|vi~0clkctrl_outclk\,
	datad => \inst2|inst|opres\(15),
	combout => \inst2|inst3|ni~combout\);

-- Location: FF_X60_Y49_N1
\inst2|inst101|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst3|ni~combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst101|valor_interno~q\);

-- Location: LCCOMB_X60_Y49_N6
\inst2|inst|WideOr0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~3_combout\ = (\inst2|inst|opres\(15)) # ((\inst2|inst|opres\(0)) # ((\inst2|inst|opres\(13)) # (\inst2|inst|opres\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(15),
	datab => \inst2|inst|opres\(0),
	datac => \inst2|inst|opres\(13),
	datad => \inst2|inst|opres\(14),
	combout => \inst2|inst|WideOr0~3_combout\);

-- Location: LCCOMB_X60_Y49_N24
\inst2|inst|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~0_combout\ = (\inst2|inst|opres\(3)) # ((\inst2|inst|opres\(1)) # ((\inst2|inst|opres\(2)) # (\inst2|inst|opres\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(3),
	datab => \inst2|inst|opres\(1),
	datac => \inst2|inst|opres\(2),
	datad => \inst2|inst|opres\(4),
	combout => \inst2|inst|WideOr0~0_combout\);

-- Location: LCCOMB_X60_Y49_N8
\inst2|inst|WideOr0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~2_combout\ = (\inst2|inst|opres\(9)) # ((\inst2|inst|opres\(12)) # ((\inst2|inst|opres\(10)) # (\inst2|inst|opres\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(9),
	datab => \inst2|inst|opres\(12),
	datac => \inst2|inst|opres\(10),
	datad => \inst2|inst|opres\(11),
	combout => \inst2|inst|WideOr0~2_combout\);

-- Location: LCCOMB_X60_Y49_N18
\inst2|inst|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~1_combout\ = (\inst2|inst|opres\(5)) # ((\inst2|inst|opres\(6)) # ((\inst2|inst|opres\(8)) # (\inst2|inst|opres\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(5),
	datab => \inst2|inst|opres\(6),
	datac => \inst2|inst|opres\(8),
	datad => \inst2|inst|opres\(7),
	combout => \inst2|inst|WideOr0~1_combout\);

-- Location: LCCOMB_X60_Y49_N16
\inst2|inst|WideOr0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~4_combout\ = (\inst2|inst|WideOr0~3_combout\) # ((\inst2|inst|WideOr0~0_combout\) # ((\inst2|inst|WideOr0~2_combout\) # (\inst2|inst|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|WideOr0~3_combout\,
	datab => \inst2|inst|WideOr0~0_combout\,
	datac => \inst2|inst|WideOr0~2_combout\,
	datad => \inst2|inst|WideOr0~1_combout\,
	combout => \inst2|inst|WideOr0~4_combout\);

-- Location: LCCOMB_X60_Y49_N14
\inst2|inst3|zi\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|zi~combout\ = (\RESET~input_o\ & ((GLOBAL(\inst2|inst3|vi~0clkctrl_outclk\) & ((!\inst2|inst|WideOr0~4_combout\))) # (!GLOBAL(\inst2|inst3|vi~0clkctrl_outclk\) & (\inst2|inst3|zi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst2|inst3|zi~combout\,
	datac => \inst2|inst3|vi~0clkctrl_outclk\,
	datad => \inst2|inst|WideOr0~4_combout\,
	combout => \inst2|inst3|zi~combout\);

-- Location: FF_X60_Y49_N15
\inst2|inst102|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst3|zi~combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst102|valor_interno~q\);

-- Location: LCCOMB_X61_Y49_N4
\inst2|inst3|vi~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|vi~1_combout\ = (\inst2|inst|opres\(16) & ((\inst3|inst10|selfalgs\(1)) # (!\inst3|inst10|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selfalgs\(0),
	datac => \inst3|inst10|selfalgs\(1),
	datad => \inst2|inst|opres\(16),
	combout => \inst2|inst3|vi~1_combout\);

-- Location: LCCOMB_X61_Y49_N26
\inst2|inst3|vi\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|vi~combout\ = (\RESET~input_o\ & ((GLOBAL(\inst2|inst3|vi~0clkctrl_outclk\) & ((\inst2|inst3|vi~1_combout\))) # (!GLOBAL(\inst2|inst3|vi~0clkctrl_outclk\) & (\inst2|inst3|vi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|vi~combout\,
	datab => \RESET~input_o\,
	datac => \inst2|inst3|vi~1_combout\,
	datad => \inst2|inst3|vi~0clkctrl_outclk\,
	combout => \inst2|inst3|vi~combout\);

-- Location: FF_X61_Y49_N27
\inst2|inst103|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst3|vi~combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst103|valor_interno~q\);

-- Location: LCCOMB_X60_Y50_N24
\inst2|inst104|valor_interno~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst104|valor_interno~feeder_combout\ = \inst2|inst3|ci~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst3|ci~combout\,
	combout => \inst2|inst104|valor_interno~feeder_combout\);

-- Location: FF_X60_Y50_N25
\inst2|inst104|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst2|inst104|valor_interno~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst104|valor_interno~q\);

-- Location: LCCOMB_X61_Y49_N12
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

-- Location: LCCOMB_X61_Y49_N18
\inst2|inst3|hi\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|hi~combout\ = (\RESET~input_o\ & ((\inst2|inst3|vi~2_combout\ & ((\inst2|inst|opres\(8)))) # (!\inst2|inst3|vi~2_combout\ & (\inst2|inst3|hi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|vi~2_combout\,
	datab => \inst2|inst3|hi~combout\,
	datac => \RESET~input_o\,
	datad => \inst2|inst|opres\(8),
	combout => \inst2|inst3|hi~combout\);

-- Location: FF_X61_Y49_N15
\inst2|inst105|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst3|hi~combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst105|valor_interno~q\);

-- Location: LCCOMB_X64_Y50_N14
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

-- Location: LCCOMB_X63_Y50_N26
\inst3|inst700666|inst1000|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|inst1000|Equal1~2_combout\ = (\inst2|inst107|selregw\(0) & \inst2|inst107|selregw\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst107|selregw\(0),
	datad => \inst2|inst107|selregw\(2),
	combout => \inst3|inst700666|inst1000|Equal1~2_combout\);

-- Location: FF_X64_Y50_N15
\inst3|inst700666|AUX|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[15]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(15));

-- Location: LCCOMB_X64_Y50_N16
\inst3|inst700666|AUX|SALIDA[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[14]~feeder_combout\ = \inst2|inst6|SALIDA\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(14),
	combout => \inst3|inst700666|AUX|SALIDA[14]~feeder_combout\);

-- Location: FF_X64_Y50_N17
\inst3|inst700666|AUX|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[14]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(14));

-- Location: LCCOMB_X65_Y50_N10
\inst3|inst700666|AUX|SALIDA[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[13]~feeder_combout\ = \inst2|inst6|SALIDA\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(13),
	combout => \inst3|inst700666|AUX|SALIDA[13]~feeder_combout\);

-- Location: FF_X65_Y50_N11
\inst3|inst700666|AUX|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[13]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(13));

-- Location: LCCOMB_X65_Y50_N16
\inst3|inst700666|AUX|SALIDA[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[12]~feeder_combout\ = \inst2|inst6|SALIDA\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(12),
	combout => \inst3|inst700666|AUX|SALIDA[12]~feeder_combout\);

-- Location: FF_X65_Y50_N17
\inst3|inst700666|AUX|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[12]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(12));

-- Location: LCCOMB_X65_Y50_N18
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

-- Location: FF_X65_Y50_N19
\inst3|inst700666|AUX|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[11]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(11));

-- Location: LCCOMB_X65_Y50_N0
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

-- Location: FF_X65_Y50_N1
\inst3|inst700666|AUX|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[10]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(10));

-- Location: LCCOMB_X65_Y50_N14
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

-- Location: FF_X65_Y50_N15
\inst3|inst700666|AUX|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[9]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(9));

-- Location: LCCOMB_X65_Y50_N12
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

-- Location: FF_X65_Y50_N13
\inst3|inst700666|AUX|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[8]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(8));

-- Location: LCCOMB_X65_Y50_N30
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

-- Location: FF_X65_Y50_N31
\inst3|inst700666|AUX|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[7]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(7));

-- Location: LCCOMB_X65_Y50_N28
\inst3|inst700666|AUX|SALIDA[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[6]~feeder_combout\ = \inst2|inst6|SALIDA\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(6),
	combout => \inst3|inst700666|AUX|SALIDA[6]~feeder_combout\);

-- Location: FF_X65_Y50_N29
\inst3|inst700666|AUX|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[6]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(6));

-- Location: LCCOMB_X65_Y50_N6
\inst3|inst700666|AUX|SALIDA[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[5]~feeder_combout\ = \inst2|inst6|SALIDA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(5),
	combout => \inst3|inst700666|AUX|SALIDA[5]~feeder_combout\);

-- Location: FF_X65_Y50_N7
\inst3|inst700666|AUX|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[5]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(5));

-- Location: LCCOMB_X65_Y50_N4
\inst3|inst700666|AUX|SALIDA[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[4]~feeder_combout\ = \inst2|inst6|SALIDA\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(4),
	combout => \inst3|inst700666|AUX|SALIDA[4]~feeder_combout\);

-- Location: FF_X65_Y50_N5
\inst3|inst700666|AUX|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[4]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(4));

-- Location: FF_X58_Y50_N27
\inst3|inst700666|AUX|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(3),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(3));

-- Location: LCCOMB_X65_Y50_N26
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

-- Location: FF_X65_Y50_N27
\inst3|inst700666|AUX|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[2]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(2));

-- Location: LCCOMB_X64_Y50_N18
\inst3|inst700666|AUX|SALIDA[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[1]~feeder_combout\ = \inst2|inst6|SALIDA\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(1),
	combout => \inst3|inst700666|AUX|SALIDA[1]~feeder_combout\);

-- Location: FF_X64_Y50_N19
\inst3|inst700666|AUX|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[1]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(1));

-- Location: LCCOMB_X64_Y50_N12
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

-- Location: FF_X64_Y50_N13
\inst3|inst700666|AUX|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ALT_INV_ESIGUIENTE~clkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[0]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(0));

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: LCCOMB_X64_Y50_N10
\inst5|first_value[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|first_value[0]~0_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(0))) # (!\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst3|inst700666|ACCB|SALIDA\(0),
	datac => \sw_selectReg~input_o\,
	datad => \inst3|inst700666|ACCA|SALIDA\(0),
	combout => \inst5|first_value[0]~0_combout\);

-- Location: LCCOMB_X59_Y50_N26
\inst5|first_value[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|first_value[1]~1_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(1)))) # (!\sw_selectReg~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_selectReg~input_o\,
	datab => \inst3|inst700666|ACCA|SALIDA\(1),
	datac => \RESET~input_o\,
	datad => \inst3|inst700666|ACCB|SALIDA\(1),
	combout => \inst5|first_value[1]~1_combout\);

-- Location: LCCOMB_X60_Y50_N6
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

-- Location: LCCOMB_X60_Y50_N0
\inst5|first_value[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|first_value[2]~2_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(2))) # (!\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_selectReg~input_o\,
	datab => \inst3|inst700666|ACCB|SALIDA\(2),
	datac => \inst3|inst700666|ACCA|SALIDA\(2),
	datad => \RESET~input_o\,
	combout => \inst5|first_value[2]~2_combout\);

-- Location: LCCOMB_X64_Y50_N24
\inst5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (\inst5|first_value[3]~3_combout\ & (\inst5|first_value[0]~0_combout\ & (\inst5|first_value[1]~1_combout\ $ (\inst5|first_value[2]~2_combout\)))) # (!\inst5|first_value[3]~3_combout\ & (!\inst5|first_value[1]~1_combout\ & 
-- (\inst5|first_value[0]~0_combout\ $ (\inst5|first_value[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|first_value[0]~0_combout\,
	datab => \inst5|first_value[1]~1_combout\,
	datac => \inst5|first_value[3]~3_combout\,
	datad => \inst5|first_value[2]~2_combout\,
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y50_N6
\inst5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (\inst5|first_value[1]~1_combout\ & ((\inst5|first_value[0]~0_combout\ & (\inst5|first_value[3]~3_combout\)) # (!\inst5|first_value[0]~0_combout\ & ((\inst5|first_value[2]~2_combout\))))) # (!\inst5|first_value[1]~1_combout\ & 
-- (\inst5|first_value[2]~2_combout\ & (\inst5|first_value[0]~0_combout\ $ (\inst5|first_value[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|first_value[0]~0_combout\,
	datab => \inst5|first_value[1]~1_combout\,
	datac => \inst5|first_value[3]~3_combout\,
	datad => \inst5|first_value[2]~2_combout\,
	combout => \inst5|Mux1~0_combout\);

-- Location: LCCOMB_X60_Y50_N18
\inst5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux2~0_combout\ = (\inst5|first_value[2]~2_combout\ & (\inst5|first_value[3]~3_combout\ & ((\inst5|first_value[1]~1_combout\) # (!\inst5|first_value[0]~0_combout\)))) # (!\inst5|first_value[2]~2_combout\ & (!\inst5|first_value[3]~3_combout\ & 
-- (\inst5|first_value[1]~1_combout\ & !\inst5|first_value[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|first_value[2]~2_combout\,
	datab => \inst5|first_value[3]~3_combout\,
	datac => \inst5|first_value[1]~1_combout\,
	datad => \inst5|first_value[0]~0_combout\,
	combout => \inst5|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y50_N0
\inst5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = (\inst5|first_value[1]~1_combout\ & (\inst5|first_value[0]~0_combout\ & ((\inst5|first_value[2]~2_combout\)))) # (!\inst5|first_value[1]~1_combout\ & (!\inst5|first_value[3]~3_combout\ & (\inst5|first_value[0]~0_combout\ $ 
-- (\inst5|first_value[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|first_value[0]~0_combout\,
	datab => \inst5|first_value[1]~1_combout\,
	datac => \inst5|first_value[3]~3_combout\,
	datad => \inst5|first_value[2]~2_combout\,
	combout => \inst5|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y50_N22
\inst5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = (\inst5|first_value[1]~1_combout\ & (\inst5|first_value[0]~0_combout\ & (!\inst5|first_value[3]~3_combout\))) # (!\inst5|first_value[1]~1_combout\ & ((\inst5|first_value[2]~2_combout\ & ((!\inst5|first_value[3]~3_combout\))) # 
-- (!\inst5|first_value[2]~2_combout\ & (\inst5|first_value[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|first_value[0]~0_combout\,
	datab => \inst5|first_value[1]~1_combout\,
	datac => \inst5|first_value[3]~3_combout\,
	datad => \inst5|first_value[2]~2_combout\,
	combout => \inst5|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y50_N8
\inst5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = (\inst5|first_value[0]~0_combout\ & (\inst5|first_value[3]~3_combout\ $ (((\inst5|first_value[1]~1_combout\) # (!\inst5|first_value[2]~2_combout\))))) # (!\inst5|first_value[0]~0_combout\ & (\inst5|first_value[1]~1_combout\ & 
-- ((!\inst5|first_value[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|first_value[0]~0_combout\,
	datab => \inst5|first_value[1]~1_combout\,
	datac => \inst5|first_value[3]~3_combout\,
	datad => \inst5|first_value[2]~2_combout\,
	combout => \inst5|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y50_N26
\inst5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\inst5|first_value[0]~0_combout\ & ((\inst5|first_value[3]~3_combout\) # (\inst5|first_value[1]~1_combout\ $ (\inst5|first_value[2]~2_combout\)))) # (!\inst5|first_value[0]~0_combout\ & ((\inst5|first_value[1]~1_combout\) # 
-- (\inst5|first_value[3]~3_combout\ $ (\inst5|first_value[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|first_value[0]~0_combout\,
	datab => \inst5|first_value[1]~1_combout\,
	datac => \inst5|first_value[3]~3_combout\,
	datad => \inst5|first_value[2]~2_combout\,
	combout => \inst5|Mux6~0_combout\);

-- Location: LCCOMB_X66_Y50_N22
\inst5|second_value[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|second_value[3]~3_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(7)))) # (!\sw_selectReg~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|ACCA|SALIDA\(7),
	datab => \RESET~input_o\,
	datac => \sw_selectReg~input_o\,
	datad => \inst3|inst700666|ACCB|SALIDA\(7),
	combout => \inst5|second_value[3]~3_combout\);

-- Location: LCCOMB_X66_Y50_N28
\inst5|second_value[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|second_value[2]~2_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(6)))) # (!\sw_selectReg~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|ACCA|SALIDA\(6),
	datab => \inst3|inst700666|ACCB|SALIDA\(6),
	datac => \sw_selectReg~input_o\,
	datad => \RESET~input_o\,
	combout => \inst5|second_value[2]~2_combout\);

-- Location: LCCOMB_X60_Y50_N26
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

-- Location: LCCOMB_X66_Y50_N18
\inst5|second_value[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|second_value[0]~0_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(4)))) # (!\sw_selectReg~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst3|inst700666|ACCA|SALIDA\(4),
	datac => \sw_selectReg~input_o\,
	datad => \inst3|inst700666|ACCB|SALIDA\(4),
	combout => \inst5|second_value[0]~0_combout\);

-- Location: LCCOMB_X66_Y50_N16
\inst5|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux7~0_combout\ = (\inst5|second_value[3]~3_combout\ & (\inst5|second_value[0]~0_combout\ & (\inst5|second_value[2]~2_combout\ $ (\inst5|second_value[1]~1_combout\)))) # (!\inst5|second_value[3]~3_combout\ & (!\inst5|second_value[1]~1_combout\ & 
-- (\inst5|second_value[2]~2_combout\ $ (\inst5|second_value[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|second_value[3]~3_combout\,
	datab => \inst5|second_value[2]~2_combout\,
	datac => \inst5|second_value[1]~1_combout\,
	datad => \inst5|second_value[0]~0_combout\,
	combout => \inst5|Mux7~0_combout\);

-- Location: LCCOMB_X66_Y50_N30
\inst5|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux8~0_combout\ = (\inst5|second_value[3]~3_combout\ & ((\inst5|second_value[0]~0_combout\ & ((\inst5|second_value[1]~1_combout\))) # (!\inst5|second_value[0]~0_combout\ & (\inst5|second_value[2]~2_combout\)))) # (!\inst5|second_value[3]~3_combout\ 
-- & (\inst5|second_value[2]~2_combout\ & (\inst5|second_value[1]~1_combout\ $ (\inst5|second_value[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|second_value[3]~3_combout\,
	datab => \inst5|second_value[2]~2_combout\,
	datac => \inst5|second_value[1]~1_combout\,
	datad => \inst5|second_value[0]~0_combout\,
	combout => \inst5|Mux8~0_combout\);

-- Location: LCCOMB_X66_Y50_N12
\inst5|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux9~0_combout\ = (\inst5|second_value[3]~3_combout\ & (\inst5|second_value[2]~2_combout\ & ((\inst5|second_value[1]~1_combout\) # (!\inst5|second_value[0]~0_combout\)))) # (!\inst5|second_value[3]~3_combout\ & (!\inst5|second_value[2]~2_combout\ & 
-- (\inst5|second_value[1]~1_combout\ & !\inst5|second_value[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|second_value[3]~3_combout\,
	datab => \inst5|second_value[2]~2_combout\,
	datac => \inst5|second_value[1]~1_combout\,
	datad => \inst5|second_value[0]~0_combout\,
	combout => \inst5|Mux9~0_combout\);

-- Location: LCCOMB_X66_Y50_N14
\inst5|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux10~0_combout\ = (\inst5|second_value[1]~1_combout\ & (((\inst5|second_value[2]~2_combout\ & \inst5|second_value[0]~0_combout\)))) # (!\inst5|second_value[1]~1_combout\ & (!\inst5|second_value[3]~3_combout\ & (\inst5|second_value[2]~2_combout\ $ 
-- (\inst5|second_value[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|second_value[3]~3_combout\,
	datab => \inst5|second_value[2]~2_combout\,
	datac => \inst5|second_value[1]~1_combout\,
	datad => \inst5|second_value[0]~0_combout\,
	combout => \inst5|Mux10~0_combout\);

-- Location: LCCOMB_X66_Y50_N8
\inst5|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux11~0_combout\ = (\inst5|second_value[1]~1_combout\ & (!\inst5|second_value[3]~3_combout\ & ((\inst5|second_value[0]~0_combout\)))) # (!\inst5|second_value[1]~1_combout\ & ((\inst5|second_value[2]~2_combout\ & 
-- (!\inst5|second_value[3]~3_combout\)) # (!\inst5|second_value[2]~2_combout\ & ((\inst5|second_value[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|second_value[3]~3_combout\,
	datab => \inst5|second_value[2]~2_combout\,
	datac => \inst5|second_value[1]~1_combout\,
	datad => \inst5|second_value[0]~0_combout\,
	combout => \inst5|Mux11~0_combout\);

-- Location: LCCOMB_X66_Y50_N2
\inst5|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux12~0_combout\ = (\inst5|second_value[0]~0_combout\ & (\inst5|second_value[3]~3_combout\ $ (((\inst5|second_value[1]~1_combout\) # (!\inst5|second_value[2]~2_combout\))))) # (!\inst5|second_value[0]~0_combout\ & 
-- (((!\inst5|second_value[2]~2_combout\ & \inst5|second_value[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|second_value[3]~3_combout\,
	datab => \inst5|second_value[2]~2_combout\,
	datac => \inst5|second_value[1]~1_combout\,
	datad => \inst5|second_value[0]~0_combout\,
	combout => \inst5|Mux12~0_combout\);

-- Location: LCCOMB_X66_Y50_N0
\inst5|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux13~0_combout\ = (\inst5|second_value[0]~0_combout\ & ((\inst5|second_value[3]~3_combout\) # (\inst5|second_value[2]~2_combout\ $ (\inst5|second_value[1]~1_combout\)))) # (!\inst5|second_value[0]~0_combout\ & ((\inst5|second_value[1]~1_combout\) 
-- # (\inst5|second_value[3]~3_combout\ $ (\inst5|second_value[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|second_value[3]~3_combout\,
	datab => \inst5|second_value[2]~2_combout\,
	datac => \inst5|second_value[1]~1_combout\,
	datad => \inst5|second_value[0]~0_combout\,
	combout => \inst5|Mux13~0_combout\);

-- Location: LCCOMB_X66_Y50_N10
\inst5|third_value[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|third_value[1]~1_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(9)))) # (!\sw_selectReg~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst3|inst700666|ACCA|SALIDA\(9),
	datac => \sw_selectReg~input_o\,
	datad => \inst3|inst700666|ACCB|SALIDA\(9),
	combout => \inst5|third_value[1]~1_combout\);

-- Location: LCCOMB_X59_Y50_N24
\inst5|third_value[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|third_value[3]~3_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(11)))) # (!\sw_selectReg~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst3|inst700666|ACCA|SALIDA\(11),
	datac => \inst3|inst700666|ACCB|SALIDA\(11),
	datad => \sw_selectReg~input_o\,
	combout => \inst5|third_value[3]~3_combout\);

-- Location: LCCOMB_X66_Y50_N20
\inst5|third_value[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|third_value[2]~2_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(10))) # (!\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \sw_selectReg~input_o\,
	datac => \inst3|inst700666|ACCB|SALIDA\(10),
	datad => \inst3|inst700666|ACCA|SALIDA\(10),
	combout => \inst5|third_value[2]~2_combout\);

-- Location: LCCOMB_X66_Y50_N24
\inst5|third_value[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|third_value[0]~0_combout\ = (\RESET~input_o\ & ((\sw_selectReg~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(8)))) # (!\sw_selectReg~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|ACCA|SALIDA\(8),
	datab => \sw_selectReg~input_o\,
	datac => \inst3|inst700666|ACCB|SALIDA\(8),
	datad => \RESET~input_o\,
	combout => \inst5|third_value[0]~0_combout\);

-- Location: LCCOMB_X74_Y46_N24
\inst5|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux14~0_combout\ = (\inst5|third_value[3]~3_combout\ & (\inst5|third_value[0]~0_combout\ & (\inst5|third_value[1]~1_combout\ $ (\inst5|third_value[2]~2_combout\)))) # (!\inst5|third_value[3]~3_combout\ & (!\inst5|third_value[1]~1_combout\ & 
-- (\inst5|third_value[2]~2_combout\ $ (\inst5|third_value[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|third_value[1]~1_combout\,
	datab => \inst5|third_value[3]~3_combout\,
	datac => \inst5|third_value[2]~2_combout\,
	datad => \inst5|third_value[0]~0_combout\,
	combout => \inst5|Mux14~0_combout\);

-- Location: LCCOMB_X74_Y46_N10
\inst5|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux15~0_combout\ = (\inst5|third_value[1]~1_combout\ & ((\inst5|third_value[0]~0_combout\ & (\inst5|third_value[3]~3_combout\)) # (!\inst5|third_value[0]~0_combout\ & ((\inst5|third_value[2]~2_combout\))))) # (!\inst5|third_value[1]~1_combout\ & 
-- (\inst5|third_value[2]~2_combout\ & (\inst5|third_value[3]~3_combout\ $ (\inst5|third_value[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|third_value[1]~1_combout\,
	datab => \inst5|third_value[3]~3_combout\,
	datac => \inst5|third_value[2]~2_combout\,
	datad => \inst5|third_value[0]~0_combout\,
	combout => \inst5|Mux15~0_combout\);

-- Location: LCCOMB_X74_Y46_N12
\inst5|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux16~0_combout\ = (\inst5|third_value[3]~3_combout\ & (\inst5|third_value[2]~2_combout\ & ((\inst5|third_value[1]~1_combout\) # (!\inst5|third_value[0]~0_combout\)))) # (!\inst5|third_value[3]~3_combout\ & (\inst5|third_value[1]~1_combout\ & 
-- (!\inst5|third_value[2]~2_combout\ & !\inst5|third_value[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|third_value[1]~1_combout\,
	datab => \inst5|third_value[3]~3_combout\,
	datac => \inst5|third_value[2]~2_combout\,
	datad => \inst5|third_value[0]~0_combout\,
	combout => \inst5|Mux16~0_combout\);

-- Location: LCCOMB_X74_Y46_N26
\inst5|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux17~0_combout\ = (\inst5|third_value[1]~1_combout\ & (((\inst5|third_value[2]~2_combout\ & \inst5|third_value[0]~0_combout\)))) # (!\inst5|third_value[1]~1_combout\ & (!\inst5|third_value[3]~3_combout\ & (\inst5|third_value[2]~2_combout\ $ 
-- (\inst5|third_value[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|third_value[1]~1_combout\,
	datab => \inst5|third_value[3]~3_combout\,
	datac => \inst5|third_value[2]~2_combout\,
	datad => \inst5|third_value[0]~0_combout\,
	combout => \inst5|Mux17~0_combout\);

-- Location: LCCOMB_X74_Y46_N16
\inst5|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux18~0_combout\ = (\inst5|third_value[1]~1_combout\ & (!\inst5|third_value[3]~3_combout\ & ((\inst5|third_value[0]~0_combout\)))) # (!\inst5|third_value[1]~1_combout\ & ((\inst5|third_value[2]~2_combout\ & (!\inst5|third_value[3]~3_combout\)) # 
-- (!\inst5|third_value[2]~2_combout\ & ((\inst5|third_value[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|third_value[1]~1_combout\,
	datab => \inst5|third_value[3]~3_combout\,
	datac => \inst5|third_value[2]~2_combout\,
	datad => \inst5|third_value[0]~0_combout\,
	combout => \inst5|Mux18~0_combout\);

-- Location: LCCOMB_X74_Y46_N18
\inst5|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux19~0_combout\ = (\inst5|third_value[0]~0_combout\ & (\inst5|third_value[3]~3_combout\ $ (((\inst5|third_value[1]~1_combout\) # (!\inst5|third_value[2]~2_combout\))))) # (!\inst5|third_value[0]~0_combout\ & (\inst5|third_value[1]~1_combout\ & 
-- ((!\inst5|third_value[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|third_value[1]~1_combout\,
	datab => \inst5|third_value[3]~3_combout\,
	datac => \inst5|third_value[2]~2_combout\,
	datad => \inst5|third_value[0]~0_combout\,
	combout => \inst5|Mux19~0_combout\);

-- Location: LCCOMB_X74_Y46_N4
\inst5|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux20~0_combout\ = (\inst5|third_value[0]~0_combout\ & ((\inst5|third_value[3]~3_combout\) # (\inst5|third_value[1]~1_combout\ $ (\inst5|third_value[2]~2_combout\)))) # (!\inst5|third_value[0]~0_combout\ & ((\inst5|third_value[1]~1_combout\) # 
-- (\inst5|third_value[3]~3_combout\ $ (\inst5|third_value[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|third_value[1]~1_combout\,
	datab => \inst5|third_value[3]~3_combout\,
	datac => \inst5|third_value[2]~2_combout\,
	datad => \inst5|third_value[0]~0_combout\,
	combout => \inst5|Mux20~0_combout\);

-- Location: FF_X70_Y45_N13
\inst4|first_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst|inst5|valor_interno\(18),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|first_value\(2));

-- Location: FF_X70_Y45_N29
\inst4|first_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst|inst5|valor_interno\(16),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|first_value\(0));

-- Location: FF_X70_Y45_N11
\inst4|first_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst|inst5|valor_interno\(19),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|first_value\(3));

-- Location: FF_X70_Y45_N19
\inst4|first_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst|inst5|valor_interno\(17),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|first_value\(1));

-- Location: LCCOMB_X70_Y45_N4
\inst4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\inst4|first_value\(2) & (!\inst4|first_value\(1) & (\inst4|first_value\(0) $ (!\inst4|first_value\(3))))) # (!\inst4|first_value\(2) & (\inst4|first_value\(0) & (\inst4|first_value\(3) $ (!\inst4|first_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|first_value\(2),
	datab => \inst4|first_value\(0),
	datac => \inst4|first_value\(3),
	datad => \inst4|first_value\(1),
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y45_N26
\inst4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst4|first_value\(3) & ((\inst4|first_value\(0) & ((\inst4|first_value\(1)))) # (!\inst4|first_value\(0) & (\inst4|first_value\(2))))) # (!\inst4|first_value\(3) & (\inst4|first_value\(2) & (\inst4|first_value\(0) $ 
-- (\inst4|first_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|first_value\(2),
	datab => \inst4|first_value\(0),
	datac => \inst4|first_value\(3),
	datad => \inst4|first_value\(1),
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y45_N16
\inst4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\inst4|first_value\(2) & (\inst4|first_value\(3) & ((\inst4|first_value\(1)) # (!\inst4|first_value\(0))))) # (!\inst4|first_value\(2) & (!\inst4|first_value\(0) & (!\inst4|first_value\(3) & \inst4|first_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|first_value\(2),
	datab => \inst4|first_value\(0),
	datac => \inst4|first_value\(3),
	datad => \inst4|first_value\(1),
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y45_N28
\inst4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst4|first_value\(1) & (((\inst4|first_value\(0) & \inst4|first_value\(2))))) # (!\inst4|first_value\(1) & (!\inst4|first_value\(3) & (\inst4|first_value\(0) $ (\inst4|first_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|first_value\(3),
	datab => \inst4|first_value\(1),
	datac => \inst4|first_value\(0),
	datad => \inst4|first_value\(2),
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y45_N18
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

-- Location: LCCOMB_X70_Y45_N12
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

-- Location: LCCOMB_X70_Y45_N10
\inst4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = (\inst4|first_value\(0) & ((\inst4|first_value\(3)) # (\inst4|first_value\(2) $ (\inst4|first_value\(1))))) # (!\inst4|first_value\(0) & ((\inst4|first_value\(1)) # (\inst4|first_value\(2) $ (\inst4|first_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|first_value\(2),
	datab => \inst4|first_value\(1),
	datac => \inst4|first_value\(3),
	datad => \inst4|first_value\(0),
	combout => \inst4|Mux6~0_combout\);

-- Location: LCCOMB_X67_Y45_N28
\inst4|second_value[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|second_value[2]~feeder_combout\ = \inst|inst5|valor_interno\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst5|valor_interno\(22),
	combout => \inst4|second_value[2]~feeder_combout\);

-- Location: FF_X67_Y45_N29
\inst4|second_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst4|second_value[2]~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|second_value\(2));

-- Location: LCCOMB_X69_Y45_N8
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

-- Location: FF_X69_Y45_N9
\inst4|second_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	d => \inst4|second_value[1]~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|second_value\(1));

-- Location: FF_X67_Y45_N11
\inst4|second_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst|inst5|valor_interno\(23),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|second_value\(3));

-- Location: FF_X70_Y45_N31
\inst4|second_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|ESIGUIENTE~clkctrl_outclk\,
	asdata => \inst|inst5|valor_interno\(20),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|second_value\(0));

-- Location: LCCOMB_X70_Y45_N8
\inst4|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux7~0_combout\ = (\inst4|second_value\(2) & (!\inst4|second_value\(1) & (\inst4|second_value\(3) $ (!\inst4|second_value\(0))))) # (!\inst4|second_value\(2) & (\inst4|second_value\(0) & (\inst4|second_value\(1) $ (!\inst4|second_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|second_value\(2),
	datab => \inst4|second_value\(1),
	datac => \inst4|second_value\(3),
	datad => \inst4|second_value\(0),
	combout => \inst4|Mux7~0_combout\);

-- Location: LCCOMB_X70_Y45_N2
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

-- Location: LCCOMB_X70_Y45_N24
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

-- Location: LCCOMB_X70_Y45_N30
\inst4|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux10~0_combout\ = (\inst4|second_value\(1) & (\inst4|second_value\(2) & (\inst4|second_value\(0)))) # (!\inst4|second_value\(1) & (!\inst4|second_value\(3) & (\inst4|second_value\(2) $ (\inst4|second_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|second_value\(2),
	datab => \inst4|second_value\(1),
	datac => \inst4|second_value\(0),
	datad => \inst4|second_value\(3),
	combout => \inst4|Mux10~0_combout\);

-- Location: LCCOMB_X70_Y45_N14
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

-- Location: LCCOMB_X67_Y45_N16
\inst4|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux12~0_combout\ = (\inst4|second_value\(0) & (\inst4|second_value\(3) $ (((\inst4|second_value\(1)) # (!\inst4|second_value\(2)))))) # (!\inst4|second_value\(0) & (((!\inst4|second_value\(2) & \inst4|second_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|second_value\(3),
	datab => \inst4|second_value\(2),
	datac => \inst4|second_value\(1),
	datad => \inst4|second_value\(0),
	combout => \inst4|Mux12~0_combout\);

-- Location: LCCOMB_X70_Y45_N20
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

ww_disp1(7) <= \disp1[7]~output_o\;

ww_disp1(6) <= \disp1[6]~output_o\;

ww_disp1(5) <= \disp1[5]~output_o\;

ww_disp1(4) <= \disp1[4]~output_o\;

ww_disp1(3) <= \disp1[3]~output_o\;

ww_disp1(2) <= \disp1[2]~output_o\;

ww_disp1(1) <= \disp1[1]~output_o\;

ww_disp1(0) <= \disp1[0]~output_o\;

ww_disp2(7) <= \disp2[7]~output_o\;

ww_disp2(6) <= \disp2[6]~output_o\;

ww_disp2(5) <= \disp2[5]~output_o\;

ww_disp2(4) <= \disp2[4]~output_o\;

ww_disp2(3) <= \disp2[3]~output_o\;

ww_disp2(2) <= \disp2[2]~output_o\;

ww_disp2(1) <= \disp2[1]~output_o\;

ww_disp2(0) <= \disp2[0]~output_o\;

ww_disp3(7) <= \disp3[7]~output_o\;

ww_disp3(6) <= \disp3[6]~output_o\;

ww_disp3(5) <= \disp3[5]~output_o\;

ww_disp3(4) <= \disp3[4]~output_o\;

ww_disp3(3) <= \disp3[3]~output_o\;

ww_disp3(2) <= \disp3[2]~output_o\;

ww_disp3(1) <= \disp3[1]~output_o\;

ww_disp3(0) <= \disp3[0]~output_o\;

ww_disp4(7) <= \disp4[7]~output_o\;

ww_disp4(6) <= \disp4[6]~output_o\;

ww_disp4(5) <= \disp4[5]~output_o\;

ww_disp4(4) <= \disp4[4]~output_o\;

ww_disp4(3) <= \disp4[3]~output_o\;

ww_disp4(2) <= \disp4[2]~output_o\;

ww_disp4(1) <= \disp4[1]~output_o\;

ww_disp4(0) <= \disp4[0]~output_o\;

ww_disp5(7) <= \disp5[7]~output_o\;

ww_disp5(6) <= \disp5[6]~output_o\;

ww_disp5(5) <= \disp5[5]~output_o\;

ww_disp5(4) <= \disp5[4]~output_o\;

ww_disp5(3) <= \disp5[3]~output_o\;

ww_disp5(2) <= \disp5[2]~output_o\;

ww_disp5(1) <= \disp5[1]~output_o\;

ww_disp5(0) <= \disp5[0]~output_o\;

ww_disp6(7) <= \disp6[7]~output_o\;

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


