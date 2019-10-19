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

-- DATE "09/08/2019 23:55:51"

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

ENTITY 	LOAC_P4 IS
    PORT (
	Output : OUT std_logic_vector(3 DOWNTO 0);
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	BOTON : IN std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	salida : OUT std_logic_vector(6 DOWNTO 0);
	Switch : IN std_logic
	);
END LOAC_P4;

-- Design Ports Information
-- Output[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[0]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LOAC_P4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Output : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_BOTON : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_salida : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Switch : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst9|RELOJ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Output[3]~output_o\ : std_logic;
SIGNAL \Output[2]~output_o\ : std_logic;
SIGNAL \Output[1]~output_o\ : std_logic;
SIGNAL \Output[0]~output_o\ : std_logic;
SIGNAL \salida[6]~output_o\ : std_logic;
SIGNAL \salida[5]~output_o\ : std_logic;
SIGNAL \salida[4]~output_o\ : std_logic;
SIGNAL \salida[3]~output_o\ : std_logic;
SIGNAL \salida[2]~output_o\ : std_logic;
SIGNAL \salida[1]~output_o\ : std_logic;
SIGNAL \salida[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \BOTON~input_o\ : std_logic;
SIGNAL \inst9|ESIGUIENTE~feeder_combout\ : std_logic;
SIGNAL \inst9|ESIGUIENTE~q\ : std_logic;
SIGNAL \inst9|RELOJ~0_combout\ : std_logic;
SIGNAL \inst9|RELOJ~q\ : std_logic;
SIGNAL \inst9|RELOJ~clkctrl_outclk\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst6|Output~1_combout\ : std_logic;
SIGNAL \inst5|Output[0]~1_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst|Mux12~1_combout\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst6|Output~0_combout\ : std_logic;
SIGNAL \inst5|Output[1]~0_combout\ : std_logic;
SIGNAL \inst5|Output[1]~2_combout\ : std_logic;
SIGNAL \inst5|Output[2]~3_combout\ : std_logic;
SIGNAL \inst5|Output[2]~4_combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst|Mux14~0_combout\ : std_logic;
SIGNAL \inst6|Output~2_combout\ : std_logic;
SIGNAL \inst7|Output[0]~0_combout\ : std_logic;
SIGNAL \Switch~input_o\ : std_logic;
SIGNAL \inst10|salida[6]~0_combout\ : std_logic;
SIGNAL \inst10|salida[5]~1_combout\ : std_logic;
SIGNAL \inst10|salida[4]~2_combout\ : std_logic;
SIGNAL \inst3|internal_value\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|ALT_INV_Mux13~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Output <= ww_Output;
ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_BOTON <= BOTON;
ww_CLK <= CLK;
ww_RESET <= RESET;
salida <= ww_salida;
ww_Switch <= Switch;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst9|RELOJ~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst9|RELOJ~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst|ALT_INV_Mux13~0_combout\ <= NOT \inst|Mux13~0_combout\;
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

-- Location: IOOBUF_X46_Y54_N16
\Output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \Output[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\Output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \Output[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\Output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \Output[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\Output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Output[0]~0_combout\,
	devoe => ww_devoe,
	o => \Output[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\salida[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|salida[6]~0_combout\,
	devoe => ww_devoe,
	o => \salida[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\salida[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|salida[5]~1_combout\,
	devoe => ww_devoe,
	o => \salida[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\salida[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|salida[4]~2_combout\,
	devoe => ww_devoe,
	o => \salida[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\salida[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \salida[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\salida[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \salida[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\salida[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \salida[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\salida[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Output[0]~0_combout\,
	devoe => ww_devoe,
	o => \salida[0]~output_o\);

-- Location: IOIBUF_X78_Y29_N22
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

-- Location: CLKCTRL_G9
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

-- Location: IOIBUF_X49_Y54_N29
\BOTON~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON,
	o => \BOTON~input_o\);

-- Location: LCCOMB_X45_Y53_N18
\inst9|ESIGUIENTE~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|ESIGUIENTE~feeder_combout\ = \BOTON~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BOTON~input_o\,
	combout => \inst9|ESIGUIENTE~feeder_combout\);

-- Location: FF_X45_Y53_N19
\inst9|ESIGUIENTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|ESIGUIENTE~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|ESIGUIENTE~q\);

-- Location: LCCOMB_X45_Y53_N28
\inst9|RELOJ~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|RELOJ~0_combout\ = (!\BOTON~input_o\ & \inst9|ESIGUIENTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BOTON~input_o\,
	datad => \inst9|ESIGUIENTE~q\,
	combout => \inst9|RELOJ~0_combout\);

-- Location: FF_X45_Y53_N29
\inst9|RELOJ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|RELOJ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|RELOJ~q\);

-- Location: CLKCTRL_G10
\inst9|RELOJ~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst9|RELOJ~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst9|RELOJ~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: IOIBUF_X51_Y54_N22
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

-- Location: LCCOMB_X51_Y53_N24
\inst6|Output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Output~1_combout\ = (\inst3|internal_value\(1) & (\C~input_o\)) # (!\inst3|internal_value\(1) & ((\B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datac => \B~input_o\,
	datad => \inst3|internal_value\(1),
	combout => \inst6|Output~1_combout\);

-- Location: LCCOMB_X51_Y53_N4
\inst5|Output[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Output[0]~1_combout\ = (!\inst3|internal_value\(0) & (!\inst3|internal_value\(2) & ((!\inst3|internal_value\(1)) # (!\C~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \inst3|internal_value\(0),
	datac => \inst3|internal_value\(2),
	datad => \inst3|internal_value\(1),
	combout => \inst5|Output[0]~1_combout\);

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

-- Location: FF_X51_Y53_N9
\inst3|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|RELOJ~clkctrl_outclk\,
	asdata => \inst5|Output[0]~1_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|internal_value\(0));

-- Location: LCCOMB_X51_Y53_N16
\inst|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux12~1_combout\ = (!\inst3|internal_value\(0) & !\inst3|internal_value\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|internal_value\(0),
	datad => \inst3|internal_value\(2),
	combout => \inst|Mux12~1_combout\);

-- Location: IOIBUF_X51_Y54_N1
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

-- Location: LCCOMB_X51_Y53_N30
\inst6|Output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Output~0_combout\ = (\A~input_o\ & ((\inst3|internal_value\(2) & ((\inst3|internal_value\(0)) # (\inst3|internal_value\(1)))) # (!\inst3|internal_value\(2) & (\inst3|internal_value\(0) & \inst3|internal_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \inst3|internal_value\(2),
	datac => \inst3|internal_value\(0),
	datad => \inst3|internal_value\(1),
	combout => \inst6|Output~0_combout\);

-- Location: LCCOMB_X51_Y53_N12
\inst5|Output[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Output[1]~0_combout\ = (\inst3|internal_value\(2)) # ((\inst3|internal_value\(1) & !\inst3|internal_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|internal_value\(1),
	datac => \inst3|internal_value\(0),
	datad => \inst3|internal_value\(2),
	combout => \inst5|Output[1]~0_combout\);

-- Location: LCCOMB_X51_Y53_N28
\inst5|Output[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Output[1]~2_combout\ = (!\inst6|Output~0_combout\ & (!\inst5|Output[1]~0_combout\ & ((!\inst|Mux12~1_combout\) # (!\inst6|Output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Output~1_combout\,
	datab => \inst|Mux12~1_combout\,
	datac => \inst6|Output~0_combout\,
	datad => \inst5|Output[1]~0_combout\,
	combout => \inst5|Output[1]~2_combout\);

-- Location: FF_X51_Y53_N29
\inst3|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|RELOJ~clkctrl_outclk\,
	d => \inst5|Output[1]~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|internal_value\(1));

-- Location: LCCOMB_X51_Y53_N6
\inst5|Output[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Output[2]~3_combout\ = (\inst3|internal_value\(0) & ((\A~input_o\))) # (!\inst3|internal_value\(0) & (\C~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datac => \A~input_o\,
	datad => \inst3|internal_value\(0),
	combout => \inst5|Output[2]~3_combout\);

-- Location: LCCOMB_X51_Y53_N2
\inst5|Output[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Output[2]~4_combout\ = (\inst3|internal_value\(1) & (!\inst3|internal_value\(2) & \inst5|Output[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|internal_value\(1),
	datac => \inst3|internal_value\(2),
	datad => \inst5|Output[2]~3_combout\,
	combout => \inst5|Output[2]~4_combout\);

-- Location: FF_X51_Y53_N3
\inst3|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|RELOJ~clkctrl_outclk\,
	d => \inst5|Output[2]~4_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|internal_value\(2));

-- Location: LCCOMB_X51_Y53_N8
\inst|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = (!\inst3|internal_value\(2) & (!\inst3|internal_value\(0) & !\inst3|internal_value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|internal_value\(2),
	datac => \inst3|internal_value\(0),
	datad => \inst3|internal_value\(1),
	combout => \inst|Mux12~0_combout\);

-- Location: LCCOMB_X51_Y53_N26
\inst|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = (\inst3|internal_value\(1)) # (\inst3|internal_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|internal_value\(1),
	datac => \inst3|internal_value\(0),
	combout => \inst|Mux13~0_combout\);

-- Location: LCCOMB_X51_Y53_N0
\inst|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux14~0_combout\ = (!\inst3|internal_value\(0) & (\inst3|internal_value\(1) $ (\inst3|internal_value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|internal_value\(1),
	datab => \inst3|internal_value\(0),
	datac => \inst3|internal_value\(2),
	combout => \inst|Mux14~0_combout\);

-- Location: LCCOMB_X51_Y53_N14
\inst6|Output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Output~2_combout\ = (\inst6|Output~0_combout\) # ((!\inst3|internal_value\(2) & (\inst6|Output~1_combout\ & !\inst3|internal_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|internal_value\(2),
	datab => \inst6|Output~1_combout\,
	datac => \inst6|Output~0_combout\,
	datad => \inst3|internal_value\(0),
	combout => \inst6|Output~2_combout\);

-- Location: LCCOMB_X51_Y53_N20
\inst7|Output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Output[0]~0_combout\ = (!\inst3|internal_value\(2) & (\inst3|internal_value\(1) $ (((\inst6|Output~2_combout\ & !\inst3|internal_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|internal_value\(1),
	datab => \inst6|Output~2_combout\,
	datac => \inst3|internal_value\(2),
	datad => \inst3|internal_value\(0),
	combout => \inst7|Output[0]~0_combout\);

-- Location: IOIBUF_X69_Y54_N1
\Switch~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch,
	o => \Switch~input_o\);

-- Location: LCCOMB_X51_Y53_N22
\inst10|salida[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|salida[6]~0_combout\ = (\inst3|internal_value\(2) & (((\Switch~input_o\)))) # (!\inst3|internal_value\(2) & (\inst3|internal_value\(1) & (\inst6|Output~2_combout\ & !\Switch~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|internal_value\(1),
	datab => \inst6|Output~2_combout\,
	datac => \inst3|internal_value\(2),
	datad => \Switch~input_o\,
	combout => \inst10|salida[6]~0_combout\);

-- Location: LCCOMB_X51_Y53_N18
\inst10|salida[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|salida[5]~1_combout\ = (\Switch~input_o\ & (((\inst3|internal_value\(1))))) # (!\Switch~input_o\ & (!\inst5|Output[1]~0_combout\ & (!\inst6|Output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Output[1]~0_combout\,
	datab => \inst6|Output~2_combout\,
	datac => \inst3|internal_value\(1),
	datad => \Switch~input_o\,
	combout => \inst10|salida[5]~1_combout\);

-- Location: LCCOMB_X51_Y53_N10
\inst10|salida[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|salida[4]~2_combout\ = (\Switch~input_o\ & ((\inst3|internal_value\(0)))) # (!\Switch~input_o\ & (\inst5|Output[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Output[0]~1_combout\,
	datac => \inst3|internal_value\(0),
	datad => \Switch~input_o\,
	combout => \inst10|salida[4]~2_combout\);

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

ww_Output(3) <= \Output[3]~output_o\;

ww_Output(2) <= \Output[2]~output_o\;

ww_Output(1) <= \Output[1]~output_o\;

ww_Output(0) <= \Output[0]~output_o\;

ww_salida(6) <= \salida[6]~output_o\;

ww_salida(5) <= \salida[5]~output_o\;

ww_salida(4) <= \salida[4]~output_o\;

ww_salida(3) <= \salida[3]~output_o\;

ww_salida(2) <= \salida[2]~output_o\;

ww_salida(1) <= \salida[1]~output_o\;

ww_salida(0) <= \salida[0]~output_o\;
END structure;


