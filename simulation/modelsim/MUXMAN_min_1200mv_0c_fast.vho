-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/07/2017 15:05:13"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Block1 IS
    PORT (
	pin_name4 : OUT std_logic;
	SEL : IN std_logic;
	IN2 : IN std_logic;
	IN1 : IN std_logic
	);
END Block1;

-- Design Ports Information
-- pin_name4	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pin_name4 : std_logic;
SIGNAL ww_SEL : std_logic;
SIGNAL ww_IN2 : std_logic;
SIGNAL ww_IN1 : std_logic;
SIGNAL \pin_name4~output_o\ : std_logic;
SIGNAL \IN2~input_o\ : std_logic;
SIGNAL \SEL~input_o\ : std_logic;
SIGNAL \IN1~input_o\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;

BEGIN

pin_name4 <= ww_pin_name4;
ww_SEL <= SEL;
ww_IN2 <= IN2;
ww_IN1 <= IN1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N2
\pin_name4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~0_combout\,
	devoe => ww_devoe,
	o => \pin_name4~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\IN2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2,
	o => \IN2~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\SEL~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL,
	o => \SEL~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\IN1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1,
	o => \IN1~input_o\);

-- Location: LCCOMB_X12_Y18_N0
\inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (\SEL~input_o\ & (\IN2~input_o\)) # (!\SEL~input_o\ & ((\IN1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN2~input_o\,
	datac => \SEL~input_o\,
	datad => \IN1~input_o\,
	combout => \inst2~0_combout\);

ww_pin_name4 <= \pin_name4~output_o\;
END structure;


