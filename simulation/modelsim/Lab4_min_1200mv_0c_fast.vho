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

-- DATE "02/07/2017 15:09:08"

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

ENTITY 	Lab4 IS
    PORT (
	\out\ : OUT std_logic;
	w0 : IN std_logic;
	s0 : IN std_logic;
	w1 : IN std_logic;
	s1 : IN std_logic;
	w3 : IN std_logic;
	w2 : IN std_logic;
	s2 : IN std_logic;
	w5 : IN std_logic;
	w4 : IN std_logic;
	w7 : IN std_logic;
	w6 : IN std_logic
	);
END Lab4;

-- Design Ports Information
-- out	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w4	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w7	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w5	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w6	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w3	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w1	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w0	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w2	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_out\ : std_logic;
SIGNAL ww_w0 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_w1 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_w3 : std_logic;
SIGNAL ww_w2 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_w5 : std_logic;
SIGNAL ww_w4 : std_logic;
SIGNAL ww_w7 : std_logic;
SIGNAL ww_w6 : std_logic;
SIGNAL \out~output_o\ : std_logic;
SIGNAL \s1~input_o\ : std_logic;
SIGNAL \w2~input_o\ : std_logic;
SIGNAL \w3~input_o\ : std_logic;
SIGNAL \w0~input_o\ : std_logic;
SIGNAL \w1~input_o\ : std_logic;
SIGNAL \s0~input_o\ : std_logic;
SIGNAL \inst4|inst2~2_combout\ : std_logic;
SIGNAL \inst4|inst2~3_combout\ : std_logic;
SIGNAL \w4~input_o\ : std_logic;
SIGNAL \w6~input_o\ : std_logic;
SIGNAL \w7~input_o\ : std_logic;
SIGNAL \w5~input_o\ : std_logic;
SIGNAL \inst4|inst2~0_combout\ : std_logic;
SIGNAL \inst4|inst2~1_combout\ : std_logic;
SIGNAL \s2~input_o\ : std_logic;
SIGNAL \inst4|inst2~4_combout\ : std_logic;

BEGIN

\out\ <= \ww_out\;
ww_w0 <= w0;
ww_s0 <= s0;
ww_w1 <= w1;
ww_s1 <= s1;
ww_w3 <= w3;
ww_w2 <= w2;
ww_s2 <= s2;
ww_w5 <= w5;
ww_w4 <= w4;
ww_w7 <= w7;
ww_w6 <= w6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X10_Y31_N2
\out~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2~4_combout\,
	devoe => ww_devoe,
	o => \out~output_o\);

-- Location: IOIBUF_X8_Y0_N1
\s1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1,
	o => \s1~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\w2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w2,
	o => \w2~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\w3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w3,
	o => \w3~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\w0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0,
	o => \w0~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\w1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1,
	o => \w1~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\s0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0,
	o => \s0~input_o\);

-- Location: LCCOMB_X18_Y2_N12
\inst4|inst2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst2~2_combout\ = (\s1~input_o\ & (((\s0~input_o\)))) # (!\s1~input_o\ & ((\s0~input_o\ & ((\w1~input_o\))) # (!\s0~input_o\ & (\w0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~input_o\,
	datab => \w0~input_o\,
	datac => \w1~input_o\,
	datad => \s0~input_o\,
	combout => \inst4|inst2~2_combout\);

-- Location: LCCOMB_X18_Y2_N6
\inst4|inst2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst2~3_combout\ = (\s1~input_o\ & ((\inst4|inst2~2_combout\ & (\w2~input_o\)) # (!\inst4|inst2~2_combout\ & ((\w3~input_o\))))) # (!\s1~input_o\ & (((\inst4|inst2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~input_o\,
	datab => \w2~input_o\,
	datac => \w3~input_o\,
	datad => \inst4|inst2~2_combout\,
	combout => \inst4|inst2~3_combout\);

-- Location: IOIBUF_X12_Y0_N8
\w4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w4,
	o => \w4~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\w6~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w6,
	o => \w6~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\w7~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w7,
	o => \w7~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\w5~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w5,
	o => \w5~input_o\);

-- Location: LCCOMB_X18_Y2_N8
\inst4|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst2~0_combout\ = (\s1~input_o\ & ((\w7~input_o\) # ((\s0~input_o\)))) # (!\s1~input_o\ & (((\w5~input_o\ & !\s0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~input_o\,
	datab => \w7~input_o\,
	datac => \w5~input_o\,
	datad => \s0~input_o\,
	combout => \inst4|inst2~0_combout\);

-- Location: LCCOMB_X18_Y2_N2
\inst4|inst2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst2~1_combout\ = (\inst4|inst2~0_combout\ & (((\w6~input_o\) # (!\s0~input_o\)))) # (!\inst4|inst2~0_combout\ & (\w4~input_o\ & ((\s0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w4~input_o\,
	datab => \w6~input_o\,
	datac => \inst4|inst2~0_combout\,
	datad => \s0~input_o\,
	combout => \inst4|inst2~1_combout\);

-- Location: IOIBUF_X33_Y16_N15
\s2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s2,
	o => \s2~input_o\);

-- Location: LCCOMB_X18_Y2_N0
\inst4|inst2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst2~4_combout\ = (\s2~input_o\ & ((\inst4|inst2~1_combout\))) # (!\s2~input_o\ & (\inst4|inst2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2~3_combout\,
	datab => \inst4|inst2~1_combout\,
	datad => \s2~input_o\,
	combout => \inst4|inst2~4_combout\);

\ww_out\ <= \out~output_o\;
END structure;


