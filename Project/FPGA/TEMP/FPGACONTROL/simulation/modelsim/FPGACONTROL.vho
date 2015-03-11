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

-- DATE "08/04/2014 17:03:36"

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

ENTITY 	FPGACONTROL IS
    PORT (
	INT4 : OUT std_logic;
	NWE : IN std_logic;
	A16 : IN std_logic;
	A17 : IN std_logic;
	A18 : IN std_logic;
	NADV : IN std_logic;
	AD : INOUT std_logic_vector(15 DOWNTO 0);
	NOE : IN std_logic;
	COUT : IN std_logic;
	CLK25M : IN std_logic;
	DIN : IN std_logic_vector(11 DOWNTO 0);
	CLKCARRY : OUT std_logic;
	DACLK : OUT std_logic;
	CLK40M1 : OUT std_logic;
	PHASE_TEST : OUT std_logic;
	DACD : OUT std_logic_vector(7 DOWNTO 0);
	RAMADDR : OUT std_logic_vector(31 DOWNTO 31);
	FRPIN : OUT std_logic_vector(23 DOWNTO 16)
	);
END FPGACONTROL;

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
-- INT4	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A17	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A18	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLKCARRY	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACLK	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK40M1	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PHASE_TEST	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[7]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[6]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[5]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[4]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[3]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[2]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[1]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[0]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMADDR[31]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FRPIN[23]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FRPIN[22]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FRPIN[21]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FRPIN[20]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FRPIN[19]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FRPIN[18]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FRPIN[17]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FRPIN[16]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK25M	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NWE	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NOE	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NADV	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A16	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[7]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[6]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[5]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[4]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[3]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[2]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[1]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[0]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- COUT	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[11]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[10]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[9]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[8]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF FPGACONTROL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_INT4 : std_logic;
SIGNAL ww_NWE : std_logic;
SIGNAL ww_A16 : std_logic;
SIGNAL ww_A17 : std_logic;
SIGNAL ww_A18 : std_logic;
SIGNAL ww_NADV : std_logic;
SIGNAL ww_NOE : std_logic;
SIGNAL ww_COUT : std_logic;
SIGNAL ww_CLK25M : std_logic;
SIGNAL ww_DIN : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_CLKCARRY : std_logic;
SIGNAL ww_DACLK : std_logic;
SIGNAL ww_CLK40M1 : std_logic;
SIGNAL ww_PHASE_TEST : std_logic;
SIGNAL ww_DACD : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RAMADDR : std_logic_vector(31 DOWNTO 31);
SIGNAL ww_FRPIN : std_logic_vector(23 DOWNTO 16);
SIGNAL \inst6|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst6|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst17|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst17|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst17|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAIN_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBDATAIN_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst6|altpll_component|_clk2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK25M~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|altpll_component|_clk1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|AD[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst19~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst|Mux6~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst22~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|altpll_component|_clk0\ : std_logic;
SIGNAL \inst12|acc[3]~38_combout\ : std_logic;
SIGNAL \inst12|acc[5]~42_combout\ : std_logic;
SIGNAL \inst12|acc[6]~44_combout\ : std_logic;
SIGNAL \inst12|acc[8]~48_combout\ : std_logic;
SIGNAL \inst12|acc[10]~52_combout\ : std_logic;
SIGNAL \inst12|acc[12]~56_combout\ : std_logic;
SIGNAL \inst12|acc[19]~70_combout\ : std_logic;
SIGNAL \inst12|acc[21]~74_combout\ : std_logic;
SIGNAL \inst12|acc[22]~76_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[8]~45_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[13]~55_combout\ : std_logic;
SIGNAL \inst7|inst4|s[0]~5\ : std_logic;
SIGNAL \inst7|inst4|s[0]~4_combout\ : std_logic;
SIGNAL \inst7|inst4|s[1]~7\ : std_logic;
SIGNAL \inst7|inst4|s[1]~6_combout\ : std_logic;
SIGNAL \inst7|inst4|s[2]~9\ : std_logic;
SIGNAL \inst7|inst4|s[2]~8_combout\ : std_logic;
SIGNAL \inst7|inst4|s[3]~10_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[24]~78_combout\ : std_logic;
SIGNAL \inst7|inst3|Add0~1\ : std_logic;
SIGNAL \inst7|inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst7|inst3|Add0~3\ : std_logic;
SIGNAL \inst7|inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst7|inst3|Add0~5\ : std_logic;
SIGNAL \inst7|inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst7|inst3|Add0~7\ : std_logic;
SIGNAL \inst7|inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst7|inst3|Add0~9\ : std_logic;
SIGNAL \inst7|inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst7|inst3|Add0~11\ : std_logic;
SIGNAL \inst7|inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst7|inst3|Add0~13\ : std_logic;
SIGNAL \inst7|inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst7|inst3|Add0~15\ : std_logic;
SIGNAL \inst7|inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst7|inst3|Add0~17\ : std_logic;
SIGNAL \inst7|inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst7|inst3|Add0~19\ : std_logic;
SIGNAL \inst7|inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst7|inst3|Add0~21\ : std_logic;
SIGNAL \inst7|inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst7|inst3|Add0~23\ : std_logic;
SIGNAL \inst7|inst3|Add0~22_combout\ : std_logic;
SIGNAL \inst7|inst3|Add0~25\ : std_logic;
SIGNAL \inst7|inst3|Add0~24_combout\ : std_logic;
SIGNAL \inst7|inst3|Add0~27\ : std_logic;
SIGNAL \inst7|inst3|Add0~26_combout\ : std_logic;
SIGNAL \inst7|inst3|Add0~28_combout\ : std_logic;
SIGNAL \inst7|inst|cnt1[0]~6\ : std_logic;
SIGNAL \inst7|inst|cnt1[0]~5_combout\ : std_logic;
SIGNAL \inst7|inst|cnt1[1]~8\ : std_logic;
SIGNAL \inst7|inst|cnt1[1]~7_combout\ : std_logic;
SIGNAL \inst7|inst|cnt1[2]~10\ : std_logic;
SIGNAL \inst7|inst|cnt1[2]~9_combout\ : std_logic;
SIGNAL \inst7|inst|cnt1[3]~12\ : std_logic;
SIGNAL \inst7|inst|cnt1[3]~11_combout\ : std_logic;
SIGNAL \inst7|inst|cnt1[4]~13_combout\ : std_logic;
SIGNAL \inst7|inst|cnt2[0]~6\ : std_logic;
SIGNAL \inst7|inst|cnt2[0]~5_combout\ : std_logic;
SIGNAL \inst7|inst|cnt2[1]~8\ : std_logic;
SIGNAL \inst7|inst|cnt2[1]~7_combout\ : std_logic;
SIGNAL \inst7|inst|cnt2[2]~10\ : std_logic;
SIGNAL \inst7|inst|cnt2[2]~9_combout\ : std_logic;
SIGNAL \inst7|inst|cnt2[3]~12\ : std_logic;
SIGNAL \inst7|inst|cnt2[3]~11_combout\ : std_logic;
SIGNAL \inst7|inst|cnt2[4]~13_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ : std_logic;
SIGNAL \inst14~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst29|inst9|12~regout\ : std_logic;
SIGNAL \inst29|inst9|13~regout\ : std_logic;
SIGNAL \inst29|inst9|14~regout\ : std_logic;
SIGNAL \inst29|inst9|16~regout\ : std_logic;
SIGNAL \inst29|inst9|18~regout\ : std_logic;
SIGNAL \inst29|inst5|12~regout\ : std_logic;
SIGNAL \inst29|inst5|13~regout\ : std_logic;
SIGNAL \inst29|inst5|14~regout\ : std_logic;
SIGNAL \inst29|inst5|16~regout\ : std_logic;
SIGNAL \inst29|inst5|18~regout\ : std_logic;
SIGNAL \inst29|inst|12~regout\ : std_logic;
SIGNAL \inst29|inst|15~regout\ : std_logic;
SIGNAL \inst29|inst|17~regout\ : std_logic;
SIGNAL \inst29|inst|18~regout\ : std_logic;
SIGNAL \inst29|inst|19~regout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\ : std_logic;
SIGNAL \inst13~0_combout\ : std_logic;
SIGNAL \inst20~0_combout\ : std_logic;
SIGNAL \inst20~1_combout\ : std_logic;
SIGNAL \inst13~combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|p0addr~regout\ : std_logic;
SIGNAL \D[15]~26_combout\ : std_logic;
SIGNAL \D[15]~27_combout\ : std_logic;
SIGNAL \D[14]~28_combout\ : std_logic;
SIGNAL \D[14]~29_combout\ : std_logic;
SIGNAL \D[13]~30_combout\ : std_logic;
SIGNAL \D[13]~31_combout\ : std_logic;
SIGNAL \D[11]~34_combout\ : std_logic;
SIGNAL \D[11]~35_combout\ : std_logic;
SIGNAL \D[9]~38_combout\ : std_logic;
SIGNAL \D[9]~39_combout\ : std_logic;
SIGNAL \D[8]~40_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[0]~77_combout\ : std_logic;
SIGNAL \D[11]~47_combout\ : std_logic;
SIGNAL \D[9]~51_combout\ : std_logic;
SIGNAL \D[1]~67_combout\ : std_logic;
SIGNAL \D[0]~69_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\ : std_logic;
SIGNAL \inst7|inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|inst3|Equal0~3_combout\ : std_logic;
SIGNAL \inst7|inst3|s~0_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\ : std_logic;
SIGNAL \inst7|inst3|s~1_combout\ : std_logic;
SIGNAL \inst7|inst3|s~2_combout\ : std_logic;
SIGNAL \inst7|inst3|s~3_combout\ : std_logic;
SIGNAL \inst7|inst3|s~4_combout\ : std_logic;
SIGNAL \inst7|inst3|s~5_combout\ : std_logic;
SIGNAL \inst7|inst3|s~6_combout\ : std_logic;
SIGNAL \inst7|inst3|s~7_combout\ : std_logic;
SIGNAL \inst7|inst|clk1~regout\ : std_logic;
SIGNAL \inst7|inst|clk2~regout\ : std_logic;
SIGNAL \inst7|inst|clk_out~combout\ : std_logic;
SIGNAL \inst7|inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst7|inst|LessThan3~0_combout\ : std_logic;
SIGNAL \inst7|inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst7|inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst3|inst3|DOUT[15]~4_combout\ : std_logic;
SIGNAL \inst15|START~combout\ : std_logic;
SIGNAL \inst1|DATA[6]$latch~combout\ : std_logic;
SIGNAL \inst1|DATA[2]$latch~combout\ : std_logic;
SIGNAL \inst1|DATA[10]$latch~combout\ : std_logic;
SIGNAL \COUT~combout\ : std_logic;
SIGNAL \inst6|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[8]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[4]~feeder_combout\ : std_logic;
SIGNAL \inst29|inst|12~feeder_combout\ : std_logic;
SIGNAL \inst29|inst|17~feeder_combout\ : std_logic;
SIGNAL \inst29|inst|18~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[4]~feeder_combout\ : std_logic;
SIGNAL \inst29|inst9|12~feeder_combout\ : std_logic;
SIGNAL \inst29|inst5|13~feeder_combout\ : std_logic;
SIGNAL \inst29|inst5|14~feeder_combout\ : std_logic;
SIGNAL \inst29|inst5|16~feeder_combout\ : std_logic;
SIGNAL \inst29|inst5|18~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[0]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[4]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[3]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[0]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst|clk2~feeder_combout\ : std_logic;
SIGNAL \inst9|ADDR[10]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|p0addr~feeder_combout\ : std_logic;
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
SIGNAL \inst3|inst5|qq[1]~31_combout\ : std_logic;
SIGNAL \inst3|inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[1]~32\ : std_logic;
SIGNAL \inst3|inst5|qq[2]~33_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[2]~34\ : std_logic;
SIGNAL \inst3|inst5|qq[3]~36\ : std_logic;
SIGNAL \inst3|inst5|qq[4]~37_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[4]~38\ : std_logic;
SIGNAL \inst3|inst5|qq[5]~40\ : std_logic;
SIGNAL \inst3|inst5|qq[6]~42\ : std_logic;
SIGNAL \inst3|inst5|qq[7]~43_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[7]~44\ : std_logic;
SIGNAL \inst3|inst5|qq[8]~46\ : std_logic;
SIGNAL \inst3|inst5|qq[9]~47_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[9]~48\ : std_logic;
SIGNAL \inst3|inst5|qq[10]~50\ : std_logic;
SIGNAL \inst3|inst5|qq[11]~51_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[11]~52\ : std_logic;
SIGNAL \inst3|inst5|qq[12]~54\ : std_logic;
SIGNAL \inst3|inst5|qq[13]~56\ : std_logic;
SIGNAL \inst3|inst5|qq[14]~57_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[14]~58\ : std_logic;
SIGNAL \inst3|inst5|qq[15]~59_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[15]~60\ : std_logic;
SIGNAL \inst3|inst5|qq[16]~61_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[16]~62\ : std_logic;
SIGNAL \inst3|inst5|qq[17]~63_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[17]~64\ : std_logic;
SIGNAL \inst3|inst5|qq[18]~65_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[18]~66\ : std_logic;
SIGNAL \inst3|inst5|qq[19]~68\ : std_logic;
SIGNAL \inst3|inst5|qq[20]~69_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[20]~70\ : std_logic;
SIGNAL \inst3|inst5|qq[21]~72\ : std_logic;
SIGNAL \inst3|inst5|qq[22]~74\ : std_logic;
SIGNAL \inst3|inst5|qq[23]~75_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[23]~76\ : std_logic;
SIGNAL \inst3|inst5|qq[24]~79\ : std_logic;
SIGNAL \inst3|inst5|qq[25]~80_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[25]~81\ : std_logic;
SIGNAL \inst3|inst5|qq[26]~83\ : std_logic;
SIGNAL \inst3|inst5|qq[27]~84_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[27]~85\ : std_logic;
SIGNAL \inst3|inst5|qq[28]~87\ : std_logic;
SIGNAL \inst3|inst5|qq[29]~88_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[29]~89\ : std_logic;
SIGNAL \inst3|inst5|qq[30]~90_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[30]~91\ : std_logic;
SIGNAL \inst3|inst5|qq[31]~92_combout\ : std_logic;
SIGNAL \inst3|inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|inst|Mux6~0clkctrl_outclk\ : std_logic;
SIGNAL \D[15]~42_combout\ : std_logic;
SIGNAL \NOE~combout\ : std_logic;
SIGNAL \NWE~combout\ : std_logic;
SIGNAL \inst1|DATA[0]~0_combout\ : std_logic;
SIGNAL \A16~combout\ : std_logic;
SIGNAL \inst9|process_0~0_combout\ : std_logic;
SIGNAL \inst9|nCS~regout\ : std_logic;
SIGNAL \inst1|DATA[15]$latch~combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst9|ADDR[7]~feeder_combout\ : std_logic;
SIGNAL \inst14~2_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst9|ADDR[15]~feeder_combout\ : std_logic;
SIGNAL \inst14~3_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|inst3|DOUT[15]~3_combout\ : std_logic;
SIGNAL \D[15]~71_combout\ : std_logic;
SIGNAL \NADV~combout\ : std_logic;
SIGNAL \inst2|AD[0]~0_combout\ : std_logic;
SIGNAL \inst2|AD[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst2|AD[15]$latch~combout\ : std_logic;
SIGNAL \inst2|AD[0]_102~combout\ : std_logic;
SIGNAL \inst1|DATA[14]$latch~combout\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \D[14]~43_combout\ : std_logic;
SIGNAL \D[14]~72_combout\ : std_logic;
SIGNAL \inst2|AD[14]$latch~combout\ : std_logic;
SIGNAL \D[13]~44_combout\ : std_logic;
SIGNAL \inst1|DATA[13]$latch~combout\ : std_logic;
SIGNAL \D[13]~73_combout\ : std_logic;
SIGNAL \inst2|AD[13]$latch~combout\ : std_logic;
SIGNAL \inst3|inst5|qq[12]~53_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[28]~86_combout\ : std_logic;
SIGNAL \D[12]~45_combout\ : std_logic;
SIGNAL \inst1|DATA[12]$latch~combout\ : std_logic;
SIGNAL \D[12]~74_combout\ : std_logic;
SIGNAL \inst2|AD[12]$latch~combout\ : std_logic;
SIGNAL \inst1|DATA[11]$latch~combout\ : std_logic;
SIGNAL \inst22~0_combout\ : std_logic;
SIGNAL \inst22~combout\ : std_logic;
SIGNAL \D[0]~46_combout\ : std_logic;
SIGNAL \D[11]~48_combout\ : std_logic;
SIGNAL \inst2|AD[11]$latch~combout\ : std_logic;
SIGNAL \inst3|inst5|qq[10]~49_combout\ : std_logic;
SIGNAL \inst1|DATA[0]_99~combout\ : std_logic;
SIGNAL \D[0]~9_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[26]~82_combout\ : std_logic;
SIGNAL \D[10]~49_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~3_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~4_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~1_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~5_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~6_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdaclr|dffe16a[0]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~1_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~3_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~5_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~6_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~0_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~2_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g[3]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~7_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g[7]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~2_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[7]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[7]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[2]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[2]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[2]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[5]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[5]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[6]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[6]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~0_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[8]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[8]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g[0]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[0]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[2]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[2]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~4_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g[5]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[5]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g[6]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[6]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|valid_wrreq~0_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~7_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~8_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[1]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[1]~feeder_combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ : std_logic;
SIGNAL \inst22~clkctrl_outclk\ : std_logic;
SIGNAL \CLK25M~combout\ : std_logic;
SIGNAL \CLK25M~clkctrl_outclk\ : std_logic;
SIGNAL \D[10]~50_combout\ : std_logic;
SIGNAL \inst2|AD[10]$latch~combout\ : std_logic;
SIGNAL \inst1|DATA[9]$latch~combout\ : std_logic;
SIGNAL \D[9]~52_combout\ : std_logic;
SIGNAL \inst2|AD[9]$latch~combout\ : std_logic;
SIGNAL \D[8]~53_combout\ : std_logic;
SIGNAL \inst1|DATA[8]$latch~combout\ : std_logic;
SIGNAL \D[8]~54_combout\ : std_logic;
SIGNAL \inst2|AD[8]$latch~combout\ : std_logic;
SIGNAL \D[7]~55_combout\ : std_logic;
SIGNAL \inst1|DATA[7]$latch~combout\ : std_logic;
SIGNAL \D[7]~56_combout\ : std_logic;
SIGNAL \inst2|AD[7]$latch~combout\ : std_logic;
SIGNAL \inst3|inst5|qq[6]~41_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[22]~73_combout\ : std_logic;
SIGNAL \D[6]~57_combout\ : std_logic;
SIGNAL \D[6]~58_combout\ : std_logic;
SIGNAL \inst2|AD[6]$latch~combout\ : std_logic;
SIGNAL \D[5]~59_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[5]~39_combout\ : std_logic;
SIGNAL \inst1|DATA[5]$latch~combout\ : std_logic;
SIGNAL \D[5]~60_combout\ : std_logic;
SIGNAL \inst2|AD[5]$latch~combout\ : std_logic;
SIGNAL \D[4]~61_combout\ : std_logic;
SIGNAL \inst1|DATA[4]$latch~combout\ : std_logic;
SIGNAL \D[4]~62_combout\ : std_logic;
SIGNAL \inst2|AD[4]$latch~combout\ : std_logic;
SIGNAL \D[3]~63_combout\ : std_logic;
SIGNAL \inst1|DATA[3]$latch~combout\ : std_logic;
SIGNAL \D[3]~64_combout\ : std_logic;
SIGNAL \inst2|AD[3]$latch~combout\ : std_logic;
SIGNAL \D[2]~65_combout\ : std_logic;
SIGNAL \D[2]~66_combout\ : std_logic;
SIGNAL \inst2|AD[2]$latch~combout\ : std_logic;
SIGNAL \inst1|DATA[1]$latch~combout\ : std_logic;
SIGNAL \D[1]~68_combout\ : std_logic;
SIGNAL \inst2|AD[1]$latch~combout\ : std_logic;
SIGNAL \inst1|DATA[0]$latch~combout\ : std_logic;
SIGNAL \D[0]~70_combout\ : std_logic;
SIGNAL \inst2|AD[0]$latch~combout\ : std_logic;
SIGNAL \inst6|altpll_component|_clk2\ : std_logic;
SIGNAL \inst6|altpll_component|_clk2~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|altpll_component|_clk1\ : std_logic;
SIGNAL \inst6|altpll_component|_clk1~clkctrl_outclk\ : std_logic;
SIGNAL \inst20~2_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst19~combout\ : std_logic;
SIGNAL \inst19~clkctrl_outclk\ : std_logic;
SIGNAL \inst29|inst1|START~feeder_combout\ : std_logic;
SIGNAL \inst29|inst1|START~regout\ : std_logic;
SIGNAL \inst14~1_combout\ : std_logic;
SIGNAL \inst14~4_combout\ : std_logic;
SIGNAL \inst14~combout\ : std_logic;
SIGNAL \inst3|inst3|DOUT[15]~2_combout\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \D[0]~8_combout\ : std_logic;
SIGNAL \D[0]~24_combout\ : std_logic;
SIGNAL \D[0]~25_combout\ : std_logic;
SIGNAL \D[8]~41_combout\ : std_logic;
SIGNAL \inst29|inst9|19~regout\ : std_logic;
SIGNAL \D[6]~12_combout\ : std_logic;
SIGNAL \D[6]~13_combout\ : std_logic;
SIGNAL \inst29|inst7|13~regout\ : std_logic;
SIGNAL \inst3|inst5|qq[21]~71_combout\ : std_logic;
SIGNAL \D[5]~14_combout\ : std_logic;
SIGNAL \D[5]~15_combout\ : std_logic;
SIGNAL \inst29|inst7|14~regout\ : std_logic;
SIGNAL \inst3|inst5|qq[3]~35_combout\ : std_logic;
SIGNAL \inst3|inst5|qq[19]~67_combout\ : std_logic;
SIGNAL \D[3]~18_combout\ : std_logic;
SIGNAL \D[3]~19_combout\ : std_logic;
SIGNAL \inst29|inst7|16~regout\ : std_logic;
SIGNAL \D[12]~32_combout\ : std_logic;
SIGNAL \D[12]~33_combout\ : std_logic;
SIGNAL \inst29|inst5|15~feeder_combout\ : std_logic;
SIGNAL \inst29|inst5|15~regout\ : std_logic;
SIGNAL \D[10]~36_combout\ : std_logic;
SIGNAL \D[10]~37_combout\ : std_logic;
SIGNAL \inst29|inst5|17~feeder_combout\ : std_logic;
SIGNAL \inst29|inst5|17~regout\ : std_logic;
SIGNAL \inst29|inst5|19~regout\ : std_logic;
SIGNAL \inst29|inst|13~regout\ : std_logic;
SIGNAL \inst29|inst|14~feeder_combout\ : std_logic;
SIGNAL \inst29|inst|14~regout\ : std_logic;
SIGNAL \inst29|inst|16~feeder_combout\ : std_logic;
SIGNAL \inst29|inst|16~regout\ : std_logic;
SIGNAL \inst12|acc[0]~32_combout\ : std_logic;
SIGNAL \inst12|acc[0]~33\ : std_logic;
SIGNAL \inst12|acc[1]~34_combout\ : std_logic;
SIGNAL \inst12|acc[1]~35\ : std_logic;
SIGNAL \inst12|acc[2]~36_combout\ : std_logic;
SIGNAL \inst12|acc[2]~37\ : std_logic;
SIGNAL \inst12|acc[3]~39\ : std_logic;
SIGNAL \inst12|acc[4]~40_combout\ : std_logic;
SIGNAL \inst12|acc[4]~41\ : std_logic;
SIGNAL \inst12|acc[5]~43\ : std_logic;
SIGNAL \inst12|acc[6]~45\ : std_logic;
SIGNAL \inst12|acc[7]~46_combout\ : std_logic;
SIGNAL \inst12|acc[7]~47\ : std_logic;
SIGNAL \inst12|acc[8]~49\ : std_logic;
SIGNAL \inst12|acc[9]~50_combout\ : std_logic;
SIGNAL \inst12|acc[9]~51\ : std_logic;
SIGNAL \inst12|acc[10]~53\ : std_logic;
SIGNAL \inst12|acc[11]~54_combout\ : std_logic;
SIGNAL \inst12|acc[11]~55\ : std_logic;
SIGNAL \inst12|acc[12]~57\ : std_logic;
SIGNAL \inst12|acc[13]~58_combout\ : std_logic;
SIGNAL \inst12|acc[13]~59\ : std_logic;
SIGNAL \inst12|acc[14]~60_combout\ : std_logic;
SIGNAL \inst12|acc[14]~61\ : std_logic;
SIGNAL \inst12|acc[15]~62_combout\ : std_logic;
SIGNAL \inst12|acc[15]~63\ : std_logic;
SIGNAL \inst12|acc[16]~64_combout\ : std_logic;
SIGNAL \inst12|acc[16]~65\ : std_logic;
SIGNAL \inst12|acc[17]~66_combout\ : std_logic;
SIGNAL \inst12|acc[17]~67\ : std_logic;
SIGNAL \inst12|acc[18]~68_combout\ : std_logic;
SIGNAL \inst12|acc[18]~69\ : std_logic;
SIGNAL \inst12|acc[19]~71\ : std_logic;
SIGNAL \inst12|acc[20]~72_combout\ : std_logic;
SIGNAL \inst12|acc[20]~73\ : std_logic;
SIGNAL \inst12|acc[21]~75\ : std_logic;
SIGNAL \inst12|acc[22]~77\ : std_logic;
SIGNAL \inst12|acc[23]~78_combout\ : std_logic;
SIGNAL \inst12|acc[23]~79\ : std_logic;
SIGNAL \inst12|acc[24]~80_combout\ : std_logic;
SIGNAL \inst12|acc[24]~81\ : std_logic;
SIGNAL \inst12|acc[25]~82_combout\ : std_logic;
SIGNAL \inst29|inst9|17~regout\ : std_logic;
SIGNAL \inst12|acc[25]~83\ : std_logic;
SIGNAL \inst12|acc[26]~84_combout\ : std_logic;
SIGNAL \inst12|acc[26]~85\ : std_logic;
SIGNAL \inst12|acc[27]~86_combout\ : std_logic;
SIGNAL \inst29|inst9|15~regout\ : std_logic;
SIGNAL \inst12|acc[27]~87\ : std_logic;
SIGNAL \inst12|acc[28]~88_combout\ : std_logic;
SIGNAL \inst12|acc[28]~89\ : std_logic;
SIGNAL \inst12|acc[29]~90_combout\ : std_logic;
SIGNAL \inst12|acc[29]~91\ : std_logic;
SIGNAL \inst12|acc[30]~92_combout\ : std_logic;
SIGNAL \inst12|acc[30]~93\ : std_logic;
SIGNAL \inst12|acc[31]~94_combout\ : std_logic;
SIGNAL \D[1]~22_combout\ : std_logic;
SIGNAL \D[1]~23_combout\ : std_logic;
SIGNAL \D[2]~20_combout\ : std_logic;
SIGNAL \D[2]~21_combout\ : std_logic;
SIGNAL \D[4]~16_combout\ : std_logic;
SIGNAL \D[4]~17_combout\ : std_logic;
SIGNAL \D[7]~10_combout\ : std_logic;
SIGNAL \D[7]~11_combout\ : std_logic;
SIGNAL \inst20~combout\ : std_logic;
SIGNAL \inst29|inst7|12~regout\ : std_logic;
SIGNAL \inst29|inst7|15~regout\ : std_logic;
SIGNAL \inst29|inst7|17~regout\ : std_logic;
SIGNAL \inst29|inst7|18~regout\ : std_logic;
SIGNAL \inst29|inst7|19~regout\ : std_logic;
SIGNAL \inst12|acc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst7|inst|cnt2\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst7|inst3|s\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst7|inst4|s\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst3|inst|current_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst2|qq\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst9|ADDR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|rdaclr|dffe16a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|ram_address_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|rdptr_g\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \DIN~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst17|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|inst|cnt1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|inst5|qq\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|ram_address_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|ALT_INV_aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\ : std_logic;
SIGNAL \inst8|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|altpll_component|ALT_INV__clk2~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|altpll_component|ALT_INV__clk0~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_inst19~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_inst22~clkctrl_outclk\ : std_logic;

BEGIN

INT4 <= ww_INT4;
ww_NWE <= NWE;
ww_A16 <= A16;
ww_A17 <= A17;
ww_A18 <= A18;
ww_NADV <= NADV;
ww_NOE <= NOE;
ww_COUT <= COUT;
ww_CLK25M <= CLK25M;
ww_DIN <= DIN;
CLKCARRY <= ww_CLKCARRY;
DACLK <= ww_DACLK;
CLK40M1 <= ww_CLK40M1;
PHASE_TEST <= ww_PHASE_TEST;
DACD <= ww_DACD;
RAMADDR <= ww_RAMADDR;
FRPIN <= ww_FRPIN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst6|altpll_component|pll_INCLK_bus\ <= (gnd & \CLK25M~combout\);

\inst6|altpll_component|_clk0\ <= \inst6|altpll_component|pll_CLK_bus\(0);
\inst6|altpll_component|_clk1\ <= \inst6|altpll_component|pll_CLK_bus\(1);
\inst6|altpll_component|_clk2\ <= \inst6|altpll_component|pll_CLK_bus\(2);

\inst17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\D[7]~11_combout\ & \D[6]~13_combout\ & \D[5]~15_combout\ & \D[4]~17_combout\ & \D[3]~19_combout\ & \D[2]~21_combout\ & \D[1]~23_combout\ & \D[0]~25_combout\);

\inst17|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst9|ADDR\(7) & \inst9|ADDR\(6) & \inst9|ADDR\(5) & \inst9|ADDR\(4) & \inst9|ADDR\(3) & \inst9|ADDR\(2) & \inst9|ADDR\(1) & \inst9|ADDR\(0));

\inst17|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst12|acc\(31) & \inst12|acc\(30) & \inst12|acc\(29) & \inst12|acc\(28) & \inst12|acc\(27) & \inst12|acc\(26) & \inst12|acc\(25) & \inst12|acc\(24));

\inst17|altsyncram_component|auto_generated|q_b\(0) <= \inst17|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\inst17|altsyncram_component|auto_generated|q_b\(1) <= \inst17|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\inst17|altsyncram_component|auto_generated|q_b\(2) <= \inst17|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\inst17|altsyncram_component|auto_generated|q_b\(3) <= \inst17|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\inst17|altsyncram_component|auto_generated|q_b\(4) <= \inst17|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\inst17|altsyncram_component|auto_generated|q_b\(5) <= \inst17|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\inst17|altsyncram_component|auto_generated|q_b\(6) <= \inst17|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\inst17|altsyncram_component|auto_generated|q_b\(7) <= \inst17|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBDATAIN_bus\ <= (\DIN~combout\(11) & \DIN~combout\(10) & \DIN~combout\(9) & \DIN~combout\(8) & \DIN~combout\(7) & \DIN~combout\(6) & \DIN~combout\(5) & 
\DIN~combout\(4) & \DIN~combout\(3) & \DIN~combout\(2) & \DIN~combout\(1) & \DIN~combout\(0));

\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTAADDR_bus\ <= (\inst8|dcfifo_component|auto_generated|ram_address_b\(7) & \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & 
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & 
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBADDR_bus\ <= (\inst8|dcfifo_component|auto_generated|ram_address_a\(7) & \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & 
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & 
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(0) <= \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(0);
\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(1) <= \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(1);
\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(2) <= \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(2);
\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(3) <= \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(3);
\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(4) <= \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(4);
\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(5) <= \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(5);
\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(6) <= \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(6);
\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(7) <= \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(7);
\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(8) <= \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(8);
\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(9) <= \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(9);
\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(10) <= \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(10);
\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(11) <= \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(11);

\inst6|altpll_component|_clk2~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst6|altpll_component|_clk2\);

\inst6|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst6|altpll_component|_clk0\);

\CLK25M~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK25M~combout\);

\inst6|altpll_component|_clk1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst6|altpll_component|_clk1\);

\inst2|AD[0]~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst2|AD[0]~0_combout\);

\inst19~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst19~combout\);

\inst3|inst|Mux6~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst3|inst|Mux6~0_combout\);

\inst22~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst22~combout\);
\inst8|dcfifo_component|auto_generated|wrfull_eq_comp|ALT_INV_aneb_result_wire\(0) <= NOT \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0);
\inst8|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\ <= NOT \inst8|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\;
\inst8|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0) <= NOT \inst8|dcfifo_component|auto_generated|rdaclr|dffe16a\(0);
\inst6|altpll_component|ALT_INV__clk2~clkctrl_outclk\ <= NOT \inst6|altpll_component|_clk2~clkctrl_outclk\;
\inst6|altpll_component|ALT_INV__clk0~clkctrl_outclk\ <= NOT \inst6|altpll_component|_clk0~clkctrl_outclk\;
\ALT_INV_inst19~clkctrl_outclk\ <= NOT \inst19~clkctrl_outclk\;
\ALT_INV_inst22~clkctrl_outclk\ <= NOT \inst22~clkctrl_outclk\;

-- Location: PLL_1
\inst6|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 4,
	c0_initial => 1,
	c0_low => 4,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 10,
	c1_initial => 1,
	c1_low => 10,
	c1_mode => "even",
	c1_ph => 0,
	c2_high => 10,
	c2_initial => 6,
	c2_low => 10,
	c2_mode => "even",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 4,
	clk0_phase_shift => "0",
	clk1_counter => "c1",
	clk1_divide_by => 5,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 8,
	clk1_phase_shift => "0",
	clk2_counter => "c2",
	clk2_divide_by => 5,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 8,
	clk2_phase_shift => "6250",
	compensate_clock => "clk0",
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
	inclk => \inst6|altpll_component|pll_INCLK_bus\,
	clk => \inst6|altpll_component|pll_CLK_bus\);

-- Location: M4K_X23_Y11
\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FIFO12:inst8|dcfifo:dcfifo_component|dcfifo_4cf1:auto_generated|altsyncram_1nu:fifo_ram|altsyncram_cbc1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 12,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 12,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 12,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst8|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst8|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	clk0 => \inst22~clkctrl_outclk\,
	clk1 => \CLK25M~clkctrl_outclk\,
	ena0 => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	ena1 => \inst8|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	portadatain => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAIN_bus\,
	portbdatain => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBDATAIN_bus\,
	portaaddr => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTAADDR_bus\,
	portbaddr => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\);

-- Location: LCFF_X22_Y8_N13
\inst12|acc[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[22]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(22));

-- Location: LCFF_X22_Y8_N11
\inst12|acc[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[21]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(21));

-- Location: LCFF_X22_Y8_N7
\inst12|acc[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[19]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(19));

-- Location: LCFF_X22_Y9_N25
\inst12|acc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(12));

-- Location: LCFF_X22_Y9_N21
\inst12|acc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[10]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(10));

-- Location: LCFF_X22_Y9_N17
\inst12|acc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[8]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(8));

-- Location: LCFF_X22_Y9_N13
\inst12|acc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(6));

-- Location: LCFF_X22_Y9_N11
\inst12|acc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(5));

-- Location: LCFF_X22_Y9_N7
\inst12|acc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(3));

-- Location: LCCOMB_X22_Y9_N6
\inst12|acc[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[3]~38_combout\ = (\inst12|acc\(3) & ((\inst29|inst|16~regout\ & (\inst12|acc[2]~37\ & VCC)) # (!\inst29|inst|16~regout\ & (!\inst12|acc[2]~37\)))) # (!\inst12|acc\(3) & ((\inst29|inst|16~regout\ & (!\inst12|acc[2]~37\)) # 
-- (!\inst29|inst|16~regout\ & ((\inst12|acc[2]~37\) # (GND)))))
-- \inst12|acc[3]~39\ = CARRY((\inst12|acc\(3) & (!\inst29|inst|16~regout\ & !\inst12|acc[2]~37\)) # (!\inst12|acc\(3) & ((!\inst12|acc[2]~37\) # (!\inst29|inst|16~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc\(3),
	datab => \inst29|inst|16~regout\,
	datad => VCC,
	cin => \inst12|acc[2]~37\,
	combout => \inst12|acc[3]~38_combout\,
	cout => \inst12|acc[3]~39\);

-- Location: LCCOMB_X22_Y9_N10
\inst12|acc[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[5]~42_combout\ = (\inst12|acc\(5) & ((\inst29|inst|14~regout\ & (\inst12|acc[4]~41\ & VCC)) # (!\inst29|inst|14~regout\ & (!\inst12|acc[4]~41\)))) # (!\inst12|acc\(5) & ((\inst29|inst|14~regout\ & (!\inst12|acc[4]~41\)) # 
-- (!\inst29|inst|14~regout\ & ((\inst12|acc[4]~41\) # (GND)))))
-- \inst12|acc[5]~43\ = CARRY((\inst12|acc\(5) & (!\inst29|inst|14~regout\ & !\inst12|acc[4]~41\)) # (!\inst12|acc\(5) & ((!\inst12|acc[4]~41\) # (!\inst29|inst|14~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc\(5),
	datab => \inst29|inst|14~regout\,
	datad => VCC,
	cin => \inst12|acc[4]~41\,
	combout => \inst12|acc[5]~42_combout\,
	cout => \inst12|acc[5]~43\);

-- Location: LCCOMB_X22_Y9_N12
\inst12|acc[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[6]~44_combout\ = ((\inst12|acc\(6) $ (\inst29|inst|13~regout\ $ (!\inst12|acc[5]~43\)))) # (GND)
-- \inst12|acc[6]~45\ = CARRY((\inst12|acc\(6) & ((\inst29|inst|13~regout\) # (!\inst12|acc[5]~43\))) # (!\inst12|acc\(6) & (\inst29|inst|13~regout\ & !\inst12|acc[5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc\(6),
	datab => \inst29|inst|13~regout\,
	datad => VCC,
	cin => \inst12|acc[5]~43\,
	combout => \inst12|acc[6]~44_combout\,
	cout => \inst12|acc[6]~45\);

-- Location: LCCOMB_X22_Y9_N16
\inst12|acc[8]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[8]~48_combout\ = ((\inst12|acc\(8) $ (\inst29|inst5|19~regout\ $ (!\inst12|acc[7]~47\)))) # (GND)
-- \inst12|acc[8]~49\ = CARRY((\inst12|acc\(8) & ((\inst29|inst5|19~regout\) # (!\inst12|acc[7]~47\))) # (!\inst12|acc\(8) & (\inst29|inst5|19~regout\ & !\inst12|acc[7]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc\(8),
	datab => \inst29|inst5|19~regout\,
	datad => VCC,
	cin => \inst12|acc[7]~47\,
	combout => \inst12|acc[8]~48_combout\,
	cout => \inst12|acc[8]~49\);

-- Location: LCCOMB_X22_Y9_N20
\inst12|acc[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[10]~52_combout\ = ((\inst12|acc\(10) $ (\inst29|inst5|17~regout\ $ (!\inst12|acc[9]~51\)))) # (GND)
-- \inst12|acc[10]~53\ = CARRY((\inst12|acc\(10) & ((\inst29|inst5|17~regout\) # (!\inst12|acc[9]~51\))) # (!\inst12|acc\(10) & (\inst29|inst5|17~regout\ & !\inst12|acc[9]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc\(10),
	datab => \inst29|inst5|17~regout\,
	datad => VCC,
	cin => \inst12|acc[9]~51\,
	combout => \inst12|acc[10]~52_combout\,
	cout => \inst12|acc[10]~53\);

-- Location: LCCOMB_X22_Y9_N24
\inst12|acc[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[12]~56_combout\ = ((\inst12|acc\(12) $ (\inst29|inst5|15~regout\ $ (!\inst12|acc[11]~55\)))) # (GND)
-- \inst12|acc[12]~57\ = CARRY((\inst12|acc\(12) & ((\inst29|inst5|15~regout\) # (!\inst12|acc[11]~55\))) # (!\inst12|acc\(12) & (\inst29|inst5|15~regout\ & !\inst12|acc[11]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc\(12),
	datab => \inst29|inst5|15~regout\,
	datad => VCC,
	cin => \inst12|acc[11]~55\,
	combout => \inst12|acc[12]~56_combout\,
	cout => \inst12|acc[12]~57\);

-- Location: LCCOMB_X22_Y8_N6
\inst12|acc[19]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[19]~70_combout\ = (\inst12|acc\(19) & ((\inst29|inst7|16~regout\ & (\inst12|acc[18]~69\ & VCC)) # (!\inst29|inst7|16~regout\ & (!\inst12|acc[18]~69\)))) # (!\inst12|acc\(19) & ((\inst29|inst7|16~regout\ & (!\inst12|acc[18]~69\)) # 
-- (!\inst29|inst7|16~regout\ & ((\inst12|acc[18]~69\) # (GND)))))
-- \inst12|acc[19]~71\ = CARRY((\inst12|acc\(19) & (!\inst29|inst7|16~regout\ & !\inst12|acc[18]~69\)) # (!\inst12|acc\(19) & ((!\inst12|acc[18]~69\) # (!\inst29|inst7|16~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc\(19),
	datab => \inst29|inst7|16~regout\,
	datad => VCC,
	cin => \inst12|acc[18]~69\,
	combout => \inst12|acc[19]~70_combout\,
	cout => \inst12|acc[19]~71\);

-- Location: LCCOMB_X22_Y8_N10
\inst12|acc[21]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[21]~74_combout\ = (\inst12|acc\(21) & ((\inst29|inst7|14~regout\ & (\inst12|acc[20]~73\ & VCC)) # (!\inst29|inst7|14~regout\ & (!\inst12|acc[20]~73\)))) # (!\inst12|acc\(21) & ((\inst29|inst7|14~regout\ & (!\inst12|acc[20]~73\)) # 
-- (!\inst29|inst7|14~regout\ & ((\inst12|acc[20]~73\) # (GND)))))
-- \inst12|acc[21]~75\ = CARRY((\inst12|acc\(21) & (!\inst29|inst7|14~regout\ & !\inst12|acc[20]~73\)) # (!\inst12|acc\(21) & ((!\inst12|acc[20]~73\) # (!\inst29|inst7|14~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc\(21),
	datab => \inst29|inst7|14~regout\,
	datad => VCC,
	cin => \inst12|acc[20]~73\,
	combout => \inst12|acc[21]~74_combout\,
	cout => \inst12|acc[21]~75\);

-- Location: LCCOMB_X22_Y8_N12
\inst12|acc[22]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[22]~76_combout\ = ((\inst12|acc\(22) $ (\inst29|inst7|13~regout\ $ (!\inst12|acc[21]~75\)))) # (GND)
-- \inst12|acc[22]~77\ = CARRY((\inst12|acc\(22) & ((\inst29|inst7|13~regout\) # (!\inst12|acc[21]~75\))) # (!\inst12|acc\(22) & (\inst29|inst7|13~regout\ & !\inst12|acc[21]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc\(22),
	datab => \inst29|inst7|13~regout\,
	datad => VCC,
	cin => \inst12|acc[21]~75\,
	combout => \inst12|acc[22]~76_combout\,
	cout => \inst12|acc[22]~77\);

-- Location: LCFF_X26_Y7_N19
\inst7|inst4|s[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst3|s\(14),
	datain => \inst7|inst4|s[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst4|s\(3));

-- Location: LCFF_X26_Y8_N21
\inst3|inst5|qq[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	sdata => \inst3|inst5|qq[13]~55_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	sload => VCC,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(13));

-- Location: LCFF_X27_Y9_N17
\inst3|inst5|qq[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[8]~45_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(8));

-- Location: LCCOMB_X27_Y9_N16
\inst3|inst5|qq[8]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[8]~45_combout\ = (\inst3|inst5|qq\(8) & (!\inst3|inst5|qq[7]~44\)) # (!\inst3|inst5|qq\(8) & ((\inst3|inst5|qq[7]~44\) # (GND)))
-- \inst3|inst5|qq[8]~46\ = CARRY((!\inst3|inst5|qq[7]~44\) # (!\inst3|inst5|qq\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(8),
	datad => VCC,
	cin => \inst3|inst5|qq[7]~44\,
	combout => \inst3|inst5|qq[8]~45_combout\,
	cout => \inst3|inst5|qq[8]~46\);

-- Location: LCCOMB_X27_Y9_N26
\inst3|inst5|qq[13]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[13]~55_combout\ = (\inst3|inst5|qq\(13) & (\inst3|inst5|qq[12]~54\ $ (GND))) # (!\inst3|inst5|qq\(13) & (!\inst3|inst5|qq[12]~54\ & VCC))
-- \inst3|inst5|qq[13]~56\ = CARRY((\inst3|inst5|qq\(13) & !\inst3|inst5|qq[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(13),
	datad => VCC,
	cin => \inst3|inst5|qq[12]~54\,
	combout => \inst3|inst5|qq[13]~55_combout\,
	cout => \inst3|inst5|qq[13]~56\);

-- Location: LCFF_X27_Y8_N17
\inst3|inst5|qq[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[24]~78_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(24));

-- Location: LCFF_X26_Y7_N17
\inst7|inst4|s[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst3|s\(14),
	datain => \inst7|inst4|s[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst4|s\(2));

-- Location: LCFF_X26_Y7_N15
\inst7|inst4|s[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst3|s\(14),
	datain => \inst7|inst4|s[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst4|s\(1));

-- Location: LCFF_X26_Y7_N13
\inst7|inst4|s[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst3|s\(14),
	datain => \inst7|inst4|s[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst4|s\(0));

-- Location: LCCOMB_X26_Y7_N12
\inst7|inst4|s[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst4|s[0]~4_combout\ = \inst7|inst4|s\(0) $ (VCC)
-- \inst7|inst4|s[0]~5\ = CARRY(\inst7|inst4|s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|s\(0),
	datad => VCC,
	combout => \inst7|inst4|s[0]~4_combout\,
	cout => \inst7|inst4|s[0]~5\);

-- Location: LCCOMB_X26_Y7_N14
\inst7|inst4|s[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst4|s[1]~6_combout\ = (\inst7|inst4|s\(1) & (!\inst7|inst4|s[0]~5\)) # (!\inst7|inst4|s\(1) & ((\inst7|inst4|s[0]~5\) # (GND)))
-- \inst7|inst4|s[1]~7\ = CARRY((!\inst7|inst4|s[0]~5\) # (!\inst7|inst4|s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst4|s\(1),
	datad => VCC,
	cin => \inst7|inst4|s[0]~5\,
	combout => \inst7|inst4|s[1]~6_combout\,
	cout => \inst7|inst4|s[1]~7\);

-- Location: LCCOMB_X26_Y7_N16
\inst7|inst4|s[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst4|s[2]~8_combout\ = (\inst7|inst4|s\(2) & (\inst7|inst4|s[1]~7\ $ (GND))) # (!\inst7|inst4|s\(2) & (!\inst7|inst4|s[1]~7\ & VCC))
-- \inst7|inst4|s[2]~9\ = CARRY((\inst7|inst4|s\(2) & !\inst7|inst4|s[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|s\(2),
	datad => VCC,
	cin => \inst7|inst4|s[1]~7\,
	combout => \inst7|inst4|s[2]~8_combout\,
	cout => \inst7|inst4|s[2]~9\);

-- Location: LCCOMB_X26_Y7_N18
\inst7|inst4|s[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst4|s[3]~10_combout\ = \inst7|inst4|s[2]~9\ $ (\inst7|inst4|s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst4|s\(3),
	cin => \inst7|inst4|s[2]~9\,
	combout => \inst7|inst4|s[3]~10_combout\);

-- Location: LCCOMB_X27_Y8_N16
\inst3|inst5|qq[24]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[24]~78_combout\ = (\inst3|inst5|qq\(24) & (!\inst3|inst5|qq[23]~76\)) # (!\inst3|inst5|qq\(24) & ((\inst3|inst5|qq[23]~76\) # (GND)))
-- \inst3|inst5|qq[24]~79\ = CARRY((!\inst3|inst5|qq[23]~76\) # (!\inst3|inst5|qq\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(24),
	datad => VCC,
	cin => \inst3|inst5|qq[23]~76\,
	combout => \inst3|inst5|qq[24]~78_combout\,
	cout => \inst3|inst5|qq[24]~79\);

-- Location: LCCOMB_X25_Y5_N0
\inst7|inst3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Add0~0_combout\ = \inst7|inst3|s\(0) $ (VCC)
-- \inst7|inst3|Add0~1\ = CARRY(\inst7|inst3|s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|s\(0),
	datad => VCC,
	combout => \inst7|inst3|Add0~0_combout\,
	cout => \inst7|inst3|Add0~1\);

-- Location: LCCOMB_X25_Y5_N2
\inst7|inst3|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Add0~2_combout\ = (\inst7|inst3|s\(1) & (!\inst7|inst3|Add0~1\)) # (!\inst7|inst3|s\(1) & ((\inst7|inst3|Add0~1\) # (GND)))
-- \inst7|inst3|Add0~3\ = CARRY((!\inst7|inst3|Add0~1\) # (!\inst7|inst3|s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|s\(1),
	datad => VCC,
	cin => \inst7|inst3|Add0~1\,
	combout => \inst7|inst3|Add0~2_combout\,
	cout => \inst7|inst3|Add0~3\);

-- Location: LCCOMB_X25_Y5_N4
\inst7|inst3|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Add0~4_combout\ = (\inst7|inst3|s\(2) & (\inst7|inst3|Add0~3\ $ (GND))) # (!\inst7|inst3|s\(2) & (!\inst7|inst3|Add0~3\ & VCC))
-- \inst7|inst3|Add0~5\ = CARRY((\inst7|inst3|s\(2) & !\inst7|inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|s\(2),
	datad => VCC,
	cin => \inst7|inst3|Add0~3\,
	combout => \inst7|inst3|Add0~4_combout\,
	cout => \inst7|inst3|Add0~5\);

-- Location: LCCOMB_X25_Y5_N6
\inst7|inst3|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Add0~6_combout\ = (\inst7|inst3|s\(3) & (!\inst7|inst3|Add0~5\)) # (!\inst7|inst3|s\(3) & ((\inst7|inst3|Add0~5\) # (GND)))
-- \inst7|inst3|Add0~7\ = CARRY((!\inst7|inst3|Add0~5\) # (!\inst7|inst3|s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|s\(3),
	datad => VCC,
	cin => \inst7|inst3|Add0~5\,
	combout => \inst7|inst3|Add0~6_combout\,
	cout => \inst7|inst3|Add0~7\);

-- Location: LCCOMB_X25_Y5_N8
\inst7|inst3|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Add0~8_combout\ = (\inst7|inst3|s\(4) & (\inst7|inst3|Add0~7\ $ (GND))) # (!\inst7|inst3|s\(4) & (!\inst7|inst3|Add0~7\ & VCC))
-- \inst7|inst3|Add0~9\ = CARRY((\inst7|inst3|s\(4) & !\inst7|inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|s\(4),
	datad => VCC,
	cin => \inst7|inst3|Add0~7\,
	combout => \inst7|inst3|Add0~8_combout\,
	cout => \inst7|inst3|Add0~9\);

-- Location: LCCOMB_X25_Y5_N10
\inst7|inst3|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Add0~10_combout\ = (\inst7|inst3|s\(5) & (!\inst7|inst3|Add0~9\)) # (!\inst7|inst3|s\(5) & ((\inst7|inst3|Add0~9\) # (GND)))
-- \inst7|inst3|Add0~11\ = CARRY((!\inst7|inst3|Add0~9\) # (!\inst7|inst3|s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|s\(5),
	datad => VCC,
	cin => \inst7|inst3|Add0~9\,
	combout => \inst7|inst3|Add0~10_combout\,
	cout => \inst7|inst3|Add0~11\);

-- Location: LCCOMB_X25_Y5_N12
\inst7|inst3|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Add0~12_combout\ = (\inst7|inst3|s\(6) & (\inst7|inst3|Add0~11\ $ (GND))) # (!\inst7|inst3|s\(6) & (!\inst7|inst3|Add0~11\ & VCC))
-- \inst7|inst3|Add0~13\ = CARRY((\inst7|inst3|s\(6) & !\inst7|inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|s\(6),
	datad => VCC,
	cin => \inst7|inst3|Add0~11\,
	combout => \inst7|inst3|Add0~12_combout\,
	cout => \inst7|inst3|Add0~13\);

-- Location: LCCOMB_X25_Y5_N14
\inst7|inst3|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Add0~14_combout\ = (\inst7|inst3|s\(7) & (!\inst7|inst3|Add0~13\)) # (!\inst7|inst3|s\(7) & ((\inst7|inst3|Add0~13\) # (GND)))
-- \inst7|inst3|Add0~15\ = CARRY((!\inst7|inst3|Add0~13\) # (!\inst7|inst3|s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|s\(7),
	datad => VCC,
	cin => \inst7|inst3|Add0~13\,
	combout => \inst7|inst3|Add0~14_combout\,
	cout => \inst7|inst3|Add0~15\);

-- Location: LCCOMB_X25_Y5_N16
\inst7|inst3|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Add0~16_combout\ = (\inst7|inst3|s\(8) & (\inst7|inst3|Add0~15\ $ (GND))) # (!\inst7|inst3|s\(8) & (!\inst7|inst3|Add0~15\ & VCC))
-- \inst7|inst3|Add0~17\ = CARRY((\inst7|inst3|s\(8) & !\inst7|inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|s\(8),
	datad => VCC,
	cin => \inst7|inst3|Add0~15\,
	combout => \inst7|inst3|Add0~16_combout\,
	cout => \inst7|inst3|Add0~17\);

-- Location: LCCOMB_X25_Y5_N18
\inst7|inst3|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Add0~18_combout\ = (\inst7|inst3|s\(9) & (!\inst7|inst3|Add0~17\)) # (!\inst7|inst3|s\(9) & ((\inst7|inst3|Add0~17\) # (GND)))
-- \inst7|inst3|Add0~19\ = CARRY((!\inst7|inst3|Add0~17\) # (!\inst7|inst3|s\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|s\(9),
	datad => VCC,
	cin => \inst7|inst3|Add0~17\,
	combout => \inst7|inst3|Add0~18_combout\,
	cout => \inst7|inst3|Add0~19\);

-- Location: LCCOMB_X25_Y5_N20
\inst7|inst3|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Add0~20_combout\ = (\inst7|inst3|s\(10) & (\inst7|inst3|Add0~19\ $ (GND))) # (!\inst7|inst3|s\(10) & (!\inst7|inst3|Add0~19\ & VCC))
-- \inst7|inst3|Add0~21\ = CARRY((\inst7|inst3|s\(10) & !\inst7|inst3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|s\(10),
	datad => VCC,
	cin => \inst7|inst3|Add0~19\,
	combout => \inst7|inst3|Add0~20_combout\,
	cout => \inst7|inst3|Add0~21\);

-- Location: LCCOMB_X25_Y5_N22
\inst7|inst3|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Add0~22_combout\ = (\inst7|inst3|s\(11) & (!\inst7|inst3|Add0~21\)) # (!\inst7|inst3|s\(11) & ((\inst7|inst3|Add0~21\) # (GND)))
-- \inst7|inst3|Add0~23\ = CARRY((!\inst7|inst3|Add0~21\) # (!\inst7|inst3|s\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|s\(11),
	datad => VCC,
	cin => \inst7|inst3|Add0~21\,
	combout => \inst7|inst3|Add0~22_combout\,
	cout => \inst7|inst3|Add0~23\);

-- Location: LCCOMB_X25_Y5_N24
\inst7|inst3|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Add0~24_combout\ = (\inst7|inst3|s\(12) & (\inst7|inst3|Add0~23\ $ (GND))) # (!\inst7|inst3|s\(12) & (!\inst7|inst3|Add0~23\ & VCC))
-- \inst7|inst3|Add0~25\ = CARRY((\inst7|inst3|s\(12) & !\inst7|inst3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|s\(12),
	datad => VCC,
	cin => \inst7|inst3|Add0~23\,
	combout => \inst7|inst3|Add0~24_combout\,
	cout => \inst7|inst3|Add0~25\);

-- Location: LCCOMB_X25_Y5_N26
\inst7|inst3|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Add0~26_combout\ = (\inst7|inst3|s\(13) & (!\inst7|inst3|Add0~25\)) # (!\inst7|inst3|s\(13) & ((\inst7|inst3|Add0~25\) # (GND)))
-- \inst7|inst3|Add0~27\ = CARRY((!\inst7|inst3|Add0~25\) # (!\inst7|inst3|s\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|s\(13),
	datad => VCC,
	cin => \inst7|inst3|Add0~25\,
	combout => \inst7|inst3|Add0~26_combout\,
	cout => \inst7|inst3|Add0~27\);

-- Location: LCCOMB_X25_Y5_N28
\inst7|inst3|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Add0~28_combout\ = \inst7|inst3|s\(14) $ (!\inst7|inst3|Add0~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst3|s\(14),
	cin => \inst7|inst3|Add0~27\,
	combout => \inst7|inst3|Add0~28_combout\);

-- Location: LCFF_X24_Y5_N11
\inst7|inst|cnt1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|inst|cnt1[2]~9_combout\,
	sclr => \inst7|inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|cnt1\(2));

-- Location: LCFF_X24_Y5_N13
\inst7|inst|cnt1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|inst|cnt1[3]~11_combout\,
	sclr => \inst7|inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|cnt1\(3));

-- Location: LCFF_X24_Y5_N15
\inst7|inst|cnt1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|inst|cnt1[4]~13_combout\,
	sclr => \inst7|inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|cnt1\(4));

-- Location: LCFF_X27_Y5_N25
\inst7|inst|cnt2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|inst|cnt2[2]~9_combout\,
	sclr => \inst7|inst|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|cnt2\(2));

-- Location: LCFF_X27_Y5_N27
\inst7|inst|cnt2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|inst|cnt2[3]~11_combout\,
	sclr => \inst7|inst|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|cnt2\(3));

-- Location: LCFF_X27_Y5_N29
\inst7|inst|cnt2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|inst|cnt2[4]~13_combout\,
	sclr => \inst7|inst|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|cnt2\(4));

-- Location: LCFF_X24_Y5_N9
\inst7|inst|cnt1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|inst|cnt1[1]~7_combout\,
	sclr => \inst7|inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|cnt1\(1));

-- Location: LCFF_X24_Y5_N7
\inst7|inst|cnt1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|inst|cnt1[0]~5_combout\,
	sclr => \inst7|inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|cnt1\(0));

-- Location: LCCOMB_X24_Y5_N6
\inst7|inst|cnt1[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|cnt1[0]~5_combout\ = \inst7|inst|cnt1\(0) $ (VCC)
-- \inst7|inst|cnt1[0]~6\ = CARRY(\inst7|inst|cnt1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|cnt1\(0),
	datad => VCC,
	combout => \inst7|inst|cnt1[0]~5_combout\,
	cout => \inst7|inst|cnt1[0]~6\);

-- Location: LCCOMB_X24_Y5_N8
\inst7|inst|cnt1[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|cnt1[1]~7_combout\ = (\inst7|inst|cnt1\(1) & (!\inst7|inst|cnt1[0]~6\)) # (!\inst7|inst|cnt1\(1) & ((\inst7|inst|cnt1[0]~6\) # (GND)))
-- \inst7|inst|cnt1[1]~8\ = CARRY((!\inst7|inst|cnt1[0]~6\) # (!\inst7|inst|cnt1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|cnt1\(1),
	datad => VCC,
	cin => \inst7|inst|cnt1[0]~6\,
	combout => \inst7|inst|cnt1[1]~7_combout\,
	cout => \inst7|inst|cnt1[1]~8\);

-- Location: LCCOMB_X24_Y5_N10
\inst7|inst|cnt1[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|cnt1[2]~9_combout\ = (\inst7|inst|cnt1\(2) & (\inst7|inst|cnt1[1]~8\ $ (GND))) # (!\inst7|inst|cnt1\(2) & (!\inst7|inst|cnt1[1]~8\ & VCC))
-- \inst7|inst|cnt1[2]~10\ = CARRY((\inst7|inst|cnt1\(2) & !\inst7|inst|cnt1[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|cnt1\(2),
	datad => VCC,
	cin => \inst7|inst|cnt1[1]~8\,
	combout => \inst7|inst|cnt1[2]~9_combout\,
	cout => \inst7|inst|cnt1[2]~10\);

-- Location: LCCOMB_X24_Y5_N12
\inst7|inst|cnt1[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|cnt1[3]~11_combout\ = (\inst7|inst|cnt1\(3) & (!\inst7|inst|cnt1[2]~10\)) # (!\inst7|inst|cnt1\(3) & ((\inst7|inst|cnt1[2]~10\) # (GND)))
-- \inst7|inst|cnt1[3]~12\ = CARRY((!\inst7|inst|cnt1[2]~10\) # (!\inst7|inst|cnt1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|cnt1\(3),
	datad => VCC,
	cin => \inst7|inst|cnt1[2]~10\,
	combout => \inst7|inst|cnt1[3]~11_combout\,
	cout => \inst7|inst|cnt1[3]~12\);

-- Location: LCCOMB_X24_Y5_N14
\inst7|inst|cnt1[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|cnt1[4]~13_combout\ = \inst7|inst|cnt1\(4) $ (!\inst7|inst|cnt1[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|cnt1\(4),
	cin => \inst7|inst|cnt1[3]~12\,
	combout => \inst7|inst|cnt1[4]~13_combout\);

-- Location: LCFF_X27_Y5_N23
\inst7|inst|cnt2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|inst|cnt2[1]~7_combout\,
	sclr => \inst7|inst|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|cnt2\(1));

-- Location: LCFF_X27_Y5_N21
\inst7|inst|cnt2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|inst|cnt2[0]~5_combout\,
	sclr => \inst7|inst|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|cnt2\(0));

-- Location: LCCOMB_X27_Y5_N20
\inst7|inst|cnt2[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|cnt2[0]~5_combout\ = \inst7|inst|cnt2\(0) $ (VCC)
-- \inst7|inst|cnt2[0]~6\ = CARRY(\inst7|inst|cnt2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|cnt2\(0),
	datad => VCC,
	combout => \inst7|inst|cnt2[0]~5_combout\,
	cout => \inst7|inst|cnt2[0]~6\);

-- Location: LCCOMB_X27_Y5_N22
\inst7|inst|cnt2[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|cnt2[1]~7_combout\ = (\inst7|inst|cnt2\(1) & (!\inst7|inst|cnt2[0]~6\)) # (!\inst7|inst|cnt2\(1) & ((\inst7|inst|cnt2[0]~6\) # (GND)))
-- \inst7|inst|cnt2[1]~8\ = CARRY((!\inst7|inst|cnt2[0]~6\) # (!\inst7|inst|cnt2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|cnt2\(1),
	datad => VCC,
	cin => \inst7|inst|cnt2[0]~6\,
	combout => \inst7|inst|cnt2[1]~7_combout\,
	cout => \inst7|inst|cnt2[1]~8\);

-- Location: LCCOMB_X27_Y5_N24
\inst7|inst|cnt2[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|cnt2[2]~9_combout\ = (\inst7|inst|cnt2\(2) & (\inst7|inst|cnt2[1]~8\ $ (GND))) # (!\inst7|inst|cnt2\(2) & (!\inst7|inst|cnt2[1]~8\ & VCC))
-- \inst7|inst|cnt2[2]~10\ = CARRY((\inst7|inst|cnt2\(2) & !\inst7|inst|cnt2[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|cnt2\(2),
	datad => VCC,
	cin => \inst7|inst|cnt2[1]~8\,
	combout => \inst7|inst|cnt2[2]~9_combout\,
	cout => \inst7|inst|cnt2[2]~10\);

-- Location: LCCOMB_X27_Y5_N26
\inst7|inst|cnt2[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|cnt2[3]~11_combout\ = (\inst7|inst|cnt2\(3) & (!\inst7|inst|cnt2[2]~10\)) # (!\inst7|inst|cnt2\(3) & ((\inst7|inst|cnt2[2]~10\) # (GND)))
-- \inst7|inst|cnt2[3]~12\ = CARRY((!\inst7|inst|cnt2[2]~10\) # (!\inst7|inst|cnt2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|cnt2\(3),
	datad => VCC,
	cin => \inst7|inst|cnt2[2]~10\,
	combout => \inst7|inst|cnt2[3]~11_combout\,
	cout => \inst7|inst|cnt2[3]~12\);

-- Location: LCCOMB_X27_Y5_N28
\inst7|inst|cnt2[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|cnt2[4]~13_combout\ = \inst7|inst|cnt2[3]~12\ $ (!\inst7|inst|cnt2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst|cnt2\(4),
	cin => \inst7|inst|cnt2[3]~12\,
	combout => \inst7|inst|cnt2[4]~13_combout\);

-- Location: LCFF_X20_Y11_N13
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[8]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(8));

-- Location: LCFF_X20_Y11_N25
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[7]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(7));

-- Location: LCFF_X20_Y11_N23
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[4]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(4));

-- Location: LCCOMB_X20_Y11_N24
\inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\ = (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & ((\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(7)) # 
-- (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) $ (\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(4))))) # (!\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
-- ((\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) $ (\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(4))) # (!\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datab => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datac => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(7),
	datad => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(4),
	combout => \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X21_Y11_N18
\inst8|dcfifo_component|auto_generated|wrptr_gp|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\ = (!\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & (\inst15|START~combout\ & !\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datac => \inst15|START~combout\,
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	combout => \inst8|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\);

-- Location: LCCOMB_X21_Y11_N20
\inst8|dcfifo_component|auto_generated|wrptr_gp|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ = (\inst8|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & (\inst8|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\ & 
-- ((\inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_combout\) # (\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datab => \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_combout\,
	datac => \inst8|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\,
	datad => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(1),
	combout => \inst8|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\);

-- Location: LCFF_X19_Y11_N17
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[8]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|rdptr_g\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(8));

-- Location: LCFF_X19_Y11_N1
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[7]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|rdptr_g\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(7));

-- Location: LCFF_X19_Y11_N15
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[4]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(4));

-- Location: LCCOMB_X22_Y7_N6
\inst14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14~0_combout\ = (\inst9|ADDR\(4)) # ((\inst9|ADDR\(5)) # ((\inst9|ADDR\(0)) # (\inst9|ADDR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ADDR\(4),
	datab => \inst9|ADDR\(5),
	datac => \inst9|ADDR\(0),
	datad => \inst9|ADDR\(3),
	combout => \inst14~0_combout\);

-- Location: LCFF_X20_Y7_N21
\inst9|ADDR[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	datain => \inst9|ADDR[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|ADDR\(10));

-- Location: LCCOMB_X20_Y7_N14
\inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst9|ADDR\(8) & \inst9|ADDR\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ADDR\(8),
	datad => \inst9|ADDR\(2),
	combout => \inst|Equal0~0_combout\);

-- Location: LCFF_X21_Y7_N7
\inst29|inst9|12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~combout\,
	datain => \inst29|inst9|12~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst9|12~regout\);

-- Location: LCFF_X20_Y7_N27
\inst29|inst9|13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~combout\,
	sdata => \D[14]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst9|13~regout\);

-- Location: LCFF_X21_Y8_N31
\inst29|inst9|14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~combout\,
	datain => \D[13]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst9|14~regout\);

-- Location: LCFF_X22_Y7_N17
\inst29|inst9|16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~combout\,
	sdata => \D[11]~35_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst9|16~regout\);

-- Location: LCFF_X22_Y7_N11
\inst29|inst9|18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~combout\,
	sdata => \D[9]~39_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst9|18~regout\);

-- Location: LCFF_X21_Y9_N13
\inst29|inst5|12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	sdata => \D[15]~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst5|12~regout\);

-- Location: LCFF_X21_Y9_N11
\inst29|inst5|13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	datain => \inst29|inst5|13~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst5|13~regout\);

-- Location: LCFF_X21_Y9_N21
\inst29|inst5|14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	datain => \inst29|inst5|14~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst5|14~regout\);

-- Location: LCFF_X22_Y6_N1
\inst29|inst5|16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	datain => \inst29|inst5|16~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst5|16~regout\);

-- Location: LCFF_X25_Y7_N23
\inst29|inst5|18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	datain => \inst29|inst5|18~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst5|18~regout\);

-- Location: LCFF_X21_Y9_N15
\inst29|inst|12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	datain => \inst29|inst|12~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst|12~regout\);

-- Location: LCFF_X22_Y7_N27
\inst29|inst|15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	sdata => \D[4]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst|15~regout\);

-- Location: LCFF_X22_Y6_N31
\inst29|inst|17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	datain => \inst29|inst|17~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst|17~regout\);

-- Location: LCFF_X22_Y7_N29
\inst29|inst|18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	datain => \inst29|inst|18~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst|18~regout\);

-- Location: LCFF_X25_Y7_N11
\inst29|inst|19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	sdata => \D[0]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst|19~regout\);

-- Location: LCFF_X21_Y11_N11
\inst8|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	sload => VCC,
	ena => \inst8|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\);

-- Location: LCCOMB_X21_Y7_N8
\inst13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13~0_combout\ = (\inst9|ADDR\(3)) # (((\inst9|ADDR\(5)) # (\inst9|ADDR\(4))) # (!\inst9|ADDR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ADDR\(3),
	datab => \inst9|ADDR\(1),
	datac => \inst9|ADDR\(5),
	datad => \inst9|ADDR\(4),
	combout => \inst13~0_combout\);

-- Location: LCCOMB_X20_Y7_N26
\inst20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20~0_combout\ = (\inst9|ADDR\(6) & (!\inst9|nCS~regout\ & !\NWE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ADDR\(6),
	datab => \inst9|nCS~regout\,
	datad => \NWE~combout\,
	combout => \inst20~0_combout\);

-- Location: LCCOMB_X20_Y7_N30
\inst20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20~1_combout\ = (\inst14~3_combout\ & (\inst|Equal0~0_combout\ & (\inst14~2_combout\ & \inst20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14~3_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst14~2_combout\,
	datad => \inst20~0_combout\,
	combout => \inst20~1_combout\);

-- Location: LCCOMB_X21_Y7_N4
inst13 : cycloneii_lcell_comb
-- Equation(s):
-- \inst13~combout\ = ((\inst13~0_combout\) # ((\inst9|ADDR\(9)) # (!\inst9|ADDR\(0)))) # (!\inst20~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20~1_combout\,
	datab => \inst13~0_combout\,
	datac => \inst9|ADDR\(0),
	datad => \inst9|ADDR\(9),
	combout => \inst13~combout\);

-- Location: LCFF_X17_Y11_N15
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[4]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(4));

-- Location: LCFF_X17_Y11_N27
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[3]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(3));

-- Location: LCFF_X18_Y11_N21
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[0]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(0));

-- Location: LCCOMB_X18_Y11_N20
\inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~3_combout\ = (\inst8|dcfifo_component|auto_generated|rdptr_g\(3) & ((\inst8|dcfifo_component|auto_generated|rdptr_g\(0) $ 
-- (\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(0))) # (!\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(3)))) # (!\inst8|dcfifo_component|auto_generated|rdptr_g\(3) & 
-- ((\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(3)) # (\inst8|dcfifo_component|auto_generated|rdptr_g\(0) $ (\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g\(3),
	datab => \inst8|dcfifo_component|auto_generated|rdptr_g\(0),
	datac => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(0),
	datad => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(3),
	combout => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~3_combout\);

-- Location: LCFF_X18_Y11_N1
\inst8|dcfifo_component|auto_generated|p0addr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|p0addr~feeder_combout\,
	aclr => \inst8|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|p0addr~regout\);

-- Location: LCFF_X25_Y8_N17
\inst3|inst5|qq[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[0]~feeder_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(0));

-- Location: LCCOMB_X20_Y8_N8
\D[15]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[15]~26_combout\ = (\inst5~combout\ & ((\inst3|inst2|qq\(15)))) # (!\inst5~combout\ & (\inst3|inst2|qq\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~combout\,
	datab => \inst3|inst2|qq\(31),
	datad => \inst3|inst2|qq\(15),
	combout => \D[15]~26_combout\);

-- Location: LCCOMB_X20_Y8_N6
\D[15]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[15]~27_combout\ = (\inst3|inst3|DOUT[15]~4_combout\ & (\D[15]~26_combout\)) # (!\inst3|inst3|DOUT[15]~4_combout\ & ((\inst1|DATA[15]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[15]~26_combout\,
	datac => \inst1|DATA[15]$latch~combout\,
	datad => \inst3|inst3|DOUT[15]~4_combout\,
	combout => \D[15]~27_combout\);

-- Location: LCCOMB_X20_Y8_N4
\D[14]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[14]~28_combout\ = (\inst5~combout\ & (\inst3|inst2|qq\(14))) # (!\inst5~combout\ & ((\inst3|inst2|qq\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(14),
	datab => \inst3|inst2|qq\(30),
	datad => \inst5~combout\,
	combout => \D[14]~28_combout\);

-- Location: LCCOMB_X20_Y8_N26
\D[14]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[14]~29_combout\ = (\inst3|inst3|DOUT[15]~4_combout\ & ((\D[14]~28_combout\))) # (!\inst3|inst3|DOUT[15]~4_combout\ & (\inst1|DATA[14]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DATA[14]$latch~combout\,
	datac => \D[14]~28_combout\,
	datad => \inst3|inst3|DOUT[15]~4_combout\,
	combout => \D[14]~29_combout\);

-- Location: LCCOMB_X21_Y8_N10
\D[13]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[13]~30_combout\ = (\inst5~combout\ & (\inst3|inst2|qq\(13))) # (!\inst5~combout\ & ((\inst3|inst2|qq\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst2|qq\(13),
	datac => \inst3|inst2|qq\(29),
	datad => \inst5~combout\,
	combout => \D[13]~30_combout\);

-- Location: LCCOMB_X21_Y8_N30
\D[13]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[13]~31_combout\ = (\inst3|inst3|DOUT[15]~4_combout\ & ((\D[13]~30_combout\))) # (!\inst3|inst3|DOUT[15]~4_combout\ & (\inst1|DATA[13]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DATA[13]$latch~combout\,
	datac => \inst3|inst3|DOUT[15]~4_combout\,
	datad => \D[13]~30_combout\,
	combout => \D[13]~31_combout\);

-- Location: LCCOMB_X20_Y6_N12
\D[11]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[11]~34_combout\ = (\D[0]~8_combout\ & (((\D[0]~9_combout\)))) # (!\D[0]~8_combout\ & ((\D[0]~9_combout\ & (\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(11))) # (!\D[0]~9_combout\ & ((\inst3|inst2|qq\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~8_combout\,
	datab => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(11),
	datac => \D[0]~9_combout\,
	datad => \inst3|inst2|qq\(27),
	combout => \D[11]~34_combout\);

-- Location: LCCOMB_X20_Y6_N18
\D[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[11]~35_combout\ = (\D[11]~34_combout\ & (((\inst1|DATA[11]$latch~combout\) # (!\D[0]~8_combout\)))) # (!\D[11]~34_combout\ & (\inst3|inst2|qq\(11) & ((\D[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(11),
	datab => \D[11]~34_combout\,
	datac => \inst1|DATA[11]$latch~combout\,
	datad => \D[0]~8_combout\,
	combout => \D[11]~35_combout\);

-- Location: LCCOMB_X25_Y7_N12
\D[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[9]~38_combout\ = (\D[0]~9_combout\ & (((\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(9)) # (\D[0]~8_combout\)))) # (!\D[0]~9_combout\ & (\inst3|inst2|qq\(25) & ((!\D[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~9_combout\,
	datab => \inst3|inst2|qq\(25),
	datac => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(9),
	datad => \D[0]~8_combout\,
	combout => \D[9]~38_combout\);

-- Location: LCCOMB_X25_Y7_N6
\D[9]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[9]~39_combout\ = (\D[9]~38_combout\ & ((\inst1|DATA[9]$latch~combout\) # ((!\D[0]~8_combout\)))) # (!\D[9]~38_combout\ & (((\inst3|inst2|qq\(9) & \D[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DATA[9]$latch~combout\,
	datab => \inst3|inst2|qq\(9),
	datac => \D[9]~38_combout\,
	datad => \D[0]~8_combout\,
	combout => \D[9]~39_combout\);

-- Location: LCCOMB_X24_Y8_N16
\D[8]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[8]~40_combout\ = (\D[0]~9_combout\ & (((\D[0]~8_combout\)))) # (!\D[0]~9_combout\ & ((\D[0]~8_combout\ & (\inst3|inst2|qq\(8))) # (!\D[0]~8_combout\ & ((\inst3|inst2|qq\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~9_combout\,
	datab => \inst3|inst2|qq\(8),
	datac => \inst3|inst2|qq\(24),
	datad => \D[0]~8_combout\,
	combout => \D[8]~40_combout\);

-- Location: LCFF_X17_Y11_N11
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[4]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(4));

-- Location: LCFF_X17_Y11_N9
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[3]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(3));

-- Location: LCFF_X18_Y11_N9
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[0]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(0));

-- Location: LCCOMB_X18_Y11_N10
\inst8|dcfifo_component|auto_generated|rdptr_g1p|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ = (\inst8|dcfifo_component|auto_generated|p0addr~regout\ & (!\inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\ & 
-- (\inst8|dcfifo_component|auto_generated|rdptr_g\(1) $ (!\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g\(1),
	datab => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(1),
	datac => \inst8|dcfifo_component|auto_generated|p0addr~regout\,
	datad => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\,
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\);

-- Location: LCCOMB_X25_Y8_N30
\inst3|inst5|qq[0]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[0]~77_combout\ = \inst3|inst5|qq\(0) $ (\inst3|inst|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(0),
	datad => \inst3|inst|Mux5~0_combout\,
	combout => \inst3|inst5|qq[0]~77_combout\);

-- Location: LCCOMB_X20_Y6_N24
\D[11]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[11]~47_combout\ = (\D[0]~46_combout\ & (((\D[0]~9_combout\)))) # (!\D[0]~46_combout\ & ((\D[0]~9_combout\ & ((\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(11)))) # (!\D[0]~9_combout\ & (\inst3|inst2|qq\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~46_combout\,
	datab => \inst3|inst2|qq\(27),
	datac => \D[0]~9_combout\,
	datad => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(11),
	combout => \D[11]~47_combout\);

-- Location: LCCOMB_X25_Y7_N20
\D[9]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[9]~51_combout\ = (\D[0]~9_combout\ & ((\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(9)) # ((\D[0]~46_combout\)))) # (!\D[0]~9_combout\ & (((\inst3|inst2|qq\(25) & !\D[0]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(9),
	datab => \inst3|inst2|qq\(25),
	datac => \D[0]~9_combout\,
	datad => \D[0]~46_combout\,
	combout => \D[9]~51_combout\);

-- Location: LCCOMB_X24_Y7_N24
\D[1]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[1]~67_combout\ = (\D[0]~46_combout\ & (((\D[0]~9_combout\)))) # (!\D[0]~46_combout\ & ((\D[0]~9_combout\ & ((\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(1)))) # (!\D[0]~9_combout\ & (\inst3|inst2|qq\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~46_combout\,
	datab => \inst3|inst2|qq\(17),
	datac => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(1),
	datad => \D[0]~9_combout\,
	combout => \D[1]~67_combout\);

-- Location: LCCOMB_X25_Y7_N8
\D[0]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[0]~69_combout\ = (\D[0]~9_combout\ & (((\D[0]~46_combout\)))) # (!\D[0]~9_combout\ & ((\D[0]~46_combout\ & ((\inst3|inst2|qq\(0)))) # (!\D[0]~46_combout\ & (\inst3|inst2|qq\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(16),
	datab => \D[0]~9_combout\,
	datac => \inst3|inst2|qq\(0),
	datad => \D[0]~46_combout\,
	combout => \D[0]~69_combout\);

-- Location: LCFF_X26_Y7_N21
\inst7|inst3|s[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst|clk_out~combout\,
	datain => \inst7|inst3|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst3|s\(14));

-- Location: LCFF_X20_Y11_N5
\inst8|dcfifo_component|auto_generated|delayed_wrptr_g[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(4));

-- Location: LCFF_X20_Y11_N3
\inst8|dcfifo_component|auto_generated|delayed_wrptr_g[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(3));

-- Location: LCFF_X18_Y11_N5
\inst8|dcfifo_component|auto_generated|delayed_wrptr_g[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(0));

-- Location: LCFF_X22_Y11_N17
\inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\,
	aclr => \inst8|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	ena => \inst8|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\);

-- Location: LCFF_X26_Y5_N19
\inst7|inst3|s[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst|clk_out~combout\,
	datain => \inst7|inst3|s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst3|s\(13));

-- Location: LCFF_X26_Y5_N9
\inst7|inst3|s[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst|clk_out~combout\,
	datain => \inst7|inst3|s~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst3|s\(12));

-- Location: LCFF_X26_Y5_N29
\inst7|inst3|s[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst|clk_out~combout\,
	datain => \inst7|inst3|s~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst3|s\(11));

-- Location: LCFF_X26_Y5_N27
\inst7|inst3|s[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst|clk_out~combout\,
	datain => \inst7|inst3|s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst3|s\(10));

-- Location: LCFF_X25_Y5_N19
\inst7|inst3|s[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst|clk_out~combout\,
	datain => \inst7|inst3|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst3|s\(9));

-- Location: LCFF_X26_Y5_N31
\inst7|inst3|s[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst|clk_out~combout\,
	datain => \inst7|inst3|s~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst3|s\(8));

-- Location: LCFF_X25_Y5_N15
\inst7|inst3|s[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst|clk_out~combout\,
	datain => \inst7|inst3|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst3|s\(7));

-- Location: LCFF_X25_Y5_N13
\inst7|inst3|s[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst|clk_out~combout\,
	datain => \inst7|inst3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst3|s\(6));

-- Location: LCFF_X25_Y5_N11
\inst7|inst3|s[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst|clk_out~combout\,
	datain => \inst7|inst3|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst3|s\(5));

-- Location: LCFF_X25_Y5_N9
\inst7|inst3|s[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst|clk_out~combout\,
	datain => \inst7|inst3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst3|s\(4));

-- Location: LCFF_X26_Y5_N15
\inst7|inst3|s[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst|clk_out~combout\,
	datain => \inst7|inst3|s~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst3|s\(3));

-- Location: LCFF_X25_Y5_N5
\inst7|inst3|s[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst|clk_out~combout\,
	datain => \inst7|inst3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst3|s\(2));

-- Location: LCFF_X25_Y5_N3
\inst7|inst3|s[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst|clk_out~combout\,
	datain => \inst7|inst3|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst3|s\(1));

-- Location: LCFF_X26_Y5_N25
\inst7|inst3|s[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst|clk_out~combout\,
	datain => \inst7|inst3|s~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst3|s\(0));

-- Location: LCCOMB_X26_Y5_N10
\inst7|inst3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Equal0~0_combout\ = (!\inst7|inst3|s\(6) & (!\inst7|inst3|s\(5) & (\inst7|inst3|s\(3) & !\inst7|inst3|s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|s\(6),
	datab => \inst7|inst3|s\(5),
	datac => \inst7|inst3|s\(3),
	datad => \inst7|inst3|s\(4),
	combout => \inst7|inst3|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y5_N12
\inst7|inst3|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Equal0~1_combout\ = (!\inst7|inst3|s\(7) & (!\inst7|inst3|s\(2) & (!\inst7|inst3|s\(0) & !\inst7|inst3|s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|s\(7),
	datab => \inst7|inst3|s\(2),
	datac => \inst7|inst3|s\(0),
	datad => \inst7|inst3|s\(1),
	combout => \inst7|inst3|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y5_N6
\inst7|inst3|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Equal0~2_combout\ = (!\inst7|inst3|s\(9) & (\inst7|inst3|s\(11) & (\inst7|inst3|s\(10) & \inst7|inst3|s\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|s\(9),
	datab => \inst7|inst3|s\(11),
	datac => \inst7|inst3|s\(10),
	datad => \inst7|inst3|s\(8),
	combout => \inst7|inst3|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y5_N16
\inst7|inst3|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|Equal0~3_combout\ = (\inst7|inst3|Equal0~2_combout\ & (\inst7|inst3|s\(14) & (\inst7|inst3|s\(12) & \inst7|inst3|s\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|Equal0~2_combout\,
	datab => \inst7|inst3|s\(14),
	datac => \inst7|inst3|s\(12),
	datad => \inst7|inst3|s\(13),
	combout => \inst7|inst3|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y7_N20
\inst7|inst3|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|s~0_combout\ = (\inst7|inst3|Add0~28_combout\ & (((!\inst7|inst3|Equal0~0_combout\) # (!\inst7|inst3|Equal0~3_combout\)) # (!\inst7|inst3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|Equal0~1_combout\,
	datab => \inst7|inst3|Equal0~3_combout\,
	datac => \inst7|inst3|Add0~28_combout\,
	datad => \inst7|inst3|Equal0~0_combout\,
	combout => \inst7|inst3|s~0_combout\);

-- Location: LCCOMB_X22_Y11_N16
\inst8|dcfifo_component|auto_generated|rdptr_g1p|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7) $ (\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) $ 
-- (\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) $ (\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7),
	datab => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	datac => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\);

-- Location: LCCOMB_X26_Y5_N18
\inst7|inst3|s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|s~1_combout\ = (\inst7|inst3|Add0~26_combout\ & (((!\inst7|inst3|Equal0~0_combout\) # (!\inst7|inst3|Equal0~3_combout\)) # (!\inst7|inst3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|Equal0~1_combout\,
	datab => \inst7|inst3|Add0~26_combout\,
	datac => \inst7|inst3|Equal0~3_combout\,
	datad => \inst7|inst3|Equal0~0_combout\,
	combout => \inst7|inst3|s~1_combout\);

-- Location: LCCOMB_X26_Y5_N8
\inst7|inst3|s~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|s~2_combout\ = (\inst7|inst3|Add0~24_combout\ & (((!\inst7|inst3|Equal0~0_combout\) # (!\inst7|inst3|Equal0~3_combout\)) # (!\inst7|inst3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|Equal0~1_combout\,
	datab => \inst7|inst3|Add0~24_combout\,
	datac => \inst7|inst3|Equal0~3_combout\,
	datad => \inst7|inst3|Equal0~0_combout\,
	combout => \inst7|inst3|s~2_combout\);

-- Location: LCCOMB_X26_Y5_N28
\inst7|inst3|s~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|s~3_combout\ = (\inst7|inst3|Add0~22_combout\ & (((!\inst7|inst3|Equal0~0_combout\) # (!\inst7|inst3|Equal0~3_combout\)) # (!\inst7|inst3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|Equal0~1_combout\,
	datab => \inst7|inst3|Add0~22_combout\,
	datac => \inst7|inst3|Equal0~3_combout\,
	datad => \inst7|inst3|Equal0~0_combout\,
	combout => \inst7|inst3|s~3_combout\);

-- Location: LCCOMB_X26_Y5_N26
\inst7|inst3|s~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|s~4_combout\ = (\inst7|inst3|Add0~20_combout\ & (((!\inst7|inst3|Equal0~0_combout\) # (!\inst7|inst3|Equal0~3_combout\)) # (!\inst7|inst3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|Add0~20_combout\,
	datab => \inst7|inst3|Equal0~1_combout\,
	datac => \inst7|inst3|Equal0~3_combout\,
	datad => \inst7|inst3|Equal0~0_combout\,
	combout => \inst7|inst3|s~4_combout\);

-- Location: LCCOMB_X26_Y5_N30
\inst7|inst3|s~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|s~5_combout\ = (\inst7|inst3|Add0~16_combout\ & (((!\inst7|inst3|Equal0~0_combout\) # (!\inst7|inst3|Equal0~3_combout\)) # (!\inst7|inst3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|Equal0~1_combout\,
	datab => \inst7|inst3|Add0~16_combout\,
	datac => \inst7|inst3|Equal0~3_combout\,
	datad => \inst7|inst3|Equal0~0_combout\,
	combout => \inst7|inst3|s~5_combout\);

-- Location: LCCOMB_X26_Y5_N14
\inst7|inst3|s~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|s~6_combout\ = (\inst7|inst3|Add0~6_combout\ & (((!\inst7|inst3|Equal0~0_combout\) # (!\inst7|inst3|Equal0~3_combout\)) # (!\inst7|inst3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|Equal0~1_combout\,
	datab => \inst7|inst3|Add0~6_combout\,
	datac => \inst7|inst3|Equal0~3_combout\,
	datad => \inst7|inst3|Equal0~0_combout\,
	combout => \inst7|inst3|s~6_combout\);

-- Location: LCCOMB_X26_Y5_N24
\inst7|inst3|s~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst3|s~7_combout\ = (\inst7|inst3|Add0~0_combout\ & (((!\inst7|inst3|Equal0~0_combout\) # (!\inst7|inst3|Equal0~3_combout\)) # (!\inst7|inst3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|Equal0~1_combout\,
	datab => \inst7|inst3|Add0~0_combout\,
	datac => \inst7|inst3|Equal0~3_combout\,
	datad => \inst7|inst3|Equal0~0_combout\,
	combout => \inst7|inst3|s~7_combout\);

-- Location: LCFF_X25_Y5_N31
\inst7|inst|clk1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|inst|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|clk1~regout\);

-- Location: LCFF_X26_Y5_N3
\inst7|inst|clk2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|inst|clk2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|inst|clk2~regout\);

-- Location: LCCOMB_X26_Y5_N20
\inst7|inst|clk_out\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|clk_out~combout\ = LCELL((\inst7|inst|clk1~regout\) # (\inst7|inst|clk2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst|clk1~regout\,
	datad => \inst7|inst|clk2~regout\,
	combout => \inst7|inst|clk_out~combout\);

-- Location: LCCOMB_X25_Y5_N30
\inst7|inst|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|LessThan1~0_combout\ = (!\inst7|inst|cnt1\(4) & ((!\inst7|inst|cnt1\(2)) # (!\inst7|inst|cnt1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|cnt1\(3),
	datac => \inst7|inst|cnt1\(4),
	datad => \inst7|inst|cnt1\(2),
	combout => \inst7|inst|LessThan1~0_combout\);

-- Location: LCCOMB_X27_Y5_N4
\inst7|inst|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|LessThan3~0_combout\ = (!\inst7|inst|cnt2\(4) & ((!\inst7|inst|cnt2\(3)) # (!\inst7|inst|cnt2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|cnt2\(4),
	datac => \inst7|inst|cnt2\(2),
	datad => \inst7|inst|cnt2\(3),
	combout => \inst7|inst|LessThan3~0_combout\);

-- Location: LCCOMB_X24_Y5_N28
\inst7|inst|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|LessThan0~0_combout\ = (\inst7|inst|cnt1\(4) & \inst7|inst|cnt1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst|cnt1\(4),
	datad => \inst7|inst|cnt1\(3),
	combout => \inst7|inst|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y5_N14
\inst7|inst|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|LessThan2~0_combout\ = (\inst7|inst|cnt2\(4) & \inst7|inst|cnt2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst|cnt2\(4),
	datad => \inst7|inst|cnt2\(3),
	combout => \inst7|inst|LessThan2~0_combout\);

-- Location: LCCOMB_X20_Y8_N0
\inst3|inst3|DOUT[15]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst3|DOUT[15]~4_combout\ = (!\NOE~combout\ & (!\inst9|nCS~regout\ & \inst3|inst3|DOUT[15]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NOE~combout\,
	datac => \inst9|nCS~regout\,
	datad => \inst3|inst3|DOUT[15]~3_combout\,
	combout => \inst3|inst3|DOUT[15]~4_combout\);

-- Location: LCCOMB_X21_Y7_N28
\inst15|START\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|START~combout\ = (\inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0) & ((\inst13~combout\ & ((\inst15|START~combout\))) # (!\inst13~combout\ & (\D[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13~combout\,
	datab => \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	datac => \D[0]~25_combout\,
	datad => \inst15|START~combout\,
	combout => \inst15|START~combout\);

-- Location: LCCOMB_X19_Y7_N14
\inst1|DATA[6]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DATA[6]$latch~combout\ = (!\inst9|nCS~regout\ & ((\inst1|DATA[0]~0_combout\ & ((\inst1|DATA[6]$latch~combout\))) # (!\inst1|DATA[0]~0_combout\ & (\AD~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \AD~9\,
	datac => \inst1|DATA[0]~0_combout\,
	datad => \inst1|DATA[6]$latch~combout\,
	combout => \inst1|DATA[6]$latch~combout\);

-- Location: LCCOMB_X19_Y7_N20
\inst1|DATA[2]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DATA[2]$latch~combout\ = (!\inst9|nCS~regout\ & ((\inst1|DATA[0]~0_combout\ & ((\inst1|DATA[2]$latch~combout\))) # (!\inst1|DATA[0]~0_combout\ & (\AD~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \AD~13\,
	datac => \inst1|DATA[0]~0_combout\,
	datad => \inst1|DATA[2]$latch~combout\,
	combout => \inst1|DATA[2]$latch~combout\);

-- Location: LCCOMB_X20_Y8_N12
\inst3|inst2|qq[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(14) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst5|qq\(14)))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst2|qq\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(14),
	datab => \inst3|inst5|qq\(14),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(14));

-- Location: LCCOMB_X21_Y8_N8
\inst3|inst2|qq[29]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(29) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(29))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(29),
	datac => \inst3|inst2|qq\(29),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(29));

-- Location: LCCOMB_X26_Y8_N8
\inst3|inst2|qq[27]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(27) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(27))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(27),
	datac => \inst3|inst2|qq\(27),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(27));

-- Location: LCCOMB_X19_Y7_N16
\inst1|DATA[10]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DATA[10]$latch~combout\ = (!\inst9|nCS~regout\ & ((\inst1|DATA[0]~0_combout\ & (\inst1|DATA[10]$latch~combout\)) # (!\inst1|DATA[0]~0_combout\ & ((\AD~5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DATA[10]$latch~combout\,
	datab => \AD~5\,
	datac => \inst1|DATA[0]~0_combout\,
	datad => \inst9|nCS~regout\,
	combout => \inst1|DATA[10]$latch~combout\);

-- Location: LCCOMB_X26_Y8_N6
\inst3|inst2|qq[25]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(25) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst5|qq\(25)))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst2|qq\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(25),
	datab => \inst3|inst5|qq\(25),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(25));

-- Location: LCCOMB_X24_Y8_N8
\inst3|inst2|qq[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(8) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(8))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(8),
	datac => \inst3|inst2|qq\(8),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(8));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\COUT~I\ : cycloneii_io
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
	padio => ww_COUT,
	combout => \COUT~combout\);

-- Location: CLKCTRL_G3
\inst6|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y11_N4
\inst8|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	combout => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\);

-- Location: LCCOMB_X20_Y11_N12
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[8]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(8),
	combout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[8]~feeder_combout\);

-- Location: LCCOMB_X20_Y11_N22
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[4]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(4),
	combout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[4]~feeder_combout\);

-- Location: LCCOMB_X21_Y9_N14
\inst29|inst|12~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst|12~feeder_combout\ = \D[7]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[7]~11_combout\,
	combout => \inst29|inst|12~feeder_combout\);

-- Location: LCCOMB_X22_Y6_N30
\inst29|inst|17~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst|17~feeder_combout\ = \D[2]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[2]~21_combout\,
	combout => \inst29|inst|17~feeder_combout\);

-- Location: LCCOMB_X22_Y7_N28
\inst29|inst|18~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst|18~feeder_combout\ = \D[1]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[1]~23_combout\,
	combout => \inst29|inst|18~feeder_combout\);

-- Location: LCCOMB_X19_Y11_N14
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[4]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g\(4),
	combout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[4]~feeder_combout\);

-- Location: LCCOMB_X21_Y7_N6
\inst29|inst9|12~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst9|12~feeder_combout\ = \D[15]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[15]~27_combout\,
	combout => \inst29|inst9|12~feeder_combout\);

-- Location: LCCOMB_X21_Y9_N10
\inst29|inst5|13~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst5|13~feeder_combout\ = \D[14]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[14]~29_combout\,
	combout => \inst29|inst5|13~feeder_combout\);

-- Location: LCCOMB_X21_Y9_N20
\inst29|inst5|14~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst5|14~feeder_combout\ = \D[13]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[13]~31_combout\,
	combout => \inst29|inst5|14~feeder_combout\);

-- Location: LCCOMB_X22_Y6_N0
\inst29|inst5|16~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst5|16~feeder_combout\ = \D[11]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[11]~35_combout\,
	combout => \inst29|inst5|16~feeder_combout\);

-- Location: LCCOMB_X25_Y7_N22
\inst29|inst5|18~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst5|18~feeder_combout\ = \D[9]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[9]~39_combout\,
	combout => \inst29|inst5|18~feeder_combout\);

-- Location: LCCOMB_X17_Y11_N14
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[4]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(4),
	combout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[4]~feeder_combout\);

-- Location: LCCOMB_X25_Y8_N16
\inst3|inst5|qq[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[0]~feeder_combout\ = \inst3|inst5|qq[0]~77_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst5|qq[0]~77_combout\,
	combout => \inst3|inst5|qq[0]~feeder_combout\);

-- Location: LCCOMB_X17_Y11_N10
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[4]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(4),
	combout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[4]~feeder_combout\);

-- Location: LCCOMB_X17_Y11_N8
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[3]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(3),
	combout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y11_N8
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[0]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(0),
	combout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[0]~feeder_combout\);

-- Location: LCCOMB_X26_Y5_N2
\inst7|inst|clk2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|clk2~feeder_combout\ = \inst7|inst|LessThan3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst|LessThan3~0_combout\,
	combout => \inst7|inst|clk2~feeder_combout\);

-- Location: LCCOMB_X20_Y7_N20
\inst9|ADDR[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|ADDR[10]~feeder_combout\ = \AD~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AD~5\,
	combout => \inst9|ADDR[10]~feeder_combout\);

-- Location: LCCOMB_X18_Y11_N0
\inst8|dcfifo_component|auto_generated|p0addr~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|p0addr~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst8|dcfifo_component|auto_generated|p0addr~feeder_combout\);

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
	datain => \inst2|AD[15]$latch~combout\,
	oe => \inst2|AD[0]_102~combout\,
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
	datain => \inst2|AD[14]$latch~combout\,
	oe => \inst2|AD[0]_102~combout\,
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
	datain => \inst2|AD[13]$latch~combout\,
	oe => \inst2|AD[0]_102~combout\,
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
	datain => \inst2|AD[12]$latch~combout\,
	oe => \inst2|AD[0]_102~combout\,
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
	datain => \inst2|AD[11]$latch~combout\,
	oe => \inst2|AD[0]_102~combout\,
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
	datain => \inst2|AD[10]$latch~combout\,
	oe => \inst2|AD[0]_102~combout\,
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
	datain => \inst2|AD[9]$latch~combout\,
	oe => \inst2|AD[0]_102~combout\,
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
	datain => \inst2|AD[8]$latch~combout\,
	oe => \inst2|AD[0]_102~combout\,
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
	datain => \inst2|AD[7]$latch~combout\,
	oe => \inst2|AD[0]_102~combout\,
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
	datain => \inst2|AD[6]$latch~combout\,
	oe => \inst2|AD[0]_102~combout\,
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
	datain => \inst2|AD[5]$latch~combout\,
	oe => \inst2|AD[0]_102~combout\,
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
	datain => \inst2|AD[4]$latch~combout\,
	oe => \inst2|AD[0]_102~combout\,
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
	datain => \inst2|AD[3]$latch~combout\,
	oe => \inst2|AD[0]_102~combout\,
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
	datain => \inst2|AD[2]$latch~combout\,
	oe => \inst2|AD[0]_102~combout\,
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
	datain => \inst2|AD[1]$latch~combout\,
	oe => \inst2|AD[0]_102~combout\,
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
	datain => \inst2|AD[0]$latch~combout\,
	oe => \inst2|AD[0]_102~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => AD(0),
	combout => \AD~15\);

-- Location: LCCOMB_X27_Y9_N2
\inst3|inst5|qq[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[1]~31_combout\ = (\inst3|inst5|qq\(0) & (\inst3|inst5|qq\(1) $ (VCC))) # (!\inst3|inst5|qq\(0) & (\inst3|inst5|qq\(1) & VCC))
-- \inst3|inst5|qq[1]~32\ = CARRY((\inst3|inst5|qq\(0) & \inst3|inst5|qq\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(0),
	datab => \inst3|inst5|qq\(1),
	datad => VCC,
	combout => \inst3|inst5|qq[1]~31_combout\,
	cout => \inst3|inst5|qq[1]~32\);

-- Location: LCCOMB_X27_Y7_N22
\inst3|inst|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Mux2~0_combout\ = (\inst3|inst|current_state\(0) & (!\inst3|inst|current_state\(3) & ((!\inst3|inst|current_state\(2))))) # (!\inst3|inst|current_state\(0) & (\inst3|inst|current_state\(1) & ((\inst3|inst|current_state\(2)) # 
-- (!\inst3|inst|current_state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|current_state\(3),
	datab => \inst3|inst|current_state\(0),
	datac => \inst3|inst|current_state\(1),
	datad => \inst3|inst|current_state\(2),
	combout => \inst3|inst|Mux2~0_combout\);

-- Location: LCFF_X27_Y7_N23
\inst3|inst|current_state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst4|s\(3),
	datain => \inst3|inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|current_state\(1));

-- Location: LCCOMB_X27_Y7_N18
\inst3|inst|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Mux1~0_combout\ = (\inst3|inst|current_state\(3) & (\inst3|inst|current_state\(2) & ((\inst3|inst|current_state\(0)) # (\inst3|inst|current_state\(1))))) # (!\inst3|inst|current_state\(3) & (!\inst3|inst|current_state\(0) & 
-- ((\inst3|inst|current_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|current_state\(3),
	datab => \inst3|inst|current_state\(0),
	datac => \inst3|inst|current_state\(2),
	datad => \inst3|inst|current_state\(1),
	combout => \inst3|inst|Mux1~0_combout\);

-- Location: LCFF_X27_Y7_N19
\inst3|inst|current_state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst4|s\(3),
	datain => \inst3|inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|current_state\(2));

-- Location: LCCOMB_X27_Y7_N6
\inst3|inst|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Mux3~0_combout\ = (\inst3|inst|current_state\(3) & (\inst3|inst|current_state\(2) & \inst3|inst|current_state\(1))) # (!\inst3|inst|current_state\(3) & (!\inst3|inst|current_state\(2) & !\inst3|inst|current_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|current_state\(3),
	datab => \inst3|inst|current_state\(2),
	datad => \inst3|inst|current_state\(1),
	combout => \inst3|inst|Mux3~0_combout\);

-- Location: LCFF_X27_Y7_N7
\inst3|inst|current_state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst4|s\(3),
	datain => \inst3|inst|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|current_state\(0));

-- Location: LCCOMB_X27_Y7_N24
\inst3|inst|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Mux4~0_combout\ = (\inst3|inst|current_state\(3) & (!\inst3|inst|current_state\(2) & ((\inst3|inst|current_state\(0)) # (\inst3|inst|current_state\(1))))) # (!\inst3|inst|current_state\(3) & ((\inst3|inst|current_state\(0) & 
-- (\inst3|inst|current_state\(2))) # (!\inst3|inst|current_state\(0) & ((!\inst3|inst|current_state\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|current_state\(3),
	datab => \inst3|inst|current_state\(0),
	datac => \inst3|inst|current_state\(2),
	datad => \inst3|inst|current_state\(1),
	combout => \inst3|inst|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y7_N4
\inst3|inst|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Mux5~0_combout\ = (\inst3|inst|current_state\(3) & (((\inst3|inst|current_state\(2))))) # (!\inst3|inst|current_state\(3) & ((\inst3|inst|current_state\(0) & (!\inst3|inst|current_state\(2))) # (!\inst3|inst|current_state\(0) & 
-- ((\inst3|inst|current_state\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|current_state\(3),
	datab => \inst3|inst|current_state\(0),
	datac => \inst3|inst|current_state\(2),
	datad => \inst3|inst|current_state\(1),
	combout => \inst3|inst|Mux5~0_combout\);

-- Location: LCFF_X27_Y9_N3
\inst3|inst5|qq[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[1]~31_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(1));

-- Location: LCCOMB_X27_Y9_N4
\inst3|inst5|qq[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[2]~33_combout\ = (\inst3|inst5|qq\(2) & (!\inst3|inst5|qq[1]~32\)) # (!\inst3|inst5|qq\(2) & ((\inst3|inst5|qq[1]~32\) # (GND)))
-- \inst3|inst5|qq[2]~34\ = CARRY((!\inst3|inst5|qq[1]~32\) # (!\inst3|inst5|qq\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(2),
	datad => VCC,
	cin => \inst3|inst5|qq[1]~32\,
	combout => \inst3|inst5|qq[2]~33_combout\,
	cout => \inst3|inst5|qq[2]~34\);

-- Location: LCFF_X27_Y9_N5
\inst3|inst5|qq[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[2]~33_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(2));

-- Location: LCCOMB_X27_Y9_N6
\inst3|inst5|qq[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[3]~35_combout\ = (\inst3|inst5|qq\(3) & (\inst3|inst5|qq[2]~34\ $ (GND))) # (!\inst3|inst5|qq\(3) & (!\inst3|inst5|qq[2]~34\ & VCC))
-- \inst3|inst5|qq[3]~36\ = CARRY((\inst3|inst5|qq\(3) & !\inst3|inst5|qq[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(3),
	datad => VCC,
	cin => \inst3|inst5|qq[2]~34\,
	combout => \inst3|inst5|qq[3]~35_combout\,
	cout => \inst3|inst5|qq[3]~36\);

-- Location: LCCOMB_X27_Y9_N8
\inst3|inst5|qq[4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[4]~37_combout\ = (\inst3|inst5|qq\(4) & (!\inst3|inst5|qq[3]~36\)) # (!\inst3|inst5|qq\(4) & ((\inst3|inst5|qq[3]~36\) # (GND)))
-- \inst3|inst5|qq[4]~38\ = CARRY((!\inst3|inst5|qq[3]~36\) # (!\inst3|inst5|qq\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(4),
	datad => VCC,
	cin => \inst3|inst5|qq[3]~36\,
	combout => \inst3|inst5|qq[4]~37_combout\,
	cout => \inst3|inst5|qq[4]~38\);

-- Location: LCFF_X27_Y9_N9
\inst3|inst5|qq[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[4]~37_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(4));

-- Location: LCCOMB_X27_Y9_N10
\inst3|inst5|qq[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[5]~39_combout\ = (\inst3|inst5|qq\(5) & (\inst3|inst5|qq[4]~38\ $ (GND))) # (!\inst3|inst5|qq\(5) & (!\inst3|inst5|qq[4]~38\ & VCC))
-- \inst3|inst5|qq[5]~40\ = CARRY((\inst3|inst5|qq\(5) & !\inst3|inst5|qq[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(5),
	datad => VCC,
	cin => \inst3|inst5|qq[4]~38\,
	combout => \inst3|inst5|qq[5]~39_combout\,
	cout => \inst3|inst5|qq[5]~40\);

-- Location: LCCOMB_X27_Y9_N12
\inst3|inst5|qq[6]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[6]~41_combout\ = (\inst3|inst5|qq\(6) & (!\inst3|inst5|qq[5]~40\)) # (!\inst3|inst5|qq\(6) & ((\inst3|inst5|qq[5]~40\) # (GND)))
-- \inst3|inst5|qq[6]~42\ = CARRY((!\inst3|inst5|qq[5]~40\) # (!\inst3|inst5|qq\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(6),
	datad => VCC,
	cin => \inst3|inst5|qq[5]~40\,
	combout => \inst3|inst5|qq[6]~41_combout\,
	cout => \inst3|inst5|qq[6]~42\);

-- Location: LCCOMB_X27_Y9_N14
\inst3|inst5|qq[7]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[7]~43_combout\ = (\inst3|inst5|qq\(7) & (\inst3|inst5|qq[6]~42\ $ (GND))) # (!\inst3|inst5|qq\(7) & (!\inst3|inst5|qq[6]~42\ & VCC))
-- \inst3|inst5|qq[7]~44\ = CARRY((\inst3|inst5|qq\(7) & !\inst3|inst5|qq[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(7),
	datad => VCC,
	cin => \inst3|inst5|qq[6]~42\,
	combout => \inst3|inst5|qq[7]~43_combout\,
	cout => \inst3|inst5|qq[7]~44\);

-- Location: LCFF_X27_Y9_N15
\inst3|inst5|qq[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[7]~43_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(7));

-- Location: LCCOMB_X27_Y9_N18
\inst3|inst5|qq[9]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[9]~47_combout\ = (\inst3|inst5|qq\(9) & (\inst3|inst5|qq[8]~46\ $ (GND))) # (!\inst3|inst5|qq\(9) & (!\inst3|inst5|qq[8]~46\ & VCC))
-- \inst3|inst5|qq[9]~48\ = CARRY((\inst3|inst5|qq\(9) & !\inst3|inst5|qq[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(9),
	datad => VCC,
	cin => \inst3|inst5|qq[8]~46\,
	combout => \inst3|inst5|qq[9]~47_combout\,
	cout => \inst3|inst5|qq[9]~48\);

-- Location: LCFF_X27_Y9_N19
\inst3|inst5|qq[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[9]~47_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(9));

-- Location: LCCOMB_X27_Y9_N20
\inst3|inst5|qq[10]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[10]~49_combout\ = (\inst3|inst5|qq\(10) & (!\inst3|inst5|qq[9]~48\)) # (!\inst3|inst5|qq\(10) & ((\inst3|inst5|qq[9]~48\) # (GND)))
-- \inst3|inst5|qq[10]~50\ = CARRY((!\inst3|inst5|qq[9]~48\) # (!\inst3|inst5|qq\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(10),
	datad => VCC,
	cin => \inst3|inst5|qq[9]~48\,
	combout => \inst3|inst5|qq[10]~49_combout\,
	cout => \inst3|inst5|qq[10]~50\);

-- Location: LCCOMB_X27_Y9_N22
\inst3|inst5|qq[11]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[11]~51_combout\ = (\inst3|inst5|qq\(11) & (\inst3|inst5|qq[10]~50\ $ (GND))) # (!\inst3|inst5|qq\(11) & (!\inst3|inst5|qq[10]~50\ & VCC))
-- \inst3|inst5|qq[11]~52\ = CARRY((\inst3|inst5|qq\(11) & !\inst3|inst5|qq[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(11),
	datad => VCC,
	cin => \inst3|inst5|qq[10]~50\,
	combout => \inst3|inst5|qq[11]~51_combout\,
	cout => \inst3|inst5|qq[11]~52\);

-- Location: LCFF_X27_Y9_N23
\inst3|inst5|qq[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[11]~51_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(11));

-- Location: LCCOMB_X27_Y9_N24
\inst3|inst5|qq[12]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[12]~53_combout\ = (\inst3|inst5|qq\(12) & (!\inst3|inst5|qq[11]~52\)) # (!\inst3|inst5|qq\(12) & ((\inst3|inst5|qq[11]~52\) # (GND)))
-- \inst3|inst5|qq[12]~54\ = CARRY((!\inst3|inst5|qq[11]~52\) # (!\inst3|inst5|qq\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(12),
	datad => VCC,
	cin => \inst3|inst5|qq[11]~52\,
	combout => \inst3|inst5|qq[12]~53_combout\,
	cout => \inst3|inst5|qq[12]~54\);

-- Location: LCCOMB_X27_Y9_N28
\inst3|inst5|qq[14]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[14]~57_combout\ = (\inst3|inst5|qq\(14) & (!\inst3|inst5|qq[13]~56\)) # (!\inst3|inst5|qq\(14) & ((\inst3|inst5|qq[13]~56\) # (GND)))
-- \inst3|inst5|qq[14]~58\ = CARRY((!\inst3|inst5|qq[13]~56\) # (!\inst3|inst5|qq\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(14),
	datad => VCC,
	cin => \inst3|inst5|qq[13]~56\,
	combout => \inst3|inst5|qq[14]~57_combout\,
	cout => \inst3|inst5|qq[14]~58\);

-- Location: LCFF_X27_Y9_N29
\inst3|inst5|qq[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[14]~57_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(14));

-- Location: LCCOMB_X27_Y9_N30
\inst3|inst5|qq[15]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[15]~59_combout\ = (\inst3|inst5|qq\(15) & (\inst3|inst5|qq[14]~58\ $ (GND))) # (!\inst3|inst5|qq\(15) & (!\inst3|inst5|qq[14]~58\ & VCC))
-- \inst3|inst5|qq[15]~60\ = CARRY((\inst3|inst5|qq\(15) & !\inst3|inst5|qq[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(15),
	datad => VCC,
	cin => \inst3|inst5|qq[14]~58\,
	combout => \inst3|inst5|qq[15]~59_combout\,
	cout => \inst3|inst5|qq[15]~60\);

-- Location: LCFF_X27_Y9_N31
\inst3|inst5|qq[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[15]~59_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(15));

-- Location: LCCOMB_X27_Y8_N0
\inst3|inst5|qq[16]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[16]~61_combout\ = (\inst3|inst5|qq\(16) & (!\inst3|inst5|qq[15]~60\)) # (!\inst3|inst5|qq\(16) & ((\inst3|inst5|qq[15]~60\) # (GND)))
-- \inst3|inst5|qq[16]~62\ = CARRY((!\inst3|inst5|qq[15]~60\) # (!\inst3|inst5|qq\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(16),
	datad => VCC,
	cin => \inst3|inst5|qq[15]~60\,
	combout => \inst3|inst5|qq[16]~61_combout\,
	cout => \inst3|inst5|qq[16]~62\);

-- Location: LCFF_X27_Y8_N1
\inst3|inst5|qq[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[16]~61_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(16));

-- Location: LCCOMB_X27_Y8_N2
\inst3|inst5|qq[17]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[17]~63_combout\ = (\inst3|inst5|qq\(17) & (\inst3|inst5|qq[16]~62\ $ (GND))) # (!\inst3|inst5|qq\(17) & (!\inst3|inst5|qq[16]~62\ & VCC))
-- \inst3|inst5|qq[17]~64\ = CARRY((\inst3|inst5|qq\(17) & !\inst3|inst5|qq[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(17),
	datad => VCC,
	cin => \inst3|inst5|qq[16]~62\,
	combout => \inst3|inst5|qq[17]~63_combout\,
	cout => \inst3|inst5|qq[17]~64\);

-- Location: LCFF_X27_Y8_N3
\inst3|inst5|qq[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[17]~63_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(17));

-- Location: LCCOMB_X27_Y8_N4
\inst3|inst5|qq[18]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[18]~65_combout\ = (\inst3|inst5|qq\(18) & (!\inst3|inst5|qq[17]~64\)) # (!\inst3|inst5|qq\(18) & ((\inst3|inst5|qq[17]~64\) # (GND)))
-- \inst3|inst5|qq[18]~66\ = CARRY((!\inst3|inst5|qq[17]~64\) # (!\inst3|inst5|qq\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(18),
	datad => VCC,
	cin => \inst3|inst5|qq[17]~64\,
	combout => \inst3|inst5|qq[18]~65_combout\,
	cout => \inst3|inst5|qq[18]~66\);

-- Location: LCFF_X27_Y8_N5
\inst3|inst5|qq[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[18]~65_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(18));

-- Location: LCCOMB_X27_Y8_N6
\inst3|inst5|qq[19]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[19]~67_combout\ = (\inst3|inst5|qq\(19) & (\inst3|inst5|qq[18]~66\ $ (GND))) # (!\inst3|inst5|qq\(19) & (!\inst3|inst5|qq[18]~66\ & VCC))
-- \inst3|inst5|qq[19]~68\ = CARRY((\inst3|inst5|qq\(19) & !\inst3|inst5|qq[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(19),
	datad => VCC,
	cin => \inst3|inst5|qq[18]~66\,
	combout => \inst3|inst5|qq[19]~67_combout\,
	cout => \inst3|inst5|qq[19]~68\);

-- Location: LCCOMB_X27_Y8_N8
\inst3|inst5|qq[20]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[20]~69_combout\ = (\inst3|inst5|qq\(20) & (!\inst3|inst5|qq[19]~68\)) # (!\inst3|inst5|qq\(20) & ((\inst3|inst5|qq[19]~68\) # (GND)))
-- \inst3|inst5|qq[20]~70\ = CARRY((!\inst3|inst5|qq[19]~68\) # (!\inst3|inst5|qq\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(20),
	datad => VCC,
	cin => \inst3|inst5|qq[19]~68\,
	combout => \inst3|inst5|qq[20]~69_combout\,
	cout => \inst3|inst5|qq[20]~70\);

-- Location: LCFF_X27_Y8_N9
\inst3|inst5|qq[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[20]~69_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(20));

-- Location: LCCOMB_X27_Y8_N10
\inst3|inst5|qq[21]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[21]~71_combout\ = (\inst3|inst5|qq\(21) & (\inst3|inst5|qq[20]~70\ $ (GND))) # (!\inst3|inst5|qq\(21) & (!\inst3|inst5|qq[20]~70\ & VCC))
-- \inst3|inst5|qq[21]~72\ = CARRY((\inst3|inst5|qq\(21) & !\inst3|inst5|qq[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(21),
	datad => VCC,
	cin => \inst3|inst5|qq[20]~70\,
	combout => \inst3|inst5|qq[21]~71_combout\,
	cout => \inst3|inst5|qq[21]~72\);

-- Location: LCCOMB_X27_Y8_N12
\inst3|inst5|qq[22]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[22]~73_combout\ = (\inst3|inst5|qq\(22) & (!\inst3|inst5|qq[21]~72\)) # (!\inst3|inst5|qq\(22) & ((\inst3|inst5|qq[21]~72\) # (GND)))
-- \inst3|inst5|qq[22]~74\ = CARRY((!\inst3|inst5|qq[21]~72\) # (!\inst3|inst5|qq\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(22),
	datad => VCC,
	cin => \inst3|inst5|qq[21]~72\,
	combout => \inst3|inst5|qq[22]~73_combout\,
	cout => \inst3|inst5|qq[22]~74\);

-- Location: LCCOMB_X27_Y8_N14
\inst3|inst5|qq[23]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[23]~75_combout\ = (\inst3|inst5|qq\(23) & (\inst3|inst5|qq[22]~74\ $ (GND))) # (!\inst3|inst5|qq\(23) & (!\inst3|inst5|qq[22]~74\ & VCC))
-- \inst3|inst5|qq[23]~76\ = CARRY((\inst3|inst5|qq\(23) & !\inst3|inst5|qq[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(23),
	datad => VCC,
	cin => \inst3|inst5|qq[22]~74\,
	combout => \inst3|inst5|qq[23]~75_combout\,
	cout => \inst3|inst5|qq[23]~76\);

-- Location: LCFF_X27_Y8_N15
\inst3|inst5|qq[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[23]~75_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(23));

-- Location: LCCOMB_X27_Y8_N18
\inst3|inst5|qq[25]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[25]~80_combout\ = (\inst3|inst5|qq\(25) & (\inst3|inst5|qq[24]~79\ $ (GND))) # (!\inst3|inst5|qq\(25) & (!\inst3|inst5|qq[24]~79\ & VCC))
-- \inst3|inst5|qq[25]~81\ = CARRY((\inst3|inst5|qq\(25) & !\inst3|inst5|qq[24]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(25),
	datad => VCC,
	cin => \inst3|inst5|qq[24]~79\,
	combout => \inst3|inst5|qq[25]~80_combout\,
	cout => \inst3|inst5|qq[25]~81\);

-- Location: LCFF_X27_Y8_N19
\inst3|inst5|qq[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[25]~80_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(25));

-- Location: LCCOMB_X27_Y8_N20
\inst3|inst5|qq[26]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[26]~82_combout\ = (\inst3|inst5|qq\(26) & (!\inst3|inst5|qq[25]~81\)) # (!\inst3|inst5|qq\(26) & ((\inst3|inst5|qq[25]~81\) # (GND)))
-- \inst3|inst5|qq[26]~83\ = CARRY((!\inst3|inst5|qq[25]~81\) # (!\inst3|inst5|qq\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(26),
	datad => VCC,
	cin => \inst3|inst5|qq[25]~81\,
	combout => \inst3|inst5|qq[26]~82_combout\,
	cout => \inst3|inst5|qq[26]~83\);

-- Location: LCCOMB_X27_Y8_N22
\inst3|inst5|qq[27]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[27]~84_combout\ = (\inst3|inst5|qq\(27) & (\inst3|inst5|qq[26]~83\ $ (GND))) # (!\inst3|inst5|qq\(27) & (!\inst3|inst5|qq[26]~83\ & VCC))
-- \inst3|inst5|qq[27]~85\ = CARRY((\inst3|inst5|qq\(27) & !\inst3|inst5|qq[26]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(27),
	datad => VCC,
	cin => \inst3|inst5|qq[26]~83\,
	combout => \inst3|inst5|qq[27]~84_combout\,
	cout => \inst3|inst5|qq[27]~85\);

-- Location: LCFF_X27_Y8_N23
\inst3|inst5|qq[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[27]~84_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(27));

-- Location: LCCOMB_X27_Y8_N24
\inst3|inst5|qq[28]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[28]~86_combout\ = (\inst3|inst5|qq\(28) & (!\inst3|inst5|qq[27]~85\)) # (!\inst3|inst5|qq\(28) & ((\inst3|inst5|qq[27]~85\) # (GND)))
-- \inst3|inst5|qq[28]~87\ = CARRY((!\inst3|inst5|qq[27]~85\) # (!\inst3|inst5|qq\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(28),
	datad => VCC,
	cin => \inst3|inst5|qq[27]~85\,
	combout => \inst3|inst5|qq[28]~86_combout\,
	cout => \inst3|inst5|qq[28]~87\);

-- Location: LCCOMB_X27_Y8_N26
\inst3|inst5|qq[29]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[29]~88_combout\ = (\inst3|inst5|qq\(29) & (\inst3|inst5|qq[28]~87\ $ (GND))) # (!\inst3|inst5|qq\(29) & (!\inst3|inst5|qq[28]~87\ & VCC))
-- \inst3|inst5|qq[29]~89\ = CARRY((\inst3|inst5|qq\(29) & !\inst3|inst5|qq[28]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(29),
	datad => VCC,
	cin => \inst3|inst5|qq[28]~87\,
	combout => \inst3|inst5|qq[29]~88_combout\,
	cout => \inst3|inst5|qq[29]~89\);

-- Location: LCFF_X27_Y8_N27
\inst3|inst5|qq[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[29]~88_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(29));

-- Location: LCCOMB_X27_Y8_N28
\inst3|inst5|qq[30]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[30]~90_combout\ = (\inst3|inst5|qq\(30) & (!\inst3|inst5|qq[29]~89\)) # (!\inst3|inst5|qq\(30) & ((\inst3|inst5|qq[29]~89\) # (GND)))
-- \inst3|inst5|qq[30]~91\ = CARRY((!\inst3|inst5|qq[29]~89\) # (!\inst3|inst5|qq\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(30),
	datad => VCC,
	cin => \inst3|inst5|qq[29]~89\,
	combout => \inst3|inst5|qq[30]~90_combout\,
	cout => \inst3|inst5|qq[30]~91\);

-- Location: LCFF_X27_Y8_N29
\inst3|inst5|qq[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[30]~90_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(30));

-- Location: LCCOMB_X27_Y8_N30
\inst3|inst5|qq[31]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5|qq[31]~92_combout\ = \inst3|inst5|qq[30]~91\ $ (!\inst3|inst5|qq\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst5|qq\(31),
	cin => \inst3|inst5|qq[30]~91\,
	combout => \inst3|inst5|qq[31]~92_combout\);

-- Location: LCFF_X27_Y8_N31
\inst3|inst5|qq[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[31]~92_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(31));

-- Location: LCCOMB_X27_Y7_N16
\inst3|inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Mux0~0_combout\ = (\inst3|inst|current_state\(2) & ((\inst3|inst|current_state\(3)) # ((!\inst3|inst|current_state\(0) & \inst3|inst|current_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|current_state\(0),
	datab => \inst3|inst|current_state\(2),
	datac => \inst3|inst|current_state\(3),
	datad => \inst3|inst|current_state\(1),
	combout => \inst3|inst|Mux0~0_combout\);

-- Location: LCFF_X27_Y7_N17
\inst3|inst|current_state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|inst4|s\(3),
	datain => \inst3|inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|current_state\(3));

-- Location: LCCOMB_X27_Y7_N20
\inst3|inst|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Mux6~0_combout\ = (!\inst3|inst|current_state\(0) & (!\inst3|inst|current_state\(2) & (\inst3|inst|current_state\(3) & !\inst3|inst|current_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|current_state\(0),
	datab => \inst3|inst|current_state\(2),
	datac => \inst3|inst|current_state\(3),
	datad => \inst3|inst|current_state\(1),
	combout => \inst3|inst|Mux6~0_combout\);

-- Location: CLKCTRL_G5
\inst3|inst|Mux6~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|inst|Mux6~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|inst|Mux6~0clkctrl_outclk\);

-- Location: LCCOMB_X20_Y8_N30
\inst3|inst2|qq[31]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(31) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst5|qq\(31)))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst2|qq\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst2|qq\(31),
	datac => \inst3|inst5|qq\(31),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(31));

-- Location: LCCOMB_X21_Y8_N22
\inst3|inst2|qq[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(15) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst5|qq\(15)))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst2|qq\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst2|qq\(15),
	datac => \inst3|inst5|qq\(15),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(15));

-- Location: LCCOMB_X20_Y8_N28
\D[15]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[15]~42_combout\ = (\inst5~0_combout\ & ((\inst3|inst2|qq\(15)))) # (!\inst5~0_combout\ & (\inst3|inst2|qq\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~0_combout\,
	datab => \inst3|inst2|qq\(31),
	datad => \inst3|inst2|qq\(15),
	combout => \D[15]~42_combout\);

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

-- Location: LCCOMB_X20_Y7_N10
\inst1|DATA[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DATA[0]~0_combout\ = (\NOE~combout\ & \NWE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NOE~combout\,
	datad => \NWE~combout\,
	combout => \inst1|DATA[0]~0_combout\);

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

-- Location: LCCOMB_X15_Y7_N20
\inst9|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|process_0~0_combout\ = (!\A16~combout\) # (!\AD~0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AD~0\,
	datad => \A16~combout\,
	combout => \inst9|process_0~0_combout\);

-- Location: LCFF_X21_Y7_N19
\inst9|nCS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	sdata => \inst9|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|nCS~regout\);

-- Location: LCCOMB_X20_Y7_N4
\inst1|DATA[15]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DATA[15]$latch~combout\ = (!\inst9|nCS~regout\ & ((\inst1|DATA[0]~0_combout\ & ((\inst1|DATA[15]$latch~combout\))) # (!\inst1|DATA[0]~0_combout\ & (\AD~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~0\,
	datab => \inst1|DATA[15]$latch~combout\,
	datac => \inst1|DATA[0]~0_combout\,
	datad => \inst9|nCS~regout\,
	combout => \inst1|DATA[15]$latch~combout\);

-- Location: LCFF_X21_Y7_N9
\inst9|ADDR[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	sdata => \AD~10\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|ADDR\(5));

-- Location: LCFF_X21_Y7_N13
\inst9|ADDR[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	sdata => \AD~11\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|ADDR\(4));

-- Location: LCFF_X21_Y7_N31
\inst9|ADDR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	sdata => \AD~15\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|ADDR\(0));

-- Location: LCCOMB_X21_Y7_N12
\inst|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst9|ADDR\(5) & (!\inst9|ADDR\(4) & \inst9|ADDR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ADDR\(5),
	datac => \inst9|ADDR\(4),
	datad => \inst9|ADDR\(0),
	combout => \inst|Equal1~0_combout\);

-- Location: LCFF_X21_Y7_N23
\inst9|ADDR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	sdata => \AD~14\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|ADDR\(1));

-- Location: LCCOMB_X20_Y7_N0
\inst9|ADDR[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|ADDR[7]~feeder_combout\ = \AD~8\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AD~8\,
	combout => \inst9|ADDR[7]~feeder_combout\);

-- Location: LCFF_X20_Y7_N1
\inst9|ADDR[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	datain => \inst9|ADDR[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|ADDR\(7));

-- Location: LCFF_X20_Y7_N29
\inst9|ADDR[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	sdata => \AD~3\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|ADDR\(12));

-- Location: LCFF_X20_Y7_N13
\inst9|ADDR[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	sdata => \AD~4\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|ADDR\(11));

-- Location: LCCOMB_X20_Y7_N28
\inst14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14~2_combout\ = (!\inst9|ADDR\(10) & (!\inst9|ADDR\(7) & (!\inst9|ADDR\(12) & !\inst9|ADDR\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ADDR\(10),
	datab => \inst9|ADDR\(7),
	datac => \inst9|ADDR\(12),
	datad => \inst9|ADDR\(11),
	combout => \inst14~2_combout\);

-- Location: LCFF_X21_Y7_N15
\inst9|ADDR[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	sdata => \AD~6\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|ADDR\(9));

-- Location: LCFF_X21_Y7_N1
\inst9|ADDR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	sdata => \AD~12\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|ADDR\(3));

-- Location: LCFF_X20_Y7_N17
\inst9|ADDR[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	sdata => \AD~9\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|ADDR\(6));

-- Location: LCCOMB_X21_Y7_N0
\inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst9|ADDR\(9) & (!\inst9|ADDR\(3) & !\inst9|ADDR\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ADDR\(9),
	datac => \inst9|ADDR\(3),
	datad => \inst9|ADDR\(6),
	combout => \inst|Equal0~1_combout\);

-- Location: LCFF_X20_Y7_N23
\inst9|ADDR[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	sdata => \AD~2\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|ADDR\(13));

-- Location: LCFF_X20_Y7_N7
\inst9|ADDR[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	sdata => \AD~1\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|ADDR\(14));

-- Location: LCCOMB_X20_Y7_N18
\inst9|ADDR[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|ADDR[15]~feeder_combout\ = \AD~0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AD~0\,
	combout => \inst9|ADDR[15]~feeder_combout\);

-- Location: LCFF_X20_Y7_N19
\inst9|ADDR[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	datain => \inst9|ADDR[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|ADDR\(15));

-- Location: LCCOMB_X20_Y7_N6
\inst14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14~3_combout\ = (!\inst9|ADDR\(13) & (!\inst9|ADDR\(14) & \inst9|ADDR\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ADDR\(13),
	datac => \inst9|ADDR\(14),
	datad => \inst9|ADDR\(15),
	combout => \inst14~3_combout\);

-- Location: LCCOMB_X20_Y7_N2
\inst|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|Equal0~0_combout\ & (\inst14~2_combout\ & (\inst|Equal0~1_combout\ & \inst14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst14~2_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst14~3_combout\,
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y7_N10
\inst3|inst3|DOUT[15]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst3|DOUT[15]~3_combout\ = (!\inst9|ADDR\(1) & (\inst|Equal0~2_combout\ & ((\inst|Equal0~3_combout\) # (\inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~3_combout\,
	datab => \inst|Equal1~0_combout\,
	datac => \inst9|ADDR\(1),
	datad => \inst|Equal0~2_combout\,
	combout => \inst3|inst3|DOUT[15]~3_combout\);

-- Location: LCCOMB_X20_Y8_N2
\D[15]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[15]~71_combout\ = (\NOE~combout\ & (((\inst1|DATA[15]$latch~combout\)))) # (!\NOE~combout\ & ((\inst3|inst3|DOUT[15]~3_combout\ & (\D[15]~42_combout\)) # (!\inst3|inst3|DOUT[15]~3_combout\ & ((\inst1|DATA[15]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NOE~combout\,
	datab => \D[15]~42_combout\,
	datac => \inst1|DATA[15]$latch~combout\,
	datad => \inst3|inst3|DOUT[15]~3_combout\,
	combout => \D[15]~71_combout\);

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

-- Location: LCCOMB_X27_Y7_N10
\inst2|AD[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|AD[0]~0_combout\ = ((!\NADV~combout\) # (!\NWE~combout\)) # (!\NOE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NOE~combout\,
	datac => \NWE~combout\,
	datad => \NADV~combout\,
	combout => \inst2|AD[0]~0_combout\);

-- Location: CLKCTRL_G7
\inst2|AD[0]~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|AD[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|AD[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X20_Y8_N16
\inst2|AD[15]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|AD[15]$latch~combout\ = (!\inst9|nCS~regout\ & ((GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & (\D[15]~71_combout\)) # (!GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & ((\inst2|AD[15]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[15]~71_combout\,
	datab => \inst9|nCS~regout\,
	datac => \inst2|AD[15]$latch~combout\,
	datad => \inst2|AD[0]~0clkctrl_outclk\,
	combout => \inst2|AD[15]$latch~combout\);

-- Location: LCCOMB_X19_Y6_N20
\inst2|AD[0]_102\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|AD[0]_102~combout\ = (!\inst9|nCS~regout\ & ((GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & (!\NOE~combout\)) # (!GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & ((\inst2|AD[0]_102~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \NOE~combout\,
	datac => \inst2|AD[0]_102~combout\,
	datad => \inst2|AD[0]~0clkctrl_outclk\,
	combout => \inst2|AD[0]_102~combout\);

-- Location: LCCOMB_X19_Y7_N28
\inst1|DATA[14]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DATA[14]$latch~combout\ = (!\inst9|nCS~regout\ & ((\inst1|DATA[0]~0_combout\ & ((\inst1|DATA[14]$latch~combout\))) # (!\inst1|DATA[0]~0_combout\ & (\AD~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~1\,
	datab => \inst1|DATA[14]$latch~combout\,
	datac => \inst1|DATA[0]~0_combout\,
	datad => \inst9|nCS~regout\,
	combout => \inst1|DATA[14]$latch~combout\);

-- Location: LCCOMB_X20_Y8_N18
\inst3|inst2|qq[30]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(30) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst5|qq\(30)))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst2|qq\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst2|qq\(30),
	datac => \inst3|inst5|qq\(30),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(30));

-- Location: LCCOMB_X21_Y7_N26
\inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = ((\NOE~combout\) # ((\inst9|ADDR\(1)) # (!\inst|Equal1~0_combout\))) # (!\inst|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \NOE~combout\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst9|ADDR\(1),
	combout => \inst5~0_combout\);

-- Location: LCCOMB_X20_Y8_N14
\D[14]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[14]~43_combout\ = (\inst5~0_combout\ & (\inst3|inst2|qq\(14))) # (!\inst5~0_combout\ & ((\inst3|inst2|qq\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(14),
	datab => \inst3|inst2|qq\(30),
	datad => \inst5~0_combout\,
	combout => \D[14]~43_combout\);

-- Location: LCCOMB_X20_Y8_N20
\D[14]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[14]~72_combout\ = (\NOE~combout\ & (\inst1|DATA[14]$latch~combout\)) # (!\NOE~combout\ & ((\inst3|inst3|DOUT[15]~3_combout\ & ((\D[14]~43_combout\))) # (!\inst3|inst3|DOUT[15]~3_combout\ & (\inst1|DATA[14]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NOE~combout\,
	datab => \inst1|DATA[14]$latch~combout\,
	datac => \D[14]~43_combout\,
	datad => \inst3|inst3|DOUT[15]~3_combout\,
	combout => \D[14]~72_combout\);

-- Location: LCCOMB_X20_Y8_N22
\inst2|AD[14]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|AD[14]$latch~combout\ = (!\inst9|nCS~regout\ & ((GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & (\D[14]~72_combout\)) # (!GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & ((\inst2|AD[14]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[14]~72_combout\,
	datab => \inst2|AD[14]$latch~combout\,
	datac => \inst9|nCS~regout\,
	datad => \inst2|AD[0]~0clkctrl_outclk\,
	combout => \inst2|AD[14]$latch~combout\);

-- Location: LCCOMB_X26_Y8_N14
\inst3|inst2|qq[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(13) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(13))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(13),
	datac => \inst3|inst2|qq\(13),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(13));

-- Location: LCCOMB_X21_Y8_N24
\D[13]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[13]~44_combout\ = (\inst5~0_combout\ & ((\inst3|inst2|qq\(13)))) # (!\inst5~0_combout\ & (\inst3|inst2|qq\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(29),
	datab => \inst3|inst2|qq\(13),
	datad => \inst5~0_combout\,
	combout => \D[13]~44_combout\);

-- Location: LCCOMB_X20_Y7_N22
\inst1|DATA[13]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DATA[13]$latch~combout\ = (!\inst9|nCS~regout\ & ((\inst1|DATA[0]~0_combout\ & (\inst1|DATA[13]$latch~combout\)) # (!\inst1|DATA[0]~0_combout\ & ((\AD~2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DATA[13]$latch~combout\,
	datab => \inst1|DATA[0]~0_combout\,
	datac => \AD~2\,
	datad => \inst9|nCS~regout\,
	combout => \inst1|DATA[13]$latch~combout\);

-- Location: LCCOMB_X20_Y8_N10
\D[13]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[13]~73_combout\ = (\NOE~combout\ & (((\inst1|DATA[13]$latch~combout\)))) # (!\NOE~combout\ & ((\inst3|inst3|DOUT[15]~3_combout\ & (\D[13]~44_combout\)) # (!\inst3|inst3|DOUT[15]~3_combout\ & ((\inst1|DATA[13]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NOE~combout\,
	datab => \D[13]~44_combout\,
	datac => \inst1|DATA[13]$latch~combout\,
	datad => \inst3|inst3|DOUT[15]~3_combout\,
	combout => \D[13]~73_combout\);

-- Location: LCCOMB_X19_Y7_N6
\inst2|AD[13]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|AD[13]$latch~combout\ = (!\inst9|nCS~regout\ & ((GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & ((\D[13]~73_combout\))) # (!GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & (\inst2|AD[13]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|AD[13]$latch~combout\,
	datab => \D[13]~73_combout\,
	datac => \inst9|nCS~regout\,
	datad => \inst2|AD[0]~0clkctrl_outclk\,
	combout => \inst2|AD[13]$latch~combout\);

-- Location: LCFF_X27_Y9_N25
\inst3|inst5|qq[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[12]~53_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(12));

-- Location: LCCOMB_X21_Y8_N14
\inst3|inst2|qq[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(12) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(12))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(12),
	datac => \inst3|inst2|qq\(12),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(12));

-- Location: LCFF_X27_Y8_N25
\inst3|inst5|qq[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[28]~86_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(28));

-- Location: LCCOMB_X21_Y8_N12
\inst3|inst2|qq[28]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(28) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst5|qq\(28)))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst2|qq\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(28),
	datab => \inst3|inst5|qq\(28),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(28));

-- Location: LCCOMB_X21_Y8_N18
\D[12]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[12]~45_combout\ = (\inst5~0_combout\ & (\inst3|inst2|qq\(12))) # (!\inst5~0_combout\ & ((\inst3|inst2|qq\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~0_combout\,
	datab => \inst3|inst2|qq\(12),
	datad => \inst3|inst2|qq\(28),
	combout => \D[12]~45_combout\);

-- Location: LCCOMB_X19_Y7_N22
\inst1|DATA[12]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DATA[12]$latch~combout\ = (!\inst9|nCS~regout\ & ((\inst1|DATA[0]~0_combout\ & (\inst1|DATA[12]$latch~combout\)) # (!\inst1|DATA[0]~0_combout\ & ((\AD~3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \inst1|DATA[12]$latch~combout\,
	datac => \inst1|DATA[0]~0_combout\,
	datad => \AD~3\,
	combout => \inst1|DATA[12]$latch~combout\);

-- Location: LCCOMB_X20_Y8_N24
\D[12]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[12]~74_combout\ = (\NOE~combout\ & (((\inst1|DATA[12]$latch~combout\)))) # (!\NOE~combout\ & ((\inst3|inst3|DOUT[15]~3_combout\ & (\D[12]~45_combout\)) # (!\inst3|inst3|DOUT[15]~3_combout\ & ((\inst1|DATA[12]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NOE~combout\,
	datab => \D[12]~45_combout\,
	datac => \inst1|DATA[12]$latch~combout\,
	datad => \inst3|inst3|DOUT[15]~3_combout\,
	combout => \D[12]~74_combout\);

-- Location: LCCOMB_X19_Y8_N24
\inst2|AD[12]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|AD[12]$latch~combout\ = (!\inst9|nCS~regout\ & ((GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & (\D[12]~74_combout\)) # (!GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & ((\inst2|AD[12]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \D[12]~74_combout\,
	datac => \inst2|AD[12]$latch~combout\,
	datad => \inst2|AD[0]~0clkctrl_outclk\,
	combout => \inst2|AD[12]$latch~combout\);

-- Location: LCCOMB_X20_Y7_N12
\inst1|DATA[11]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DATA[11]$latch~combout\ = (!\inst9|nCS~regout\ & ((\inst1|DATA[0]~0_combout\ & ((\inst1|DATA[11]$latch~combout\))) # (!\inst1|DATA[0]~0_combout\ & (\AD~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \inst1|DATA[0]~0_combout\,
	datac => \AD~4\,
	datad => \inst1|DATA[11]$latch~combout\,
	combout => \inst1|DATA[11]$latch~combout\);

-- Location: LCCOMB_X21_Y7_N18
\inst22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22~0_combout\ = ((\inst9|ADDR\(0)) # ((\inst9|nCS~regout\) # (\NOE~combout\))) # (!\inst9|ADDR\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ADDR\(4),
	datab => \inst9|ADDR\(0),
	datac => \inst9|nCS~regout\,
	datad => \NOE~combout\,
	combout => \inst22~0_combout\);

-- Location: LCCOMB_X21_Y7_N22
inst22 : cycloneii_lcell_comb
-- Equation(s):
-- \inst22~combout\ = LCELL((\inst9|ADDR\(5) & (!\inst22~0_combout\ & (\inst9|ADDR\(1) & \inst|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ADDR\(5),
	datab => \inst22~0_combout\,
	datac => \inst9|ADDR\(1),
	datad => \inst|Equal0~2_combout\,
	combout => \inst22~combout\);

-- Location: LCCOMB_X21_Y7_N10
\D[0]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[0]~46_combout\ = (!\inst22~combout\ & ((\inst1|DATA[0]_99~combout\) # (\inst5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DATA[0]_99~combout\,
	datab => \inst22~combout\,
	datad => \inst5~0_combout\,
	combout => \D[0]~46_combout\);

-- Location: LCCOMB_X24_Y6_N4
\inst3|inst2|qq[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(11) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(11))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(11),
	datac => \inst3|inst2|qq\(11),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(11));

-- Location: LCCOMB_X20_Y6_N22
\D[11]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[11]~48_combout\ = (\D[11]~47_combout\ & ((\inst1|DATA[11]$latch~combout\) # ((!\D[0]~46_combout\)))) # (!\D[11]~47_combout\ & (((\D[0]~46_combout\ & \inst3|inst2|qq\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[11]~47_combout\,
	datab => \inst1|DATA[11]$latch~combout\,
	datac => \D[0]~46_combout\,
	datad => \inst3|inst2|qq\(11),
	combout => \D[11]~48_combout\);

-- Location: LCCOMB_X19_Y6_N14
\inst2|AD[11]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|AD[11]$latch~combout\ = (!\inst9|nCS~regout\ & ((GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & (\D[11]~48_combout\)) # (!GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & ((\inst2|AD[11]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \D[11]~48_combout\,
	datac => \inst2|AD[11]$latch~combout\,
	datad => \inst2|AD[0]~0clkctrl_outclk\,
	combout => \inst2|AD[11]$latch~combout\);

-- Location: LCFF_X27_Y9_N21
\inst3|inst5|qq[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[10]~49_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(10));

-- Location: LCCOMB_X20_Y6_N20
\inst3|inst2|qq[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(10) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(10))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(10),
	datac => \inst3|inst2|qq\(10),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(10));

-- Location: LCCOMB_X19_Y7_N24
\inst1|DATA[0]_99\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DATA[0]_99~combout\ = (!\inst9|nCS~regout\ & ((\inst1|DATA[0]~0_combout\ & (\inst1|DATA[0]_99~combout\)) # (!\inst1|DATA[0]~0_combout\ & ((!\NWE~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DATA[0]_99~combout\,
	datab => \NWE~combout\,
	datac => \inst1|DATA[0]~0_combout\,
	datad => \inst9|nCS~regout\,
	combout => \inst1|DATA[0]_99~combout\);

-- Location: LCCOMB_X25_Y7_N30
\D[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[0]~9_combout\ = (\inst22~combout\) # (\inst1|DATA[0]_99~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22~combout\,
	datac => \inst1|DATA[0]_99~combout\,
	combout => \D[0]~9_combout\);

-- Location: LCFF_X27_Y8_N21
\inst3|inst5|qq[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[26]~82_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(26));

-- Location: LCCOMB_X24_Y6_N14
\inst3|inst2|qq[26]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(26) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(26))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(26),
	datac => \inst3|inst2|qq\(26),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(26));

-- Location: LCCOMB_X20_Y6_N28
\D[10]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[10]~49_combout\ = (\D[0]~46_combout\ & ((\inst3|inst2|qq\(10)) # ((\D[0]~9_combout\)))) # (!\D[0]~46_combout\ & (((!\D[0]~9_combout\ & \inst3|inst2|qq\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~46_combout\,
	datab => \inst3|inst2|qq\(10),
	datac => \D[0]~9_combout\,
	datad => \inst3|inst2|qq\(26),
	combout => \D[10]~49_combout\);

-- Location: LCCOMB_X21_Y11_N0
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~3_combout\ = \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) $ (((\inst8|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ & 
-- (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & !\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	datab => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datac => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	combout => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~3_combout\);

-- Location: LCFF_X21_Y11_N1
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4));

-- Location: LCCOMB_X21_Y11_N28
\inst8|dcfifo_component|auto_generated|wrptr_gp|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\ = (\inst8|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ & (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
-- (!\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & !\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	datab => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datac => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	combout => \inst8|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\);

-- Location: LCCOMB_X20_Y11_N6
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~4_combout\ = \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) $ (\inst8|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\,
	combout => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~4_combout\);

-- Location: LCFF_X20_Y11_N7
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5));

-- Location: LCCOMB_X21_Y11_N6
\inst8|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0_combout\ = (\inst8|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ & (!\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
-- (!\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & !\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	datab => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datac => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	combout => \inst8|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0_combout\);

-- Location: LCCOMB_X20_Y11_N30
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~1_combout\ = \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) $ (((\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & 
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datac => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0_combout\,
	combout => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~1_combout\);

-- Location: LCFF_X20_Y11_N31
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6));

-- Location: LCCOMB_X21_Y11_N16
\inst8|dcfifo_component|auto_generated|wrptr_gp|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\ = \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) $ (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) $ 
-- (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) $ (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datab => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datac => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	combout => \inst8|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\);

-- Location: LCFF_X21_Y11_N17
\inst8|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\,
	ena => \inst8|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\);

-- Location: LCCOMB_X21_Y11_N26
\inst8|dcfifo_component|auto_generated|wrptr_gp|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\ = \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) $ (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) $ 
-- (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) $ (!\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datab => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datac => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	combout => \inst8|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\);

-- Location: LCFF_X21_Y11_N27
\inst8|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\,
	ena => \inst8|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\);

-- Location: LCCOMB_X21_Y11_N24
\inst8|dcfifo_component|auto_generated|wrptr_gp|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\ = \inst8|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\ $ (\inst8|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\ $ 
-- (!\inst8|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\,
	datac => \inst8|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\,
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\,
	combout => \inst8|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\);

-- Location: LCFF_X21_Y11_N25
\inst8|dcfifo_component|auto_generated|wrptr_gp|parity11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\,
	ena => \inst8|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\);

-- Location: LCCOMB_X21_Y11_N8
\inst8|dcfifo_component|auto_generated|wrptr_gp|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\ = (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & (!\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & 
-- (\inst8|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & \inst8|dcfifo_component|auto_generated|valid_wrreq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datab => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datac => \inst8|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datad => \inst8|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	combout => \inst8|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\);

-- Location: LCCOMB_X21_Y11_N22
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~5_combout\ = \inst8|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\ $ (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\,
	datac => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	combout => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~5_combout\);

-- Location: LCFF_X21_Y11_N23
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2));

-- Location: LCCOMB_X21_Y11_N4
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~6_combout\ = \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) $ (((\inst8|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ & 
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	datac => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	combout => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~6_combout\);

-- Location: LCFF_X21_Y11_N5
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3));

-- Location: LCCOMB_X22_Y11_N12
\inst8|dcfifo_component|auto_generated|rdptr_g1p|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) $ (!\inst8|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\);

-- Location: LCCOMB_X21_Y10_N0
\inst8|dcfifo_component|auto_generated|rdaclr|dffe16a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdaclr|dffe16a[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst8|dcfifo_component|auto_generated|rdaclr|dffe16a[0]~feeder_combout\);

-- Location: LCFF_X21_Y10_N1
\inst8|dcfifo_component|auto_generated|rdaclr|dffe16a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdaclr|dffe16a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdaclr|dffe16a\(0));

-- Location: LCFF_X22_Y11_N13
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\,
	aclr => \inst8|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	ena => \inst8|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

-- Location: LCCOMB_X22_Y11_N4
\inst8|dcfifo_component|auto_generated|rdptr_g1p|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ = (\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & (\inst8|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ & 
-- (\inst8|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ & !\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datab => \inst8|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	datac => \inst8|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\);

-- Location: LCCOMB_X22_Y11_N0
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~1_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ $ (\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\,
	datac => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~1_combout\);

-- Location: LCFF_X22_Y11_N1
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~1_combout\,
	aclr => \inst8|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2));

-- Location: LCCOMB_X22_Y11_N14
\inst8|dcfifo_component|auto_generated|rdptr_g1p|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) $ (\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) $ 
-- (\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) $ (!\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datab => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datac => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\);

-- Location: LCFF_X22_Y11_N15
\inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\,
	aclr => \inst8|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	ena => \inst8|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\);

-- Location: LCCOMB_X22_Y11_N22
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~3_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) $ (((\inst8|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ & 
-- (\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & !\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	datab => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datac => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~3_combout\);

-- Location: LCFF_X22_Y11_N23
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~3_combout\,
	aclr => \inst8|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4));

-- Location: LCCOMB_X22_Y11_N8
\inst8|dcfifo_component|auto_generated|rdptr_g1p|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ = (!\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & (!\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
-- (\inst8|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ & !\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datab => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	datac => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\);

-- Location: LCCOMB_X22_Y11_N18
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~5_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) $ (((\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & 
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datab => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	datac => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~5_combout\);

-- Location: LCFF_X22_Y11_N19
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~5_combout\,
	aclr => \inst8|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6));

-- Location: LCCOMB_X22_Y11_N28
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~6_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(8) $ (((!\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & 
-- (\inst8|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ & !\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datab => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	datac => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(8),
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~6_combout\);

-- Location: LCFF_X22_Y11_N29
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~6_combout\,
	aclr => \inst8|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(8));

-- Location: LCCOMB_X22_Y11_N30
\inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~feeder_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(8),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~feeder_combout\);

-- Location: LCFF_X22_Y11_N31
\inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~feeder_combout\,
	aclr => \inst8|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	ena => \inst8|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\);

-- Location: LCCOMB_X22_Y11_N2
\inst8|dcfifo_component|auto_generated|rdptr_g1p|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\ $ (\inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\ $ 
-- (!\inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\,
	datac => \inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\,
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\,
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\);

-- Location: LCFF_X22_Y11_N3
\inst8|dcfifo_component|auto_generated|rdptr_g1p|parity5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\,
	aclr => \inst8|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	ena => \inst8|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\);

-- Location: LCCOMB_X22_Y11_N10
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~0_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) $ (((\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) & 
-- (\inst8|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ & \inst8|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datab => \inst8|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	datac => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~0_combout\);

-- Location: LCFF_X22_Y11_N11
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~0_combout\,
	aclr => \inst8|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1));

-- Location: LCCOMB_X19_Y11_N30
\inst8|dcfifo_component|auto_generated|rdptr_g1p|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ = (!\inst8|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ & (\inst8|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ & 
-- (!\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & !\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	datab => \inst8|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	datac => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\);

-- Location: LCCOMB_X19_Y11_N24
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~2_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) $ (((\inst8|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ & 
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datab => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~2_combout\);

-- Location: LCCOMB_X18_Y11_N16
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~2_combout\,
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~feeder_combout\);

-- Location: LCFF_X18_Y11_N17
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~feeder_combout\,
	aclr => \inst8|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3));

-- Location: LCCOMB_X19_Y11_N26
\inst8|dcfifo_component|auto_generated|rdptr_g[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g[3]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g[3]~feeder_combout\);

-- Location: LCCOMB_X22_Y11_N6
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~7_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7) $ (((!\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & 
-- (\inst8|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ & \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datab => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	datac => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7),
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~7_combout\);

-- Location: LCFF_X22_Y11_N7
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~7_combout\,
	aclr => \inst8|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7));

-- Location: LCCOMB_X19_Y11_N10
\inst8|dcfifo_component|auto_generated|rdptr_g[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g[7]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g[7]~feeder_combout\);

-- Location: LCFF_X19_Y11_N11
\inst8|dcfifo_component|auto_generated|rdptr_g[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g[7]~feeder_combout\,
	ena => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g\(7));

-- Location: LCCOMB_X20_Y11_N10
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~2_combout\ = \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) $ (((!\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & 
-- (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst8|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datab => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datac => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0_combout\,
	combout => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~2_combout\);

-- Location: LCFF_X20_Y11_N11
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7));

-- Location: LCCOMB_X20_Y11_N8
\inst8|dcfifo_component|auto_generated|delayed_wrptr_g[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[7]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	combout => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[7]~feeder_combout\);

-- Location: LCFF_X20_Y11_N9
\inst8|dcfifo_component|auto_generated|delayed_wrptr_g[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(7));

-- Location: LCCOMB_X17_Y11_N4
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[7]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	combout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[7]~feeder_combout\);

-- Location: LCFF_X17_Y11_N5
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[7]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(7));

-- Location: LCFF_X18_Y11_N19
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[7]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(7));

-- Location: LCFF_X19_Y11_N29
\inst8|dcfifo_component|auto_generated|rdptr_g[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	sload => VCC,
	ena => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g\(4));

-- Location: LCCOMB_X18_Y11_N18
\inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\ = (\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(4) & ((\inst8|dcfifo_component|auto_generated|rdptr_g\(7) $ 
-- (\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(7))) # (!\inst8|dcfifo_component|auto_generated|rdptr_g\(4)))) # (!\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(4) & 
-- ((\inst8|dcfifo_component|auto_generated|rdptr_g\(4)) # (\inst8|dcfifo_component|auto_generated|rdptr_g\(7) $ (\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(4),
	datab => \inst8|dcfifo_component|auto_generated|rdptr_g\(7),
	datac => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(7),
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g\(4),
	combout => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X17_Y11_N2
\inst8|dcfifo_component|auto_generated|delayed_wrptr_g[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[2]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	combout => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[2]~feeder_combout\);

-- Location: LCFF_X17_Y11_N3
\inst8|dcfifo_component|auto_generated|delayed_wrptr_g[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(2));

-- Location: LCCOMB_X17_Y11_N6
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[2]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(2),
	combout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[2]~feeder_combout\);

-- Location: LCFF_X17_Y11_N7
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[2]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(2));

-- Location: LCCOMB_X17_Y11_N16
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[2]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(2),
	combout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[2]~feeder_combout\);

-- Location: LCFF_X17_Y11_N17
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[2]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(2));

-- Location: LCCOMB_X17_Y11_N12
\inst8|dcfifo_component|auto_generated|delayed_wrptr_g[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[5]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	combout => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[5]~feeder_combout\);

-- Location: LCFF_X17_Y11_N13
\inst8|dcfifo_component|auto_generated|delayed_wrptr_g[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(5));

-- Location: LCCOMB_X17_Y11_N0
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[5]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	combout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[5]~feeder_combout\);

-- Location: LCFF_X17_Y11_N1
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[5]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(5));

-- Location: LCFF_X18_Y11_N25
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[5]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(5));

-- Location: LCCOMB_X19_Y11_N22
\inst8|dcfifo_component|auto_generated|rdptr_g[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\);

-- Location: LCFF_X19_Y11_N23
\inst8|dcfifo_component|auto_generated|rdptr_g[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\,
	ena => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g\(2));

-- Location: LCCOMB_X18_Y11_N24
\inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~2_combout\ = (\inst8|dcfifo_component|auto_generated|rdptr_g\(5) & ((\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(2) $ 
-- (\inst8|dcfifo_component|auto_generated|rdptr_g\(2))) # (!\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(5)))) # (!\inst8|dcfifo_component|auto_generated|rdptr_g\(5) & 
-- ((\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(5)) # (\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(2) $ (\inst8|dcfifo_component|auto_generated|rdptr_g\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g\(5),
	datab => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(2),
	datac => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(5),
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g\(2),
	combout => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~2_combout\);

-- Location: LCFF_X19_Y11_N9
\inst8|dcfifo_component|auto_generated|rdptr_g[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(8),
	sload => VCC,
	ena => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g\(8));

-- Location: LCCOMB_X20_Y11_N20
\inst8|dcfifo_component|auto_generated|delayed_wrptr_g[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[6]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	combout => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[6]~feeder_combout\);

-- Location: LCFF_X20_Y11_N21
\inst8|dcfifo_component|auto_generated|delayed_wrptr_g[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(6));

-- Location: LCCOMB_X17_Y11_N30
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[6]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	combout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[6]~feeder_combout\);

-- Location: LCFF_X17_Y11_N31
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[6]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(6));

-- Location: LCFF_X18_Y11_N27
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[6]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(6));

-- Location: LCCOMB_X20_Y11_N0
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~0_combout\ = \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) $ (((!\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & 
-- (!\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst8|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datab => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datac => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|cntr_cout[5]~0_combout\,
	combout => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~0_combout\);

-- Location: LCFF_X20_Y11_N1
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8));

-- Location: LCFF_X17_Y11_N19
\inst8|dcfifo_component|auto_generated|delayed_wrptr_g[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(8));

-- Location: LCCOMB_X17_Y11_N28
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[8]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(8),
	combout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[8]~feeder_combout\);

-- Location: LCFF_X17_Y11_N29
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[8]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(8));

-- Location: LCCOMB_X17_Y11_N24
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[8]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(8),
	combout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[8]~feeder_combout\);

-- Location: LCFF_X17_Y11_N25
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[8]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(8));

-- Location: LCCOMB_X18_Y11_N26
\inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\ = (\inst8|dcfifo_component|auto_generated|rdptr_g\(6) & ((\inst8|dcfifo_component|auto_generated|rdptr_g\(8) $ 
-- (\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(8))) # (!\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(6)))) # (!\inst8|dcfifo_component|auto_generated|rdptr_g\(6) & 
-- ((\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(6)) # (\inst8|dcfifo_component|auto_generated|rdptr_g\(8) $ (\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g\(6),
	datab => \inst8|dcfifo_component|auto_generated|rdptr_g\(8),
	datac => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(6),
	datad => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(8),
	combout => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X18_Y11_N6
\inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\ = (\inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~3_combout\) # 
-- ((\inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\) # ((\inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~2_combout\) # 
-- (\inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~3_combout\,
	datab => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\,
	datac => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~2_combout\,
	datad => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\,
	combout => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\);

-- Location: LCCOMB_X19_Y11_N20
\inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0) = (\inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\) # (\inst8|dcfifo_component|auto_generated|rdptr_g\(1) $ 
-- (\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g\(1),
	datab => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(1),
	datad => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\,
	combout => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0));

-- Location: LCFF_X19_Y11_N27
\inst8|dcfifo_component|auto_generated|rdptr_g[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g[3]~feeder_combout\,
	ena => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g\(3));

-- Location: LCFF_X19_Y11_N7
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[3]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|rdptr_g\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(3));

-- Location: LCFF_X20_Y11_N27
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[3]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(3));

-- Location: LCCOMB_X19_Y11_N12
\inst8|dcfifo_component|auto_generated|rdptr_g[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g[0]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g[0]~feeder_combout\);

-- Location: LCFF_X19_Y11_N13
\inst8|dcfifo_component|auto_generated|rdptr_g[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g[0]~feeder_combout\,
	ena => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g\(0));

-- Location: LCFF_X18_Y11_N3
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[0]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|rdptr_g\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(0));

-- Location: LCCOMB_X19_Y11_N18
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[0]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(0),
	combout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[0]~feeder_combout\);

-- Location: LCFF_X19_Y11_N19
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[0]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(0));

-- Location: LCCOMB_X20_Y11_N26
\inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_combout\ = (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & ((\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) $ 
-- (\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(3))) # (!\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(0)))) # (!\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & 
-- ((\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(0)) # (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) $ (\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datab => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datac => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(3),
	datad => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(0),
	combout => \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X18_Y11_N30
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[2]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g\(2),
	combout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[2]~feeder_combout\);

-- Location: LCFF_X18_Y11_N31
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[2]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(2));

-- Location: LCCOMB_X17_Y11_N22
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[2]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(2),
	combout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[2]~feeder_combout\);

-- Location: LCFF_X17_Y11_N23
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[2]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(2));

-- Location: LCCOMB_X22_Y11_N26
\inst8|dcfifo_component|auto_generated|rdptr_g1p|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ = (!\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & (\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
-- (\inst8|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ & !\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datab => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	datac => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\);

-- Location: LCCOMB_X22_Y11_N24
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~4_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) $ (\inst8|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~4_combout\);

-- Location: LCFF_X22_Y11_N25
\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~4_combout\,
	aclr => \inst8|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe16a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5));

-- Location: LCCOMB_X19_Y11_N4
\inst8|dcfifo_component|auto_generated|rdptr_g[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g[5]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g[5]~feeder_combout\);

-- Location: LCFF_X19_Y11_N5
\inst8|dcfifo_component|auto_generated|rdptr_g[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g[5]~feeder_combout\,
	ena => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g\(5));

-- Location: LCCOMB_X18_Y11_N14
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[5]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g\(5),
	combout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[5]~feeder_combout\);

-- Location: LCFF_X18_Y11_N15
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[5]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(5));

-- Location: LCFF_X17_Y11_N21
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[5]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(5));

-- Location: LCCOMB_X17_Y11_N20
\inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_combout\ = (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & ((\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(2) $ 
-- (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2))) # (!\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(5)))) # (!\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & 
-- ((\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(5)) # (\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(2) $ (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datab => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(2),
	datac => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(5),
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	combout => \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X20_Y11_N18
\inst8|dcfifo_component|auto_generated|rdptr_g[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdptr_g[6]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	combout => \inst8|dcfifo_component|auto_generated|rdptr_g[6]~feeder_combout\);

-- Location: LCFF_X20_Y11_N19
\inst8|dcfifo_component|auto_generated|rdptr_g[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rdptr_g[6]~feeder_combout\,
	ena => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g\(6));

-- Location: LCCOMB_X20_Y11_N14
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[6]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|rdptr_g\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g\(6),
	combout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[6]~feeder_combout\);

-- Location: LCFF_X20_Y11_N15
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[6]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(6));

-- Location: LCFF_X20_Y11_N29
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[6]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(6));

-- Location: LCCOMB_X20_Y11_N28
\inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\ = (\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(8) & ((\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8)) # 
-- (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) $ (\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(6))))) # (!\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(8) & 
-- ((\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) $ (\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(6))) # (!\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(8),
	datab => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datac => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(6),
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	combout => \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X20_Y11_N16
\inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_combout\ = (\inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\) # 
-- ((\inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_combout\) # ((\inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_combout\) # 
-- (\inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\,
	datab => \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_combout\,
	datac => \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_combout\,
	datad => \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\,
	combout => \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_combout\);

-- Location: LCFF_X19_Y11_N25
\inst8|dcfifo_component|auto_generated|rdptr_g[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	sload => VCC,
	ena => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rdptr_g\(1));

-- Location: LCFF_X19_Y11_N3
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a[1]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|rdptr_g\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(1));

-- Location: LCFF_X19_Y11_N21
\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a[1]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe21a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(1));

-- Location: LCCOMB_X21_Y11_N2
\inst8|dcfifo_component|auto_generated|valid_wrreq~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|valid_wrreq~0_combout\ = (\inst15|START~combout\ & ((\inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_combout\) # (\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(1) $ 
-- (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|START~combout\,
	datab => \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_combout\,
	datac => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(1),
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	combout => \inst8|dcfifo_component|auto_generated|valid_wrreq~0_combout\);

-- Location: LCCOMB_X21_Y11_N30
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~7_combout\ = \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) $ (((!\inst8|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & 
-- \inst8|dcfifo_component|auto_generated|valid_wrreq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datac => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datad => \inst8|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	combout => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~7_combout\);

-- Location: LCFF_X21_Y11_N31
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

-- Location: LCCOMB_X21_Y11_N12
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~8_combout\ = \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) $ (((\inst8|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & 
-- (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & \inst8|dcfifo_component|auto_generated|valid_wrreq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datab => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datac => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datad => \inst8|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	combout => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~8_combout\);

-- Location: LCFF_X21_Y11_N13
\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1));

-- Location: LCFF_X18_Y11_N29
\inst8|dcfifo_component|auto_generated|delayed_wrptr_g[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK25M~clkctrl_outclk\,
	sdata => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(1));

-- Location: LCCOMB_X18_Y11_N12
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[1]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|delayed_wrptr_g\(1),
	combout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[1]~feeder_combout\);

-- Location: LCFF_X18_Y11_N13
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[1]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(1));

-- Location: LCCOMB_X18_Y11_N22
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[1]~feeder_combout\ = \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe18a\(1),
	combout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[1]~feeder_combout\);

-- Location: LCFF_X18_Y11_N23
\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[1]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	datain => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(1));

-- Location: LCCOMB_X19_Y11_N2
\inst8|dcfifo_component|auto_generated|rdcnt_addr_ena\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ = ((\inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\) # (\inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(1) $ 
-- (\inst8|dcfifo_component|auto_generated|rdptr_g\(1)))) # (!\inst8|dcfifo_component|auto_generated|p0addr~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|p0addr~regout\,
	datab => \inst8|dcfifo_component|auto_generated|rs_dgwp|dffpipe17|dffe19a\(1),
	datac => \inst8|dcfifo_component|auto_generated|rdptr_g\(1),
	datad => \inst8|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\,
	combout => \inst8|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\);

-- Location: CLKCTRL_G4
\inst22~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst22~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst22~clkctrl_outclk\);

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

-- Location: CLKCTRL_G0
\CLK25M~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK25M~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK25M~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y11_N20
\inst8|dcfifo_component|auto_generated|ram_address_b[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|ram_address_b\(7) = \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7) $ (\inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(7),
	datad => \inst8|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(8),
	combout => \inst8|dcfifo_component|auto_generated|ram_address_b\(7));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[0]~I\ : cycloneii_io
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
	padio => ww_DIN(0),
	combout => \DIN~combout\(0));

-- Location: LCCOMB_X21_Y11_N10
\inst8|dcfifo_component|auto_generated|ram_address_a[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|ram_address_a\(7) = \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) $ (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	combout => \inst8|dcfifo_component|auto_generated|ram_address_a\(7));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[1]~I\ : cycloneii_io
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
	padio => ww_DIN(1),
	combout => \DIN~combout\(1));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[2]~I\ : cycloneii_io
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
	padio => ww_DIN(2),
	combout => \DIN~combout\(2));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[3]~I\ : cycloneii_io
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
	padio => ww_DIN(3),
	combout => \DIN~combout\(3));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[4]~I\ : cycloneii_io
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
	padio => ww_DIN(4),
	combout => \DIN~combout\(4));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[5]~I\ : cycloneii_io
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
	padio => ww_DIN(5),
	combout => \DIN~combout\(5));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[6]~I\ : cycloneii_io
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
	padio => ww_DIN(6),
	combout => \DIN~combout\(6));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[7]~I\ : cycloneii_io
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
	padio => ww_DIN(7),
	combout => \DIN~combout\(7));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[8]~I\ : cycloneii_io
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
	padio => ww_DIN(8),
	combout => \DIN~combout\(8));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[9]~I\ : cycloneii_io
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
	padio => ww_DIN(9),
	combout => \DIN~combout\(9));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[10]~I\ : cycloneii_io
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
	padio => ww_DIN(10),
	combout => \DIN~combout\(10));

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[11]~I\ : cycloneii_io
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
	padio => ww_DIN(11),
	combout => \DIN~combout\(11));

-- Location: LCCOMB_X20_Y6_N26
\D[10]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[10]~50_combout\ = (\D[10]~49_combout\ & ((\inst1|DATA[10]$latch~combout\) # ((!\D[0]~9_combout\)))) # (!\D[10]~49_combout\ & (((\D[0]~9_combout\ & \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DATA[10]$latch~combout\,
	datab => \D[10]~49_combout\,
	datac => \D[0]~9_combout\,
	datad => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(10),
	combout => \D[10]~50_combout\);

-- Location: LCCOMB_X19_Y6_N4
\inst2|AD[10]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|AD[10]$latch~combout\ = (!\inst9|nCS~regout\ & ((GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & (\D[10]~50_combout\)) # (!GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & ((\inst2|AD[10]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \D[10]~50_combout\,
	datac => \inst2|AD[10]$latch~combout\,
	datad => \inst2|AD[0]~0clkctrl_outclk\,
	combout => \inst2|AD[10]$latch~combout\);

-- Location: LCCOMB_X26_Y7_N8
\inst3|inst2|qq[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(9) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(9))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(9),
	datac => \inst3|inst2|qq\(9),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(9));

-- Location: LCCOMB_X19_Y7_N26
\inst1|DATA[9]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DATA[9]$latch~combout\ = (!\inst9|nCS~regout\ & ((\inst1|DATA[0]~0_combout\ & (\inst1|DATA[9]$latch~combout\)) # (!\inst1|DATA[0]~0_combout\ & ((\AD~6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \inst1|DATA[9]$latch~combout\,
	datac => \inst1|DATA[0]~0_combout\,
	datad => \AD~6\,
	combout => \inst1|DATA[9]$latch~combout\);

-- Location: LCCOMB_X25_Y7_N26
\D[9]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[9]~52_combout\ = (\D[9]~51_combout\ & (((\inst1|DATA[9]$latch~combout\) # (!\D[0]~46_combout\)))) # (!\D[9]~51_combout\ & (\inst3|inst2|qq\(9) & ((\D[0]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[9]~51_combout\,
	datab => \inst3|inst2|qq\(9),
	datac => \inst1|DATA[9]$latch~combout\,
	datad => \D[0]~46_combout\,
	combout => \D[9]~52_combout\);

-- Location: LCCOMB_X25_Y7_N14
\inst2|AD[9]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|AD[9]$latch~combout\ = (!\inst9|nCS~regout\ & ((GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & (\D[9]~52_combout\)) # (!GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & ((\inst2|AD[9]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \D[9]~52_combout\,
	datac => \inst2|AD[9]$latch~combout\,
	datad => \inst2|AD[0]~0clkctrl_outclk\,
	combout => \inst2|AD[9]$latch~combout\);

-- Location: LCCOMB_X24_Y8_N14
\inst3|inst2|qq[24]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(24) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(24))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(24),
	datac => \inst3|inst2|qq\(24),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(24));

-- Location: LCCOMB_X24_Y8_N4
\D[8]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[8]~53_combout\ = (\D[0]~9_combout\ & (((\D[0]~46_combout\)))) # (!\D[0]~9_combout\ & ((\D[0]~46_combout\ & (\inst3|inst2|qq\(8))) # (!\D[0]~46_combout\ & ((\inst3|inst2|qq\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(8),
	datab => \inst3|inst2|qq\(24),
	datac => \D[0]~9_combout\,
	datad => \D[0]~46_combout\,
	combout => \D[8]~53_combout\);

-- Location: LCCOMB_X19_Y7_N12
\inst1|DATA[8]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DATA[8]$latch~combout\ = (!\inst9|nCS~regout\ & ((\inst1|DATA[0]~0_combout\ & (\inst1|DATA[8]$latch~combout\)) # (!\inst1|DATA[0]~0_combout\ & ((\AD~7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DATA[8]$latch~combout\,
	datab => \AD~7\,
	datac => \inst1|DATA[0]~0_combout\,
	datad => \inst9|nCS~regout\,
	combout => \inst1|DATA[8]$latch~combout\);

-- Location: LCCOMB_X24_Y8_N10
\D[8]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[8]~54_combout\ = (\D[0]~9_combout\ & ((\D[8]~53_combout\ & ((\inst1|DATA[8]$latch~combout\))) # (!\D[8]~53_combout\ & (\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(8))))) # (!\D[0]~9_combout\ & (\D[8]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~9_combout\,
	datab => \D[8]~53_combout\,
	datac => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(8),
	datad => \inst1|DATA[8]$latch~combout\,
	combout => \D[8]~54_combout\);

-- Location: LCCOMB_X24_Y8_N24
\inst2|AD[8]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|AD[8]$latch~combout\ = (!\inst9|nCS~regout\ & ((GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & (\D[8]~54_combout\)) # (!GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & ((\inst2|AD[8]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[8]~54_combout\,
	datab => \inst9|nCS~regout\,
	datac => \inst2|AD[8]$latch~combout\,
	datad => \inst2|AD[0]~0clkctrl_outclk\,
	combout => \inst2|AD[8]$latch~combout\);

-- Location: LCCOMB_X24_Y8_N28
\inst3|inst2|qq[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(7) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst5|qq\(7)))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst2|qq\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst2|qq\(7),
	datac => \inst3|inst5|qq\(7),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(7));

-- Location: LCCOMB_X24_Y8_N22
\inst3|inst2|qq[23]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(23) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst5|qq\(23)))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst2|qq\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst2|qq\(23),
	datac => \inst3|inst5|qq\(23),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(23));

-- Location: LCCOMB_X24_Y8_N20
\D[7]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[7]~55_combout\ = (\D[0]~9_combout\ & ((\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(7)) # ((\D[0]~46_combout\)))) # (!\D[0]~9_combout\ & (((\inst3|inst2|qq\(23) & !\D[0]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~9_combout\,
	datab => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(7),
	datac => \inst3|inst2|qq\(23),
	datad => \D[0]~46_combout\,
	combout => \D[7]~55_combout\);

-- Location: LCCOMB_X20_Y7_N24
\inst1|DATA[7]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DATA[7]$latch~combout\ = (!\inst9|nCS~regout\ & ((\inst1|DATA[0]~0_combout\ & ((\inst1|DATA[7]$latch~combout\))) # (!\inst1|DATA[0]~0_combout\ & (\AD~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \AD~8\,
	datac => \inst1|DATA[0]~0_combout\,
	datad => \inst1|DATA[7]$latch~combout\,
	combout => \inst1|DATA[7]$latch~combout\);

-- Location: LCCOMB_X24_Y8_N6
\D[7]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[7]~56_combout\ = (\D[0]~46_combout\ & ((\D[7]~55_combout\ & ((\inst1|DATA[7]$latch~combout\))) # (!\D[7]~55_combout\ & (\inst3|inst2|qq\(7))))) # (!\D[0]~46_combout\ & (((\D[7]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~46_combout\,
	datab => \inst3|inst2|qq\(7),
	datac => \D[7]~55_combout\,
	datad => \inst1|DATA[7]$latch~combout\,
	combout => \D[7]~56_combout\);

-- Location: LCCOMB_X24_Y8_N18
\inst2|AD[7]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|AD[7]$latch~combout\ = (!\inst9|nCS~regout\ & ((GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & (\D[7]~56_combout\)) # (!GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & ((\inst2|AD[7]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[7]~56_combout\,
	datab => \inst2|AD[7]$latch~combout\,
	datac => \inst9|nCS~regout\,
	datad => \inst2|AD[0]~0clkctrl_outclk\,
	combout => \inst2|AD[7]$latch~combout\);

-- Location: LCFF_X27_Y9_N13
\inst3|inst5|qq[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[6]~41_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(6));

-- Location: LCCOMB_X24_Y7_N18
\inst3|inst2|qq[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(6) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst5|qq\(6)))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst2|qq\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst2|qq\(6),
	datac => \inst3|inst5|qq\(6),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(6));

-- Location: LCFF_X27_Y8_N13
\inst3|inst5|qq[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[22]~73_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(22));

-- Location: LCCOMB_X24_Y7_N20
\inst3|inst2|qq[22]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(22) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(22))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(22),
	datac => \inst3|inst2|qq\(22),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(22));

-- Location: LCCOMB_X24_Y7_N8
\D[6]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[6]~57_combout\ = (\D[0]~46_combout\ & ((\inst3|inst2|qq\(6)) # ((\D[0]~9_combout\)))) # (!\D[0]~46_combout\ & (((\inst3|inst2|qq\(22) & !\D[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~46_combout\,
	datab => \inst3|inst2|qq\(6),
	datac => \inst3|inst2|qq\(22),
	datad => \D[0]~9_combout\,
	combout => \D[6]~57_combout\);

-- Location: LCCOMB_X24_Y7_N30
\D[6]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[6]~58_combout\ = (\D[6]~57_combout\ & ((\inst1|DATA[6]$latch~combout\) # ((!\D[0]~9_combout\)))) # (!\D[6]~57_combout\ & (((\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(6) & \D[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DATA[6]$latch~combout\,
	datab => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(6),
	datac => \D[6]~57_combout\,
	datad => \D[0]~9_combout\,
	combout => \D[6]~58_combout\);

-- Location: LCCOMB_X25_Y7_N4
\inst2|AD[6]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|AD[6]$latch~combout\ = (!\inst9|nCS~regout\ & ((GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & (\D[6]~58_combout\)) # (!GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & ((\inst2|AD[6]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \D[6]~58_combout\,
	datac => \inst2|AD[6]$latch~combout\,
	datad => \inst2|AD[0]~0clkctrl_outclk\,
	combout => \inst2|AD[6]$latch~combout\);

-- Location: LCCOMB_X22_Y7_N18
\D[5]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[5]~59_combout\ = (\D[0]~9_combout\ & (((\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(5)) # (\D[0]~46_combout\)))) # (!\D[0]~9_combout\ & (\inst3|inst2|qq\(21) & ((!\D[0]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(21),
	datab => \D[0]~9_combout\,
	datac => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(5),
	datad => \D[0]~46_combout\,
	combout => \D[5]~59_combout\);

-- Location: LCFF_X27_Y9_N11
\inst3|inst5|qq[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[5]~39_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(5));

-- Location: LCCOMB_X22_Y7_N16
\inst3|inst2|qq[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(5) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst5|qq\(5)))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst2|qq\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(5),
	datab => \inst3|inst5|qq\(5),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(5));

-- Location: LCCOMB_X20_Y7_N8
\inst1|DATA[5]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DATA[5]$latch~combout\ = (!\inst9|nCS~regout\ & ((\inst1|DATA[0]~0_combout\ & ((\inst1|DATA[5]$latch~combout\))) # (!\inst1|DATA[0]~0_combout\ & (\AD~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~10\,
	datab => \inst9|nCS~regout\,
	datac => \inst1|DATA[0]~0_combout\,
	datad => \inst1|DATA[5]$latch~combout\,
	combout => \inst1|DATA[5]$latch~combout\);

-- Location: LCCOMB_X22_Y7_N4
\D[5]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[5]~60_combout\ = (\D[0]~46_combout\ & ((\D[5]~59_combout\ & ((\inst1|DATA[5]$latch~combout\))) # (!\D[5]~59_combout\ & (\inst3|inst2|qq\(5))))) # (!\D[0]~46_combout\ & (\D[5]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~46_combout\,
	datab => \D[5]~59_combout\,
	datac => \inst3|inst2|qq\(5),
	datad => \inst1|DATA[5]$latch~combout\,
	combout => \D[5]~60_combout\);

-- Location: LCCOMB_X18_Y7_N20
\inst2|AD[5]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|AD[5]$latch~combout\ = (!\inst9|nCS~regout\ & ((GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & (\D[5]~60_combout\)) # (!GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & ((\inst2|AD[5]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[5]~60_combout\,
	datab => \inst9|nCS~regout\,
	datac => \inst2|AD[5]$latch~combout\,
	datad => \inst2|AD[0]~0clkctrl_outclk\,
	combout => \inst2|AD[5]$latch~combout\);

-- Location: LCCOMB_X22_Y7_N20
\inst3|inst2|qq[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(4) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst5|qq\(4)))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst2|qq\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(4),
	datab => \inst3|inst5|qq\(4),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(4));

-- Location: LCCOMB_X22_Y7_N10
\inst3|inst2|qq[20]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(20) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst5|qq\(20)))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst2|qq\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(20),
	datab => \inst3|inst5|qq\(20),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(20));

-- Location: LCCOMB_X22_Y7_N22
\D[4]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[4]~61_combout\ = (\D[0]~46_combout\ & ((\inst3|inst2|qq\(4)) # ((\D[0]~9_combout\)))) # (!\D[0]~46_combout\ & (((\inst3|inst2|qq\(20) & !\D[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~46_combout\,
	datab => \inst3|inst2|qq\(4),
	datac => \inst3|inst2|qq\(20),
	datad => \D[0]~9_combout\,
	combout => \D[4]~61_combout\);

-- Location: LCCOMB_X19_Y7_N8
\inst1|DATA[4]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DATA[4]$latch~combout\ = (!\inst9|nCS~regout\ & ((\inst1|DATA[0]~0_combout\ & (\inst1|DATA[4]$latch~combout\)) # (!\inst1|DATA[0]~0_combout\ & ((\AD~11\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \inst1|DATA[4]$latch~combout\,
	datac => \inst1|DATA[0]~0_combout\,
	datad => \AD~11\,
	combout => \inst1|DATA[4]$latch~combout\);

-- Location: LCCOMB_X22_Y7_N8
\D[4]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[4]~62_combout\ = (\D[4]~61_combout\ & (((\inst1|DATA[4]$latch~combout\) # (!\D[0]~9_combout\)))) # (!\D[4]~61_combout\ & (\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(4) & ((\D[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(4),
	datab => \D[4]~61_combout\,
	datac => \inst1|DATA[4]$latch~combout\,
	datad => \D[0]~9_combout\,
	combout => \D[4]~62_combout\);

-- Location: LCCOMB_X18_Y7_N14
\inst2|AD[4]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|AD[4]$latch~combout\ = (!\inst9|nCS~regout\ & ((GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & (\D[4]~62_combout\)) # (!GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & ((\inst2|AD[4]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[4]~62_combout\,
	datab => \inst9|nCS~regout\,
	datac => \inst2|AD[4]$latch~combout\,
	datad => \inst2|AD[0]~0clkctrl_outclk\,
	combout => \inst2|AD[4]$latch~combout\);

-- Location: LCCOMB_X22_Y6_N4
\D[3]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[3]~63_combout\ = (\D[0]~46_combout\ & (((\D[0]~9_combout\)))) # (!\D[0]~46_combout\ & ((\D[0]~9_combout\ & ((\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(3)))) # (!\D[0]~9_combout\ & (\inst3|inst2|qq\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(19),
	datab => \D[0]~46_combout\,
	datac => \D[0]~9_combout\,
	datad => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(3),
	combout => \D[3]~63_combout\);

-- Location: LCCOMB_X19_Y7_N30
\inst1|DATA[3]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DATA[3]$latch~combout\ = (!\inst9|nCS~regout\ & ((\inst1|DATA[0]~0_combout\ & ((\inst1|DATA[3]$latch~combout\))) # (!\inst1|DATA[0]~0_combout\ & (\AD~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \AD~12\,
	datac => \inst1|DATA[0]~0_combout\,
	datad => \inst1|DATA[3]$latch~combout\,
	combout => \inst1|DATA[3]$latch~combout\);

-- Location: LCCOMB_X22_Y6_N26
\D[3]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[3]~64_combout\ = (\D[3]~63_combout\ & (((\inst1|DATA[3]$latch~combout\) # (!\D[0]~46_combout\)))) # (!\D[3]~63_combout\ & (\inst3|inst2|qq\(3) & ((\D[0]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(3),
	datab => \D[3]~63_combout\,
	datac => \inst1|DATA[3]$latch~combout\,
	datad => \D[0]~46_combout\,
	combout => \D[3]~64_combout\);

-- Location: LCCOMB_X22_Y6_N20
\inst2|AD[3]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|AD[3]$latch~combout\ = (!\inst9|nCS~regout\ & ((GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & (\D[3]~64_combout\)) # (!GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & ((\inst2|AD[3]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \D[3]~64_combout\,
	datac => \inst2|AD[3]$latch~combout\,
	datad => \inst2|AD[0]~0clkctrl_outclk\,
	combout => \inst2|AD[3]$latch~combout\);

-- Location: LCCOMB_X22_Y6_N18
\inst3|inst2|qq[18]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(18) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(18))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(18),
	datac => \inst3|inst2|qq\(18),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(18));

-- Location: LCCOMB_X22_Y6_N8
\D[2]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[2]~65_combout\ = (\D[0]~9_combout\ & (((\D[0]~46_combout\)))) # (!\D[0]~9_combout\ & ((\D[0]~46_combout\ & (\inst3|inst2|qq\(2))) # (!\D[0]~46_combout\ & ((\inst3|inst2|qq\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(2),
	datab => \D[0]~9_combout\,
	datac => \inst3|inst2|qq\(18),
	datad => \D[0]~46_combout\,
	combout => \D[2]~65_combout\);

-- Location: LCCOMB_X22_Y6_N6
\D[2]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[2]~66_combout\ = (\D[2]~65_combout\ & ((\inst1|DATA[2]$latch~combout\) # ((!\D[0]~9_combout\)))) # (!\D[2]~65_combout\ & (((\D[0]~9_combout\ & \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DATA[2]$latch~combout\,
	datab => \D[2]~65_combout\,
	datac => \D[0]~9_combout\,
	datad => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(2),
	combout => \D[2]~66_combout\);

-- Location: LCCOMB_X22_Y6_N14
\inst2|AD[2]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|AD[2]$latch~combout\ = (!\inst9|nCS~regout\ & ((GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & (\D[2]~66_combout\)) # (!GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & ((\inst2|AD[2]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \D[2]~66_combout\,
	datac => \inst2|AD[2]$latch~combout\,
	datad => \inst2|AD[0]~0clkctrl_outclk\,
	combout => \inst2|AD[2]$latch~combout\);

-- Location: LCCOMB_X24_Y7_N0
\inst3|inst2|qq[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(1) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(1))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(1),
	datab => \inst3|inst2|qq\(1),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(1));

-- Location: LCCOMB_X19_Y7_N10
\inst1|DATA[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DATA[1]$latch~combout\ = (!\inst9|nCS~regout\ & ((\inst1|DATA[0]~0_combout\ & (\inst1|DATA[1]$latch~combout\)) # (!\inst1|DATA[0]~0_combout\ & ((\AD~14\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DATA[1]$latch~combout\,
	datab => \AD~14\,
	datac => \inst1|DATA[0]~0_combout\,
	datad => \inst9|nCS~regout\,
	combout => \inst1|DATA[1]$latch~combout\);

-- Location: LCCOMB_X24_Y7_N26
\D[1]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[1]~68_combout\ = (\D[1]~67_combout\ & (((\inst1|DATA[1]$latch~combout\) # (!\D[0]~46_combout\)))) # (!\D[1]~67_combout\ & (\inst3|inst2|qq\(1) & ((\D[0]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~67_combout\,
	datab => \inst3|inst2|qq\(1),
	datac => \inst1|DATA[1]$latch~combout\,
	datad => \D[0]~46_combout\,
	combout => \D[1]~68_combout\);

-- Location: LCCOMB_X24_Y6_N20
\inst2|AD[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|AD[1]$latch~combout\ = (!\inst9|nCS~regout\ & ((GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & (\D[1]~68_combout\)) # (!GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & ((\inst2|AD[1]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \D[1]~68_combout\,
	datac => \inst2|AD[1]$latch~combout\,
	datad => \inst2|AD[0]~0clkctrl_outclk\,
	combout => \inst2|AD[1]$latch~combout\);

-- Location: LCCOMB_X21_Y7_N16
\inst1|DATA[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DATA[0]$latch~combout\ = (!\inst9|nCS~regout\ & ((\inst1|DATA[0]~0_combout\ & (\inst1|DATA[0]$latch~combout\)) # (!\inst1|DATA[0]~0_combout\ & ((\AD~15\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DATA[0]$latch~combout\,
	datab => \inst9|nCS~regout\,
	datac => \AD~15\,
	datad => \inst1|DATA[0]~0_combout\,
	combout => \inst1|DATA[0]$latch~combout\);

-- Location: LCCOMB_X24_Y7_N12
\D[0]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[0]~70_combout\ = (\D[0]~69_combout\ & ((\inst1|DATA[0]$latch~combout\) # ((!\D[0]~9_combout\)))) # (!\D[0]~69_combout\ & (((\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(0) & \D[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~69_combout\,
	datab => \inst1|DATA[0]$latch~combout\,
	datac => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(0),
	datad => \D[0]~9_combout\,
	combout => \D[0]~70_combout\);

-- Location: LCCOMB_X19_Y7_N0
\inst2|AD[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|AD[0]$latch~combout\ = (!\inst9|nCS~regout\ & ((GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & ((\D[0]~70_combout\))) # (!GLOBAL(\inst2|AD[0]~0clkctrl_outclk\) & (\inst2|AD[0]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \inst2|AD[0]$latch~combout\,
	datac => \D[0]~70_combout\,
	datad => \inst2|AD[0]~0clkctrl_outclk\,
	combout => \inst2|AD[0]$latch~combout\);

-- Location: LCCOMB_X21_Y11_N14
\inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0) = (\inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_combout\) # (\inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(1) $ 
-- (\inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_combout\,
	datac => \inst8|dcfifo_component|auto_generated|ws_dgrp|dffpipe20|dffe22a\(1),
	datad => \inst8|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	combout => \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0));

-- Location: CLKCTRL_G1
\inst6|altpll_component|_clk2~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|altpll_component|_clk2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|altpll_component|_clk2~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\inst6|altpll_component|_clk1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|altpll_component|_clk1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|altpll_component|_clk1~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y7_N14
\inst20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20~2_combout\ = (\inst9|ADDR\(3) & (\inst9|ADDR\(9) & !\inst9|ADDR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ADDR\(3),
	datac => \inst9|ADDR\(9),
	datad => \inst9|ADDR\(1),
	combout => \inst20~2_combout\);

-- Location: LCCOMB_X21_Y7_N30
\inst|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst9|ADDR\(5) & (!\inst9|ADDR\(0) & \inst9|ADDR\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ADDR\(5),
	datac => \inst9|ADDR\(0),
	datad => \inst9|ADDR\(4),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y7_N2
inst19 : cycloneii_lcell_comb
-- Equation(s):
-- \inst19~combout\ = LCELL(((!\inst|Equal0~3_combout\) # (!\inst20~2_combout\)) # (!\inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20~1_combout\,
	datab => \inst20~2_combout\,
	datad => \inst|Equal0~3_combout\,
	combout => \inst19~combout\);

-- Location: CLKCTRL_G6
\inst19~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst19~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst19~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y13_N0
\inst29|inst1|START~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst1|START~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst29|inst1|START~feeder_combout\);

-- Location: LCFF_X22_Y13_N1
\inst29|inst1|START\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_inst19~clkctrl_outclk\,
	datain => \inst29|inst1|START~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst1|START~regout\);

-- Location: LCCOMB_X19_Y7_N4
\inst14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14~1_combout\ = (\inst9|nCS~regout\) # (((\NWE~combout\) # (\inst9|ADDR\(1))) # (!\inst9|ADDR\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|nCS~regout\,
	datab => \inst9|ADDR\(9),
	datac => \NWE~combout\,
	datad => \inst9|ADDR\(1),
	combout => \inst14~1_combout\);

-- Location: LCCOMB_X19_Y7_N18
\inst14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14~4_combout\ = (\inst14~0_combout\) # ((\inst14~1_combout\) # ((!\inst14~2_combout\) # (!\inst14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14~0_combout\,
	datab => \inst14~1_combout\,
	datac => \inst14~3_combout\,
	datad => \inst14~2_combout\,
	combout => \inst14~4_combout\);

-- Location: LCFF_X20_Y7_N15
\inst9|ADDR[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	sdata => \AD~7\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|ADDR\(8));

-- Location: LCCOMB_X20_Y7_N16
inst14 : cycloneii_lcell_comb
-- Equation(s):
-- \inst14~combout\ = (!\inst9|ADDR\(2) & (!\inst14~4_combout\ & (!\inst9|ADDR\(6) & \inst9|ADDR\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ADDR\(2),
	datab => \inst14~4_combout\,
	datac => \inst9|ADDR\(6),
	datad => \inst9|ADDR\(8),
	combout => \inst14~combout\);

-- Location: LCCOMB_X21_Y7_N24
\inst3|inst3|DOUT[15]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst3|DOUT[15]~2_combout\ = (!\inst9|nCS~regout\ & !\NOE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|nCS~regout\,
	datad => \NOE~combout\,
	combout => \inst3|inst3|DOUT[15]~2_combout\);

-- Location: LCCOMB_X24_Y7_N16
inst5 : cycloneii_lcell_comb
-- Equation(s):
-- \inst5~combout\ = (((\inst9|ADDR\(1)) # (!\inst|Equal0~2_combout\)) # (!\inst3|inst3|DOUT[15]~2_combout\)) # (!\inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst3|inst3|DOUT[15]~2_combout\,
	datac => \inst9|ADDR\(1),
	datad => \inst|Equal0~2_combout\,
	combout => \inst5~combout\);

-- Location: LCCOMB_X25_Y7_N28
\D[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[0]~8_combout\ = (!\inst22~combout\ & ((\inst1|DATA[0]_99~combout\) # (\inst5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22~combout\,
	datac => \inst1|DATA[0]_99~combout\,
	datad => \inst5~combout\,
	combout => \D[0]~8_combout\);

-- Location: LCCOMB_X25_Y7_N16
\inst3|inst2|qq[16]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(16) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(16))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(16),
	datac => \inst3|inst2|qq\(16),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(16));

-- Location: LCCOMB_X25_Y7_N2
\inst3|inst2|qq[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(0) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(0))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(0),
	datac => \inst3|inst2|qq\(0),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(0));

-- Location: LCCOMB_X25_Y7_N24
\D[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[0]~24_combout\ = (\D[0]~9_combout\ & (\D[0]~8_combout\)) # (!\D[0]~9_combout\ & ((\D[0]~8_combout\ & ((\inst3|inst2|qq\(0)))) # (!\D[0]~8_combout\ & (\inst3|inst2|qq\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~9_combout\,
	datab => \D[0]~8_combout\,
	datac => \inst3|inst2|qq\(16),
	datad => \inst3|inst2|qq\(0),
	combout => \D[0]~24_combout\);

-- Location: LCCOMB_X24_Y7_N28
\D[0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[0]~25_combout\ = (\D[0]~9_combout\ & ((\D[0]~24_combout\ & (\inst1|DATA[0]$latch~combout\)) # (!\D[0]~24_combout\ & ((\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(0)))))) # (!\D[0]~9_combout\ & (((\D[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DATA[0]$latch~combout\,
	datab => \D[0]~9_combout\,
	datac => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(0),
	datad => \D[0]~24_combout\,
	combout => \D[0]~25_combout\);

-- Location: LCFF_X20_Y7_N11
\inst9|ADDR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	sdata => \AD~13\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|ADDR\(2));

-- Location: LCCOMB_X24_Y8_N26
\D[8]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[8]~41_combout\ = (\D[8]~40_combout\ & (((\inst1|DATA[8]$latch~combout\) # (!\D[0]~9_combout\)))) # (!\D[8]~40_combout\ & (\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(8) & (\D[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[8]~40_combout\,
	datab => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(8),
	datac => \D[0]~9_combout\,
	datad => \inst1|DATA[8]$latch~combout\,
	combout => \D[8]~41_combout\);

-- Location: LCFF_X21_Y8_N19
\inst29|inst9|19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~combout\,
	sdata => \D[8]~41_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst9|19~regout\);

-- Location: LCCOMB_X24_Y7_N6
\D[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[6]~12_combout\ = (\D[0]~8_combout\ & ((\D[0]~9_combout\) # ((\inst3|inst2|qq\(6))))) # (!\D[0]~8_combout\ & (!\D[0]~9_combout\ & (\inst3|inst2|qq\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~8_combout\,
	datab => \D[0]~9_combout\,
	datac => \inst3|inst2|qq\(22),
	datad => \inst3|inst2|qq\(6),
	combout => \D[6]~12_combout\);

-- Location: LCCOMB_X24_Y7_N4
\D[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[6]~13_combout\ = (\D[0]~9_combout\ & ((\D[6]~12_combout\ & (\inst1|DATA[6]$latch~combout\)) # (!\D[6]~12_combout\ & ((\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(6)))))) # (!\D[0]~9_combout\ & (((\D[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DATA[6]$latch~combout\,
	datab => \D[0]~9_combout\,
	datac => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(6),
	datad => \D[6]~12_combout\,
	combout => \D[6]~13_combout\);

-- Location: LCFF_X22_Y7_N21
\inst29|inst7|13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~combout\,
	sdata => \D[6]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst7|13~regout\);

-- Location: LCFF_X27_Y8_N11
\inst3|inst5|qq[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[21]~71_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(21));

-- Location: LCCOMB_X22_Y7_N30
\inst3|inst2|qq[21]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(21) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(21))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(21),
	datac => \inst3|inst2|qq\(21),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(21));

-- Location: LCCOMB_X22_Y7_N0
\D[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[5]~14_combout\ = (\D[0]~9_combout\ & ((\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(5)) # ((\D[0]~8_combout\)))) # (!\D[0]~9_combout\ & (((!\D[0]~8_combout\ & \inst3|inst2|qq\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(5),
	datab => \D[0]~9_combout\,
	datac => \D[0]~8_combout\,
	datad => \inst3|inst2|qq\(21),
	combout => \D[5]~14_combout\);

-- Location: LCCOMB_X22_Y7_N2
\D[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[5]~15_combout\ = (\D[0]~8_combout\ & ((\D[5]~14_combout\ & (\inst1|DATA[5]$latch~combout\)) # (!\D[5]~14_combout\ & ((\inst3|inst2|qq\(5)))))) # (!\D[0]~8_combout\ & (((\D[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~8_combout\,
	datab => \inst1|DATA[5]$latch~combout\,
	datac => \inst3|inst2|qq\(5),
	datad => \D[5]~14_combout\,
	combout => \D[5]~15_combout\);

-- Location: LCFF_X21_Y7_N25
\inst29|inst7|14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~combout\,
	sdata => \D[5]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst7|14~regout\);

-- Location: LCFF_X27_Y9_N7
\inst3|inst5|qq[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[3]~35_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(3));

-- Location: LCCOMB_X22_Y6_N16
\inst3|inst2|qq[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(3) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(3))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(3),
	datac => \inst3|inst2|qq\(3),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(3));

-- Location: LCFF_X27_Y8_N7
\inst3|inst5|qq[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \COUT~combout\,
	datain => \inst3|inst5|qq[19]~67_combout\,
	aclr => \inst3|inst|Mux4~0_combout\,
	ena => \inst3|inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst5|qq\(19));

-- Location: LCCOMB_X22_Y6_N10
\inst3|inst2|qq[19]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(19) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst5|qq\(19)))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst2|qq\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(19),
	datac => \inst3|inst5|qq\(19),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(19));

-- Location: LCCOMB_X22_Y6_N12
\D[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[3]~18_combout\ = (\D[0]~8_combout\ & (((\D[0]~9_combout\)))) # (!\D[0]~8_combout\ & ((\D[0]~9_combout\ & (\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(3))) # (!\D[0]~9_combout\ & ((\inst3|inst2|qq\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(3),
	datab => \D[0]~8_combout\,
	datac => \D[0]~9_combout\,
	datad => \inst3|inst2|qq\(19),
	combout => \D[3]~18_combout\);

-- Location: LCCOMB_X22_Y6_N22
\D[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[3]~19_combout\ = (\D[0]~8_combout\ & ((\D[3]~18_combout\ & (\inst1|DATA[3]$latch~combout\)) # (!\D[3]~18_combout\ & ((\inst3|inst2|qq\(3)))))) # (!\D[0]~8_combout\ & (((\D[3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DATA[3]$latch~combout\,
	datab => \D[0]~8_combout\,
	datac => \inst3|inst2|qq\(3),
	datad => \D[3]~18_combout\,
	combout => \D[3]~19_combout\);

-- Location: LCFF_X21_Y8_N25
\inst29|inst7|16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~combout\,
	sdata => \D[3]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst7|16~regout\);

-- Location: LCCOMB_X21_Y8_N4
\D[12]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[12]~32_combout\ = (\inst5~combout\ & ((\inst3|inst2|qq\(12)))) # (!\inst5~combout\ & (\inst3|inst2|qq\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(28),
	datac => \inst3|inst2|qq\(12),
	datad => \inst5~combout\,
	combout => \D[12]~32_combout\);

-- Location: LCCOMB_X21_Y8_N28
\D[12]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[12]~33_combout\ = (\inst3|inst3|DOUT[15]~4_combout\ & (\D[12]~32_combout\)) # (!\inst3|inst3|DOUT[15]~4_combout\ & ((\inst1|DATA[12]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3|DOUT[15]~4_combout\,
	datac => \D[12]~32_combout\,
	datad => \inst1|DATA[12]$latch~combout\,
	combout => \D[12]~33_combout\);

-- Location: LCCOMB_X21_Y9_N18
\inst29|inst5|15~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst5|15~feeder_combout\ = \D[12]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[12]~33_combout\,
	combout => \inst29|inst5|15~feeder_combout\);

-- Location: LCFF_X21_Y9_N19
\inst29|inst5|15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	datain => \inst29|inst5|15~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst5|15~regout\);

-- Location: LCCOMB_X20_Y6_N4
\D[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[10]~36_combout\ = (\D[0]~9_combout\ & (((\D[0]~8_combout\)))) # (!\D[0]~9_combout\ & ((\D[0]~8_combout\ & ((\inst3|inst2|qq\(10)))) # (!\D[0]~8_combout\ & (\inst3|inst2|qq\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|qq\(26),
	datab => \inst3|inst2|qq\(10),
	datac => \D[0]~9_combout\,
	datad => \D[0]~8_combout\,
	combout => \D[10]~36_combout\);

-- Location: LCCOMB_X20_Y6_N10
\D[10]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[10]~37_combout\ = (\D[10]~36_combout\ & ((\inst1|DATA[10]$latch~combout\) # ((!\D[0]~9_combout\)))) # (!\D[10]~36_combout\ & (((\D[0]~9_combout\ & \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DATA[10]$latch~combout\,
	datab => \D[10]~36_combout\,
	datac => \D[0]~9_combout\,
	datad => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(10),
	combout => \D[10]~37_combout\);

-- Location: LCCOMB_X21_Y9_N4
\inst29|inst5|17~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst5|17~feeder_combout\ = \D[10]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[10]~37_combout\,
	combout => \inst29|inst5|17~feeder_combout\);

-- Location: LCFF_X21_Y9_N5
\inst29|inst5|17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	datain => \inst29|inst5|17~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst5|17~regout\);

-- Location: LCFF_X21_Y8_N21
\inst29|inst5|19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	sdata => \D[8]~41_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst5|19~regout\);

-- Location: LCFF_X25_Y7_N1
\inst29|inst|13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	sdata => \D[6]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst|13~regout\);

-- Location: LCCOMB_X22_Y7_N24
\inst29|inst|14~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst|14~feeder_combout\ = \D[5]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[5]~15_combout\,
	combout => \inst29|inst|14~feeder_combout\);

-- Location: LCFF_X22_Y7_N25
\inst29|inst|14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	datain => \inst29|inst|14~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst|14~regout\);

-- Location: LCCOMB_X21_Y9_N16
\inst29|inst|16~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst|16~feeder_combout\ = \D[3]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[3]~19_combout\,
	combout => \inst29|inst|16~feeder_combout\);

-- Location: LCFF_X21_Y9_N17
\inst29|inst|16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	datain => \inst29|inst|16~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst|16~regout\);

-- Location: LCCOMB_X22_Y9_N0
\inst12|acc[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[0]~32_combout\ = (\inst29|inst|19~regout\ & (\inst12|acc\(0) $ (VCC))) # (!\inst29|inst|19~regout\ & (\inst12|acc\(0) & VCC))
-- \inst12|acc[0]~33\ = CARRY((\inst29|inst|19~regout\ & \inst12|acc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst|19~regout\,
	datab => \inst12|acc\(0),
	datad => VCC,
	combout => \inst12|acc[0]~32_combout\,
	cout => \inst12|acc[0]~33\);

-- Location: LCFF_X22_Y9_N1
\inst12|acc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(0));

-- Location: LCCOMB_X22_Y9_N2
\inst12|acc[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[1]~34_combout\ = (\inst29|inst|18~regout\ & ((\inst12|acc\(1) & (\inst12|acc[0]~33\ & VCC)) # (!\inst12|acc\(1) & (!\inst12|acc[0]~33\)))) # (!\inst29|inst|18~regout\ & ((\inst12|acc\(1) & (!\inst12|acc[0]~33\)) # (!\inst12|acc\(1) & 
-- ((\inst12|acc[0]~33\) # (GND)))))
-- \inst12|acc[1]~35\ = CARRY((\inst29|inst|18~regout\ & (!\inst12|acc\(1) & !\inst12|acc[0]~33\)) # (!\inst29|inst|18~regout\ & ((!\inst12|acc[0]~33\) # (!\inst12|acc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst|18~regout\,
	datab => \inst12|acc\(1),
	datad => VCC,
	cin => \inst12|acc[0]~33\,
	combout => \inst12|acc[1]~34_combout\,
	cout => \inst12|acc[1]~35\);

-- Location: LCFF_X22_Y9_N3
\inst12|acc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(1));

-- Location: LCCOMB_X22_Y9_N4
\inst12|acc[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[2]~36_combout\ = ((\inst29|inst|17~regout\ $ (\inst12|acc\(2) $ (!\inst12|acc[1]~35\)))) # (GND)
-- \inst12|acc[2]~37\ = CARRY((\inst29|inst|17~regout\ & ((\inst12|acc\(2)) # (!\inst12|acc[1]~35\))) # (!\inst29|inst|17~regout\ & (\inst12|acc\(2) & !\inst12|acc[1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst|17~regout\,
	datab => \inst12|acc\(2),
	datad => VCC,
	cin => \inst12|acc[1]~35\,
	combout => \inst12|acc[2]~36_combout\,
	cout => \inst12|acc[2]~37\);

-- Location: LCFF_X22_Y9_N5
\inst12|acc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(2));

-- Location: LCCOMB_X22_Y9_N8
\inst12|acc[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[4]~40_combout\ = ((\inst29|inst|15~regout\ $ (\inst12|acc\(4) $ (!\inst12|acc[3]~39\)))) # (GND)
-- \inst12|acc[4]~41\ = CARRY((\inst29|inst|15~regout\ & ((\inst12|acc\(4)) # (!\inst12|acc[3]~39\))) # (!\inst29|inst|15~regout\ & (\inst12|acc\(4) & !\inst12|acc[3]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst|15~regout\,
	datab => \inst12|acc\(4),
	datad => VCC,
	cin => \inst12|acc[3]~39\,
	combout => \inst12|acc[4]~40_combout\,
	cout => \inst12|acc[4]~41\);

-- Location: LCFF_X22_Y9_N9
\inst12|acc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(4));

-- Location: LCCOMB_X22_Y9_N14
\inst12|acc[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[7]~46_combout\ = (\inst29|inst|12~regout\ & ((\inst12|acc\(7) & (\inst12|acc[6]~45\ & VCC)) # (!\inst12|acc\(7) & (!\inst12|acc[6]~45\)))) # (!\inst29|inst|12~regout\ & ((\inst12|acc\(7) & (!\inst12|acc[6]~45\)) # (!\inst12|acc\(7) & 
-- ((\inst12|acc[6]~45\) # (GND)))))
-- \inst12|acc[7]~47\ = CARRY((\inst29|inst|12~regout\ & (!\inst12|acc\(7) & !\inst12|acc[6]~45\)) # (!\inst29|inst|12~regout\ & ((!\inst12|acc[6]~45\) # (!\inst12|acc\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst|12~regout\,
	datab => \inst12|acc\(7),
	datad => VCC,
	cin => \inst12|acc[6]~45\,
	combout => \inst12|acc[7]~46_combout\,
	cout => \inst12|acc[7]~47\);

-- Location: LCFF_X22_Y9_N15
\inst12|acc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[7]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(7));

-- Location: LCCOMB_X22_Y9_N18
\inst12|acc[9]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[9]~50_combout\ = (\inst29|inst5|18~regout\ & ((\inst12|acc\(9) & (\inst12|acc[8]~49\ & VCC)) # (!\inst12|acc\(9) & (!\inst12|acc[8]~49\)))) # (!\inst29|inst5|18~regout\ & ((\inst12|acc\(9) & (!\inst12|acc[8]~49\)) # (!\inst12|acc\(9) & 
-- ((\inst12|acc[8]~49\) # (GND)))))
-- \inst12|acc[9]~51\ = CARRY((\inst29|inst5|18~regout\ & (!\inst12|acc\(9) & !\inst12|acc[8]~49\)) # (!\inst29|inst5|18~regout\ & ((!\inst12|acc[8]~49\) # (!\inst12|acc\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst5|18~regout\,
	datab => \inst12|acc\(9),
	datad => VCC,
	cin => \inst12|acc[8]~49\,
	combout => \inst12|acc[9]~50_combout\,
	cout => \inst12|acc[9]~51\);

-- Location: LCFF_X22_Y9_N19
\inst12|acc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[9]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(9));

-- Location: LCCOMB_X22_Y9_N22
\inst12|acc[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[11]~54_combout\ = (\inst29|inst5|16~regout\ & ((\inst12|acc\(11) & (\inst12|acc[10]~53\ & VCC)) # (!\inst12|acc\(11) & (!\inst12|acc[10]~53\)))) # (!\inst29|inst5|16~regout\ & ((\inst12|acc\(11) & (!\inst12|acc[10]~53\)) # (!\inst12|acc\(11) & 
-- ((\inst12|acc[10]~53\) # (GND)))))
-- \inst12|acc[11]~55\ = CARRY((\inst29|inst5|16~regout\ & (!\inst12|acc\(11) & !\inst12|acc[10]~53\)) # (!\inst29|inst5|16~regout\ & ((!\inst12|acc[10]~53\) # (!\inst12|acc\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst5|16~regout\,
	datab => \inst12|acc\(11),
	datad => VCC,
	cin => \inst12|acc[10]~53\,
	combout => \inst12|acc[11]~54_combout\,
	cout => \inst12|acc[11]~55\);

-- Location: LCFF_X22_Y9_N23
\inst12|acc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(11));

-- Location: LCCOMB_X22_Y9_N26
\inst12|acc[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[13]~58_combout\ = (\inst29|inst5|14~regout\ & ((\inst12|acc\(13) & (\inst12|acc[12]~57\ & VCC)) # (!\inst12|acc\(13) & (!\inst12|acc[12]~57\)))) # (!\inst29|inst5|14~regout\ & ((\inst12|acc\(13) & (!\inst12|acc[12]~57\)) # (!\inst12|acc\(13) & 
-- ((\inst12|acc[12]~57\) # (GND)))))
-- \inst12|acc[13]~59\ = CARRY((\inst29|inst5|14~regout\ & (!\inst12|acc\(13) & !\inst12|acc[12]~57\)) # (!\inst29|inst5|14~regout\ & ((!\inst12|acc[12]~57\) # (!\inst12|acc\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst5|14~regout\,
	datab => \inst12|acc\(13),
	datad => VCC,
	cin => \inst12|acc[12]~57\,
	combout => \inst12|acc[13]~58_combout\,
	cout => \inst12|acc[13]~59\);

-- Location: LCFF_X22_Y9_N27
\inst12|acc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[13]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(13));

-- Location: LCCOMB_X22_Y9_N28
\inst12|acc[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[14]~60_combout\ = ((\inst29|inst5|13~regout\ $ (\inst12|acc\(14) $ (!\inst12|acc[13]~59\)))) # (GND)
-- \inst12|acc[14]~61\ = CARRY((\inst29|inst5|13~regout\ & ((\inst12|acc\(14)) # (!\inst12|acc[13]~59\))) # (!\inst29|inst5|13~regout\ & (\inst12|acc\(14) & !\inst12|acc[13]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst5|13~regout\,
	datab => \inst12|acc\(14),
	datad => VCC,
	cin => \inst12|acc[13]~59\,
	combout => \inst12|acc[14]~60_combout\,
	cout => \inst12|acc[14]~61\);

-- Location: LCFF_X22_Y9_N29
\inst12|acc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[14]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(14));

-- Location: LCCOMB_X22_Y9_N30
\inst12|acc[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[15]~62_combout\ = (\inst29|inst5|12~regout\ & ((\inst12|acc\(15) & (\inst12|acc[14]~61\ & VCC)) # (!\inst12|acc\(15) & (!\inst12|acc[14]~61\)))) # (!\inst29|inst5|12~regout\ & ((\inst12|acc\(15) & (!\inst12|acc[14]~61\)) # (!\inst12|acc\(15) & 
-- ((\inst12|acc[14]~61\) # (GND)))))
-- \inst12|acc[15]~63\ = CARRY((\inst29|inst5|12~regout\ & (!\inst12|acc\(15) & !\inst12|acc[14]~61\)) # (!\inst29|inst5|12~regout\ & ((!\inst12|acc[14]~61\) # (!\inst12|acc\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst5|12~regout\,
	datab => \inst12|acc\(15),
	datad => VCC,
	cin => \inst12|acc[14]~61\,
	combout => \inst12|acc[15]~62_combout\,
	cout => \inst12|acc[15]~63\);

-- Location: LCFF_X22_Y9_N31
\inst12|acc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[15]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(15));

-- Location: LCCOMB_X22_Y8_N0
\inst12|acc[16]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[16]~64_combout\ = ((\inst29|inst7|19~regout\ $ (\inst12|acc\(16) $ (!\inst12|acc[15]~63\)))) # (GND)
-- \inst12|acc[16]~65\ = CARRY((\inst29|inst7|19~regout\ & ((\inst12|acc\(16)) # (!\inst12|acc[15]~63\))) # (!\inst29|inst7|19~regout\ & (\inst12|acc\(16) & !\inst12|acc[15]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst7|19~regout\,
	datab => \inst12|acc\(16),
	datad => VCC,
	cin => \inst12|acc[15]~63\,
	combout => \inst12|acc[16]~64_combout\,
	cout => \inst12|acc[16]~65\);

-- Location: LCFF_X22_Y8_N1
\inst12|acc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[16]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(16));

-- Location: LCCOMB_X22_Y8_N2
\inst12|acc[17]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[17]~66_combout\ = (\inst29|inst7|18~regout\ & ((\inst12|acc\(17) & (\inst12|acc[16]~65\ & VCC)) # (!\inst12|acc\(17) & (!\inst12|acc[16]~65\)))) # (!\inst29|inst7|18~regout\ & ((\inst12|acc\(17) & (!\inst12|acc[16]~65\)) # (!\inst12|acc\(17) & 
-- ((\inst12|acc[16]~65\) # (GND)))))
-- \inst12|acc[17]~67\ = CARRY((\inst29|inst7|18~regout\ & (!\inst12|acc\(17) & !\inst12|acc[16]~65\)) # (!\inst29|inst7|18~regout\ & ((!\inst12|acc[16]~65\) # (!\inst12|acc\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst7|18~regout\,
	datab => \inst12|acc\(17),
	datad => VCC,
	cin => \inst12|acc[16]~65\,
	combout => \inst12|acc[17]~66_combout\,
	cout => \inst12|acc[17]~67\);

-- Location: LCFF_X22_Y8_N3
\inst12|acc[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[17]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(17));

-- Location: LCCOMB_X22_Y8_N4
\inst12|acc[18]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[18]~68_combout\ = ((\inst29|inst7|17~regout\ $ (\inst12|acc\(18) $ (!\inst12|acc[17]~67\)))) # (GND)
-- \inst12|acc[18]~69\ = CARRY((\inst29|inst7|17~regout\ & ((\inst12|acc\(18)) # (!\inst12|acc[17]~67\))) # (!\inst29|inst7|17~regout\ & (\inst12|acc\(18) & !\inst12|acc[17]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst7|17~regout\,
	datab => \inst12|acc\(18),
	datad => VCC,
	cin => \inst12|acc[17]~67\,
	combout => \inst12|acc[18]~68_combout\,
	cout => \inst12|acc[18]~69\);

-- Location: LCFF_X22_Y8_N5
\inst12|acc[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[18]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(18));

-- Location: LCCOMB_X22_Y8_N8
\inst12|acc[20]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[20]~72_combout\ = ((\inst29|inst7|15~regout\ $ (\inst12|acc\(20) $ (!\inst12|acc[19]~71\)))) # (GND)
-- \inst12|acc[20]~73\ = CARRY((\inst29|inst7|15~regout\ & ((\inst12|acc\(20)) # (!\inst12|acc[19]~71\))) # (!\inst29|inst7|15~regout\ & (\inst12|acc\(20) & !\inst12|acc[19]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst7|15~regout\,
	datab => \inst12|acc\(20),
	datad => VCC,
	cin => \inst12|acc[19]~71\,
	combout => \inst12|acc[20]~72_combout\,
	cout => \inst12|acc[20]~73\);

-- Location: LCFF_X22_Y8_N9
\inst12|acc[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[20]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(20));

-- Location: LCCOMB_X22_Y8_N14
\inst12|acc[23]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[23]~78_combout\ = (\inst29|inst7|12~regout\ & ((\inst12|acc\(23) & (\inst12|acc[22]~77\ & VCC)) # (!\inst12|acc\(23) & (!\inst12|acc[22]~77\)))) # (!\inst29|inst7|12~regout\ & ((\inst12|acc\(23) & (!\inst12|acc[22]~77\)) # (!\inst12|acc\(23) & 
-- ((\inst12|acc[22]~77\) # (GND)))))
-- \inst12|acc[23]~79\ = CARRY((\inst29|inst7|12~regout\ & (!\inst12|acc\(23) & !\inst12|acc[22]~77\)) # (!\inst29|inst7|12~regout\ & ((!\inst12|acc[22]~77\) # (!\inst12|acc\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst7|12~regout\,
	datab => \inst12|acc\(23),
	datad => VCC,
	cin => \inst12|acc[22]~77\,
	combout => \inst12|acc[23]~78_combout\,
	cout => \inst12|acc[23]~79\);

-- Location: LCFF_X22_Y8_N15
\inst12|acc[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[23]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(23));

-- Location: LCCOMB_X22_Y8_N16
\inst12|acc[24]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[24]~80_combout\ = ((\inst12|acc\(24) $ (\inst29|inst9|19~regout\ $ (!\inst12|acc[23]~79\)))) # (GND)
-- \inst12|acc[24]~81\ = CARRY((\inst12|acc\(24) & ((\inst29|inst9|19~regout\) # (!\inst12|acc[23]~79\))) # (!\inst12|acc\(24) & (\inst29|inst9|19~regout\ & !\inst12|acc[23]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc\(24),
	datab => \inst29|inst9|19~regout\,
	datad => VCC,
	cin => \inst12|acc[23]~79\,
	combout => \inst12|acc[24]~80_combout\,
	cout => \inst12|acc[24]~81\);

-- Location: LCFF_X22_Y8_N17
\inst12|acc[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[24]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(24));

-- Location: LCCOMB_X22_Y8_N18
\inst12|acc[25]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[25]~82_combout\ = (\inst29|inst9|18~regout\ & ((\inst12|acc\(25) & (\inst12|acc[24]~81\ & VCC)) # (!\inst12|acc\(25) & (!\inst12|acc[24]~81\)))) # (!\inst29|inst9|18~regout\ & ((\inst12|acc\(25) & (!\inst12|acc[24]~81\)) # (!\inst12|acc\(25) & 
-- ((\inst12|acc[24]~81\) # (GND)))))
-- \inst12|acc[25]~83\ = CARRY((\inst29|inst9|18~regout\ & (!\inst12|acc\(25) & !\inst12|acc[24]~81\)) # (!\inst29|inst9|18~regout\ & ((!\inst12|acc[24]~81\) # (!\inst12|acc\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst9|18~regout\,
	datab => \inst12|acc\(25),
	datad => VCC,
	cin => \inst12|acc[24]~81\,
	combout => \inst12|acc[25]~82_combout\,
	cout => \inst12|acc[25]~83\);

-- Location: LCFF_X22_Y8_N19
\inst12|acc[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[25]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(25));

-- Location: LCFF_X21_Y7_N11
\inst29|inst9|17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~combout\,
	sdata => \D[10]~37_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst9|17~regout\);

-- Location: LCCOMB_X22_Y8_N20
\inst12|acc[26]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[26]~84_combout\ = ((\inst12|acc\(26) $ (\inst29|inst9|17~regout\ $ (!\inst12|acc[25]~83\)))) # (GND)
-- \inst12|acc[26]~85\ = CARRY((\inst12|acc\(26) & ((\inst29|inst9|17~regout\) # (!\inst12|acc[25]~83\))) # (!\inst12|acc\(26) & (\inst29|inst9|17~regout\ & !\inst12|acc[25]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc\(26),
	datab => \inst29|inst9|17~regout\,
	datad => VCC,
	cin => \inst12|acc[25]~83\,
	combout => \inst12|acc[26]~84_combout\,
	cout => \inst12|acc[26]~85\);

-- Location: LCFF_X22_Y8_N21
\inst12|acc[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[26]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(26));

-- Location: LCCOMB_X22_Y8_N22
\inst12|acc[27]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[27]~86_combout\ = (\inst29|inst9|16~regout\ & ((\inst12|acc\(27) & (\inst12|acc[26]~85\ & VCC)) # (!\inst12|acc\(27) & (!\inst12|acc[26]~85\)))) # (!\inst29|inst9|16~regout\ & ((\inst12|acc\(27) & (!\inst12|acc[26]~85\)) # (!\inst12|acc\(27) & 
-- ((\inst12|acc[26]~85\) # (GND)))))
-- \inst12|acc[27]~87\ = CARRY((\inst29|inst9|16~regout\ & (!\inst12|acc\(27) & !\inst12|acc[26]~85\)) # (!\inst29|inst9|16~regout\ & ((!\inst12|acc[26]~85\) # (!\inst12|acc\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst9|16~regout\,
	datab => \inst12|acc\(27),
	datad => VCC,
	cin => \inst12|acc[26]~85\,
	combout => \inst12|acc[27]~86_combout\,
	cout => \inst12|acc[27]~87\);

-- Location: LCFF_X22_Y8_N23
\inst12|acc[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[27]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(27));

-- Location: LCFF_X21_Y8_N29
\inst29|inst9|15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~combout\,
	datain => \D[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst9|15~regout\);

-- Location: LCCOMB_X22_Y8_N24
\inst12|acc[28]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[28]~88_combout\ = ((\inst12|acc\(28) $ (\inst29|inst9|15~regout\ $ (!\inst12|acc[27]~87\)))) # (GND)
-- \inst12|acc[28]~89\ = CARRY((\inst12|acc\(28) & ((\inst29|inst9|15~regout\) # (!\inst12|acc[27]~87\))) # (!\inst12|acc\(28) & (\inst29|inst9|15~regout\ & !\inst12|acc[27]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|acc\(28),
	datab => \inst29|inst9|15~regout\,
	datad => VCC,
	cin => \inst12|acc[27]~87\,
	combout => \inst12|acc[28]~88_combout\,
	cout => \inst12|acc[28]~89\);

-- Location: LCFF_X22_Y8_N25
\inst12|acc[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[28]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(28));

-- Location: LCCOMB_X22_Y8_N26
\inst12|acc[29]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[29]~90_combout\ = (\inst29|inst9|14~regout\ & ((\inst12|acc\(29) & (\inst12|acc[28]~89\ & VCC)) # (!\inst12|acc\(29) & (!\inst12|acc[28]~89\)))) # (!\inst29|inst9|14~regout\ & ((\inst12|acc\(29) & (!\inst12|acc[28]~89\)) # (!\inst12|acc\(29) & 
-- ((\inst12|acc[28]~89\) # (GND)))))
-- \inst12|acc[29]~91\ = CARRY((\inst29|inst9|14~regout\ & (!\inst12|acc\(29) & !\inst12|acc[28]~89\)) # (!\inst29|inst9|14~regout\ & ((!\inst12|acc[28]~89\) # (!\inst12|acc\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst9|14~regout\,
	datab => \inst12|acc\(29),
	datad => VCC,
	cin => \inst12|acc[28]~89\,
	combout => \inst12|acc[29]~90_combout\,
	cout => \inst12|acc[29]~91\);

-- Location: LCFF_X22_Y8_N27
\inst12|acc[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[29]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(29));

-- Location: LCCOMB_X22_Y8_N28
\inst12|acc[30]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[30]~92_combout\ = ((\inst29|inst9|13~regout\ $ (\inst12|acc\(30) $ (!\inst12|acc[29]~91\)))) # (GND)
-- \inst12|acc[30]~93\ = CARRY((\inst29|inst9|13~regout\ & ((\inst12|acc\(30)) # (!\inst12|acc[29]~91\))) # (!\inst29|inst9|13~regout\ & (\inst12|acc\(30) & !\inst12|acc[29]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst9|13~regout\,
	datab => \inst12|acc\(30),
	datad => VCC,
	cin => \inst12|acc[29]~91\,
	combout => \inst12|acc[30]~92_combout\,
	cout => \inst12|acc[30]~93\);

-- Location: LCFF_X22_Y8_N29
\inst12|acc[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[30]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(30));

-- Location: LCCOMB_X22_Y8_N30
\inst12|acc[31]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|acc[31]~94_combout\ = \inst29|inst9|12~regout\ $ (\inst12|acc[30]~93\ $ (\inst12|acc\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst9|12~regout\,
	datad => \inst12|acc\(31),
	cin => \inst12|acc[30]~93\,
	combout => \inst12|acc[31]~94_combout\);

-- Location: LCFF_X22_Y8_N31
\inst12|acc[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst12|acc[31]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|acc\(31));

-- Location: LCCOMB_X24_Y7_N2
\inst3|inst2|qq[17]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(17) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(17))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|qq\(17),
	datac => \inst3|inst2|qq\(17),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(17));

-- Location: LCCOMB_X24_Y7_N22
\D[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[1]~22_combout\ = (\D[0]~8_combout\ & (\D[0]~9_combout\)) # (!\D[0]~8_combout\ & ((\D[0]~9_combout\ & (\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(1))) # (!\D[0]~9_combout\ & ((\inst3|inst2|qq\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~8_combout\,
	datab => \D[0]~9_combout\,
	datac => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(1),
	datad => \inst3|inst2|qq\(17),
	combout => \D[1]~22_combout\);

-- Location: LCCOMB_X24_Y7_N14
\D[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[1]~23_combout\ = (\D[0]~8_combout\ & ((\D[1]~22_combout\ & ((\inst1|DATA[1]$latch~combout\))) # (!\D[1]~22_combout\ & (\inst3|inst2|qq\(1))))) # (!\D[0]~8_combout\ & (((\D[1]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~8_combout\,
	datab => \inst3|inst2|qq\(1),
	datac => \inst1|DATA[1]$latch~combout\,
	datad => \D[1]~22_combout\,
	combout => \D[1]~23_combout\);

-- Location: LCCOMB_X22_Y6_N24
\inst3|inst2|qq[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|qq\(2) = (GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & (\inst3|inst5|qq\(2))) # (!GLOBAL(\inst3|inst|Mux6~0clkctrl_outclk\) & ((\inst3|inst2|qq\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|qq\(2),
	datac => \inst3|inst2|qq\(2),
	datad => \inst3|inst|Mux6~0clkctrl_outclk\,
	combout => \inst3|inst2|qq\(2));

-- Location: LCCOMB_X22_Y6_N28
\D[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[2]~20_combout\ = (\D[0]~9_combout\ & (\D[0]~8_combout\)) # (!\D[0]~9_combout\ & ((\D[0]~8_combout\ & (\inst3|inst2|qq\(2))) # (!\D[0]~8_combout\ & ((\inst3|inst2|qq\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~9_combout\,
	datab => \D[0]~8_combout\,
	datac => \inst3|inst2|qq\(2),
	datad => \inst3|inst2|qq\(18),
	combout => \D[2]~20_combout\);

-- Location: LCCOMB_X22_Y6_N2
\D[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[2]~21_combout\ = (\D[0]~9_combout\ & ((\D[2]~20_combout\ & (\inst1|DATA[2]$latch~combout\)) # (!\D[2]~20_combout\ & ((\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(2)))))) # (!\D[0]~9_combout\ & (((\D[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DATA[2]$latch~combout\,
	datab => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(2),
	datac => \D[0]~9_combout\,
	datad => \D[2]~20_combout\,
	combout => \D[2]~21_combout\);

-- Location: LCCOMB_X22_Y7_N12
\D[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[4]~16_combout\ = (\D[0]~8_combout\ & ((\D[0]~9_combout\) # ((\inst3|inst2|qq\(4))))) # (!\D[0]~8_combout\ & (!\D[0]~9_combout\ & ((\inst3|inst2|qq\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~8_combout\,
	datab => \D[0]~9_combout\,
	datac => \inst3|inst2|qq\(4),
	datad => \inst3|inst2|qq\(20),
	combout => \D[4]~16_combout\);

-- Location: LCCOMB_X22_Y7_N14
\D[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[4]~17_combout\ = (\D[0]~9_combout\ & ((\D[4]~16_combout\ & ((\inst1|DATA[4]$latch~combout\))) # (!\D[4]~16_combout\ & (\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(4))))) # (!\D[0]~9_combout\ & (((\D[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(4),
	datab => \D[0]~9_combout\,
	datac => \inst1|DATA[4]$latch~combout\,
	datad => \D[4]~16_combout\,
	combout => \D[4]~17_combout\);

-- Location: LCCOMB_X24_Y8_N12
\D[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[7]~10_combout\ = (\D[0]~8_combout\ & (((\D[0]~9_combout\)))) # (!\D[0]~8_combout\ & ((\D[0]~9_combout\ & (\inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(7))) # (!\D[0]~9_combout\ & ((\inst3|inst2|qq\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~8_combout\,
	datab => \inst8|dcfifo_component|auto_generated|fifo_ram|altsyncram14|q_a\(7),
	datac => \D[0]~9_combout\,
	datad => \inst3|inst2|qq\(23),
	combout => \D[7]~10_combout\);

-- Location: LCCOMB_X24_Y8_N2
\D[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[7]~11_combout\ = (\D[0]~8_combout\ & ((\D[7]~10_combout\ & ((\inst1|DATA[7]$latch~combout\))) # (!\D[7]~10_combout\ & (\inst3|inst2|qq\(7))))) # (!\D[0]~8_combout\ & (((\D[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~8_combout\,
	datab => \inst3|inst2|qq\(7),
	datac => \inst1|DATA[7]$latch~combout\,
	datad => \D[7]~10_combout\,
	combout => \D[7]~11_combout\);

-- Location: M4K_X23_Y7
\inst17|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM2PORT:inst17|altsyncram:altsyncram_component|altsyncram_8ao1:auto_generated|ALTSYNCRAM",
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
	portawe => \inst14~combout\,
	portbrewe => VCC,
	clk0 => \inst6|altpll_component|_clk2~clkctrl_outclk\,
	portadatain => \inst17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst17|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst17|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst17|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y7_N20
inst20 : cycloneii_lcell_comb
-- Equation(s):
-- \inst20~combout\ = LCELL(((!\inst20~2_combout\) # (!\inst|Equal1~0_combout\)) # (!\inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20~1_combout\,
	datab => \inst|Equal1~0_combout\,
	datad => \inst20~2_combout\,
	combout => \inst20~combout\);

-- Location: LCFF_X21_Y7_N21
\inst29|inst7|12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~combout\,
	sdata => \D[7]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst7|12~regout\);

-- Location: LCFF_X21_Y7_N3
\inst29|inst7|15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~combout\,
	sdata => \D[4]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst7|15~regout\);

-- Location: LCFF_X24_Y7_N1
\inst29|inst7|17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~combout\,
	sdata => \D[2]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst7|17~regout\);

-- Location: LCFF_X24_Y7_N15
\inst29|inst7|18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~combout\,
	datain => \D[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst7|18~regout\);

-- Location: LCFF_X21_Y7_N29
\inst29|inst7|19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~combout\,
	sdata => \D[0]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst29|inst7|19~regout\);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\INT4~I\ : cycloneii_io
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
	datain => \inst8|dcfifo_component|auto_generated|wrfull_eq_comp|ALT_INV_aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_INT4);

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

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CLKCARRY~I\ : cycloneii_io
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
	datain => \CLK25M~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CLKCARRY);

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
	datain => \inst6|altpll_component|ALT_INV__clk2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DACLK);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CLK40M1~I\ : cycloneii_io
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
	datain => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CLK40M1);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PHASE_TEST~I\ : cycloneii_io
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
	datain => \inst29|inst1|START~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PHASE_TEST);

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
	datain => \inst17|altsyncram_component|auto_generated|q_b\(7),
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
	datain => \inst17|altsyncram_component|auto_generated|q_b\(6),
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
	datain => \inst17|altsyncram_component|auto_generated|q_b\(5),
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
	datain => \inst17|altsyncram_component|auto_generated|q_b\(4),
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
	datain => \inst17|altsyncram_component|auto_generated|q_b\(3),
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
	datain => \inst17|altsyncram_component|auto_generated|q_b\(2),
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
	datain => \inst17|altsyncram_component|auto_generated|q_b\(1),
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
	datain => \inst17|altsyncram_component|auto_generated|q_b\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DACD(0));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMADDR[31]~I\ : cycloneii_io
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
	datain => \inst12|acc\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RAMADDR(31));

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FRPIN[23]~I\ : cycloneii_io
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
	datain => \inst29|inst7|12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FRPIN(23));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FRPIN[22]~I\ : cycloneii_io
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
	datain => \inst29|inst7|13~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FRPIN(22));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FRPIN[21]~I\ : cycloneii_io
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
	datain => \inst29|inst7|14~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FRPIN(21));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FRPIN[20]~I\ : cycloneii_io
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
	datain => \inst29|inst7|15~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FRPIN(20));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FRPIN[19]~I\ : cycloneii_io
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
	datain => \inst29|inst7|16~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FRPIN(19));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FRPIN[18]~I\ : cycloneii_io
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
	datain => \inst29|inst7|17~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FRPIN(18));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FRPIN[17]~I\ : cycloneii_io
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
	datain => \inst29|inst7|18~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FRPIN(17));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FRPIN[16]~I\ : cycloneii_io
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
	datain => \inst29|inst7|19~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FRPIN(16));
END structure;


