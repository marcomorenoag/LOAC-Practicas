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

-- DATE "09/18/2019 09:15:17"

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

ENTITY 	LOAC_P5 IS
    PORT (
	currentState : OUT std_logic_vector(2 DOWNTO 0);
	RELOJ : IN std_logic;
	RESET : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	nexttSate : OUT std_logic_vector(2 DOWNTO 0);
	salida : OUT std_logic_vector(3 DOWNTO 0)
	);
END LOAC_P5;

-- Design Ports Information
-- currentState[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentState[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentState[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nexttSate[2]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nexttSate[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nexttSate[0]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RELOJ	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LOAC_P5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_currentState : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RELOJ : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_nexttSate : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_salida : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOJ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \currentState[2]~output_o\ : std_logic;
SIGNAL \currentState[1]~output_o\ : std_logic;
SIGNAL \currentState[0]~output_o\ : std_logic;
SIGNAL \nexttSate[2]~output_o\ : std_logic;
SIGNAL \nexttSate[1]~output_o\ : std_logic;
SIGNAL \nexttSate[0]~output_o\ : std_logic;
SIGNAL \salida[3]~output_o\ : std_logic;
SIGNAL \salida[2]~output_o\ : std_logic;
SIGNAL \salida[1]~output_o\ : std_logic;
SIGNAL \salida[0]~output_o\ : std_logic;
SIGNAL \RELOJ~input_o\ : std_logic;
SIGNAL \RELOJ~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4|comb~6_combout\ : std_logic;
SIGNAL \inst4|comb~7_combout\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \inst4|comb~3_combout\ : std_logic;
SIGNAL \inst4|comb~2_combout\ : std_logic;
SIGNAL \inst4|Equal0~1_combout\ : std_logic;
SIGNAL \inst4|datos[13]~1_combout\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst3|salida~0_combout\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst3|salida~1_combout\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \inst9|salida[0]~4_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4|comb~5_combout\ : std_logic;
SIGNAL \inst4|comb~4_combout\ : std_logic;
SIGNAL \inst9|salida[1]~3_combout\ : std_logic;
SIGNAL \inst1|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|comb~1_combout\ : std_logic;
SIGNAL \inst9|salida[2]~0_combout\ : std_logic;
SIGNAL \inst4|datos[10]~0_combout\ : std_logic;
SIGNAL \inst4|comb~0_combout\ : std_logic;
SIGNAL \inst9|salida[2]~1_combout\ : std_logic;
SIGNAL \inst9|salida[2]~2_combout\ : std_logic;
SIGNAL \inst1|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst40|salida[3]~0_combout\ : std_logic;
SIGNAL \inst40|salida[2]~1_combout\ : std_logic;
SIGNAL \inst4|comb~8_combout\ : std_logic;
SIGNAL \inst4|comb~9_combout\ : std_logic;
SIGNAL \inst4|comb~11_combout\ : std_logic;
SIGNAL \inst4|comb~10_combout\ : std_logic;
SIGNAL \inst40|salida[1]~2_combout\ : std_logic;
SIGNAL \inst4|comb~12_combout\ : std_logic;
SIGNAL \inst40|salida[0]~3_combout\ : std_logic;
SIGNAL \inst1|valor_interno\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|datos\ : std_logic_vector(13 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

currentState <= ww_currentState;
ww_RELOJ <= RELOJ;
ww_RESET <= RESET;
ww_A <= A;
ww_B <= B;
ww_C <= C;
nexttSate <= ww_nexttSate;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\RELOJ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RELOJ~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N24
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

-- Location: IOOBUF_X54_Y0_N30
\currentState[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|valor_interno\(2),
	devoe => ww_devoe,
	o => \currentState[2]~output_o\);

-- Location: IOOBUF_X58_Y0_N30
\currentState[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|valor_interno\(1),
	devoe => ww_devoe,
	o => \currentState[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\currentState[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|valor_interno\(0),
	devoe => ww_devoe,
	o => \currentState[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\nexttSate[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|salida[2]~2_combout\,
	devoe => ww_devoe,
	o => \nexttSate[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\nexttSate[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|salida[1]~3_combout\,
	devoe => ww_devoe,
	o => \nexttSate[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\nexttSate[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|salida[0]~4_combout\,
	devoe => ww_devoe,
	o => \nexttSate[0]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\salida[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|salida[3]~0_combout\,
	devoe => ww_devoe,
	o => \salida[3]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\salida[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|salida[2]~1_combout\,
	devoe => ww_devoe,
	o => \salida[2]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\salida[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|salida[1]~2_combout\,
	devoe => ww_devoe,
	o => \salida[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\salida[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|salida[0]~3_combout\,
	devoe => ww_devoe,
	o => \salida[0]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
\RELOJ~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RELOJ~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RELOJ~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y1_N14
\inst4|comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|comb~6_combout\ = (\inst1|valor_interno\(1) & (!\inst1|valor_interno\(2))) # (!\inst1|valor_interno\(1) & ((!\inst1|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|valor_interno\(1),
	datac => \inst1|valor_interno\(2),
	datad => \inst1|valor_interno\(0),
	combout => \inst4|comb~6_combout\);

-- Location: LCCOMB_X55_Y1_N16
\inst4|comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|comb~7_combout\ = (\inst1|valor_interno\(1)) # ((\inst1|valor_interno\(2)) # (!\inst1|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|valor_interno\(1),
	datac => \inst1|valor_interno\(2),
	datad => \inst1|valor_interno\(0),
	combout => \inst4|comb~7_combout\);

-- Location: LCCOMB_X55_Y1_N30
\inst4|datos[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|datos\(8) = (!\inst4|comb~6_combout\ & ((\inst4|datos\(8)) # (!\inst4|comb~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|comb~6_combout\,
	datac => \inst4|comb~7_combout\,
	datad => \inst4|datos\(8),
	combout => \inst4|datos\(8));

-- Location: IOIBUF_X56_Y0_N8
\C~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LCCOMB_X57_Y1_N24
\inst4|comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|comb~3_combout\ = (\inst1|valor_interno\(0) & (!\inst1|valor_interno\(2) & \inst1|valor_interno\(1))) # (!\inst1|valor_interno\(0) & ((!\inst1|valor_interno\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|valor_interno\(2),
	datac => \inst1|valor_interno\(0),
	datad => \inst1|valor_interno\(1),
	combout => \inst4|comb~3_combout\);

-- Location: LCCOMB_X56_Y1_N14
\inst4|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|comb~2_combout\ = (!\inst1|valor_interno\(2) & (\inst1|valor_interno\(1) $ (\inst1|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|valor_interno\(1),
	datab => \inst1|valor_interno\(0),
	datad => \inst1|valor_interno\(2),
	combout => \inst4|comb~2_combout\);

-- Location: LCCOMB_X56_Y1_N16
\inst4|datos[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|datos\(12) = (!\inst4|comb~2_combout\ & ((\inst4|comb~3_combout\) # (\inst4|datos\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|comb~3_combout\,
	datac => \inst4|comb~2_combout\,
	datad => \inst4|datos\(12),
	combout => \inst4|datos\(12));

-- Location: LCCOMB_X55_Y1_N22
\inst4|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~1_combout\ = (!\inst1|valor_interno\(1) & !\inst1|valor_interno\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|valor_interno\(1),
	datac => \inst1|valor_interno\(2),
	combout => \inst4|Equal0~1_combout\);

-- Location: LCCOMB_X55_Y1_N4
\inst4|datos[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|datos[13]~1_combout\ = \inst1|valor_interno\(2) $ (((\inst1|valor_interno\(1)) # (\inst1|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|valor_interno\(1),
	datac => \inst1|valor_interno\(2),
	datad => \inst1|valor_interno\(0),
	combout => \inst4|datos[13]~1_combout\);

-- Location: LCCOMB_X55_Y1_N24
\inst4|datos[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|datos\(13) = (!\inst4|Equal0~1_combout\ & ((\inst4|datos[13]~1_combout\) # (\inst4|datos\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~1_combout\,
	datac => \inst4|datos[13]~1_combout\,
	datad => \inst4|datos\(13),
	combout => \inst4|datos\(13));

-- Location: IOIBUF_X56_Y0_N1
\A~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X56_Y1_N4
\inst3|salida~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|salida~0_combout\ = (!\inst4|datos\(12) & ((\inst4|datos\(13) & (\C~input_o\)) # (!\inst4|datos\(13) & ((\A~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \inst4|datos\(12),
	datac => \inst4|datos\(13),
	datad => \A~input_o\,
	combout => \inst3|salida~0_combout\);

-- Location: IOIBUF_X56_Y0_N29
\B~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X56_Y1_N28
\inst3|salida~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|salida~1_combout\ = (!\inst4|datos\(13) & (\B~input_o\ & \inst4|datos\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|datos\(13),
	datac => \B~input_o\,
	datad => \inst4|datos\(12),
	combout => \inst3|salida~1_combout\);

-- Location: LCCOMB_X56_Y1_N10
inst6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6~combout\ = \inst4|datos\(11) $ (((\inst3|salida~0_combout\) # (\inst3|salida~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|datos\(11),
	datac => \inst3|salida~0_combout\,
	datad => \inst3|salida~1_combout\,
	combout => \inst6~combout\);

-- Location: LCCOMB_X55_Y1_N20
\inst9|salida[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|salida[0]~4_combout\ = (\inst6~combout\ & ((!\inst1|valor_interno\(0)))) # (!\inst6~combout\ & (\inst4|datos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|datos\(8),
	datac => \inst6~combout\,
	datad => \inst1|valor_interno\(0),
	combout => \inst9|salida[0]~4_combout\);

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

-- Location: CLKCTRL_G4
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

-- Location: FF_X55_Y1_N29
\inst1|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst9|salida[0]~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|valor_interno\(0));

-- Location: LCCOMB_X54_Y1_N22
\inst4|comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|comb~5_combout\ = (!\inst1|valor_interno\(1) & (\inst1|valor_interno\(0) $ (\inst1|valor_interno\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|valor_interno\(0),
	datac => \inst1|valor_interno\(2),
	datad => \inst1|valor_interno\(1),
	combout => \inst4|comb~5_combout\);

-- Location: LCCOMB_X54_Y1_N8
\inst4|comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|comb~4_combout\ = (!\inst1|valor_interno\(2) & ((\inst1|valor_interno\(1)) # (!\inst1|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|valor_interno\(0),
	datac => \inst1|valor_interno\(2),
	datad => \inst1|valor_interno\(1),
	combout => \inst4|comb~4_combout\);

-- Location: LCCOMB_X54_Y1_N12
\inst4|datos[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|datos\(9) = (!\inst4|comb~4_combout\ & ((\inst4|comb~5_combout\) # (\inst4|datos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|comb~5_combout\,
	datac => \inst4|comb~4_combout\,
	datad => \inst4|datos\(9),
	combout => \inst4|datos\(9));

-- Location: LCCOMB_X55_Y1_N18
\inst9|salida[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|salida[1]~3_combout\ = (\inst6~combout\ & ((\inst1|valor_interno\(1) $ (\inst1|valor_interno\(0))))) # (!\inst6~combout\ & (\inst4|datos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|datos\(9),
	datab => \inst6~combout\,
	datac => \inst1|valor_interno\(1),
	datad => \inst1|valor_interno\(0),
	combout => \inst9|salida[1]~3_combout\);

-- Location: LCCOMB_X55_Y1_N10
\inst1|valor_interno[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|valor_interno[1]~feeder_combout\ = \inst9|salida[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|salida[1]~3_combout\,
	combout => \inst1|valor_interno[1]~feeder_combout\);

-- Location: FF_X55_Y1_N11
\inst1|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|valor_interno[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|valor_interno\(1));

-- Location: LCCOMB_X56_Y1_N24
\inst4|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (!\inst1|valor_interno\(1) & (!\inst1|valor_interno\(0) & !\inst1|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|valor_interno\(1),
	datab => \inst1|valor_interno\(0),
	datad => \inst1|valor_interno\(2),
	combout => \inst4|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y1_N22
\inst4|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|comb~1_combout\ = \inst1|valor_interno\(2) $ (((!\inst1|valor_interno\(1) & !\inst1|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|valor_interno\(1),
	datab => \inst1|valor_interno\(0),
	datad => \inst1|valor_interno\(2),
	combout => \inst4|comb~1_combout\);

-- Location: LCCOMB_X56_Y1_N2
\inst4|datos[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|datos\(11) = (\inst4|comb~1_combout\ & ((\inst4|Equal0~0_combout\) # (\inst4|datos\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Equal0~0_combout\,
	datac => \inst4|comb~1_combout\,
	datad => \inst4|datos\(11),
	combout => \inst4|datos\(11));

-- Location: LCCOMB_X56_Y1_N26
\inst9|salida[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|salida[2]~0_combout\ = (!\inst3|salida~0_combout\ & ((\inst4|datos\(13)) # ((!\inst4|datos\(12)) # (!\B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|datos\(13),
	datab => \B~input_o\,
	datac => \inst3|salida~0_combout\,
	datad => \inst4|datos\(12),
	combout => \inst9|salida[2]~0_combout\);

-- Location: LCCOMB_X56_Y1_N8
\inst4|datos[10]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|datos[10]~0_combout\ = (!\inst1|valor_interno\(0) & !\inst1|valor_interno\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|valor_interno\(0),
	datad => \inst1|valor_interno\(2),
	combout => \inst4|datos[10]~0_combout\);

-- Location: LCCOMB_X56_Y1_N30
\inst4|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|comb~0_combout\ = (\inst1|valor_interno\(0) & ((\inst1|valor_interno\(2)))) # (!\inst1|valor_interno\(0) & ((\inst1|valor_interno\(1)) # (!\inst1|valor_interno\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|valor_interno\(1),
	datab => \inst1|valor_interno\(0),
	datad => \inst1|valor_interno\(2),
	combout => \inst4|comb~0_combout\);

-- Location: LCCOMB_X56_Y1_N20
\inst4|datos[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|datos\(10) = (\inst4|comb~0_combout\ & ((\inst4|datos[10]~0_combout\) # (\inst4|datos\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|datos[10]~0_combout\,
	datac => \inst4|comb~0_combout\,
	datad => \inst4|datos\(10),
	combout => \inst4|datos\(10));

-- Location: LCCOMB_X55_Y1_N2
\inst9|salida[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|salida[2]~1_combout\ = \inst1|valor_interno\(2) $ (((\inst1|valor_interno\(1) & \inst1|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|valor_interno\(1),
	datac => \inst1|valor_interno\(2),
	datad => \inst1|valor_interno\(0),
	combout => \inst9|salida[2]~1_combout\);

-- Location: LCCOMB_X55_Y1_N12
\inst9|salida[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|salida[2]~2_combout\ = (\inst4|datos\(11) & ((\inst9|salida[2]~0_combout\ & ((\inst9|salida[2]~1_combout\))) # (!\inst9|salida[2]~0_combout\ & (\inst4|datos\(10))))) # (!\inst4|datos\(11) & ((\inst9|salida[2]~0_combout\ & (\inst4|datos\(10))) # 
-- (!\inst9|salida[2]~0_combout\ & ((\inst9|salida[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|datos\(11),
	datab => \inst9|salida[2]~0_combout\,
	datac => \inst4|datos\(10),
	datad => \inst9|salida[2]~1_combout\,
	combout => \inst9|salida[2]~2_combout\);

-- Location: LCCOMB_X55_Y1_N8
\inst1|valor_interno[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|valor_interno[2]~feeder_combout\ = \inst9|salida[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|salida[2]~2_combout\,
	combout => \inst1|valor_interno[2]~feeder_combout\);

-- Location: FF_X55_Y1_N9
\inst1|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|valor_interno[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|valor_interno\(2));

-- Location: LCCOMB_X54_Y1_N6
\inst4|datos[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|datos\(3) = (!\inst4|comb~5_combout\ & ((\inst4|comb~4_combout\) # (\inst4|datos\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|comb~5_combout\,
	datac => \inst4|comb~4_combout\,
	datad => \inst4|datos\(3),
	combout => \inst4|datos\(3));

-- Location: LCCOMB_X54_Y1_N16
\inst4|datos[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|datos\(7) = (!\inst4|comb~5_combout\ & ((\inst4|comb~4_combout\) # (\inst4|datos\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|comb~5_combout\,
	datac => \inst4|comb~4_combout\,
	datad => \inst4|datos\(7),
	combout => \inst4|datos\(7));

-- Location: LCCOMB_X54_Y1_N24
\inst40|salida[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|salida[3]~0_combout\ = (\inst6~combout\ & (\inst4|datos\(3))) # (!\inst6~combout\ & ((\inst4|datos\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|datos\(3),
	datab => \inst4|datos\(7),
	datad => \inst6~combout\,
	combout => \inst40|salida[3]~0_combout\);

-- Location: LCCOMB_X56_Y1_N12
\inst4|datos[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|datos\(6) = (\inst4|comb~0_combout\ & ((\inst4|datos[10]~0_combout\) # (\inst4|datos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|datos[10]~0_combout\,
	datac => \inst4|comb~0_combout\,
	datad => \inst4|datos\(6),
	combout => \inst4|datos\(6));

-- Location: LCCOMB_X56_Y1_N6
\inst4|datos[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|datos\(2) = (\inst4|comb~1_combout\ & ((\inst4|Equal0~0_combout\) # (\inst4|datos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Equal0~0_combout\,
	datac => \inst4|comb~1_combout\,
	datad => \inst4|datos\(2),
	combout => \inst4|datos\(2));

-- Location: LCCOMB_X56_Y1_N0
\inst40|salida[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|salida[2]~1_combout\ = (\inst6~combout\ & ((\inst4|datos\(2)))) # (!\inst6~combout\ & (\inst4|datos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|datos\(6),
	datac => \inst6~combout\,
	datad => \inst4|datos\(2),
	combout => \inst40|salida[2]~1_combout\);

-- Location: LCCOMB_X54_Y1_N28
\inst4|comb~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|comb~8_combout\ = (\inst1|valor_interno\(0) & ((\inst1|valor_interno\(2)) # (\inst1|valor_interno\(1)))) # (!\inst1|valor_interno\(0) & (\inst1|valor_interno\(2) $ (!\inst1|valor_interno\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|valor_interno\(0),
	datac => \inst1|valor_interno\(2),
	datad => \inst1|valor_interno\(1),
	combout => \inst4|comb~8_combout\);

-- Location: LCCOMB_X54_Y1_N14
\inst4|comb~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|comb~9_combout\ = (!\inst1|valor_interno\(2) & (\inst1|valor_interno\(0) $ (!\inst1|valor_interno\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|valor_interno\(0),
	datac => \inst1|valor_interno\(2),
	datad => \inst1|valor_interno\(1),
	combout => \inst4|comb~9_combout\);

-- Location: LCCOMB_X54_Y1_N2
\inst4|datos[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|datos\(1) = (\inst4|comb~8_combout\ & ((\inst4|comb~9_combout\) # (\inst4|datos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|comb~8_combout\,
	datac => \inst4|comb~9_combout\,
	datad => \inst4|datos\(1),
	combout => \inst4|datos\(1));

-- Location: LCCOMB_X54_Y1_N26
\inst4|comb~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|comb~11_combout\ = (\inst1|valor_interno\(0) & (!\inst1|valor_interno\(2) & \inst1|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|valor_interno\(0),
	datac => \inst1|valor_interno\(2),
	datad => \inst1|valor_interno\(1),
	combout => \inst4|comb~11_combout\);

-- Location: LCCOMB_X54_Y1_N4
\inst4|comb~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|comb~10_combout\ = (\inst1|valor_interno\(0) & (!\inst1|valor_interno\(2) & !\inst1|valor_interno\(1))) # (!\inst1|valor_interno\(0) & ((!\inst1|valor_interno\(1)) # (!\inst1|valor_interno\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|valor_interno\(0),
	datac => \inst1|valor_interno\(2),
	datad => \inst1|valor_interno\(1),
	combout => \inst4|comb~10_combout\);

-- Location: LCCOMB_X54_Y1_N20
\inst4|datos[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|datos\(5) = (!\inst4|comb~10_combout\ & ((\inst4|comb~11_combout\) # (\inst4|datos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|comb~11_combout\,
	datac => \inst4|comb~10_combout\,
	datad => \inst4|datos\(5),
	combout => \inst4|datos\(5));

-- Location: LCCOMB_X54_Y1_N10
\inst40|salida[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|salida[1]~2_combout\ = (\inst6~combout\ & (\inst4|datos\(1))) # (!\inst6~combout\ & ((\inst4|datos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6~combout\,
	datab => \inst4|datos\(1),
	datad => \inst4|datos\(5),
	combout => \inst40|salida[1]~2_combout\);

-- Location: LCCOMB_X55_Y1_N0
\inst4|datos[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|datos\(0) = (!\inst4|comb~6_combout\ & ((\inst4|datos\(0)) # (!\inst4|comb~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|comb~6_combout\,
	datac => \inst4|comb~7_combout\,
	datad => \inst4|datos\(0),
	combout => \inst4|datos\(0));

-- Location: LCCOMB_X55_Y1_N26
\inst4|comb~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|comb~12_combout\ = (\inst1|valor_interno\(1) & (\inst1|valor_interno\(2))) # (!\inst1|valor_interno\(1) & ((\inst1|valor_interno\(0)) # (!\inst1|valor_interno\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|valor_interno\(1),
	datac => \inst1|valor_interno\(2),
	datad => \inst1|valor_interno\(0),
	combout => \inst4|comb~12_combout\);

-- Location: LCCOMB_X55_Y1_N6
\inst4|datos[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|datos\(4) = (\inst4|comb~12_combout\ & ((\inst4|Equal0~1_combout\) # (\inst4|datos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|comb~12_combout\,
	datac => \inst4|Equal0~1_combout\,
	datad => \inst4|datos\(4),
	combout => \inst4|datos\(4));

-- Location: LCCOMB_X55_Y1_N28
\inst40|salida[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|salida[0]~3_combout\ = (\inst6~combout\ & (\inst4|datos\(0))) # (!\inst6~combout\ & ((\inst4|datos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|datos\(0),
	datab => \inst6~combout\,
	datad => \inst4|datos\(4),
	combout => \inst40|salida[0]~3_combout\);

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

ww_currentState(2) <= \currentState[2]~output_o\;

ww_currentState(1) <= \currentState[1]~output_o\;

ww_currentState(0) <= \currentState[0]~output_o\;

ww_nexttSate(2) <= \nexttSate[2]~output_o\;

ww_nexttSate(1) <= \nexttSate[1]~output_o\;

ww_nexttSate(0) <= \nexttSate[0]~output_o\;

ww_salida(3) <= \salida[3]~output_o\;

ww_salida(2) <= \salida[2]~output_o\;

ww_salida(1) <= \salida[1]~output_o\;

ww_salida(0) <= \salida[0]~output_o\;
END structure;


