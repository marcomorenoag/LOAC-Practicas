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

-- DATE "10/03/2019 10:50:49"

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

ENTITY 	Practica6 IS
    PORT (
	selector : OUT std_logic;
	x : IN std_logic;
	y : IN std_logic;
	int : IN std_logic;
	RELOJ : IN std_logic;
	RESET : IN std_logic;
	ENTRADA : IN std_logic_vector(3 DOWNTO 0);
	carga : OUT std_logic;
	currentState : OUT std_logic_vector(3 DOWNTO 0);
	mi : OUT std_logic_vector(1 DOWNTO 0);
	salidas : OUT std_logic_vector(3 DOWNTO 0);
	state : OUT std_logic_vector(3 DOWNTO 0)
	);
END Practica6;

-- Design Ports Information
-- selector	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carga	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentState[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentState[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentState[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentState[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mi[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mi[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- int	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RELOJ	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADA[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADA[2]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADA[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADA[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Practica6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_selector : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_int : std_logic;
SIGNAL ww_RELOJ : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_ENTRADA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_carga : std_logic;
SIGNAL ww_currentState : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mi : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_salidas : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_state : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOJ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \state[3]~output_o\ : std_logic;
SIGNAL \state[2]~output_o\ : std_logic;
SIGNAL \state[1]~output_o\ : std_logic;
SIGNAL \state[0]~output_o\ : std_logic;
SIGNAL \selector~output_o\ : std_logic;
SIGNAL \carga~output_o\ : std_logic;
SIGNAL \currentState[3]~output_o\ : std_logic;
SIGNAL \currentState[2]~output_o\ : std_logic;
SIGNAL \currentState[1]~output_o\ : std_logic;
SIGNAL \currentState[0]~output_o\ : std_logic;
SIGNAL \mi[1]~output_o\ : std_logic;
SIGNAL \mi[0]~output_o\ : std_logic;
SIGNAL \salidas[3]~output_o\ : std_logic;
SIGNAL \salidas[2]~output_o\ : std_logic;
SIGNAL \salidas[1]~output_o\ : std_logic;
SIGNAL \salidas[0]~output_o\ : std_logic;
SIGNAL \RELOJ~input_o\ : std_logic;
SIGNAL \RELOJ~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst12|SALIDA[3]~2_combout\ : std_logic;
SIGNAL \ENTRADA[1]~input_o\ : std_logic;
SIGNAL \ENTRADA[0]~input_o\ : std_logic;
SIGNAL \inst11|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst18|Mux8~0_combout\ : std_logic;
SIGNAL \inst12|SALIDA[0]~5_combout\ : std_logic;
SIGNAL \inst12|SALIDA[0]~6_combout\ : std_logic;
SIGNAL \inst3|valor_interno[0]~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst18|Mux2~0_combout\ : std_logic;
SIGNAL \int~input_o\ : std_logic;
SIGNAL \inst18|Mux4~0_combout\ : std_logic;
SIGNAL \inst|vf~q\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \inst18|Mux3~0_combout\ : std_logic;
SIGNAL \inst6~0_combout\ : std_logic;
SIGNAL \inst6~1_combout\ : std_logic;
SIGNAL \inst19|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|salida[0]~3_combout\ : std_logic;
SIGNAL \inst18|Mux7~0_combout\ : std_logic;
SIGNAL \inst12|SALIDA[1]~3_combout\ : std_logic;
SIGNAL \inst12|SALIDA[1]~4_combout\ : std_logic;
SIGNAL \inst5|salida[1]~2_combout\ : std_logic;
SIGNAL \inst4|Add0~4_combout\ : std_logic;
SIGNAL \inst4|Add0~3_combout\ : std_logic;
SIGNAL \inst4|Add0~0_combout\ : std_logic;
SIGNAL \inst4|Add0~1_combout\ : std_logic;
SIGNAL \inst4|Add0~2_combout\ : std_logic;
SIGNAL \inst5|salida[3]~0_combout\ : std_logic;
SIGNAL \inst18|Mux0~0_combout\ : std_logic;
SIGNAL \ENTRADA[2]~input_o\ : std_logic;
SIGNAL \inst12|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst7[2]~0_combout\ : std_logic;
SIGNAL \inst5|salida[2]~1_combout\ : std_logic;
SIGNAL \inst18|Mux1~0_combout\ : std_logic;
SIGNAL \ENTRADA[3]~input_o\ : std_logic;
SIGNAL \inst18|Mux5~0_combout\ : std_logic;
SIGNAL \inst12|SALIDA[3]~0_combout\ : std_logic;
SIGNAL \inst12|SALIDA[3]~1_combout\ : std_logic;
SIGNAL \inst18|Mux9~0_combout\ : std_logic;
SIGNAL \inst18|Mux10~0_combout\ : std_logic;
SIGNAL \inst18|Mux11~0_combout\ : std_logic;
SIGNAL \inst18|Mux12~0_combout\ : std_logic;
SIGNAL \inst12|valor_interno\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|mi\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|valor_interno\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|prueba\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst11|valor_interno\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|liga\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst18|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst6~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

selector <= ww_selector;
ww_x <= x;
ww_y <= y;
ww_int <= int;
ww_RELOJ <= RELOJ;
ww_RESET <= RESET;
ww_ENTRADA <= ENTRADA;
carga <= ww_carga;
currentState <= ww_currentState;
mi <= ww_mi;
salidas <= ww_salidas;
state <= ww_state;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\RELOJ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RELOJ~input_o\);
\inst18|ALT_INV_Mux10~0_combout\ <= NOT \inst18|Mux10~0_combout\;
\inst18|ALT_INV_Mux9~0_combout\ <= NOT \inst18|Mux9~0_combout\;
\ALT_INV_inst6~1_combout\ <= NOT \inst6~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y49_N12
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

-- Location: IOOBUF_X51_Y54_N16
\state[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|SALIDA[3]~1_combout\,
	oe => \inst12|SALIDA[3]~2_combout\,
	devoe => ww_devoe,
	o => \state[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\state[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7[2]~0_combout\,
	oe => \inst12|SALIDA[3]~2_combout\,
	devoe => ww_devoe,
	o => \state[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\state[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|SALIDA[1]~4_combout\,
	oe => \inst12|SALIDA[3]~2_combout\,
	devoe => ww_devoe,
	o => \state[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\state[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|SALIDA[0]~6_combout\,
	oe => \inst12|SALIDA[3]~2_combout\,
	devoe => ww_devoe,
	o => \state[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\selector~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \selector~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\carga~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst6~1_combout\,
	devoe => ww_devoe,
	o => \carga~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\currentState[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|salida[3]~0_combout\,
	devoe => ww_devoe,
	o => \currentState[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\currentState[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|salida[2]~1_combout\,
	devoe => ww_devoe,
	o => \currentState[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\currentState[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|salida[1]~2_combout\,
	devoe => ww_devoe,
	o => \currentState[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\currentState[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|salida[0]~3_combout\,
	devoe => ww_devoe,
	o => \currentState[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\mi[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mi\(1),
	devoe => ww_devoe,
	o => \mi[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\mi[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mi\(0),
	devoe => ww_devoe,
	o => \mi[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\salidas[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|ALT_INV_Mux9~0_combout\,
	devoe => ww_devoe,
	o => \salidas[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\salidas[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|ALT_INV_Mux10~0_combout\,
	devoe => ww_devoe,
	o => \salidas[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\salidas[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \salidas[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\salidas[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \salidas[0]~output_o\);

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

-- Location: LCCOMB_X52_Y53_N26
\inst12|SALIDA[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|SALIDA[3]~2_combout\ = (\inst|mi\(0)) # (\inst|mi\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|mi\(0),
	datad => \inst|mi\(1),
	combout => \inst12|SALIDA[3]~2_combout\);

-- Location: IOIBUF_X46_Y54_N29
\ENTRADA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRADA(1),
	o => \ENTRADA[1]~input_o\);

-- Location: FF_X50_Y53_N9
\inst11|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \ENTRADA[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(1));

-- Location: IOIBUF_X56_Y54_N8
\ENTRADA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRADA(0),
	o => \ENTRADA[0]~input_o\);

-- Location: LCCOMB_X52_Y53_N10
\inst11|valor_interno[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|valor_interno[0]~feeder_combout\ = \ENTRADA[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ENTRADA[0]~input_o\,
	combout => \inst11|valor_interno[0]~feeder_combout\);

-- Location: FF_X52_Y53_N11
\inst11|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst11|valor_interno[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(0));

-- Location: LCCOMB_X52_Y53_N18
\inst18|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux8~0_combout\ = (\inst5|salida[2]~1_combout\ & (!\inst5|salida[1]~2_combout\ & (\inst5|salida[3]~0_combout\ $ (\inst5|salida[0]~3_combout\)))) # (!\inst5|salida[2]~1_combout\ & (\inst5|salida[1]~2_combout\ & ((\inst5|salida[3]~0_combout\) # 
-- (\inst5|salida[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[3]~0_combout\,
	datab => \inst5|salida[2]~1_combout\,
	datac => \inst5|salida[0]~3_combout\,
	datad => \inst5|salida[1]~2_combout\,
	combout => \inst18|Mux8~0_combout\);

-- Location: FF_X52_Y53_N19
\inst|liga[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst18|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|liga\(0));

-- Location: FF_X52_Y53_N29
\inst12|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \ENTRADA[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|valor_interno\(0));

-- Location: LCCOMB_X52_Y53_N28
\inst12|SALIDA[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|SALIDA[0]~5_combout\ = (\inst|mi\(0) & ((\inst|liga\(0)) # ((\inst|mi\(1))))) # (!\inst|mi\(0) & (((\inst12|valor_interno\(0)) # (!\inst|mi\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mi\(0),
	datab => \inst|liga\(0),
	datac => \inst12|valor_interno\(0),
	datad => \inst|mi\(1),
	combout => \inst12|SALIDA[0]~5_combout\);

-- Location: LCCOMB_X51_Y53_N10
\inst12|SALIDA[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|SALIDA[0]~6_combout\ = (\inst12|SALIDA[0]~5_combout\ & (((\inst11|valor_interno\(0)) # (!\inst|mi\(1))) # (!\inst|mi\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mi\(0),
	datab => \inst|mi\(1),
	datac => \inst11|valor_interno\(0),
	datad => \inst12|SALIDA[0]~5_combout\,
	combout => \inst12|SALIDA[0]~6_combout\);

-- Location: LCCOMB_X51_Y53_N28
\inst3|valor_interno[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|valor_interno[0]~0_combout\ = !\inst5|salida[0]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|salida[0]~3_combout\,
	combout => \inst3|valor_interno[0]~0_combout\);

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

-- Location: FF_X51_Y53_N29
\inst3|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|valor_interno[0]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor_interno\(0));

-- Location: LCCOMB_X50_Y53_N22
\inst18|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux2~0_combout\ = (\inst5|salida[3]~0_combout\ & (\inst5|salida[0]~3_combout\ $ (((\inst5|salida[2]~1_combout\) # (\inst5|salida[1]~2_combout\))))) # (!\inst5|salida[3]~0_combout\ & ((\inst5|salida[0]~3_combout\ & (\inst5|salida[2]~1_combout\)) # 
-- (!\inst5|salida[0]~3_combout\ & ((!\inst5|salida[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[2]~1_combout\,
	datab => \inst5|salida[1]~2_combout\,
	datac => \inst5|salida[3]~0_combout\,
	datad => \inst5|salida[0]~3_combout\,
	combout => \inst18|Mux2~0_combout\);

-- Location: FF_X50_Y53_N23
\inst|prueba[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst18|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prueba\(1));

-- Location: IOIBUF_X49_Y54_N29
\int~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_int,
	o => \int~input_o\);

-- Location: LCCOMB_X50_Y53_N4
\inst18|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux4~0_combout\ = (\inst5|salida[2]~1_combout\ & (!\inst5|salida[1]~2_combout\ & (!\inst5|salida[3]~0_combout\ & !\inst5|salida[0]~3_combout\))) # (!\inst5|salida[2]~1_combout\ & (((\inst5|salida[3]~0_combout\ & \inst5|salida[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[2]~1_combout\,
	datab => \inst5|salida[1]~2_combout\,
	datac => \inst5|salida[3]~0_combout\,
	datad => \inst5|salida[0]~3_combout\,
	combout => \inst18|Mux4~0_combout\);

-- Location: FF_X50_Y53_N5
\inst|vf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst18|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vf~q\);

-- Location: IOIBUF_X46_Y54_N22
\x~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: IOIBUF_X49_Y54_N22
\y~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y,
	o => \y~input_o\);

-- Location: LCCOMB_X50_Y53_N24
\inst18|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux3~0_combout\ = (\inst5|salida[2]~1_combout\ & ((\inst5|salida[3]~0_combout\ $ (\inst5|salida[0]~3_combout\)))) # (!\inst5|salida[2]~1_combout\ & ((\inst5|salida[1]~2_combout\ & (\inst5|salida[3]~0_combout\)) # (!\inst5|salida[1]~2_combout\ & 
-- (!\inst5|salida[3]~0_combout\ & !\inst5|salida[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[2]~1_combout\,
	datab => \inst5|salida[1]~2_combout\,
	datac => \inst5|salida[3]~0_combout\,
	datad => \inst5|salida[0]~3_combout\,
	combout => \inst18|Mux3~0_combout\);

-- Location: FF_X50_Y53_N25
\inst|prueba[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst18|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prueba\(0));

-- Location: LCCOMB_X50_Y53_N10
\inst6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6~0_combout\ = (\inst|prueba\(1) & (((\inst|prueba\(0))))) # (!\inst|prueba\(1) & ((\inst|prueba\(0) & ((\y~input_o\))) # (!\inst|prueba\(0) & (\x~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datab => \y~input_o\,
	datac => \inst|prueba\(1),
	datad => \inst|prueba\(0),
	combout => \inst6~0_combout\);

-- Location: LCCOMB_X50_Y53_N20
\inst6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6~1_combout\ = \inst|vf~q\ $ (((\inst|prueba\(1) & (\int~input_o\ & !\inst6~0_combout\)) # (!\inst|prueba\(1) & ((\inst6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prueba\(1),
	datab => \int~input_o\,
	datac => \inst|vf~q\,
	datad => \inst6~0_combout\,
	combout => \inst6~1_combout\);

-- Location: LCCOMB_X51_Y53_N24
\inst19|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux0~0_combout\ = \inst|mi\(1) $ (((\inst|mi\(0) & !\inst6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|mi\(1),
	datac => \inst|mi\(0),
	datad => \inst6~1_combout\,
	combout => \inst19|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y53_N26
\inst5|salida[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|salida[0]~3_combout\ = (\inst19|Mux0~0_combout\ & ((\inst12|SALIDA[0]~6_combout\) # ((!\inst12|SALIDA[3]~2_combout\)))) # (!\inst19|Mux0~0_combout\ & (((\inst3|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SALIDA[0]~6_combout\,
	datab => \inst3|valor_interno\(0),
	datac => \inst12|SALIDA[3]~2_combout\,
	datad => \inst19|Mux0~0_combout\,
	combout => \inst5|salida[0]~3_combout\);

-- Location: LCCOMB_X50_Y53_N0
\inst18|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux7~0_combout\ = (\inst5|salida[1]~2_combout\ & (!\inst5|salida[2]~1_combout\ & \inst5|salida[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|salida[1]~2_combout\,
	datac => \inst5|salida[2]~1_combout\,
	datad => \inst5|salida[0]~3_combout\,
	combout => \inst18|Mux7~0_combout\);

-- Location: FF_X50_Y53_N1
\inst|liga[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst18|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|liga\(1));

-- Location: FF_X50_Y53_N7
\inst12|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \ENTRADA[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|valor_interno\(1));

-- Location: LCCOMB_X50_Y53_N6
\inst12|SALIDA[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|SALIDA[1]~3_combout\ = (\inst|mi\(0) & ((\inst|liga\(1)) # ((\inst|mi\(1))))) # (!\inst|mi\(0) & (((\inst12|valor_interno\(1)) # (!\inst|mi\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mi\(0),
	datab => \inst|liga\(1),
	datac => \inst12|valor_interno\(1),
	datad => \inst|mi\(1),
	combout => \inst12|SALIDA[1]~3_combout\);

-- Location: LCCOMB_X50_Y53_N8
\inst12|SALIDA[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|SALIDA[1]~4_combout\ = (\inst12|SALIDA[1]~3_combout\ & (((\inst11|valor_interno\(1)) # (!\inst|mi\(0))) # (!\inst|mi\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mi\(1),
	datab => \inst|mi\(0),
	datac => \inst11|valor_interno\(1),
	datad => \inst12|SALIDA[1]~3_combout\,
	combout => \inst12|SALIDA[1]~4_combout\);

-- Location: LCCOMB_X50_Y53_N16
\inst5|salida[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|salida[1]~2_combout\ = (\inst19|Mux0~0_combout\ & (((\inst12|SALIDA[1]~4_combout\) # (!\inst12|SALIDA[3]~2_combout\)))) # (!\inst19|Mux0~0_combout\ & (\inst3|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|valor_interno\(1),
	datab => \inst12|SALIDA[3]~2_combout\,
	datac => \inst12|SALIDA[1]~4_combout\,
	datad => \inst19|Mux0~0_combout\,
	combout => \inst5|salida[1]~2_combout\);

-- Location: LCCOMB_X50_Y53_N30
\inst4|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~4_combout\ = \inst5|salida[1]~2_combout\ $ (\inst5|salida[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|salida[1]~2_combout\,
	datad => \inst5|salida[0]~3_combout\,
	combout => \inst4|Add0~4_combout\);

-- Location: FF_X50_Y53_N31
\inst3|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst4|Add0~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor_interno\(1));

-- Location: LCCOMB_X51_Y53_N18
\inst4|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~3_combout\ = \inst5|salida[2]~1_combout\ $ (((\inst5|salida[0]~3_combout\ & \inst5|salida[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[0]~3_combout\,
	datac => \inst5|salida[1]~2_combout\,
	datad => \inst5|salida[2]~1_combout\,
	combout => \inst4|Add0~3_combout\);

-- Location: FF_X51_Y53_N19
\inst3|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst4|Add0~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor_interno\(2));

-- Location: LCCOMB_X50_Y53_N26
\inst4|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~0_combout\ = \inst3|valor_interno\(3) $ (((\inst3|valor_interno\(1) & (\inst3|valor_interno\(0) & \inst3|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|valor_interno\(1),
	datab => \inst3|valor_interno\(0),
	datac => \inst3|valor_interno\(3),
	datad => \inst3|valor_interno\(2),
	combout => \inst4|Add0~0_combout\);

-- Location: LCCOMB_X50_Y53_N28
\inst4|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~1_combout\ = \inst12|SALIDA[3]~1_combout\ $ (((\inst7[2]~0_combout\ & (\inst12|SALIDA[1]~4_combout\ & \inst12|SALIDA[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7[2]~0_combout\,
	datab => \inst12|SALIDA[1]~4_combout\,
	datac => \inst12|SALIDA[0]~6_combout\,
	datad => \inst12|SALIDA[3]~1_combout\,
	combout => \inst4|Add0~1_combout\);

-- Location: LCCOMB_X50_Y53_N14
\inst4|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~2_combout\ = (\inst19|Mux0~0_combout\ & (((\inst12|SALIDA[3]~2_combout\ & \inst4|Add0~1_combout\)))) # (!\inst19|Mux0~0_combout\ & (\inst4|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~0_combout\,
	datab => \inst12|SALIDA[3]~2_combout\,
	datac => \inst19|Mux0~0_combout\,
	datad => \inst4|Add0~1_combout\,
	combout => \inst4|Add0~2_combout\);

-- Location: FF_X50_Y53_N15
\inst3|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst4|Add0~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor_interno\(3));

-- Location: LCCOMB_X52_Y53_N20
\inst5|salida[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|salida[3]~0_combout\ = (\inst19|Mux0~0_combout\ & ((\inst12|SALIDA[3]~1_combout\) # ((!\inst12|SALIDA[3]~2_combout\)))) # (!\inst19|Mux0~0_combout\ & (((\inst3|valor_interno\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SALIDA[3]~1_combout\,
	datab => \inst3|valor_interno\(3),
	datac => \inst12|SALIDA[3]~2_combout\,
	datad => \inst19|Mux0~0_combout\,
	combout => \inst5|salida[3]~0_combout\);

-- Location: LCCOMB_X52_Y53_N16
\inst18|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux0~0_combout\ = (\inst5|salida[3]~0_combout\ & (!\inst5|salida[2]~1_combout\ & (\inst5|salida[0]~3_combout\ & !\inst5|salida[1]~2_combout\))) # (!\inst5|salida[3]~0_combout\ & (!\inst5|salida[0]~3_combout\ & (\inst5|salida[2]~1_combout\ $ 
-- (\inst5|salida[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[2]~1_combout\,
	datab => \inst5|salida[3]~0_combout\,
	datac => \inst5|salida[0]~3_combout\,
	datad => \inst5|salida[1]~2_combout\,
	combout => \inst18|Mux0~0_combout\);

-- Location: FF_X52_Y53_N17
\inst|mi[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst18|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mi\(1));

-- Location: IOIBUF_X54_Y54_N8
\ENTRADA[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRADA(2),
	o => \ENTRADA[2]~input_o\);

-- Location: FF_X51_Y53_N31
\inst11|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \ENTRADA[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(2));

-- Location: LCCOMB_X51_Y53_N16
\inst12|valor_interno[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|valor_interno[2]~feeder_combout\ = \ENTRADA[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ENTRADA[2]~input_o\,
	combout => \inst12|valor_interno[2]~feeder_combout\);

-- Location: FF_X51_Y53_N17
\inst12|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst12|valor_interno[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|valor_interno\(2));

-- Location: LCCOMB_X51_Y53_N30
\inst7[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7[2]~0_combout\ = (\inst|mi\(0) & (\inst|mi\(1) & (\inst11|valor_interno\(2)))) # (!\inst|mi\(0) & (((\inst12|valor_interno\(2))) # (!\inst|mi\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mi\(0),
	datab => \inst|mi\(1),
	datac => \inst11|valor_interno\(2),
	datad => \inst12|valor_interno\(2),
	combout => \inst7[2]~0_combout\);

-- Location: LCCOMB_X51_Y53_N20
\inst5|salida[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|salida[2]~1_combout\ = (\inst19|Mux0~0_combout\ & ((\inst7[2]~0_combout\) # ((!\inst12|SALIDA[3]~2_combout\)))) # (!\inst19|Mux0~0_combout\ & (((\inst3|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7[2]~0_combout\,
	datab => \inst3|valor_interno\(2),
	datac => \inst12|SALIDA[3]~2_combout\,
	datad => \inst19|Mux0~0_combout\,
	combout => \inst5|salida[2]~1_combout\);

-- Location: LCCOMB_X52_Y53_N22
\inst18|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux1~0_combout\ = (\inst5|salida[3]~0_combout\ & ((\inst5|salida[2]~1_combout\ & (!\inst5|salida[0]~3_combout\)) # (!\inst5|salida[2]~1_combout\ & ((\inst5|salida[0]~3_combout\) # (\inst5|salida[1]~2_combout\))))) # (!\inst5|salida[3]~0_combout\ & 
-- ((\inst5|salida[1]~2_combout\ & ((\inst5|salida[0]~3_combout\))) # (!\inst5|salida[1]~2_combout\ & (\inst5|salida[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[2]~1_combout\,
	datab => \inst5|salida[3]~0_combout\,
	datac => \inst5|salida[0]~3_combout\,
	datad => \inst5|salida[1]~2_combout\,
	combout => \inst18|Mux1~0_combout\);

-- Location: FF_X52_Y53_N23
\inst|mi[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst18|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mi\(0));

-- Location: IOIBUF_X56_Y54_N1
\ENTRADA[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRADA(3),
	o => \ENTRADA[3]~input_o\);

-- Location: FF_X52_Y53_N13
\inst12|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \ENTRADA[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|valor_interno\(3));

-- Location: LCCOMB_X52_Y53_N14
\inst18|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux5~0_combout\ = (\inst5|salida[3]~0_combout\ & ((\inst5|salida[2]~1_combout\ & (!\inst5|salida[0]~3_combout\ & !\inst5|salida[1]~2_combout\)) # (!\inst5|salida[2]~1_combout\ & (\inst5|salida[0]~3_combout\ & \inst5|salida[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[2]~1_combout\,
	datab => \inst5|salida[3]~0_combout\,
	datac => \inst5|salida[0]~3_combout\,
	datad => \inst5|salida[1]~2_combout\,
	combout => \inst18|Mux5~0_combout\);

-- Location: FF_X52_Y53_N15
\inst|liga[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst18|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|liga\(3));

-- Location: FF_X52_Y53_N25
\inst11|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \ENTRADA[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(3));

-- Location: LCCOMB_X52_Y53_N24
\inst12|SALIDA[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|SALIDA[3]~0_combout\ = ((\inst|mi\(1) & ((\inst11|valor_interno\(3)))) # (!\inst|mi\(1) & (\inst|liga\(3)))) # (!\inst|mi\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mi\(0),
	datab => \inst|liga\(3),
	datac => \inst11|valor_interno\(3),
	datad => \inst|mi\(1),
	combout => \inst12|SALIDA[3]~0_combout\);

-- Location: LCCOMB_X52_Y53_N12
\inst12|SALIDA[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|SALIDA[3]~1_combout\ = (\inst12|SALIDA[3]~0_combout\ & ((\inst|mi\(0)) # ((\inst12|valor_interno\(3)) # (!\inst|mi\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mi\(0),
	datab => \inst|mi\(1),
	datac => \inst12|valor_interno\(3),
	datad => \inst12|SALIDA[3]~0_combout\,
	combout => \inst12|SALIDA[3]~1_combout\);

-- Location: LCCOMB_X50_Y53_N18
\inst18|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux9~0_combout\ = (\inst5|salida[3]~0_combout\ & (((\inst5|salida[2]~1_combout\) # (\inst5|salida[0]~3_combout\)))) # (!\inst5|salida[3]~0_combout\ & ((\inst5|salida[1]~2_combout\) # ((!\inst5|salida[2]~1_combout\ & \inst5|salida[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[1]~2_combout\,
	datab => \inst5|salida[3]~0_combout\,
	datac => \inst5|salida[2]~1_combout\,
	datad => \inst5|salida[0]~3_combout\,
	combout => \inst18|Mux9~0_combout\);

-- Location: LCCOMB_X50_Y53_N12
\inst18|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux10~0_combout\ = (\inst5|salida[1]~2_combout\ & (((\inst5|salida[2]~1_combout\) # (\inst5|salida[0]~3_combout\)) # (!\inst5|salida[3]~0_combout\))) # (!\inst5|salida[1]~2_combout\ & ((\inst5|salida[2]~1_combout\ & 
-- ((!\inst5|salida[0]~3_combout\))) # (!\inst5|salida[2]~1_combout\ & (\inst5|salida[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[1]~2_combout\,
	datab => \inst5|salida[3]~0_combout\,
	datac => \inst5|salida[2]~1_combout\,
	datad => \inst5|salida[0]~3_combout\,
	combout => \inst18|Mux10~0_combout\);

-- Location: LCCOMB_X52_Y53_N4
\inst18|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux11~0_combout\ = (\inst5|salida[2]~1_combout\ & (!\inst5|salida[3]~0_combout\ & (!\inst5|salida[0]~3_combout\ & \inst5|salida[1]~2_combout\))) # (!\inst5|salida[2]~1_combout\ & (\inst5|salida[0]~3_combout\ & ((\inst5|salida[1]~2_combout\) # 
-- (!\inst5|salida[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[2]~1_combout\,
	datab => \inst5|salida[3]~0_combout\,
	datac => \inst5|salida[0]~3_combout\,
	datad => \inst5|salida[1]~2_combout\,
	combout => \inst18|Mux11~0_combout\);

-- Location: LCCOMB_X52_Y53_N30
\inst18|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux12~0_combout\ = (\inst5|salida[2]~1_combout\ & (\inst5|salida[1]~2_combout\ $ (((\inst5|salida[3]~0_combout\ & \inst5|salida[0]~3_combout\))))) # (!\inst5|salida[2]~1_combout\ & (!\inst5|salida[3]~0_combout\ & (!\inst5|salida[0]~3_combout\ & 
-- \inst5|salida[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[2]~1_combout\,
	datab => \inst5|salida[3]~0_combout\,
	datac => \inst5|salida[0]~3_combout\,
	datad => \inst5|salida[1]~2_combout\,
	combout => \inst18|Mux12~0_combout\);

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

ww_selector <= \selector~output_o\;

ww_carga <= \carga~output_o\;

ww_currentState(3) <= \currentState[3]~output_o\;

ww_currentState(2) <= \currentState[2]~output_o\;

ww_currentState(1) <= \currentState[1]~output_o\;

ww_currentState(0) <= \currentState[0]~output_o\;

ww_mi(1) <= \mi[1]~output_o\;

ww_mi(0) <= \mi[0]~output_o\;

ww_salidas(3) <= \salidas[3]~output_o\;

ww_salidas(2) <= \salidas[2]~output_o\;

ww_salidas(1) <= \salidas[1]~output_o\;

ww_salidas(0) <= \salidas[0]~output_o\;

ww_state(3) <= \state[3]~output_o\;

ww_state(2) <= \state[2]~output_o\;

ww_state(1) <= \state[1]~output_o\;

ww_state(0) <= \state[0]~output_o\;
END structure;


