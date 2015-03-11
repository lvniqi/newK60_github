-- Copyright (C) 1991-2010 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 10.0 Build 262 08/18/2010 Service Pack 1 SJ Full Version"

-- DATE "08/05/2014 09:54:58"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DDS IS
    PORT (
	DACLK : OUT std_logic;
	CLK25M : IN std_logic;
	AD : INOUT std_logic_vector(15 DOWNTO 0);
	NADV : IN std_logic;
	NOE : IN std_logic;
	NWE : IN std_logic;
	A16 : IN std_logic;
	A17 : IN std_logic;
	A18 : IN std_logic;
	DACD : OUT std_logic_vector(7 DOWNTO 0);
	ROMADDR : OUT std_logic_vector(31 DOWNTO 31)
	);
END DDS;

-- Design Ports Information
-- AD[15]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AD[14]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AD[13]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AD[12]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AD[11]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AD[10]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AD[9]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AD[8]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AD[7]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AD[6]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AD[5]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AD[4]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AD[3]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AD[2]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AD[1]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AD[0]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACLK	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A17	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A18	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DACD[7]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[6]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[5]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[4]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[3]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[2]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[1]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[0]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ROMADDR[31]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK25M	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NWE	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A16	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NADV	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NOE	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF DDS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DACLK : std_logic;
SIGNAL ww_CLK25M : std_logic;
SIGNAL ww_NADV : std_logic;
SIGNAL ww_NOE : std_logic;
SIGNAL ww_NWE : std_logic;
SIGNAL ww_A16 : std_logic;
SIGNAL ww_A17 : std_logic;
SIGNAL ww_A18 : std_logic;
SIGNAL ww_DACD : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ROMADDR : std_logic_vector(31 DOWNTO 31);
SIGNAL \inst8|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst8|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|altpll_component|_clk2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst21|DATA[0]~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \NADV~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|altpll_component|_clk0\ : std_logic;
SIGNAL \inst8|altpll_component|_clk1\ : std_logic;
SIGNAL \inst|CS1~1_combout\ : std_logic;
SIGNAL \NADV~clkctrl_outclk\ : std_logic;
SIGNAL \AD~0\ : std_logic;
SIGNAL \AD~1\ : std_logic;
SIGNAL \AD~2\ : std_logic;
SIGNAL \AD~3\ : std_logic;
SIGNAL \AD~4\ : std_logic;
SIGNAL \AD~5\ : std_logic;
SIGNAL \AD~6\ : std_logic;
SIGNAL \AD~7\ : std_logic;
SIGNAL \AD~8\ : std_logic;
SIGNAL \AD~9\ : std_logic;
SIGNAL \AD~10\ : std_logic;
SIGNAL \AD~11\ : std_logic;
SIGNAL \AD~12\ : std_logic;
SIGNAL \AD~13\ : std_logic;
SIGNAL \AD~14\ : std_logic;
SIGNAL \AD~15\ : std_logic;
SIGNAL \A16~combout\ : std_logic;
SIGNAL \inst|nCS~0_combout\ : std_logic;
SIGNAL \NWE~combout\ : std_logic;
SIGNAL \NOE~combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|nCS~regout\ : std_logic;
SIGNAL \NADV~combout\ : std_logic;
SIGNAL \inst21|DATA[0]~8_combout\ : std_logic;
SIGNAL \inst21|DATA[0]~8clkctrl_outclk\ : std_logic;
SIGNAL \inst21|DATA[15]$latch~combout\ : std_logic;
SIGNAL \inst21|process_0~0_combout\ : std_logic;
SIGNAL \inst21|DATA[0]_102~combout\ : std_logic;
SIGNAL \inst21|DATA[15]~9_combout\ : std_logic;
SIGNAL \inst21|DATA[15]~10_combout\ : std_logic;
SIGNAL \inst21|DATA[14]$latch~combout\ : std_logic;
SIGNAL \inst21|DATA[13]$latch~combout\ : std_logic;
SIGNAL \inst21|DATA[12]$latch~combout\ : std_logic;
SIGNAL \inst21|DATA[11]$latch~combout\ : std_logic;
SIGNAL \inst21|DATA[10]$latch~combout\ : std_logic;
SIGNAL \inst21|DATA[9]$latch~combout\ : std_logic;
SIGNAL \inst21|DATA[8]$latch~combout\ : std_logic;
SIGNAL \inst21|DATA[7]$latch~combout\ : std_logic;
SIGNAL \inst21|DATA[6]$latch~combout\ : std_logic;
SIGNAL \inst21|DATA[5]$latch~combout\ : std_logic;
SIGNAL \inst21|DATA[4]$latch~combout\ : std_logic;
SIGNAL \inst21|DATA[3]$latch~combout\ : std_logic;
SIGNAL \inst21|DATA[2]$latch~combout\ : std_logic;
SIGNAL \inst21|DATA[1]$latch~combout\ : std_logic;
SIGNAL \inst21|DATA[0]$latch~combout\ : std_logic;
SIGNAL \CLK25M~combout\ : std_logic;
SIGNAL \inst8|altpll_component|_clk2\ : std_logic;
SIGNAL \inst8|altpll_component|_clk2~clkctrl_outclk\ : std_logic;
SIGNAL \inst|CS1~0_combout\ : std_logic;
SIGNAL \inst|CS1~2_combout\ : std_logic;
SIGNAL \inst|CS1~regout\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \inst21|DATA[0]~7_combout\ : std_logic;
SIGNAL \inst|ADDR[2]~feeder_combout\ : std_logic;
SIGNAL \inst|ADDR[3]~feeder_combout\ : std_logic;
SIGNAL \inst|ADDR[4]~feeder_combout\ : std_logic;
SIGNAL \inst|ADDR[6]~feeder_combout\ : std_logic;
SIGNAL \inst|ADDR[7]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst21|DATA[1]~6_combout\ : std_logic;
SIGNAL \inst21|DATA[2]~5_combout\ : std_logic;
SIGNAL \inst21|DATA[3]~4_combout\ : std_logic;
SIGNAL \inst21|DATA[4]~3_combout\ : std_logic;
SIGNAL \inst21|DATA[5]~2_combout\ : std_logic;
SIGNAL \inst21|DATA[6]~1_combout\ : std_logic;
SIGNAL \inst21|DATA[7]~0_combout\ : std_logic;
SIGNAL \inst9|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ADDR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|altpll_component|ALT_INV__clk2~clkctrl_outclk\ : std_logic;

BEGIN

DACLK <= ww_DACLK;
ww_CLK25M <= CLK25M;
ww_NADV <= NADV;
ww_NOE <= NOE;
ww_NWE <= NWE;
ww_A16 <= A16;
ww_A17 <= A17;
ww_A18 <= A18;
DACD <= ww_DACD;
ROMADDR <= ww_ROMADDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst8|altpll_component|pll_INCLK_bus\ <= (gnd & \CLK25M~combout\);

\inst8|altpll_component|_clk0\ <= \inst8|altpll_component|pll_CLK_bus\(0);
\inst8|altpll_component|_clk1\ <= \inst8|altpll_component|pll_CLK_bus\(1);
\inst8|altpll_component|_clk2\ <= \inst8|altpll_component|pll_CLK_bus\(2);

\inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\inst21|DATA[7]~0_combout\ & \inst21|DATA[6]~1_combout\ & \inst21|DATA[5]~2_combout\ & \inst21|DATA[4]~3_combout\ & \inst21|DATA[3]~4_combout\ & \inst21|DATA[2]~5_combout\ & 
\inst21|DATA[1]~6_combout\ & \inst21|DATA[0]~7_combout\);

\inst9|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|ADDR\(7) & \inst|ADDR\(6) & \inst|ADDR\(5) & \inst|ADDR\(4) & \inst|ADDR\(3) & \inst|ADDR\(2) & \inst|ADDR\(1) & \inst|ADDR\(0));

\inst9|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\inst9|altsyncram_component|auto_generated|q_b\(0) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\inst9|altsyncram_component|auto_generated|q_b\(1) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\inst9|altsyncram_component|auto_generated|q_b\(2) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\inst9|altsyncram_component|auto_generated|q_b\(3) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\inst9|altsyncram_component|auto_generated|q_b\(4) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\inst9|altsyncram_component|auto_generated|q_b\(5) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\inst9|altsyncram_component|auto_generated|q_b\(6) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\inst9|altsyncram_component|auto_generated|q_b\(7) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\inst8|altpll_component|_clk2~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst8|altpll_component|_clk2\);

\inst21|DATA[0]~8clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst21|DATA[0]~8_combout\);

\NADV~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \NADV~combout\);
\inst8|altpll_component|ALT_INV__clk2~clkctrl_outclk\ <= NOT \inst8|altpll_component|_clk2~clkctrl_outclk\;

-- Location: LCCOMB_X8_Y1_N12
\inst|CS1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|CS1~1_combout\ = ((\AD~5\) # ((\AD~6\) # (\AD~4\))) # (!\AD~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~7\,
	datab => \AD~5\,
	datac => \AD~6\,
	datad => \AD~4\,
	combout => \inst|CS1~1_combout\);

-- Location: CLKCTRL_G6
\NADV~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \NADV~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \NADV~clkctrl_outclk\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AD[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|DATA[15]$latch~combout\,
	oe => \inst21|DATA[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => AD(15),
	combout => \AD~0\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AD[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|DATA[14]$latch~combout\,
	oe => \inst21|DATA[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => AD(14),
	combout => \AD~1\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AD[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|DATA[13]$latch~combout\,
	oe => \inst21|DATA[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => AD(13),
	combout => \AD~2\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AD[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|DATA[12]$latch~combout\,
	oe => \inst21|DATA[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => AD(12),
	combout => \AD~3\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AD[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|DATA[11]$latch~combout\,
	oe => \inst21|DATA[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => AD(11),
	combout => \AD~4\);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AD[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|DATA[10]$latch~combout\,
	oe => \inst21|DATA[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => AD(10),
	combout => \AD~5\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AD[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|DATA[9]$latch~combout\,
	oe => \inst21|DATA[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => AD(9),
	combout => \AD~6\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AD[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|DATA[8]$latch~combout\,
	oe => \inst21|DATA[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => AD(8),
	combout => \AD~7\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AD[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|DATA[7]$latch~combout\,
	oe => \inst21|DATA[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => AD(7),
	combout => \AD~8\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AD[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|DATA[6]$latch~combout\,
	oe => \inst21|DATA[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => AD(6),
	combout => \AD~9\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AD[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|DATA[5]$latch~combout\,
	oe => \inst21|DATA[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => AD(5),
	combout => \AD~10\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AD[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|DATA[4]$latch~combout\,
	oe => \inst21|DATA[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => AD(4),
	combout => \AD~11\);

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AD[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|DATA[3]$latch~combout\,
	oe => \inst21|DATA[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => AD(3),
	combout => \AD~12\);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AD[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|DATA[2]$latch~combout\,
	oe => \inst21|DATA[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => AD(2),
	combout => \AD~13\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AD[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|DATA[1]$latch~combout\,
	oe => \inst21|DATA[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => AD(1),
	combout => \AD~14\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AD[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|DATA[0]$latch~combout\,
	oe => \inst21|DATA[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => AD(0),
	combout => \AD~15\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A16~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A16,
	combout => \A16~combout\);

-- Location: LCCOMB_X7_Y4_N0
\inst|nCS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|nCS~0_combout\ = !\A16~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A16~combout\,
	combout => \inst|nCS~0_combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NWE~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_NWE,
	combout => \NWE~combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NOE~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_NOE,
	combout => \NOE~combout\);

-- Location: LCCOMB_X12_Y3_N18
\inst|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (\NWE~combout\) # (\NOE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NWE~combout\,
	datad => \NOE~combout\,
	combout => \inst|process_0~0_combout\);

-- Location: LCFF_X7_Y4_N1
\inst|nCS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	datain => \inst|nCS~0_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|nCS~regout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NADV~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_NADV,
	combout => \NADV~combout\);

-- Location: LCCOMB_X12_Y3_N26
\inst21|DATA[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[0]~8_combout\ = ((!\NWE~combout\ & \NADV~combout\)) # (!\NOE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NWE~combout\,
	datac => \NOE~combout\,
	datad => \NADV~combout\,
	combout => \inst21|DATA[0]~8_combout\);

-- Location: CLKCTRL_G7
\inst21|DATA[0]~8clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst21|DATA[0]~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst21|DATA[0]~8clkctrl_outclk\);

-- Location: LCCOMB_X8_Y1_N14
\inst21|DATA[15]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[15]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & (\AD~0\)) # (!GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & ((\inst21|DATA[15]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nCS~regout\,
	datab => \AD~0\,
	datac => \inst21|DATA[15]$latch~combout\,
	datad => \inst21|DATA[0]~8clkctrl_outclk\,
	combout => \inst21|DATA[15]$latch~combout\);

-- Location: LCCOMB_X12_Y3_N28
\inst21|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|process_0~0_combout\ = (\NADV~combout\ & (!\NWE~combout\ & \NOE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NADV~combout\,
	datac => \NWE~combout\,
	datad => \NOE~combout\,
	combout => \inst21|process_0~0_combout\);

-- Location: LCCOMB_X12_Y3_N16
\inst21|DATA[0]_102\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[0]_102~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & (\inst21|process_0~0_combout\)) # (!GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & ((\inst21|DATA[0]_102~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nCS~regout\,
	datab => \inst21|process_0~0_combout\,
	datac => \inst21|DATA[0]_102~combout\,
	datad => \inst21|DATA[0]~8clkctrl_outclk\,
	combout => \inst21|DATA[0]_102~combout\);

-- Location: LCCOMB_X12_Y3_N10
\inst21|DATA[15]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[15]~9_combout\ = (\NADV~combout\ & (\NWE~combout\ & (!\inst|nCS~regout\ & !\NOE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NADV~combout\,
	datab => \NWE~combout\,
	datac => \inst|nCS~regout\,
	datad => \NOE~combout\,
	combout => \inst21|DATA[15]~9_combout\);

-- Location: LCCOMB_X12_Y3_N8
\inst21|DATA[15]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[15]~10_combout\ = (\inst21|DATA[0]_102~combout\ & \inst21|DATA[15]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|DATA[0]_102~combout\,
	datad => \inst21|DATA[15]~9_combout\,
	combout => \inst21|DATA[15]~10_combout\);

-- Location: LCCOMB_X8_Y1_N0
\inst21|DATA[14]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[14]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & ((\AD~1\))) # (!GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & (\inst21|DATA[14]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nCS~regout\,
	datab => \inst21|DATA[14]$latch~combout\,
	datac => \AD~1\,
	datad => \inst21|DATA[0]~8clkctrl_outclk\,
	combout => \inst21|DATA[14]$latch~combout\);

-- Location: LCCOMB_X8_Y1_N10
\inst21|DATA[13]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[13]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & ((\AD~2\))) # (!GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & (\inst21|DATA[13]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|DATA[13]$latch~combout\,
	datab => \AD~2\,
	datac => \inst|nCS~regout\,
	datad => \inst21|DATA[0]~8clkctrl_outclk\,
	combout => \inst21|DATA[13]$latch~combout\);

-- Location: LCCOMB_X8_Y1_N20
\inst21|DATA[12]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[12]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & (\AD~3\)) # (!GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & ((\inst21|DATA[12]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~3\,
	datab => \inst|nCS~regout\,
	datac => \inst21|DATA[12]$latch~combout\,
	datad => \inst21|DATA[0]~8clkctrl_outclk\,
	combout => \inst21|DATA[12]$latch~combout\);

-- Location: LCCOMB_X8_Y1_N22
\inst21|DATA[11]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[11]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & (\AD~4\)) # (!GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & ((\inst21|DATA[11]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~4\,
	datab => \inst21|DATA[11]$latch~combout\,
	datac => \inst|nCS~regout\,
	datad => \inst21|DATA[0]~8clkctrl_outclk\,
	combout => \inst21|DATA[11]$latch~combout\);

-- Location: LCCOMB_X8_Y1_N24
\inst21|DATA[10]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[10]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & (\AD~5\)) # (!GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & ((\inst21|DATA[10]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nCS~regout\,
	datab => \AD~5\,
	datac => \inst21|DATA[10]$latch~combout\,
	datad => \inst21|DATA[0]~8clkctrl_outclk\,
	combout => \inst21|DATA[10]$latch~combout\);

-- Location: LCCOMB_X8_Y1_N18
\inst21|DATA[9]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[9]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & ((\AD~6\))) # (!GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & (\inst21|DATA[9]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nCS~regout\,
	datab => \inst21|DATA[9]$latch~combout\,
	datac => \AD~6\,
	datad => \inst21|DATA[0]~8clkctrl_outclk\,
	combout => \inst21|DATA[9]$latch~combout\);

-- Location: LCCOMB_X8_Y1_N4
\inst21|DATA[8]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[8]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & (\AD~7\)) # (!GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & ((\inst21|DATA[8]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nCS~regout\,
	datab => \AD~7\,
	datac => \inst21|DATA[8]$latch~combout\,
	datad => \inst21|DATA[0]~8clkctrl_outclk\,
	combout => \inst21|DATA[8]$latch~combout\);

-- Location: LCCOMB_X12_Y3_N0
\inst21|DATA[7]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[7]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & (\AD~8\)) # (!GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & ((\inst21|DATA[7]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~8\,
	datab => \inst21|DATA[7]$latch~combout\,
	datac => \inst|nCS~regout\,
	datad => \inst21|DATA[0]~8clkctrl_outclk\,
	combout => \inst21|DATA[7]$latch~combout\);

-- Location: LCCOMB_X7_Y4_N18
\inst21|DATA[6]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[6]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & (\AD~9\)) # (!GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & ((\inst21|DATA[6]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~9\,
	datab => \inst21|DATA[6]$latch~combout\,
	datac => \inst|nCS~regout\,
	datad => \inst21|DATA[0]~8clkctrl_outclk\,
	combout => \inst21|DATA[6]$latch~combout\);

-- Location: LCCOMB_X7_Y4_N4
\inst21|DATA[5]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[5]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & (\AD~10\)) # (!GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & ((\inst21|DATA[5]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~10\,
	datab => \inst|nCS~regout\,
	datac => \inst21|DATA[5]$latch~combout\,
	datad => \inst21|DATA[0]~8clkctrl_outclk\,
	combout => \inst21|DATA[5]$latch~combout\);

-- Location: LCCOMB_X7_Y4_N30
\inst21|DATA[4]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[4]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & (\AD~11\)) # (!GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & ((\inst21|DATA[4]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~11\,
	datab => \inst21|DATA[4]$latch~combout\,
	datac => \inst|nCS~regout\,
	datad => \inst21|DATA[0]~8clkctrl_outclk\,
	combout => \inst21|DATA[4]$latch~combout\);

-- Location: LCCOMB_X7_Y4_N24
\inst21|DATA[3]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[3]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & (\AD~12\)) # (!GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & ((\inst21|DATA[3]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~12\,
	datab => \inst|nCS~regout\,
	datac => \inst21|DATA[3]$latch~combout\,
	datad => \inst21|DATA[0]~8clkctrl_outclk\,
	combout => \inst21|DATA[3]$latch~combout\);

-- Location: LCCOMB_X7_Y4_N26
\inst21|DATA[2]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[2]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & (\AD~13\)) # (!GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & ((\inst21|DATA[2]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~13\,
	datab => \inst21|DATA[2]$latch~combout\,
	datac => \inst|nCS~regout\,
	datad => \inst21|DATA[0]~8clkctrl_outclk\,
	combout => \inst21|DATA[2]$latch~combout\);

-- Location: LCCOMB_X7_Y4_N28
\inst21|DATA[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[1]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & ((\AD~14\))) # (!GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & (\inst21|DATA[1]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nCS~regout\,
	datab => \inst21|DATA[1]$latch~combout\,
	datac => \AD~14\,
	datad => \inst21|DATA[0]~8clkctrl_outclk\,
	combout => \inst21|DATA[1]$latch~combout\);

-- Location: LCCOMB_X7_Y4_N14
\inst21|DATA[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[0]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & (\AD~15\)) # (!GLOBAL(\inst21|DATA[0]~8clkctrl_outclk\) & ((\inst21|DATA[0]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~15\,
	datab => \inst|nCS~regout\,
	datac => \inst21|DATA[0]$latch~combout\,
	datad => \inst21|DATA[0]~8clkctrl_outclk\,
	combout => \inst21|DATA[0]$latch~combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK25M~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK25M,
	combout => \CLK25M~combout\);

-- Location: PLL_1
\inst8|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 10,
	c0_initial => 6,
	c0_low => 10,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_duty_cycle => 50,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_counter => "c0",
	clk2_divide_by => 5,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 8,
	clk2_phase_shift => "6250",
	compensate_clock => "clk2",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 40000,
	inclk1_input_frequency => 40000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 32,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 6014,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	areset => GND,
	inclk => \inst8|altpll_component|pll_INCLK_bus\,
	clk => \inst8|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G3
\inst8|altpll_component|_clk2~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst8|altpll_component|_clk2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst8|altpll_component|_clk2~clkctrl_outclk\);

-- Location: LCCOMB_X8_Y1_N26
\inst|CS1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|CS1~0_combout\ = (\AD~3\) # (((\AD~1\) # (\AD~2\)) # (!\AD~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~3\,
	datab => \AD~0\,
	datac => \AD~1\,
	datad => \AD~2\,
	combout => \inst|CS1~0_combout\);

-- Location: LCCOMB_X8_Y1_N8
\inst|CS1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|CS1~2_combout\ = (\inst|CS1~1_combout\) # ((\inst|CS1~0_combout\) # (!\A16~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CS1~1_combout\,
	datac => \A16~combout\,
	datad => \inst|CS1~0_combout\,
	combout => \inst|CS1~2_combout\);

-- Location: LCFF_X8_Y1_N9
\inst|CS1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	datain => \inst|CS1~2_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|CS1~regout\);

-- Location: LCCOMB_X12_Y3_N20
inst7 : cycloneii_lcell_comb
-- Equation(s):
-- \inst7~combout\ = (!\NWE~combout\ & !\inst|CS1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NWE~combout\,
	datad => \inst|CS1~regout\,
	combout => \inst7~combout\);

-- Location: LCCOMB_X7_Y4_N22
\inst21|DATA[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[0]~7_combout\ = (\inst21|DATA[0]$latch~combout\) # (!\inst21|DATA[0]_102~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|DATA[0]$latch~combout\,
	datad => \inst21|DATA[0]_102~combout\,
	combout => \inst21|DATA[0]~7_combout\);

-- Location: LCFF_X7_Y4_N9
\inst|ADDR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	sdata => \AD~15\,
	sload => VCC,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ADDR\(0));

-- Location: LCFF_X7_Y4_N11
\inst|ADDR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	sdata => \AD~14\,
	sload => VCC,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ADDR\(1));

-- Location: LCCOMB_X7_Y4_N20
\inst|ADDR[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ADDR[2]~feeder_combout\ = \AD~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AD~13\,
	combout => \inst|ADDR[2]~feeder_combout\);

-- Location: LCFF_X7_Y4_N21
\inst|ADDR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	datain => \inst|ADDR[2]~feeder_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ADDR\(2));

-- Location: LCCOMB_X7_Y4_N6
\inst|ADDR[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ADDR[3]~feeder_combout\ = \AD~12\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AD~12\,
	combout => \inst|ADDR[3]~feeder_combout\);

-- Location: LCFF_X7_Y4_N7
\inst|ADDR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	datain => \inst|ADDR[3]~feeder_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ADDR\(3));

-- Location: LCCOMB_X7_Y4_N16
\inst|ADDR[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ADDR[4]~feeder_combout\ = \AD~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AD~11\,
	combout => \inst|ADDR[4]~feeder_combout\);

-- Location: LCFF_X7_Y4_N17
\inst|ADDR[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	datain => \inst|ADDR[4]~feeder_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ADDR\(4));

-- Location: LCFF_X7_Y4_N3
\inst|ADDR[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	sdata => \AD~10\,
	sload => VCC,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ADDR\(5));

-- Location: LCCOMB_X7_Y4_N12
\inst|ADDR[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ADDR[6]~feeder_combout\ = \AD~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AD~9\,
	combout => \inst|ADDR[6]~feeder_combout\);

-- Location: LCFF_X7_Y4_N13
\inst|ADDR[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	datain => \inst|ADDR[6]~feeder_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ADDR\(6));

-- Location: LCCOMB_X12_Y3_N4
\inst|ADDR[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ADDR[7]~feeder_combout\ = \AD~8\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AD~8\,
	combout => \inst|ADDR[7]~feeder_combout\);

-- Location: LCFF_X12_Y3_N5
\inst|ADDR[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	datain => \inst|ADDR[7]~feeder_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ADDR\(7));

-- Location: LCCOMB_X12_Y5_N16
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X12_Y3_N6
\inst21|DATA[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[1]~6_combout\ = (\inst21|DATA[1]$latch~combout\) # (!\inst21|DATA[0]_102~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|DATA[0]_102~combout\,
	datac => \inst21|DATA[1]$latch~combout\,
	combout => \inst21|DATA[1]~6_combout\);

-- Location: LCCOMB_X12_Y3_N30
\inst21|DATA[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[2]~5_combout\ = (\inst21|DATA[2]$latch~combout\) # (!\inst21|DATA[0]_102~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|DATA[0]_102~combout\,
	datac => \inst21|DATA[2]$latch~combout\,
	combout => \inst21|DATA[2]~5_combout\);

-- Location: LCCOMB_X12_Y3_N2
\inst21|DATA[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[3]~4_combout\ = (\inst21|DATA[3]$latch~combout\) # (!\inst21|DATA[0]_102~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|DATA[0]_102~combout\,
	datac => \inst21|DATA[3]$latch~combout\,
	combout => \inst21|DATA[3]~4_combout\);

-- Location: LCCOMB_X12_Y3_N12
\inst21|DATA[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[4]~3_combout\ = (\inst21|DATA[4]$latch~combout\) # (!\inst21|DATA[0]_102~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|DATA[0]_102~combout\,
	datac => \inst21|DATA[4]$latch~combout\,
	combout => \inst21|DATA[4]~3_combout\);

-- Location: LCCOMB_X12_Y3_N24
\inst21|DATA[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[5]~2_combout\ = (\inst21|DATA[5]$latch~combout\) # (!\inst21|DATA[0]_102~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|DATA[5]$latch~combout\,
	datac => \inst21|DATA[0]_102~combout\,
	combout => \inst21|DATA[5]~2_combout\);

-- Location: LCCOMB_X12_Y3_N22
\inst21|DATA[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[6]~1_combout\ = (\inst21|DATA[6]$latch~combout\) # (!\inst21|DATA[0]_102~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|DATA[6]$latch~combout\,
	datac => \inst21|DATA[0]_102~combout\,
	combout => \inst21|DATA[6]~1_combout\);

-- Location: LCCOMB_X12_Y3_N14
\inst21|DATA[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|DATA[7]~0_combout\ = (\inst21|DATA[7]$latch~combout\) # (!\inst21|DATA[0]_102~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|DATA[7]$latch~combout\,
	datac => \inst21|DATA[0]_102~combout\,
	combout => \inst21|DATA[7]~0_combout\);

-- Location: M4K_X11_Y4
\inst9|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM2PORT:inst9|altsyncram:altsyncram_component|altsyncram_8ao1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 8,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \inst7~combout\,
	portbrewe => VCC,
	clk0 => \inst8|altpll_component|_clk2~clkctrl_outclk\,
	portadatain => \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DACLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|altpll_component|ALT_INV__clk2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DACLK);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A17~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A17);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A18~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A18);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DACD[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|altsyncram_component|auto_generated|q_b\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DACD(7));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DACD[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|altsyncram_component|auto_generated|q_b\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DACD(6));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DACD[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|altsyncram_component|auto_generated|q_b\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DACD(5));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DACD[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|altsyncram_component|auto_generated|q_b\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DACD(4));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DACD[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|altsyncram_component|auto_generated|q_b\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DACD(3));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DACD[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|altsyncram_component|auto_generated|q_b\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DACD(2));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DACD[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|altsyncram_component|auto_generated|q_b\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DACD(1));

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DACD[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|altsyncram_component|auto_generated|q_b\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DACD(0));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ROMADDR[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ROMADDR(31));
END structure;


