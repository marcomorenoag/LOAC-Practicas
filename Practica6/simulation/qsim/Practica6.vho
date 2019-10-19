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

-- DATE "10/05/2019 16:02:04"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

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
SIGNAL \ENTRADA[3]~input_o\ : std_logic;
SIGNAL \int~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \ENTRADA[1]~input_o\ : std_logic;
SIGNAL \ENTRADA[2]~input_o\ : std_logic;
SIGNAL \inst7[2]~0_combout\ : std_logic;
SIGNAL \inst4|Add0~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|salida[3]~0_combout\ : std_logic;
SIGNAL \inst18|Mux4~0_combout\ : std_logic;
SIGNAL \inst|vf~q\ : std_logic;
SIGNAL \inst18|Mux3~0_combout\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \inst2|salida~1_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst7[2]~1_combout\ : std_logic;
SIGNAL \inst4|Add0~1_combout\ : std_logic;
SIGNAL \inst5|salida[2]~1_combout\ : std_logic;
SIGNAL \inst18|Mux0~0_combout\ : std_logic;
SIGNAL \inst12|SALIDA[1]~2_combout\ : std_logic;
SIGNAL \inst18|Mux7~0_combout\ : std_logic;
SIGNAL \inst12|SALIDA[1]~3_combout\ : std_logic;
SIGNAL \inst4|Add0~2_combout\ : std_logic;
SIGNAL \inst5|salida[1]~2_combout\ : std_logic;
SIGNAL \inst18|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|salida~0_combout\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \ENTRADA[0]~input_o\ : std_logic;
SIGNAL \inst12|SALIDA[0]~4_combout\ : std_logic;
SIGNAL \inst18|Mux8~0_combout\ : std_logic;
SIGNAL \inst12|SALIDA[0]~5_combout\ : std_logic;
SIGNAL \inst3|valor_interno[0]~0_combout\ : std_logic;
SIGNAL \inst5|salida[0]~3_combout\ : std_logic;
SIGNAL \inst18|Mux1~0_combout\ : std_logic;
SIGNAL \inst18|Mux5~0_combout\ : std_logic;
SIGNAL \inst12|SALIDA[3]~0_combout\ : std_logic;
SIGNAL \inst12|SALIDA[3]~1_combout\ : std_logic;
SIGNAL \inst12|SALIDA[3]~9_combout\ : std_logic;
SIGNAL \inst12|SALIDA[1]~10_combout\ : std_logic;
SIGNAL \inst12|SALIDA[0]~11_combout\ : std_logic;
SIGNAL \inst18|Mux9~0_combout\ : std_logic;
SIGNAL \inst18|Mux10~0_combout\ : std_logic;
SIGNAL \inst18|Mux11~0_combout\ : std_logic;
SIGNAL \inst18|Mux12~0_combout\ : std_logic;
SIGNAL \inst12|valor_interno\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|mi\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|valor_interno\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|prueba\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|liga\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|valor_interno\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst18|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst6~combout\ : std_logic;

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
\inst18|ALT_INV_Mux9~0_combout\ <= NOT \inst18|Mux9~0_combout\;
\inst18|ALT_INV_Mux10~0_combout\ <= NOT \inst18|Mux10~0_combout\;
\ALT_INV_inst6~combout\ <= NOT \inst6~combout\;

\state[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|SALIDA[3]~1_combout\,
	oe => \inst12|SALIDA[3]~9_combout\,
	devoe => ww_devoe,
	o => \state[3]~output_o\);

\state[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7[2]~1_combout\,
	oe => \inst12|SALIDA[3]~9_combout\,
	devoe => ww_devoe,
	o => \state[2]~output_o\);

\state[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|SALIDA[1]~10_combout\,
	oe => \inst12|SALIDA[3]~9_combout\,
	devoe => ww_devoe,
	o => \state[1]~output_o\);

\state[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|SALIDA[0]~11_combout\,
	oe => \inst12|SALIDA[3]~9_combout\,
	devoe => ww_devoe,
	o => \state[0]~output_o\);

\selector~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \selector~output_o\);

\carga~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst6~combout\,
	devoe => ww_devoe,
	o => \carga~output_o\);

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

\inst12|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \ENTRADA[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|valor_interno\(3));

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

\inst11|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \ENTRADA[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(1));

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

\inst12|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \ENTRADA[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|valor_interno\(2));

\inst7[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7[2]~0_combout\ = (\inst|mi\(1) & ((\inst12|valor_interno\(2)) # (\inst|mi\(0)))) # (!\inst|mi\(1) & ((!\inst|mi\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mi\(1),
	datab => \inst12|valor_interno\(2),
	datad => \inst|mi\(0),
	combout => \inst7[2]~0_combout\);

\inst11|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \ENTRADA[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(2));

\inst4|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~0_combout\ = \inst5|salida[3]~0_combout\ $ (((\inst5|salida[2]~1_combout\ & (\inst5|salida[1]~2_combout\ & \inst5|salida[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[3]~0_combout\,
	datab => \inst5|salida[2]~1_combout\,
	datac => \inst5|salida[1]~2_combout\,
	datad => \inst5|salida[0]~3_combout\,
	combout => \inst4|Add0~0_combout\);

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

\inst3|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst4|Add0~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor_interno\(3));

\inst1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst|mi\(0) & ((!\inst6~combout\))) # (!\inst|mi\(0) & (\inst|mi\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mi\(1),
	datac => \inst|mi\(0),
	datad => \inst6~combout\,
	combout => \inst1|Mux0~0_combout\);

\inst5|salida[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|salida[3]~0_combout\ = (\inst1|Mux0~0_combout\ & (\inst12|SALIDA[3]~1_combout\)) # (!\inst1|Mux0~0_combout\ & ((\inst3|valor_interno\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SALIDA[3]~1_combout\,
	datab => \inst3|valor_interno\(3),
	datad => \inst1|Mux0~0_combout\,
	combout => \inst5|salida[3]~0_combout\);

\inst18|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux4~0_combout\ = (\inst5|salida[0]~3_combout\ & (((!\inst5|salida[2]~1_combout\ & \inst5|salida[3]~0_combout\)))) # (!\inst5|salida[0]~3_combout\ & (!\inst5|salida[1]~2_combout\ & (\inst5|salida[2]~1_combout\ & !\inst5|salida[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[0]~3_combout\,
	datab => \inst5|salida[1]~2_combout\,
	datac => \inst5|salida[2]~1_combout\,
	datad => \inst5|salida[3]~0_combout\,
	combout => \inst18|Mux4~0_combout\);

\inst|vf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst18|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vf~q\);

\inst18|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux3~0_combout\ = (\inst5|salida[2]~1_combout\ & (\inst5|salida[0]~3_combout\ $ (((\inst5|salida[3]~0_combout\))))) # (!\inst5|salida[2]~1_combout\ & ((\inst5|salida[1]~2_combout\ & ((\inst5|salida[3]~0_combout\))) # (!\inst5|salida[1]~2_combout\ 
-- & (!\inst5|salida[0]~3_combout\ & !\inst5|salida[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[0]~3_combout\,
	datab => \inst5|salida[1]~2_combout\,
	datac => \inst5|salida[2]~1_combout\,
	datad => \inst5|salida[3]~0_combout\,
	combout => \inst18|Mux3~0_combout\);

\inst|prueba[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst18|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prueba\(0));

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

\inst2|salida~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|salida~1_combout\ = (\inst|prueba\(0) & (\y~input_o\ & !\inst|prueba\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prueba\(0),
	datab => \y~input_o\,
	datad => \inst|prueba\(1),
	combout => \inst2|salida~1_combout\);

\inst1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\inst|mi\(0) & (\inst|vf~q\ $ (((!\inst2|salida~0_combout\ & !\inst2|salida~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mi\(0),
	datab => \inst|vf~q\,
	datac => \inst2|salida~0_combout\,
	datad => \inst2|salida~1_combout\,
	combout => \inst1|Mux2~0_combout\);

\inst7[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7[2]~1_combout\ = (\inst7[2]~0_combout\ & ((\inst11|valor_interno\(2)) # ((!\inst1|Mux2~0_combout\) # (!\inst|mi\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7[2]~0_combout\,
	datab => \inst11|valor_interno\(2),
	datac => \inst|mi\(1),
	datad => \inst1|Mux2~0_combout\,
	combout => \inst7[2]~1_combout\);

\inst4|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~1_combout\ = \inst5|salida[2]~1_combout\ $ (((\inst5|salida[1]~2_combout\ & \inst5|salida[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|salida[2]~1_combout\,
	datac => \inst5|salida[1]~2_combout\,
	datad => \inst5|salida[0]~3_combout\,
	combout => \inst4|Add0~1_combout\);

\inst3|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst4|Add0~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor_interno\(2));

\inst5|salida[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|salida[2]~1_combout\ = (\inst1|Mux0~0_combout\ & (\inst7[2]~1_combout\)) # (!\inst1|Mux0~0_combout\ & ((\inst3|valor_interno\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7[2]~1_combout\,
	datab => \inst3|valor_interno\(2),
	datad => \inst1|Mux0~0_combout\,
	combout => \inst5|salida[2]~1_combout\);

\inst18|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux0~0_combout\ = (\inst5|salida[0]~3_combout\ & (!\inst5|salida[1]~2_combout\ & (!\inst5|salida[2]~1_combout\ & \inst5|salida[3]~0_combout\))) # (!\inst5|salida[0]~3_combout\ & (!\inst5|salida[3]~0_combout\ & (\inst5|salida[1]~2_combout\ $ 
-- (\inst5|salida[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[0]~3_combout\,
	datab => \inst5|salida[1]~2_combout\,
	datac => \inst5|salida[2]~1_combout\,
	datad => \inst5|salida[3]~0_combout\,
	combout => \inst18|Mux0~0_combout\);

\inst|mi[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst18|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mi\(1));

\inst12|SALIDA[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|SALIDA[1]~2_combout\ = (\inst6~combout\) # ((\inst11|valor_interno\(1)) # ((!\inst|mi\(1)) # (!\inst|mi\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6~combout\,
	datab => \inst11|valor_interno\(1),
	datac => \inst|mi\(0),
	datad => \inst|mi\(1),
	combout => \inst12|SALIDA[1]~2_combout\);

\inst12|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \ENTRADA[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|valor_interno\(1));

\inst18|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux7~0_combout\ = (\inst5|salida[1]~2_combout\ & (\inst5|salida[0]~3_combout\ & !\inst5|salida[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[1]~2_combout\,
	datab => \inst5|salida[0]~3_combout\,
	datad => \inst5|salida[2]~1_combout\,
	combout => \inst18|Mux7~0_combout\);

\inst|liga[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst18|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|liga\(1));

\inst12|SALIDA[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|SALIDA[1]~3_combout\ = (\inst|mi\(0) & (((\inst|liga\(1)) # (\inst|mi\(1))))) # (!\inst|mi\(0) & ((\inst12|valor_interno\(1)) # ((!\inst|mi\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|valor_interno\(1),
	datab => \inst|mi\(0),
	datac => \inst|liga\(1),
	datad => \inst|mi\(1),
	combout => \inst12|SALIDA[1]~3_combout\);

\inst4|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~2_combout\ = \inst5|salida[1]~2_combout\ $ (\inst5|salida[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|salida[1]~2_combout\,
	datad => \inst5|salida[0]~3_combout\,
	combout => \inst4|Add0~2_combout\);

\inst3|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst4|Add0~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor_interno\(1));

\inst5|salida[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|salida[1]~2_combout\ = (\inst1|Mux0~0_combout\ & (\inst12|SALIDA[1]~2_combout\ & (\inst12|SALIDA[1]~3_combout\))) # (!\inst1|Mux0~0_combout\ & (((\inst3|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SALIDA[1]~2_combout\,
	datab => \inst12|SALIDA[1]~3_combout\,
	datac => \inst3|valor_interno\(1),
	datad => \inst1|Mux0~0_combout\,
	combout => \inst5|salida[1]~2_combout\);

\inst18|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux2~0_combout\ = (\inst5|salida[3]~0_combout\ & (\inst5|salida[0]~3_combout\ $ (((\inst5|salida[1]~2_combout\) # (\inst5|salida[2]~1_combout\))))) # (!\inst5|salida[3]~0_combout\ & ((\inst5|salida[0]~3_combout\ & ((\inst5|salida[2]~1_combout\))) 
-- # (!\inst5|salida[0]~3_combout\ & (!\inst5|salida[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[0]~3_combout\,
	datab => \inst5|salida[1]~2_combout\,
	datac => \inst5|salida[2]~1_combout\,
	datad => \inst5|salida[3]~0_combout\,
	combout => \inst18|Mux2~0_combout\);

\inst|prueba[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst18|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prueba\(1));

\inst2|salida~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|salida~0_combout\ = (!\inst|prueba\(0) & ((\inst|prueba\(1) & (\int~input_o\)) # (!\inst|prueba\(1) & ((\x~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int~input_o\,
	datab => \x~input_o\,
	datac => \inst|prueba\(1),
	datad => \inst|prueba\(0),
	combout => \inst2|salida~0_combout\);

inst6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6~combout\ = \inst|vf~q\ $ (((\inst2|salida~0_combout\) # (\inst2|salida~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|salida~0_combout\,
	datac => \inst2|salida~1_combout\,
	datad => \inst|vf~q\,
	combout => \inst6~combout\);

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

\inst11|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \ENTRADA[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(0));

\inst12|SALIDA[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|SALIDA[0]~4_combout\ = (\inst6~combout\) # ((\inst11|valor_interno\(0)) # ((!\inst|mi\(1)) # (!\inst|mi\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6~combout\,
	datab => \inst11|valor_interno\(0),
	datac => \inst|mi\(0),
	datad => \inst|mi\(1),
	combout => \inst12|SALIDA[0]~4_combout\);

\inst12|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \ENTRADA[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|valor_interno\(0));

\inst18|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux8~0_combout\ = (\inst5|salida[1]~2_combout\ & (!\inst5|salida[2]~1_combout\ & ((\inst5|salida[0]~3_combout\) # (\inst5|salida[3]~0_combout\)))) # (!\inst5|salida[1]~2_combout\ & (\inst5|salida[2]~1_combout\ & (\inst5|salida[0]~3_combout\ $ 
-- (\inst5|salida[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[0]~3_combout\,
	datab => \inst5|salida[1]~2_combout\,
	datac => \inst5|salida[2]~1_combout\,
	datad => \inst5|salida[3]~0_combout\,
	combout => \inst18|Mux8~0_combout\);

\inst|liga[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst18|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|liga\(0));

\inst12|SALIDA[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|SALIDA[0]~5_combout\ = (\inst|mi\(0) & (((\inst|liga\(0)) # (\inst|mi\(1))))) # (!\inst|mi\(0) & ((\inst12|valor_interno\(0)) # ((!\inst|mi\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|valor_interno\(0),
	datab => \inst|mi\(0),
	datac => \inst|liga\(0),
	datad => \inst|mi\(1),
	combout => \inst12|SALIDA[0]~5_combout\);

\inst3|valor_interno[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|valor_interno[0]~0_combout\ = !\inst5|salida[0]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[0]~3_combout\,
	combout => \inst3|valor_interno[0]~0_combout\);

\inst3|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst3|valor_interno[0]~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|valor_interno\(0));

\inst5|salida[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|salida[0]~3_combout\ = (\inst1|Mux0~0_combout\ & (\inst12|SALIDA[0]~4_combout\ & (\inst12|SALIDA[0]~5_combout\))) # (!\inst1|Mux0~0_combout\ & (((\inst3|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SALIDA[0]~4_combout\,
	datab => \inst12|SALIDA[0]~5_combout\,
	datac => \inst3|valor_interno\(0),
	datad => \inst1|Mux0~0_combout\,
	combout => \inst5|salida[0]~3_combout\);

\inst18|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux1~0_combout\ = (\inst5|salida[0]~3_combout\ & ((\inst5|salida[2]~1_combout\ & ((!\inst5|salida[3]~0_combout\))) # (!\inst5|salida[2]~1_combout\ & ((\inst5|salida[1]~2_combout\) # (\inst5|salida[3]~0_combout\))))) # (!\inst5|salida[0]~3_combout\ 
-- & ((\inst5|salida[1]~2_combout\ & ((\inst5|salida[3]~0_combout\))) # (!\inst5|salida[1]~2_combout\ & (\inst5|salida[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[0]~3_combout\,
	datab => \inst5|salida[1]~2_combout\,
	datac => \inst5|salida[2]~1_combout\,
	datad => \inst5|salida[3]~0_combout\,
	combout => \inst18|Mux1~0_combout\);

\inst|mi[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst18|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mi\(0));

\inst18|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux5~0_combout\ = (\inst5|salida[3]~0_combout\ & ((\inst5|salida[0]~3_combout\ & (\inst5|salida[1]~2_combout\ & !\inst5|salida[2]~1_combout\)) # (!\inst5|salida[0]~3_combout\ & (!\inst5|salida[1]~2_combout\ & \inst5|salida[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[0]~3_combout\,
	datab => \inst5|salida[1]~2_combout\,
	datac => \inst5|salida[2]~1_combout\,
	datad => \inst5|salida[3]~0_combout\,
	combout => \inst18|Mux5~0_combout\);

\inst|liga[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst18|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|liga\(3));

\inst12|SALIDA[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|SALIDA[3]~0_combout\ = (\inst|mi\(0) & (((\inst|liga\(3)) # (\inst|mi\(1))))) # (!\inst|mi\(0) & ((\inst12|valor_interno\(3)) # ((!\inst|mi\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|valor_interno\(3),
	datab => \inst|mi\(0),
	datac => \inst|liga\(3),
	datad => \inst|mi\(1),
	combout => \inst12|SALIDA[3]~0_combout\);

\inst11|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \ENTRADA[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|valor_interno\(3));

\inst12|SALIDA[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|SALIDA[3]~1_combout\ = (\inst12|SALIDA[3]~0_combout\ & ((\inst11|valor_interno\(3)) # ((!\inst1|Mux2~0_combout\) # (!\inst|mi\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SALIDA[3]~0_combout\,
	datab => \inst11|valor_interno\(3),
	datac => \inst|mi\(1),
	datad => \inst1|Mux2~0_combout\,
	combout => \inst12|SALIDA[3]~1_combout\);

\inst12|SALIDA[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|SALIDA[3]~9_combout\ = (\inst|mi\(0) & ((!\inst6~combout\) # (!\inst|mi\(1)))) # (!\inst|mi\(0) & (\inst|mi\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|mi\(0),
	datac => \inst|mi\(1),
	datad => \inst6~combout\,
	combout => \inst12|SALIDA[3]~9_combout\);

\inst12|SALIDA[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|SALIDA[1]~10_combout\ = (\inst12|SALIDA[1]~3_combout\ & ((\inst11|valor_interno\(1)) # ((!\inst1|Mux2~0_combout\) # (!\inst|mi\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SALIDA[1]~3_combout\,
	datab => \inst11|valor_interno\(1),
	datac => \inst|mi\(1),
	datad => \inst1|Mux2~0_combout\,
	combout => \inst12|SALIDA[1]~10_combout\);

\inst12|SALIDA[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|SALIDA[0]~11_combout\ = (\inst12|SALIDA[0]~5_combout\ & ((\inst11|valor_interno\(0)) # ((!\inst1|Mux2~0_combout\) # (!\inst|mi\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SALIDA[0]~5_combout\,
	datab => \inst11|valor_interno\(0),
	datac => \inst|mi\(1),
	datad => \inst1|Mux2~0_combout\,
	combout => \inst12|SALIDA[0]~11_combout\);

\inst18|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux9~0_combout\ = (\inst5|salida[2]~1_combout\ & (((\inst5|salida[1]~2_combout\) # (\inst5|salida[3]~0_combout\)))) # (!\inst5|salida[2]~1_combout\ & ((\inst5|salida[0]~3_combout\) # ((\inst5|salida[1]~2_combout\ & !\inst5|salida[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[0]~3_combout\,
	datab => \inst5|salida[1]~2_combout\,
	datac => \inst5|salida[2]~1_combout\,
	datad => \inst5|salida[3]~0_combout\,
	combout => \inst18|Mux9~0_combout\);

\inst18|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux10~0_combout\ = (\inst5|salida[0]~3_combout\ & ((\inst5|salida[1]~2_combout\) # ((!\inst5|salida[2]~1_combout\ & \inst5|salida[3]~0_combout\)))) # (!\inst5|salida[0]~3_combout\ & ((\inst5|salida[2]~1_combout\) # (\inst5|salida[1]~2_combout\ $ 
-- (\inst5|salida[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[0]~3_combout\,
	datab => \inst5|salida[1]~2_combout\,
	datac => \inst5|salida[2]~1_combout\,
	datad => \inst5|salida[3]~0_combout\,
	combout => \inst18|Mux10~0_combout\);

\inst18|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux11~0_combout\ = (\inst5|salida[0]~3_combout\ & (!\inst5|salida[2]~1_combout\ & ((\inst5|salida[1]~2_combout\) # (!\inst5|salida[3]~0_combout\)))) # (!\inst5|salida[0]~3_combout\ & (\inst5|salida[1]~2_combout\ & (\inst5|salida[2]~1_combout\ & 
-- !\inst5|salida[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[0]~3_combout\,
	datab => \inst5|salida[1]~2_combout\,
	datac => \inst5|salida[2]~1_combout\,
	datad => \inst5|salida[3]~0_combout\,
	combout => \inst18|Mux11~0_combout\);

\inst18|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux12~0_combout\ = (\inst5|salida[0]~3_combout\ & (\inst5|salida[2]~1_combout\ & (\inst5|salida[1]~2_combout\ $ (\inst5|salida[3]~0_combout\)))) # (!\inst5|salida[0]~3_combout\ & (\inst5|salida[1]~2_combout\ & ((\inst5|salida[2]~1_combout\) # 
-- (!\inst5|salida[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|salida[0]~3_combout\,
	datab => \inst5|salida[1]~2_combout\,
	datac => \inst5|salida[2]~1_combout\,
	datad => \inst5|salida[3]~0_combout\,
	combout => \inst18|Mux12~0_combout\);

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


