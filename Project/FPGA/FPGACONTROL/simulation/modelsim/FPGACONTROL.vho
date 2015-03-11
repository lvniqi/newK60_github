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

-- DATE "08/05/2014 14:02:05"

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
	DACLK : OUT std_logic;
	CLK25M : IN std_logic;
	AD : INOUT std_logic_vector(15 DOWNTO 0);
	NADV : IN std_logic;
	NOE : IN std_logic;
	NWE : IN std_logic;
	A16 : IN std_logic;
	DACD : OUT std_logic_vector(7 DOWNTO 0);
	RAMADDR : OUT std_logic_vector(31 DOWNTO 31);
	A17 : IN std_logic;
	COUT : IN std_logic;
	A18 : IN std_logic;
	DIN : IN std_logic_vector(11 DOWNTO 0)
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
-- DACLK	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[7]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[6]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[5]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[4]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[3]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[2]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[1]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DACD[0]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMADDR[31]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A17	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- COUT	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A18	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[11]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[10]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[9]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[8]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[7]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[6]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[5]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[4]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[3]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[2]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[1]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[0]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK25M	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NWE	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A16	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NADV	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NOE	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_DACLK : std_logic;
SIGNAL ww_CLK25M : std_logic;
SIGNAL ww_NADV : std_logic;
SIGNAL ww_NOE : std_logic;
SIGNAL ww_NWE : std_logic;
SIGNAL ww_A16 : std_logic;
SIGNAL ww_DACD : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RAMADDR : std_logic_vector(31 DOWNTO 31);
SIGNAL ww_A17 : std_logic;
SIGNAL ww_COUT : std_logic;
SIGNAL ww_A18 : std_logic;
SIGNAL ww_DIN : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst6|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst6|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst70|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst70|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst70|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst70|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst70|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst70|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst70|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst70|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst19~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|altpll_component|_clk1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst30|DATA[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|altpll_component|_clk2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \NWE~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst20~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \NADV~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|altpll_component|_clk0\ : std_logic;
SIGNAL \inst6|altpll_component|_clk1\ : std_logic;
SIGNAL \inst27|acc[1]~34_combout\ : std_logic;
SIGNAL \inst27|acc[3]~38_combout\ : std_logic;
SIGNAL \inst27|acc[5]~42_combout\ : std_logic;
SIGNAL \inst27|acc[6]~44_combout\ : std_logic;
SIGNAL \inst27|acc[8]~48_combout\ : std_logic;
SIGNAL \inst27|acc[10]~52_combout\ : std_logic;
SIGNAL \inst27|acc[12]~56_combout\ : std_logic;
SIGNAL \inst27|acc[19]~70_combout\ : std_logic;
SIGNAL \inst27|acc[21]~74_combout\ : std_logic;
SIGNAL \inst|CS_FREQ_RD_H~regout\ : std_logic;
SIGNAL \inst30|process_0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|CS_FREQ_RD_H~0_combout\ : std_logic;
SIGNAL \inst|CS_FREQ_RD_H~1_combout\ : std_logic;
SIGNAL \inst20~combout\ : std_logic;
SIGNAL \inst19~combout\ : std_logic;
SIGNAL \inst19~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|altpll_component|_clk1~clkctrl_outclk\ : std_logic;
SIGNAL \NWE~clkctrl_outclk\ : std_logic;
SIGNAL \inst20~clkctrl_outclk\ : std_logic;
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
SIGNAL \NOE~combout\ : std_logic;
SIGNAL \NADV~combout\ : std_logic;
SIGNAL \NWE~combout\ : std_logic;
SIGNAL \inst30|DATA[0]~0_combout\ : std_logic;
SIGNAL \inst30|DATA[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst30|DATA[15]$latch~combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \A16~combout\ : std_logic;
SIGNAL \inst|CS_FREQ_WR_L~0_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|CS_FREQ_WR_L~regout\ : std_logic;
SIGNAL \inst|CS_FREQ_WR_H~0_combout\ : std_logic;
SIGNAL \inst|CS_FREQ_WR_H~regout\ : std_logic;
SIGNAL \inst7|process_0~0_combout\ : std_logic;
SIGNAL \inst1|inst9|12~regout\ : std_logic;
SIGNAL \inst1|inst5|12~regout\ : std_logic;
SIGNAL \inst|CS_FREQ_RD_L~0_combout\ : std_logic;
SIGNAL \inst|CS_FREQ_RD_L~regout\ : std_logic;
SIGNAL \inst13|DOUT[15]~25_combout\ : std_logic;
SIGNAL \inst13|DOUT[15]~26_combout\ : std_logic;
SIGNAL \inst13|DOUT[15]~16_combout\ : std_logic;
SIGNAL \inst|nCS~0_combout\ : std_logic;
SIGNAL \inst|nCS~regout\ : std_logic;
SIGNAL \inst30|DATA[0]_102~combout\ : std_logic;
SIGNAL \inst13|DOUT[15]~27_combout\ : std_logic;
SIGNAL \inst9|DOUT[7]~42_combout\ : std_logic;
SIGNAL \inst13|DOUT[15]~28_combout\ : std_logic;
SIGNAL \inst1|inst9|13~regout\ : std_logic;
SIGNAL \inst1|inst5|13~regout\ : std_logic;
SIGNAL \inst13|DOUT[14]~29_combout\ : std_logic;
SIGNAL \inst30|DATA[14]$latch~combout\ : std_logic;
SIGNAL \inst13|DOUT[14]~30_combout\ : std_logic;
SIGNAL \inst1|inst9|14~regout\ : std_logic;
SIGNAL \inst1|inst5|14~regout\ : std_logic;
SIGNAL \inst13|DOUT[13]~31_combout\ : std_logic;
SIGNAL \inst30|DATA[13]$latch~combout\ : std_logic;
SIGNAL \inst13|DOUT[13]~32_combout\ : std_logic;
SIGNAL \inst30|DATA[12]$latch~combout\ : std_logic;
SIGNAL \inst1|inst9|15~regout\ : std_logic;
SIGNAL \inst1|inst5|15~regout\ : std_logic;
SIGNAL \inst13|DOUT[12]~33_combout\ : std_logic;
SIGNAL \inst13|DOUT[12]~34_combout\ : std_logic;
SIGNAL \inst30|DATA[11]$latch~combout\ : std_logic;
SIGNAL \inst1|inst5|16~regout\ : std_logic;
SIGNAL \inst1|inst9|16~feeder_combout\ : std_logic;
SIGNAL \inst1|inst9|16~regout\ : std_logic;
SIGNAL \inst13|DOUT[11]~35_combout\ : std_logic;
SIGNAL \inst13|DOUT[11]~36_combout\ : std_logic;
SIGNAL \inst30|DATA[10]$latch~combout\ : std_logic;
SIGNAL \inst1|inst5|17~regout\ : std_logic;
SIGNAL \inst1|inst9|17~feeder_combout\ : std_logic;
SIGNAL \inst1|inst9|17~regout\ : std_logic;
SIGNAL \inst13|DOUT[10]~37_combout\ : std_logic;
SIGNAL \inst13|DOUT[10]~38_combout\ : std_logic;
SIGNAL \inst30|DATA[9]$latch~combout\ : std_logic;
SIGNAL \inst1|inst5|18~regout\ : std_logic;
SIGNAL \inst1|inst9|18~feeder_combout\ : std_logic;
SIGNAL \inst1|inst9|18~regout\ : std_logic;
SIGNAL \inst13|DOUT[9]~39_combout\ : std_logic;
SIGNAL \inst13|DOUT[9]~40_combout\ : std_logic;
SIGNAL \inst30|DATA[8]$latch~combout\ : std_logic;
SIGNAL \inst1|inst5|19~regout\ : std_logic;
SIGNAL \inst1|inst9|19~regout\ : std_logic;
SIGNAL \inst13|DOUT[8]~41_combout\ : std_logic;
SIGNAL \inst13|DOUT[8]~42_combout\ : std_logic;
SIGNAL \inst30|DATA[7]$latch~combout\ : std_logic;
SIGNAL \inst9|DOUT[7]~16_combout\ : std_logic;
SIGNAL \inst9|DOUT[7]~18_combout\ : std_logic;
SIGNAL \inst9|DOUT[7]~19_combout\ : std_logic;
SIGNAL \inst9|DOUT[7]~20_combout\ : std_logic;
SIGNAL \inst1|inst|12~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|12~regout\ : std_logic;
SIGNAL \inst1|inst7|12~regout\ : std_logic;
SIGNAL \inst13|DOUT[7]~17_combout\ : std_logic;
SIGNAL \inst|CS_RAM_RD~0_combout\ : std_logic;
SIGNAL \inst|CS_RAM_RD~1_combout\ : std_logic;
SIGNAL \inst|CS_RAM_RD~regout\ : std_logic;
SIGNAL \inst9|DOUT[7]~17_combout\ : std_logic;
SIGNAL \inst9|DOUT[7]~44_combout\ : std_logic;
SIGNAL \inst9|DOUT[7]~43_combout\ : std_logic;
SIGNAL \inst9|DOUT[6]~22_combout\ : std_logic;
SIGNAL \inst30|DATA[6]$latch~combout\ : std_logic;
SIGNAL \inst9|DOUT[6]~21_combout\ : std_logic;
SIGNAL \inst9|DOUT[6]~23_combout\ : std_logic;
SIGNAL \inst7|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|13~regout\ : std_logic;
SIGNAL \inst1|inst7|13~regout\ : std_logic;
SIGNAL \inst13|DOUT[6]~18_combout\ : std_logic;
SIGNAL \inst9|DOUT[6]~45_combout\ : std_logic;
SIGNAL \inst30|DATA[5]$latch~combout\ : std_logic;
SIGNAL \inst9|DOUT[5]~24_combout\ : std_logic;
SIGNAL \inst9|DOUT[5]~26_combout\ : std_logic;
SIGNAL \inst1|inst|14~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|14~regout\ : std_logic;
SIGNAL \inst1|inst7|14~regout\ : std_logic;
SIGNAL \inst13|DOUT[5]~19_combout\ : std_logic;
SIGNAL \CLK25M~combout\ : std_logic;
SIGNAL \inst6|altpll_component|_clk2\ : std_logic;
SIGNAL \inst6|altpll_component|_clk2~clkctrl_outclk\ : std_logic;
SIGNAL \inst30|DATA[4]$latch~combout\ : std_logic;
SIGNAL \inst9|DOUT[4]~27_combout\ : std_logic;
SIGNAL \inst9|DOUT[4]~28_combout\ : std_logic;
SIGNAL \inst9|DOUT[4]~29_combout\ : std_logic;
SIGNAL \inst8|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \inst|CS_RAM_WR~0_combout\ : std_logic;
SIGNAL \inst|CS_RAM_WR~1_combout\ : std_logic;
SIGNAL \inst|CS_RAM_WR~regout\ : std_logic;
SIGNAL \inst|ADDR_RAM[0]~reg0feeder_combout\ : std_logic;
SIGNAL \inst|ADDR_RAM[0]~reg0_regout\ : std_logic;
SIGNAL \inst|ADDR_RAM[1]~reg0_regout\ : std_logic;
SIGNAL \inst|ADDR_RAM[2]~reg0feeder_combout\ : std_logic;
SIGNAL \inst|ADDR_RAM[2]~reg0_regout\ : std_logic;
SIGNAL \inst|ADDR_RAM[3]~reg0_regout\ : std_logic;
SIGNAL \inst|ADDR_RAM[4]~reg0feeder_combout\ : std_logic;
SIGNAL \inst|ADDR_RAM[4]~reg0_regout\ : std_logic;
SIGNAL \inst|ADDR_RAM[5]~reg0feeder_combout\ : std_logic;
SIGNAL \inst|ADDR_RAM[5]~reg0_regout\ : std_logic;
SIGNAL \inst|ADDR_RAM[6]~reg0_regout\ : std_logic;
SIGNAL \inst|ADDR_RAM[7]~reg0feeder_combout\ : std_logic;
SIGNAL \inst|ADDR_RAM[7]~reg0_regout\ : std_logic;
SIGNAL \inst|ADDR_RAM[8]~reg0feeder_combout\ : std_logic;
SIGNAL \inst|ADDR_RAM[8]~reg0_regout\ : std_logic;
SIGNAL \inst|ADDR_RAM[9]~reg0_regout\ : std_logic;
SIGNAL \inst13|process_0~0_combout\ : std_logic;
SIGNAL \inst13|DOUT[3]~21_combout\ : std_logic;
SIGNAL \inst30|DATA[3]$latch~combout\ : std_logic;
SIGNAL \inst9|DOUT[3]~30_combout\ : std_logic;
SIGNAL \inst9|DOUT[3]~31_combout\ : std_logic;
SIGNAL \inst9|DOUT[3]~32_combout\ : std_logic;
SIGNAL \inst1|inst7|16~regout\ : std_logic;
SIGNAL \inst1|inst|16~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|16~regout\ : std_logic;
SIGNAL \inst9|DOUT[1]~37_combout\ : std_logic;
SIGNAL \inst30|DATA[1]$latch~combout\ : std_logic;
SIGNAL \inst9|DOUT[1]~36_combout\ : std_logic;
SIGNAL \inst1|inst7|18~regout\ : std_logic;
SIGNAL \inst13|DOUT[1]~23_combout\ : std_logic;
SIGNAL \inst9|DOUT[1]~38_combout\ : std_logic;
SIGNAL \inst1|inst|18~regout\ : std_logic;
SIGNAL \inst27|acc[0]~32_combout\ : std_logic;
SIGNAL \inst27|acc[0]~33\ : std_logic;
SIGNAL \inst27|acc[1]~35\ : std_logic;
SIGNAL \inst27|acc[2]~36_combout\ : std_logic;
SIGNAL \inst27|acc[2]~37\ : std_logic;
SIGNAL \inst27|acc[3]~39\ : std_logic;
SIGNAL \inst27|acc[4]~40_combout\ : std_logic;
SIGNAL \inst27|acc[4]~41\ : std_logic;
SIGNAL \inst27|acc[5]~43\ : std_logic;
SIGNAL \inst27|acc[6]~45\ : std_logic;
SIGNAL \inst27|acc[7]~46_combout\ : std_logic;
SIGNAL \inst27|acc[7]~47\ : std_logic;
SIGNAL \inst27|acc[8]~49\ : std_logic;
SIGNAL \inst27|acc[9]~50_combout\ : std_logic;
SIGNAL \inst27|acc[9]~51\ : std_logic;
SIGNAL \inst27|acc[10]~53\ : std_logic;
SIGNAL \inst27|acc[11]~54_combout\ : std_logic;
SIGNAL \inst27|acc[11]~55\ : std_logic;
SIGNAL \inst27|acc[12]~57\ : std_logic;
SIGNAL \inst27|acc[13]~58_combout\ : std_logic;
SIGNAL \inst27|acc[13]~59\ : std_logic;
SIGNAL \inst27|acc[14]~60_combout\ : std_logic;
SIGNAL \inst27|acc[14]~61\ : std_logic;
SIGNAL \inst27|acc[15]~62_combout\ : std_logic;
SIGNAL \inst27|acc[15]~63\ : std_logic;
SIGNAL \inst27|acc[16]~64_combout\ : std_logic;
SIGNAL \inst27|acc[16]~65\ : std_logic;
SIGNAL \inst27|acc[17]~66_combout\ : std_logic;
SIGNAL \inst27|acc[17]~67\ : std_logic;
SIGNAL \inst27|acc[18]~68_combout\ : std_logic;
SIGNAL \inst27|acc[18]~69\ : std_logic;
SIGNAL \inst27|acc[19]~71\ : std_logic;
SIGNAL \inst27|acc[20]~72_combout\ : std_logic;
SIGNAL \inst27|acc[20]~73\ : std_logic;
SIGNAL \inst27|acc[21]~75\ : std_logic;
SIGNAL \inst27|acc[22]~76_combout\ : std_logic;
SIGNAL \inst27|acc[22]~77\ : std_logic;
SIGNAL \inst27|acc[23]~78_combout\ : std_logic;
SIGNAL \inst27|acc[23]~79\ : std_logic;
SIGNAL \inst27|acc[24]~80_combout\ : std_logic;
SIGNAL \inst27|acc[24]~81\ : std_logic;
SIGNAL \inst27|acc[25]~82_combout\ : std_logic;
SIGNAL \inst27|acc[25]~83\ : std_logic;
SIGNAL \inst27|acc[26]~84_combout\ : std_logic;
SIGNAL \inst27|acc[26]~85\ : std_logic;
SIGNAL \inst27|acc[27]~86_combout\ : std_logic;
SIGNAL \inst27|acc[27]~87\ : std_logic;
SIGNAL \inst27|acc[28]~88_combout\ : std_logic;
SIGNAL \inst27|acc[28]~89\ : std_logic;
SIGNAL \inst27|acc[29]~90_combout\ : std_logic;
SIGNAL \inst27|acc[29]~91\ : std_logic;
SIGNAL \inst27|acc[30]~92_combout\ : std_logic;
SIGNAL \inst27|acc[30]~93\ : std_logic;
SIGNAL \inst27|acc[31]~94_combout\ : std_logic;
SIGNAL \inst8|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \inst9|DOUT[5]~25_combout\ : std_logic;
SIGNAL \inst9|DOUT[5]~46_combout\ : std_logic;
SIGNAL \inst1|inst|15~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|15~regout\ : std_logic;
SIGNAL \inst1|inst7|15~regout\ : std_logic;
SIGNAL \inst13|DOUT[4]~20_combout\ : std_logic;
SIGNAL \inst9|DOUT[4]~47_combout\ : std_logic;
SIGNAL \inst9|DOUT[3]~48_combout\ : std_logic;
SIGNAL \inst30|DATA[2]$latch~combout\ : std_logic;
SIGNAL \inst9|DOUT[2]~33_combout\ : std_logic;
SIGNAL \inst9|DOUT[2]~34_combout\ : std_logic;
SIGNAL \inst9|DOUT[2]~35_combout\ : std_logic;
SIGNAL \inst1|inst|17~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|17~regout\ : std_logic;
SIGNAL \inst1|inst7|17~regout\ : std_logic;
SIGNAL \inst13|DOUT[2]~22_combout\ : std_logic;
SIGNAL \inst9|DOUT[2]~49_combout\ : std_logic;
SIGNAL \inst9|DOUT[1]~50_combout\ : std_logic;
SIGNAL \inst30|DATA[0]$latch~combout\ : std_logic;
SIGNAL \inst9|DOUT[0]~39_combout\ : std_logic;
SIGNAL \inst9|DOUT[0]~40_combout\ : std_logic;
SIGNAL \inst9|DOUT[0]~41_combout\ : std_logic;
SIGNAL \inst7|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst7|19~regout\ : std_logic;
SIGNAL \inst1|inst|19~regout\ : std_logic;
SIGNAL \inst13|DOUT[0]~24_combout\ : std_logic;
SIGNAL \inst9|DOUT[0]~51_combout\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \inst8|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \inst8|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \inst8|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \inst27|acc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst70|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|DOUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|DOUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|ALT_INV_CS_RAM_WR~regout\ : std_logic;
SIGNAL \inst6|altpll_component|ALT_INV__clk2~clkctrl_outclk\ : std_logic;

BEGIN

INT4 <= ww_INT4;
DACLK <= ww_DACLK;
ww_CLK25M <= CLK25M;
ww_NADV <= NADV;
ww_NOE <= NOE;
ww_NWE <= NWE;
ww_A16 <= A16;
DACD <= ww_DACD;
RAMADDR <= ww_RAMADDR;
ww_A17 <= A17;
ww_COUT <= COUT;
ww_A18 <= A18;
ww_DIN <= DIN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst6|altpll_component|pll_INCLK_bus\ <= (gnd & \CLK25M~combout\);

\inst6|altpll_component|_clk0\ <= \inst6|altpll_component|pll_CLK_bus\(0);
\inst6|altpll_component|_clk1\ <= \inst6|altpll_component|pll_CLK_bus\(1);
\inst6|altpll_component|_clk2\ <= \inst6|altpll_component|pll_CLK_bus\(2);

\inst70|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\inst8|DOUT\(7) & \inst8|DOUT\(6) & \inst8|DOUT\(5) & \inst8|DOUT\(4));

\inst70|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst|ADDR_RAM[9]~reg0_regout\ & \inst|ADDR_RAM[8]~reg0_regout\ & \inst|ADDR_RAM[7]~reg0_regout\ & \inst|ADDR_RAM[6]~reg0_regout\ & \inst|ADDR_RAM[5]~reg0_regout\ & 
\inst|ADDR_RAM[4]~reg0_regout\ & \inst|ADDR_RAM[3]~reg0_regout\ & \inst|ADDR_RAM[2]~reg0_regout\ & \inst|ADDR_RAM[1]~reg0_regout\ & \inst|ADDR_RAM[0]~reg0_regout\);

\inst70|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\inst27|acc\(31) & \inst27|acc\(30) & \inst27|acc\(29) & \inst27|acc\(28) & \inst27|acc\(27) & \inst27|acc\(26) & \inst27|acc\(25) & \inst27|acc\(24) & \inst27|acc\(23)
& \inst27|acc\(22));

\inst70|altsyncram_component|auto_generated|q_b\(4) <= \inst70|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);
\inst70|altsyncram_component|auto_generated|q_b\(5) <= \inst70|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(1);
\inst70|altsyncram_component|auto_generated|q_b\(6) <= \inst70|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(2);
\inst70|altsyncram_component|auto_generated|q_b\(7) <= \inst70|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(3);

\inst70|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\inst8|DOUT\(3) & \inst8|DOUT\(2) & \inst8|DOUT\(1) & \inst8|DOUT\(0));

\inst70|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|ADDR_RAM[9]~reg0_regout\ & \inst|ADDR_RAM[8]~reg0_regout\ & \inst|ADDR_RAM[7]~reg0_regout\ & \inst|ADDR_RAM[6]~reg0_regout\ & \inst|ADDR_RAM[5]~reg0_regout\ & 
\inst|ADDR_RAM[4]~reg0_regout\ & \inst|ADDR_RAM[3]~reg0_regout\ & \inst|ADDR_RAM[2]~reg0_regout\ & \inst|ADDR_RAM[1]~reg0_regout\ & \inst|ADDR_RAM[0]~reg0_regout\);

\inst70|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst27|acc\(31) & \inst27|acc\(30) & \inst27|acc\(29) & \inst27|acc\(28) & \inst27|acc\(27) & \inst27|acc\(26) & \inst27|acc\(25) & \inst27|acc\(24) & \inst27|acc\(23)
& \inst27|acc\(22));

\inst70|altsyncram_component|auto_generated|q_b\(0) <= \inst70|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\inst70|altsyncram_component|auto_generated|q_b\(1) <= \inst70|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\inst70|altsyncram_component|auto_generated|q_b\(2) <= \inst70|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\inst70|altsyncram_component|auto_generated|q_b\(3) <= \inst70|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\inst19~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst19~combout\);

\inst6|altpll_component|_clk1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst6|altpll_component|_clk1\);

\inst30|DATA[0]~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst30|DATA[0]~0_combout\);

\inst6|altpll_component|_clk2~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst6|altpll_component|_clk2\);

\NWE~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \NWE~combout\);

\inst20~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst20~combout\);

\NADV~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \NADV~combout\);
\inst|ALT_INV_CS_RAM_WR~regout\ <= NOT \inst|CS_RAM_WR~regout\;
\inst6|altpll_component|ALT_INV__clk2~clkctrl_outclk\ <= NOT \inst6|altpll_component|_clk2~clkctrl_outclk\;

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
	c1_high => 4,
	c1_initial => 3,
	c1_low => 4,
	c1_mode => "even",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_duty_cycle => 50,
	clk0_phase_shift => "0",
	clk1_counter => "c0",
	clk1_divide_by => 1,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 4,
	clk1_phase_shift => "0",
	clk2_counter => "c1",
	clk2_divide_by => 1,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 4,
	clk2_phase_shift => "2500",
	compensate_clock => "clk1",
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

-- Location: LCFF_X10_Y5_N11
\inst27|acc[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[21]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(21));

-- Location: LCFF_X10_Y5_N7
\inst27|acc[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[19]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(19));

-- Location: LCFF_X10_Y6_N25
\inst27|acc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(12));

-- Location: LCFF_X10_Y6_N21
\inst27|acc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[10]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(10));

-- Location: LCFF_X10_Y6_N17
\inst27|acc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[8]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(8));

-- Location: LCFF_X10_Y6_N13
\inst27|acc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(6));

-- Location: LCFF_X10_Y6_N11
\inst27|acc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(5));

-- Location: LCFF_X10_Y6_N7
\inst27|acc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(3));

-- Location: LCFF_X10_Y6_N3
\inst27|acc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(1));

-- Location: LCCOMB_X10_Y6_N2
\inst27|acc[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[1]~34_combout\ = (\inst27|acc\(1) & ((\inst1|inst|18~regout\ & (\inst27|acc[0]~33\ & VCC)) # (!\inst1|inst|18~regout\ & (!\inst27|acc[0]~33\)))) # (!\inst27|acc\(1) & ((\inst1|inst|18~regout\ & (!\inst27|acc[0]~33\)) # (!\inst1|inst|18~regout\ 
-- & ((\inst27|acc[0]~33\) # (GND)))))
-- \inst27|acc[1]~35\ = CARRY((\inst27|acc\(1) & (!\inst1|inst|18~regout\ & !\inst27|acc[0]~33\)) # (!\inst27|acc\(1) & ((!\inst27|acc[0]~33\) # (!\inst1|inst|18~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|acc\(1),
	datab => \inst1|inst|18~regout\,
	datad => VCC,
	cin => \inst27|acc[0]~33\,
	combout => \inst27|acc[1]~34_combout\,
	cout => \inst27|acc[1]~35\);

-- Location: LCCOMB_X10_Y6_N6
\inst27|acc[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[3]~38_combout\ = (\inst27|acc\(3) & ((\inst1|inst|16~regout\ & (\inst27|acc[2]~37\ & VCC)) # (!\inst1|inst|16~regout\ & (!\inst27|acc[2]~37\)))) # (!\inst27|acc\(3) & ((\inst1|inst|16~regout\ & (!\inst27|acc[2]~37\)) # (!\inst1|inst|16~regout\ 
-- & ((\inst27|acc[2]~37\) # (GND)))))
-- \inst27|acc[3]~39\ = CARRY((\inst27|acc\(3) & (!\inst1|inst|16~regout\ & !\inst27|acc[2]~37\)) # (!\inst27|acc\(3) & ((!\inst27|acc[2]~37\) # (!\inst1|inst|16~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|acc\(3),
	datab => \inst1|inst|16~regout\,
	datad => VCC,
	cin => \inst27|acc[2]~37\,
	combout => \inst27|acc[3]~38_combout\,
	cout => \inst27|acc[3]~39\);

-- Location: LCCOMB_X10_Y6_N10
\inst27|acc[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[5]~42_combout\ = (\inst27|acc\(5) & ((\inst1|inst|14~regout\ & (\inst27|acc[4]~41\ & VCC)) # (!\inst1|inst|14~regout\ & (!\inst27|acc[4]~41\)))) # (!\inst27|acc\(5) & ((\inst1|inst|14~regout\ & (!\inst27|acc[4]~41\)) # (!\inst1|inst|14~regout\ 
-- & ((\inst27|acc[4]~41\) # (GND)))))
-- \inst27|acc[5]~43\ = CARRY((\inst27|acc\(5) & (!\inst1|inst|14~regout\ & !\inst27|acc[4]~41\)) # (!\inst27|acc\(5) & ((!\inst27|acc[4]~41\) # (!\inst1|inst|14~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|acc\(5),
	datab => \inst1|inst|14~regout\,
	datad => VCC,
	cin => \inst27|acc[4]~41\,
	combout => \inst27|acc[5]~42_combout\,
	cout => \inst27|acc[5]~43\);

-- Location: LCCOMB_X10_Y6_N12
\inst27|acc[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[6]~44_combout\ = ((\inst27|acc\(6) $ (\inst1|inst|13~regout\ $ (!\inst27|acc[5]~43\)))) # (GND)
-- \inst27|acc[6]~45\ = CARRY((\inst27|acc\(6) & ((\inst1|inst|13~regout\) # (!\inst27|acc[5]~43\))) # (!\inst27|acc\(6) & (\inst1|inst|13~regout\ & !\inst27|acc[5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|acc\(6),
	datab => \inst1|inst|13~regout\,
	datad => VCC,
	cin => \inst27|acc[5]~43\,
	combout => \inst27|acc[6]~44_combout\,
	cout => \inst27|acc[6]~45\);

-- Location: LCCOMB_X10_Y6_N16
\inst27|acc[8]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[8]~48_combout\ = ((\inst27|acc\(8) $ (\inst1|inst5|19~regout\ $ (!\inst27|acc[7]~47\)))) # (GND)
-- \inst27|acc[8]~49\ = CARRY((\inst27|acc\(8) & ((\inst1|inst5|19~regout\) # (!\inst27|acc[7]~47\))) # (!\inst27|acc\(8) & (\inst1|inst5|19~regout\ & !\inst27|acc[7]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|acc\(8),
	datab => \inst1|inst5|19~regout\,
	datad => VCC,
	cin => \inst27|acc[7]~47\,
	combout => \inst27|acc[8]~48_combout\,
	cout => \inst27|acc[8]~49\);

-- Location: LCCOMB_X10_Y6_N20
\inst27|acc[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[10]~52_combout\ = ((\inst27|acc\(10) $ (\inst1|inst5|17~regout\ $ (!\inst27|acc[9]~51\)))) # (GND)
-- \inst27|acc[10]~53\ = CARRY((\inst27|acc\(10) & ((\inst1|inst5|17~regout\) # (!\inst27|acc[9]~51\))) # (!\inst27|acc\(10) & (\inst1|inst5|17~regout\ & !\inst27|acc[9]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|acc\(10),
	datab => \inst1|inst5|17~regout\,
	datad => VCC,
	cin => \inst27|acc[9]~51\,
	combout => \inst27|acc[10]~52_combout\,
	cout => \inst27|acc[10]~53\);

-- Location: LCCOMB_X10_Y6_N24
\inst27|acc[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[12]~56_combout\ = ((\inst27|acc\(12) $ (\inst1|inst5|15~regout\ $ (!\inst27|acc[11]~55\)))) # (GND)
-- \inst27|acc[12]~57\ = CARRY((\inst27|acc\(12) & ((\inst1|inst5|15~regout\) # (!\inst27|acc[11]~55\))) # (!\inst27|acc\(12) & (\inst1|inst5|15~regout\ & !\inst27|acc[11]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|acc\(12),
	datab => \inst1|inst5|15~regout\,
	datad => VCC,
	cin => \inst27|acc[11]~55\,
	combout => \inst27|acc[12]~56_combout\,
	cout => \inst27|acc[12]~57\);

-- Location: LCCOMB_X10_Y5_N6
\inst27|acc[19]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[19]~70_combout\ = (\inst27|acc\(19) & ((\inst1|inst7|16~regout\ & (\inst27|acc[18]~69\ & VCC)) # (!\inst1|inst7|16~regout\ & (!\inst27|acc[18]~69\)))) # (!\inst27|acc\(19) & ((\inst1|inst7|16~regout\ & (!\inst27|acc[18]~69\)) # 
-- (!\inst1|inst7|16~regout\ & ((\inst27|acc[18]~69\) # (GND)))))
-- \inst27|acc[19]~71\ = CARRY((\inst27|acc\(19) & (!\inst1|inst7|16~regout\ & !\inst27|acc[18]~69\)) # (!\inst27|acc\(19) & ((!\inst27|acc[18]~69\) # (!\inst1|inst7|16~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|acc\(19),
	datab => \inst1|inst7|16~regout\,
	datad => VCC,
	cin => \inst27|acc[18]~69\,
	combout => \inst27|acc[19]~70_combout\,
	cout => \inst27|acc[19]~71\);

-- Location: LCCOMB_X10_Y5_N10
\inst27|acc[21]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[21]~74_combout\ = (\inst27|acc\(21) & ((\inst1|inst7|14~regout\ & (\inst27|acc[20]~73\ & VCC)) # (!\inst1|inst7|14~regout\ & (!\inst27|acc[20]~73\)))) # (!\inst27|acc\(21) & ((\inst1|inst7|14~regout\ & (!\inst27|acc[20]~73\)) # 
-- (!\inst1|inst7|14~regout\ & ((\inst27|acc[20]~73\) # (GND)))))
-- \inst27|acc[21]~75\ = CARRY((\inst27|acc\(21) & (!\inst1|inst7|14~regout\ & !\inst27|acc[20]~73\)) # (!\inst27|acc\(21) & ((!\inst27|acc[20]~73\) # (!\inst1|inst7|14~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|acc\(21),
	datab => \inst1|inst7|14~regout\,
	datad => VCC,
	cin => \inst27|acc[20]~73\,
	combout => \inst27|acc[21]~74_combout\,
	cout => \inst27|acc[21]~75\);

-- Location: LCFF_X15_Y1_N3
\inst|CS_FREQ_RD_H\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	datain => \inst|CS_FREQ_RD_H~1_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|CS_FREQ_RD_H~regout\);

-- Location: LCCOMB_X14_Y4_N22
\inst30|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|process_0~0_combout\ = (\NADV~combout\ & (!\NWE~combout\ & \NOE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NADV~combout\,
	datac => \NWE~combout\,
	datad => \NOE~combout\,
	combout => \inst30|process_0~0_combout\);

-- Location: LCCOMB_X8_Y2_N28
\inst|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|Equal0~1_combout\ & (\inst|Equal0~2_combout\ & (!\AD~12\ & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Equal0~2_combout\,
	datac => \AD~12\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X8_Y2_N30
\inst|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (!\AD~13\ & !\AD~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AD~13\,
	datac => \AD~12\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X15_Y1_N16
\inst|CS_FREQ_RD_H~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|CS_FREQ_RD_H~0_combout\ = ((!\A16~combout\) # (!\AD~14\)) # (!\AD~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~15\,
	datac => \AD~14\,
	datad => \A16~combout\,
	combout => \inst|CS_FREQ_RD_H~0_combout\);

-- Location: LCCOMB_X15_Y1_N2
\inst|CS_FREQ_RD_H~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|CS_FREQ_RD_H~1_combout\ = (\inst|Equal0~3_combout\ & (\inst|CS_RAM_RD~0_combout\ & ((\inst|CS_FREQ_RD_H~0_combout\) # (!\inst|Equal0~5_combout\)))) # (!\inst|Equal0~3_combout\ & (((\inst|CS_FREQ_RD_H~0_combout\) # (!\inst|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~3_combout\,
	datab => \inst|CS_RAM_RD~0_combout\,
	datac => \inst|Equal0~5_combout\,
	datad => \inst|CS_FREQ_RD_H~0_combout\,
	combout => \inst|CS_FREQ_RD_H~1_combout\);

-- Location: LCCOMB_X15_Y1_N30
inst20 : cycloneii_lcell_comb
-- Equation(s):
-- \inst20~combout\ = LCELL((\inst|CS_FREQ_WR_H~regout\) # (\NWE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|CS_FREQ_WR_H~regout\,
	datad => \NWE~combout\,
	combout => \inst20~combout\);

-- Location: LCCOMB_X15_Y1_N4
inst19 : cycloneii_lcell_comb
-- Equation(s):
-- \inst19~combout\ = LCELL((\inst|CS_FREQ_WR_L~regout\) # (\NWE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|CS_FREQ_WR_L~regout\,
	datad => \NWE~combout\,
	combout => \inst19~combout\);

-- Location: CLKCTRL_G5
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

-- Location: CLKCTRL_G3
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

-- Location: CLKCTRL_G6
\NWE~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \NWE~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \NWE~clkctrl_outclk\);

-- Location: CLKCTRL_G0
\inst20~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst20~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst20~clkctrl_outclk\);

-- Location: CLKCTRL_G4
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
	datain => \inst13|DOUT[15]~27_combout\,
	oe => \inst13|DOUT[15]~28_combout\,
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
	datain => \inst13|DOUT[14]~30_combout\,
	oe => \inst13|DOUT[15]~28_combout\,
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
	datain => \inst13|DOUT[13]~32_combout\,
	oe => \inst13|DOUT[15]~28_combout\,
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
	datain => \inst13|DOUT[12]~34_combout\,
	oe => \inst13|DOUT[15]~28_combout\,
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
	datain => \inst13|DOUT[11]~36_combout\,
	oe => \inst13|DOUT[15]~28_combout\,
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
	datain => \inst13|DOUT[10]~38_combout\,
	oe => \inst13|DOUT[15]~28_combout\,
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
	datain => \inst13|DOUT[9]~40_combout\,
	oe => \inst13|DOUT[15]~28_combout\,
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
	datain => \inst13|DOUT[8]~42_combout\,
	oe => \inst13|DOUT[15]~28_combout\,
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
	datain => \inst9|DOUT[7]~44_combout\,
	oe => \inst9|DOUT[7]~43_combout\,
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
	datain => \inst9|DOUT[6]~45_combout\,
	oe => \inst9|DOUT[7]~43_combout\,
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
	datain => \inst9|DOUT[5]~46_combout\,
	oe => \inst9|DOUT[7]~43_combout\,
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
	datain => \inst9|DOUT[4]~47_combout\,
	oe => \inst9|DOUT[7]~43_combout\,
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
	datain => \inst9|DOUT[3]~48_combout\,
	oe => \inst9|DOUT[7]~43_combout\,
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
	datain => \inst9|DOUT[2]~49_combout\,
	oe => \inst9|DOUT[7]~43_combout\,
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
	datain => \inst9|DOUT[1]~50_combout\,
	oe => \inst9|DOUT[7]~43_combout\,
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
	datain => \inst9|DOUT[0]~51_combout\,
	oe => \inst9|DOUT[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => AD(0),
	combout => \AD~15\);

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

-- Location: LCCOMB_X14_Y4_N24
\inst30|DATA[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|DATA[0]~0_combout\ = ((\NADV~combout\ & !\NWE~combout\)) # (!\NOE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NOE~combout\,
	datac => \NADV~combout\,
	datad => \NWE~combout\,
	combout => \inst30|DATA[0]~0_combout\);

-- Location: CLKCTRL_G7
\inst30|DATA[0]~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst30|DATA[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst30|DATA[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X12_Y4_N24
\inst30|DATA[15]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|DATA[15]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & (\AD~0\)) # (!GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & ((\inst30|DATA[15]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nCS~regout\,
	datab => \AD~0\,
	datac => \inst30|DATA[15]$latch~combout\,
	datad => \inst30|DATA[0]~0clkctrl_outclk\,
	combout => \inst30|DATA[15]$latch~combout\);

-- Location: LCCOMB_X8_Y2_N18
\inst|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\AD~8\ & (!\AD~10\ & (!\AD~9\ & !\AD~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~8\,
	datab => \AD~10\,
	datac => \AD~9\,
	datad => \AD~11\,
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X8_Y2_N24
\inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\AD~7\ & (!\AD~4\ & (!\AD~6\ & !\AD~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~7\,
	datab => \AD~4\,
	datac => \AD~6\,
	datad => \AD~5\,
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X12_Y4_N8
\inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\AD~3\ & (\AD~0\ & (\AD~2\ & \AD~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~3\,
	datab => \AD~0\,
	datac => \AD~2\,
	datad => \AD~1\,
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y2_N16
\inst|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (\inst|Equal0~4_combout\ & (\inst|Equal0~2_combout\ & (\inst|Equal0~1_combout\ & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \inst|Equal0~2_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~5_combout\);

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

-- Location: LCCOMB_X15_Y1_N14
\inst|CS_FREQ_WR_L~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|CS_FREQ_WR_L~0_combout\ = (\AD~15\) # (((\AD~14\) # (!\A16~combout\)) # (!\inst|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~15\,
	datab => \inst|Equal0~5_combout\,
	datac => \AD~14\,
	datad => \A16~combout\,
	combout => \inst|CS_FREQ_WR_L~0_combout\);

-- Location: LCCOMB_X14_Y4_N4
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

-- Location: LCFF_X15_Y1_N5
\inst|CS_FREQ_WR_L\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	sdata => \inst|CS_FREQ_WR_L~0_combout\,
	sload => VCC,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|CS_FREQ_WR_L~regout\);

-- Location: LCCOMB_X15_Y1_N18
\inst|CS_FREQ_WR_H~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|CS_FREQ_WR_H~0_combout\ = (\AD~15\) # (((!\A16~combout\) # (!\AD~14\)) # (!\inst|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~15\,
	datab => \inst|Equal0~5_combout\,
	datac => \AD~14\,
	datad => \A16~combout\,
	combout => \inst|CS_FREQ_WR_H~0_combout\);

-- Location: LCFF_X15_Y1_N31
\inst|CS_FREQ_WR_H\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~combout\,
	sdata => \inst|CS_FREQ_WR_H~0_combout\,
	sload => VCC,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|CS_FREQ_WR_H~regout\);

-- Location: LCCOMB_X15_Y1_N12
\inst7|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_0~0_combout\ = (!\inst|CS_FREQ_WR_H~regout\) # (!\inst|CS_FREQ_WR_L~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|CS_FREQ_WR_L~regout\,
	datad => \inst|CS_FREQ_WR_H~regout\,
	combout => \inst7|process_0~0_combout\);

-- Location: LCFF_X12_Y4_N7
\inst7|DOUT[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst13|DOUT[15]~27_combout\,
	ena => \inst7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|DOUT\(15));

-- Location: LCFF_X13_Y4_N9
\inst1|inst9|12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	sdata => \inst7|DOUT\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst9|12~regout\);

-- Location: LCFF_X13_Y4_N25
\inst1|inst5|12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	sdata => \inst7|DOUT\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst5|12~regout\);

-- Location: LCCOMB_X15_Y1_N20
\inst|CS_FREQ_RD_L~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|CS_FREQ_RD_L~0_combout\ = (((\AD~14\) # (!\A16~combout\)) # (!\inst|Equal0~5_combout\)) # (!\AD~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~15\,
	datab => \inst|Equal0~5_combout\,
	datac => \AD~14\,
	datad => \A16~combout\,
	combout => \inst|CS_FREQ_RD_L~0_combout\);

-- Location: LCFF_X15_Y1_N21
\inst|CS_FREQ_RD_L\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	datain => \inst|CS_FREQ_RD_L~0_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|CS_FREQ_RD_L~regout\);

-- Location: LCCOMB_X14_Y4_N30
\inst13|DOUT[15]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[15]~25_combout\ = (\inst|CS_FREQ_RD_H~regout\ & (!\inst|CS_FREQ_RD_L~regout\ & !\NOE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CS_FREQ_RD_H~regout\,
	datab => \inst|CS_FREQ_RD_L~regout\,
	datad => \NOE~combout\,
	combout => \inst13|DOUT[15]~25_combout\);

-- Location: LCCOMB_X13_Y4_N24
\inst13|DOUT[15]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[15]~26_combout\ = (\inst13|DOUT[15]~25_combout\ & ((\inst1|inst5|12~regout\))) # (!\inst13|DOUT[15]~25_combout\ & (\inst1|inst9|12~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst9|12~regout\,
	datac => \inst1|inst5|12~regout\,
	datad => \inst13|DOUT[15]~25_combout\,
	combout => \inst13|DOUT[15]~26_combout\);

-- Location: LCCOMB_X14_Y4_N12
\inst13|DOUT[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[15]~16_combout\ = (\NWE~combout\ & (!\NOE~combout\ & (\inst|CS_FREQ_RD_H~regout\ $ (\inst|CS_FREQ_RD_L~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CS_FREQ_RD_H~regout\,
	datab => \inst|CS_FREQ_RD_L~regout\,
	datac => \NWE~combout\,
	datad => \NOE~combout\,
	combout => \inst13|DOUT[15]~16_combout\);

-- Location: LCCOMB_X15_Y1_N24
\inst|nCS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|nCS~0_combout\ = !\A16~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A16~combout\,
	combout => \inst|nCS~0_combout\);

-- Location: LCFF_X15_Y1_N25
\inst|nCS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	datain => \inst|nCS~0_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|nCS~regout\);

-- Location: LCCOMB_X12_Y2_N18
\inst30|DATA[0]_102\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|DATA[0]_102~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & (\inst30|process_0~0_combout\)) # (!GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & ((\inst30|DATA[0]_102~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|process_0~0_combout\,
	datab => \inst30|DATA[0]_102~combout\,
	datac => \inst|nCS~regout\,
	datad => \inst30|DATA[0]~0clkctrl_outclk\,
	combout => \inst30|DATA[0]_102~combout\);

-- Location: LCCOMB_X12_Y4_N6
\inst13|DOUT[15]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[15]~27_combout\ = (\inst30|DATA[15]$latch~combout\ & ((\inst13|DOUT[15]~26_combout\) # ((!\inst13|DOUT[15]~16_combout\)))) # (!\inst30|DATA[15]$latch~combout\ & (!\inst30|DATA[0]_102~combout\ & ((\inst13|DOUT[15]~26_combout\) # 
-- (!\inst13|DOUT[15]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|DATA[15]$latch~combout\,
	datab => \inst13|DOUT[15]~26_combout\,
	datac => \inst13|DOUT[15]~16_combout\,
	datad => \inst30|DATA[0]_102~combout\,
	combout => \inst13|DOUT[15]~27_combout\);

-- Location: LCCOMB_X14_Y4_N0
\inst9|DOUT[7]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[7]~42_combout\ = (\NADV~combout\ & (!\NOE~combout\ & (\NWE~combout\ & !\inst|nCS~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NADV~combout\,
	datab => \NOE~combout\,
	datac => \NWE~combout\,
	datad => \inst|nCS~regout\,
	combout => \inst9|DOUT[7]~42_combout\);

-- Location: LCCOMB_X17_Y3_N12
\inst13|DOUT[15]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[15]~28_combout\ = (\inst9|DOUT[7]~42_combout\ & ((\inst30|DATA[0]_102~combout\) # (\inst13|DOUT[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|DOUT[7]~42_combout\,
	datab => \inst30|DATA[0]_102~combout\,
	datad => \inst13|DOUT[15]~16_combout\,
	combout => \inst13|DOUT[15]~28_combout\);

-- Location: LCFF_X12_Y4_N17
\inst7|DOUT[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst13|DOUT[14]~30_combout\,
	ena => \inst7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|DOUT\(14));

-- Location: LCFF_X13_Y4_N19
\inst1|inst9|13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	sdata => \inst7|DOUT\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst9|13~regout\);

-- Location: LCFF_X13_Y4_N11
\inst1|inst5|13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	sdata => \inst7|DOUT\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst5|13~regout\);

-- Location: LCCOMB_X13_Y4_N10
\inst13|DOUT[14]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[14]~29_combout\ = (\inst13|DOUT[15]~25_combout\ & ((\inst1|inst5|13~regout\))) # (!\inst13|DOUT[15]~25_combout\ & (\inst1|inst9|13~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst9|13~regout\,
	datac => \inst1|inst5|13~regout\,
	datad => \inst13|DOUT[15]~25_combout\,
	combout => \inst13|DOUT[14]~29_combout\);

-- Location: LCCOMB_X12_Y4_N10
\inst30|DATA[14]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|DATA[14]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & ((\AD~1\))) # (!GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & (\inst30|DATA[14]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|DATA[14]$latch~combout\,
	datab => \AD~1\,
	datac => \inst|nCS~regout\,
	datad => \inst30|DATA[0]~0clkctrl_outclk\,
	combout => \inst30|DATA[14]$latch~combout\);

-- Location: LCCOMB_X12_Y4_N16
\inst13|DOUT[14]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[14]~30_combout\ = (\inst30|DATA[0]_102~combout\ & (\inst30|DATA[14]$latch~combout\ & ((\inst13|DOUT[14]~29_combout\) # (!\inst13|DOUT[15]~16_combout\)))) # (!\inst30|DATA[0]_102~combout\ & ((\inst13|DOUT[14]~29_combout\) # 
-- ((!\inst13|DOUT[15]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|DATA[0]_102~combout\,
	datab => \inst13|DOUT[14]~29_combout\,
	datac => \inst13|DOUT[15]~16_combout\,
	datad => \inst30|DATA[14]$latch~combout\,
	combout => \inst13|DOUT[14]~30_combout\);

-- Location: LCFF_X12_Y4_N3
\inst7|DOUT[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst13|DOUT[13]~32_combout\,
	ena => \inst7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|DOUT\(13));

-- Location: LCFF_X13_Y4_N5
\inst1|inst9|14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	sdata => \inst7|DOUT\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst9|14~regout\);

-- Location: LCFF_X13_Y4_N13
\inst1|inst5|14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	sdata => \inst7|DOUT\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst5|14~regout\);

-- Location: LCCOMB_X13_Y4_N12
\inst13|DOUT[13]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[13]~31_combout\ = (\inst13|DOUT[15]~25_combout\ & ((\inst1|inst5|14~regout\))) # (!\inst13|DOUT[15]~25_combout\ & (\inst1|inst9|14~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst9|14~regout\,
	datac => \inst1|inst5|14~regout\,
	datad => \inst13|DOUT[15]~25_combout\,
	combout => \inst13|DOUT[13]~31_combout\);

-- Location: LCCOMB_X12_Y4_N28
\inst30|DATA[13]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|DATA[13]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & ((\AD~2\))) # (!GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & (\inst30|DATA[13]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nCS~regout\,
	datab => \inst30|DATA[13]$latch~combout\,
	datac => \AD~2\,
	datad => \inst30|DATA[0]~0clkctrl_outclk\,
	combout => \inst30|DATA[13]$latch~combout\);

-- Location: LCCOMB_X12_Y4_N2
\inst13|DOUT[13]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[13]~32_combout\ = (\inst30|DATA[0]_102~combout\ & (\inst30|DATA[13]$latch~combout\ & ((\inst13|DOUT[13]~31_combout\) # (!\inst13|DOUT[15]~16_combout\)))) # (!\inst30|DATA[0]_102~combout\ & ((\inst13|DOUT[13]~31_combout\) # 
-- ((!\inst13|DOUT[15]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|DATA[0]_102~combout\,
	datab => \inst13|DOUT[13]~31_combout\,
	datac => \inst13|DOUT[15]~16_combout\,
	datad => \inst30|DATA[13]$latch~combout\,
	combout => \inst13|DOUT[13]~32_combout\);

-- Location: LCCOMB_X12_Y4_N14
\inst30|DATA[12]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|DATA[12]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & (\AD~3\)) # (!GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & ((\inst30|DATA[12]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nCS~regout\,
	datab => \AD~3\,
	datac => \inst30|DATA[12]$latch~combout\,
	datad => \inst30|DATA[0]~0clkctrl_outclk\,
	combout => \inst30|DATA[12]$latch~combout\);

-- Location: LCFF_X12_Y4_N13
\inst7|DOUT[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst13|DOUT[12]~34_combout\,
	ena => \inst7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|DOUT\(12));

-- Location: LCFF_X13_Y4_N31
\inst1|inst9|15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	sdata => \inst7|DOUT\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst9|15~regout\);

-- Location: LCFF_X13_Y4_N23
\inst1|inst5|15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	sdata => \inst7|DOUT\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst5|15~regout\);

-- Location: LCCOMB_X13_Y4_N22
\inst13|DOUT[12]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[12]~33_combout\ = (\inst13|DOUT[15]~25_combout\ & ((\inst1|inst5|15~regout\))) # (!\inst13|DOUT[15]~25_combout\ & (\inst1|inst9|15~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst9|15~regout\,
	datac => \inst1|inst5|15~regout\,
	datad => \inst13|DOUT[15]~25_combout\,
	combout => \inst13|DOUT[12]~33_combout\);

-- Location: LCCOMB_X12_Y4_N12
\inst13|DOUT[12]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[12]~34_combout\ = (\inst30|DATA[0]_102~combout\ & (\inst30|DATA[12]$latch~combout\ & ((\inst13|DOUT[12]~33_combout\) # (!\inst13|DOUT[15]~16_combout\)))) # (!\inst30|DATA[0]_102~combout\ & (((\inst13|DOUT[12]~33_combout\) # 
-- (!\inst13|DOUT[15]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|DATA[0]_102~combout\,
	datab => \inst30|DATA[12]$latch~combout\,
	datac => \inst13|DOUT[15]~16_combout\,
	datad => \inst13|DOUT[12]~33_combout\,
	combout => \inst13|DOUT[12]~34_combout\);

-- Location: LCCOMB_X17_Y3_N30
\inst30|DATA[11]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|DATA[11]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & (\AD~4\)) # (!GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & ((\inst30|DATA[11]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~4\,
	datab => \inst|nCS~regout\,
	datac => \inst30|DATA[11]$latch~combout\,
	datad => \inst30|DATA[0]~0clkctrl_outclk\,
	combout => \inst30|DATA[11]$latch~combout\);

-- Location: LCFF_X17_Y3_N15
\inst7|DOUT[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst13|DOUT[11]~36_combout\,
	ena => \inst7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|DOUT\(11));

-- Location: LCFF_X17_Y3_N11
\inst1|inst5|16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	sdata => \inst7|DOUT\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst5|16~regout\);

-- Location: LCCOMB_X18_Y3_N24
\inst1|inst9|16~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst9|16~feeder_combout\ = \inst7|DOUT\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|DOUT\(11),
	combout => \inst1|inst9|16~feeder_combout\);

-- Location: LCFF_X18_Y3_N25
\inst1|inst9|16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	datain => \inst1|inst9|16~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst9|16~regout\);

-- Location: LCCOMB_X17_Y3_N10
\inst13|DOUT[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[11]~35_combout\ = (\inst13|DOUT[15]~25_combout\ & (\inst1|inst5|16~regout\)) # (!\inst13|DOUT[15]~25_combout\ & ((\inst1|inst9|16~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DOUT[15]~25_combout\,
	datac => \inst1|inst5|16~regout\,
	datad => \inst1|inst9|16~regout\,
	combout => \inst13|DOUT[11]~35_combout\);

-- Location: LCCOMB_X17_Y3_N14
\inst13|DOUT[11]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[11]~36_combout\ = (\inst13|DOUT[15]~16_combout\ & (\inst13|DOUT[11]~35_combout\ & ((\inst30|DATA[11]$latch~combout\) # (!\inst30|DATA[0]_102~combout\)))) # (!\inst13|DOUT[15]~16_combout\ & ((\inst30|DATA[11]$latch~combout\) # 
-- ((!\inst30|DATA[0]_102~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DOUT[15]~16_combout\,
	datab => \inst30|DATA[11]$latch~combout\,
	datac => \inst30|DATA[0]_102~combout\,
	datad => \inst13|DOUT[11]~35_combout\,
	combout => \inst13|DOUT[11]~36_combout\);

-- Location: LCCOMB_X17_Y3_N22
\inst30|DATA[10]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|DATA[10]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & ((\AD~5\))) # (!GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & (\inst30|DATA[10]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nCS~regout\,
	datab => \inst30|DATA[10]$latch~combout\,
	datac => \AD~5\,
	datad => \inst30|DATA[0]~0clkctrl_outclk\,
	combout => \inst30|DATA[10]$latch~combout\);

-- Location: LCFF_X17_Y3_N9
\inst7|DOUT[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst13|DOUT[10]~38_combout\,
	ena => \inst7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|DOUT\(10));

-- Location: LCFF_X17_Y3_N3
\inst1|inst5|17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	sdata => \inst7|DOUT\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst5|17~regout\);

-- Location: LCCOMB_X18_Y3_N2
\inst1|inst9|17~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst9|17~feeder_combout\ = \inst7|DOUT\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|DOUT\(10),
	combout => \inst1|inst9|17~feeder_combout\);

-- Location: LCFF_X18_Y3_N3
\inst1|inst9|17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	datain => \inst1|inst9|17~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst9|17~regout\);

-- Location: LCCOMB_X17_Y3_N2
\inst13|DOUT[10]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[10]~37_combout\ = (\inst13|DOUT[15]~25_combout\ & (\inst1|inst5|17~regout\)) # (!\inst13|DOUT[15]~25_combout\ & ((\inst1|inst9|17~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DOUT[15]~25_combout\,
	datac => \inst1|inst5|17~regout\,
	datad => \inst1|inst9|17~regout\,
	combout => \inst13|DOUT[10]~37_combout\);

-- Location: LCCOMB_X17_Y3_N8
\inst13|DOUT[10]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[10]~38_combout\ = (\inst13|DOUT[15]~16_combout\ & (\inst13|DOUT[10]~37_combout\ & ((\inst30|DATA[10]$latch~combout\) # (!\inst30|DATA[0]_102~combout\)))) # (!\inst13|DOUT[15]~16_combout\ & ((\inst30|DATA[10]$latch~combout\) # 
-- ((!\inst30|DATA[0]_102~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DOUT[15]~16_combout\,
	datab => \inst30|DATA[10]$latch~combout\,
	datac => \inst30|DATA[0]_102~combout\,
	datad => \inst13|DOUT[10]~37_combout\,
	combout => \inst13|DOUT[10]~38_combout\);

-- Location: LCCOMB_X17_Y3_N4
\inst30|DATA[9]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|DATA[9]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & (\AD~6\)) # (!GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & ((\inst30|DATA[9]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~6\,
	datab => \inst|nCS~regout\,
	datac => \inst30|DATA[9]$latch~combout\,
	datad => \inst30|DATA[0]~0clkctrl_outclk\,
	combout => \inst30|DATA[9]$latch~combout\);

-- Location: LCFF_X17_Y3_N17
\inst7|DOUT[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst13|DOUT[9]~40_combout\,
	ena => \inst7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|DOUT\(9));

-- Location: LCFF_X17_Y3_N7
\inst1|inst5|18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	sdata => \inst7|DOUT\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst5|18~regout\);

-- Location: LCCOMB_X18_Y3_N4
\inst1|inst9|18~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst9|18~feeder_combout\ = \inst7|DOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|DOUT\(9),
	combout => \inst1|inst9|18~feeder_combout\);

-- Location: LCFF_X18_Y3_N5
\inst1|inst9|18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	datain => \inst1|inst9|18~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst9|18~regout\);

-- Location: LCCOMB_X17_Y3_N6
\inst13|DOUT[9]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[9]~39_combout\ = (\inst13|DOUT[15]~25_combout\ & (\inst1|inst5|18~regout\)) # (!\inst13|DOUT[15]~25_combout\ & ((\inst1|inst9|18~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DOUT[15]~25_combout\,
	datac => \inst1|inst5|18~regout\,
	datad => \inst1|inst9|18~regout\,
	combout => \inst13|DOUT[9]~39_combout\);

-- Location: LCCOMB_X17_Y3_N16
\inst13|DOUT[9]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[9]~40_combout\ = (\inst13|DOUT[15]~16_combout\ & (\inst13|DOUT[9]~39_combout\ & ((\inst30|DATA[9]$latch~combout\) # (!\inst30|DATA[0]_102~combout\)))) # (!\inst13|DOUT[15]~16_combout\ & (((\inst30|DATA[9]$latch~combout\)) # 
-- (!\inst30|DATA[0]_102~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DOUT[15]~16_combout\,
	datab => \inst30|DATA[0]_102~combout\,
	datac => \inst30|DATA[9]$latch~combout\,
	datad => \inst13|DOUT[9]~39_combout\,
	combout => \inst13|DOUT[9]~40_combout\);

-- Location: LCCOMB_X17_Y3_N24
\inst30|DATA[8]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|DATA[8]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & (\AD~7\)) # (!GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & ((\inst30|DATA[8]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~7\,
	datab => \inst|nCS~regout\,
	datac => \inst30|DATA[8]$latch~combout\,
	datad => \inst30|DATA[0]~0clkctrl_outclk\,
	combout => \inst30|DATA[8]$latch~combout\);

-- Location: LCFF_X17_Y3_N21
\inst7|DOUT[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst13|DOUT[8]~42_combout\,
	ena => \inst7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|DOUT\(8));

-- Location: LCFF_X17_Y3_N29
\inst1|inst5|19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	sdata => \inst7|DOUT\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst5|19~regout\);

-- Location: LCFF_X18_Y3_N31
\inst1|inst9|19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	sdata => \inst7|DOUT\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst9|19~regout\);

-- Location: LCCOMB_X17_Y3_N28
\inst13|DOUT[8]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[8]~41_combout\ = (\inst13|DOUT[15]~25_combout\ & (\inst1|inst5|19~regout\)) # (!\inst13|DOUT[15]~25_combout\ & ((\inst1|inst9|19~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DOUT[15]~25_combout\,
	datac => \inst1|inst5|19~regout\,
	datad => \inst1|inst9|19~regout\,
	combout => \inst13|DOUT[8]~41_combout\);

-- Location: LCCOMB_X17_Y3_N20
\inst13|DOUT[8]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[8]~42_combout\ = (\inst13|DOUT[15]~16_combout\ & (\inst13|DOUT[8]~41_combout\ & ((\inst30|DATA[8]$latch~combout\) # (!\inst30|DATA[0]_102~combout\)))) # (!\inst13|DOUT[15]~16_combout\ & (((\inst30|DATA[8]$latch~combout\)) # 
-- (!\inst30|DATA[0]_102~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DOUT[15]~16_combout\,
	datab => \inst30|DATA[0]_102~combout\,
	datac => \inst30|DATA[8]$latch~combout\,
	datad => \inst13|DOUT[8]~41_combout\,
	combout => \inst13|DOUT[8]~42_combout\);

-- Location: LCCOMB_X12_Y2_N16
\inst30|DATA[7]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|DATA[7]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & (\AD~8\)) # (!GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & ((\inst30|DATA[7]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~8\,
	datab => \inst|nCS~regout\,
	datac => \inst30|DATA[7]$latch~combout\,
	datad => \inst30|DATA[0]~0clkctrl_outclk\,
	combout => \inst30|DATA[7]$latch~combout\);

-- Location: LCCOMB_X12_Y2_N14
\inst9|DOUT[7]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[7]~16_combout\ = (\inst30|DATA[7]$latch~combout\) # (!\inst30|DATA[0]_102~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|DATA[7]$latch~combout\,
	datad => \inst30|DATA[0]_102~combout\,
	combout => \inst9|DOUT[7]~16_combout\);

-- Location: LCCOMB_X14_Y4_N16
\inst9|DOUT[7]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[7]~18_combout\ = (!\inst|CS_RAM_RD~regout\ & (!\NOE~combout\ & \NWE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CS_RAM_RD~regout\,
	datab => \NOE~combout\,
	datac => \NWE~combout\,
	combout => \inst9|DOUT[7]~18_combout\);

-- Location: LCCOMB_X12_Y2_N0
\inst9|DOUT[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[7]~19_combout\ = (\inst13|DOUT[15]~16_combout\) # ((\inst30|DATA[0]_102~combout\) # (\inst9|DOUT[7]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DOUT[15]~16_combout\,
	datab => \inst30|DATA[0]_102~combout\,
	datad => \inst9|DOUT[7]~18_combout\,
	combout => \inst9|DOUT[7]~19_combout\);

-- Location: LCCOMB_X12_Y2_N24
\inst9|DOUT[7]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[7]~20_combout\ = ((\inst9|DOUT[7]~17_combout\ & (\inst13|DOUT[7]~17_combout\ & \inst9|DOUT[7]~16_combout\))) # (!\inst9|DOUT[7]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|DOUT[7]~17_combout\,
	datab => \inst13|DOUT[7]~17_combout\,
	datac => \inst9|DOUT[7]~16_combout\,
	datad => \inst9|DOUT[7]~19_combout\,
	combout => \inst9|DOUT[7]~20_combout\);

-- Location: LCFF_X12_Y2_N21
\inst7|DOUT[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	sdata => \inst9|DOUT[7]~20_combout\,
	sload => VCC,
	ena => \inst7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|DOUT\(7));

-- Location: LCCOMB_X10_Y4_N8
\inst1|inst|12~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|12~feeder_combout\ = \inst7|DOUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|DOUT\(7),
	combout => \inst1|inst|12~feeder_combout\);

-- Location: LCFF_X10_Y4_N9
\inst1|inst|12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	datain => \inst1|inst|12~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|12~regout\);

-- Location: LCFF_X10_Y4_N25
\inst1|inst7|12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	sdata => \inst7|DOUT\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst7|12~regout\);

-- Location: LCCOMB_X10_Y4_N24
\inst13|DOUT[7]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[7]~17_combout\ = ((\inst13|process_0~0_combout\ & ((\inst1|inst7|12~regout\))) # (!\inst13|process_0~0_combout\ & (\inst1|inst|12~regout\))) # (!\inst13|DOUT[15]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|process_0~0_combout\,
	datab => \inst1|inst|12~regout\,
	datac => \inst1|inst7|12~regout\,
	datad => \inst13|DOUT[15]~16_combout\,
	combout => \inst13|DOUT[7]~17_combout\);

-- Location: LCCOMB_X15_Y1_N26
\inst|CS_RAM_RD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|CS_RAM_RD~0_combout\ = (\AD~15\) # (((\AD~14\) # (!\A16~combout\)) # (!\AD~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~15\,
	datab => \AD~13\,
	datac => \AD~14\,
	datad => \A16~combout\,
	combout => \inst|CS_RAM_RD~0_combout\);

-- Location: LCCOMB_X15_Y1_N28
\inst|CS_RAM_RD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|CS_RAM_RD~1_combout\ = (\inst|CS_RAM_RD~0_combout\) # (!\inst|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~3_combout\,
	datad => \inst|CS_RAM_RD~0_combout\,
	combout => \inst|CS_RAM_RD~1_combout\);

-- Location: LCFF_X15_Y1_N29
\inst|CS_RAM_RD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	datain => \inst|CS_RAM_RD~1_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|CS_RAM_RD~regout\);

-- Location: LCCOMB_X14_Y4_N8
\inst9|DOUT[7]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[7]~17_combout\ = (\inst70|altsyncram_component|auto_generated|q_b\(7)) # (((\inst|CS_RAM_RD~regout\) # (\NOE~combout\)) # (!\NWE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst70|altsyncram_component|auto_generated|q_b\(7),
	datab => \NWE~combout\,
	datac => \inst|CS_RAM_RD~regout\,
	datad => \NOE~combout\,
	combout => \inst9|DOUT[7]~17_combout\);

-- Location: LCCOMB_X12_Y4_N26
\inst9|DOUT[7]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[7]~44_combout\ = (\inst13|DOUT[7]~17_combout\ & (\inst9|DOUT[7]~17_combout\ & ((\inst30|DATA[7]$latch~combout\) # (!\inst30|DATA[0]_102~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|DATA[0]_102~combout\,
	datab => \inst13|DOUT[7]~17_combout\,
	datac => \inst30|DATA[7]$latch~combout\,
	datad => \inst9|DOUT[7]~17_combout\,
	combout => \inst9|DOUT[7]~44_combout\);

-- Location: LCCOMB_X17_Y3_N26
\inst9|DOUT[7]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[7]~43_combout\ = (\inst9|DOUT[7]~42_combout\ & ((\inst30|DATA[0]_102~combout\) # ((\inst9|DOUT[7]~18_combout\) # (\inst13|DOUT[15]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|DOUT[7]~42_combout\,
	datab => \inst30|DATA[0]_102~combout\,
	datac => \inst9|DOUT[7]~18_combout\,
	datad => \inst13|DOUT[15]~16_combout\,
	combout => \inst9|DOUT[7]~43_combout\);

-- Location: LCCOMB_X14_Y4_N18
\inst9|DOUT[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[6]~22_combout\ = (\inst70|altsyncram_component|auto_generated|q_b\(6)) # (((\inst|CS_RAM_RD~regout\) # (\NOE~combout\)) # (!\NWE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst70|altsyncram_component|auto_generated|q_b\(6),
	datab => \NWE~combout\,
	datac => \inst|CS_RAM_RD~regout\,
	datad => \NOE~combout\,
	combout => \inst9|DOUT[6]~22_combout\);

-- Location: LCCOMB_X12_Y2_N12
\inst30|DATA[6]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|DATA[6]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & (\AD~9\)) # (!GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & ((\inst30|DATA[6]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~9\,
	datab => \inst|nCS~regout\,
	datac => \inst30|DATA[6]$latch~combout\,
	datad => \inst30|DATA[0]~0clkctrl_outclk\,
	combout => \inst30|DATA[6]$latch~combout\);

-- Location: LCCOMB_X12_Y2_N2
\inst9|DOUT[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[6]~21_combout\ = (\inst30|DATA[6]$latch~combout\) # (!\inst30|DATA[0]_102~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|DATA[6]$latch~combout\,
	datad => \inst30|DATA[0]_102~combout\,
	combout => \inst9|DOUT[6]~21_combout\);

-- Location: LCCOMB_X12_Y2_N26
\inst9|DOUT[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[6]~23_combout\ = ((\inst9|DOUT[6]~22_combout\ & (\inst9|DOUT[6]~21_combout\ & \inst13|DOUT[6]~18_combout\))) # (!\inst9|DOUT[7]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|DOUT[6]~22_combout\,
	datab => \inst9|DOUT[6]~21_combout\,
	datac => \inst13|DOUT[6]~18_combout\,
	datad => \inst9|DOUT[7]~19_combout\,
	combout => \inst9|DOUT[6]~23_combout\);

-- Location: LCCOMB_X12_Y2_N30
\inst7|DOUT[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|DOUT[6]~feeder_combout\ = \inst9|DOUT[6]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|DOUT[6]~23_combout\,
	combout => \inst7|DOUT[6]~feeder_combout\);

-- Location: LCFF_X12_Y2_N31
\inst7|DOUT[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst7|DOUT[6]~feeder_combout\,
	ena => \inst7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|DOUT\(6));

-- Location: LCFF_X10_Y4_N19
\inst1|inst|13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	sdata => \inst7|DOUT\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|13~regout\);

-- Location: LCFF_X10_Y4_N27
\inst1|inst7|13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	sdata => \inst7|DOUT\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst7|13~regout\);

-- Location: LCCOMB_X10_Y4_N26
\inst13|DOUT[6]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[6]~18_combout\ = ((\inst13|process_0~0_combout\ & ((\inst1|inst7|13~regout\))) # (!\inst13|process_0~0_combout\ & (\inst1|inst|13~regout\))) # (!\inst13|DOUT[15]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|process_0~0_combout\,
	datab => \inst1|inst|13~regout\,
	datac => \inst1|inst7|13~regout\,
	datad => \inst13|DOUT[15]~16_combout\,
	combout => \inst13|DOUT[6]~18_combout\);

-- Location: LCCOMB_X17_Y3_N18
\inst9|DOUT[6]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[6]~45_combout\ = (\inst9|DOUT[6]~22_combout\ & (\inst13|DOUT[6]~18_combout\ & ((\inst30|DATA[6]$latch~combout\) # (!\inst30|DATA[0]_102~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|DOUT[6]~22_combout\,
	datab => \inst30|DATA[6]$latch~combout\,
	datac => \inst30|DATA[0]_102~combout\,
	datad => \inst13|DOUT[6]~18_combout\,
	combout => \inst9|DOUT[6]~45_combout\);

-- Location: LCCOMB_X12_Y2_N6
\inst30|DATA[5]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|DATA[5]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & ((\AD~10\))) # (!GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & (\inst30|DATA[5]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|DATA[5]$latch~combout\,
	datab => \AD~10\,
	datac => \inst|nCS~regout\,
	datad => \inst30|DATA[0]~0clkctrl_outclk\,
	combout => \inst30|DATA[5]$latch~combout\);

-- Location: LCCOMB_X12_Y2_N28
\inst9|DOUT[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[5]~24_combout\ = (\inst30|DATA[5]$latch~combout\) # (!\inst30|DATA[0]_102~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|DATA[5]$latch~combout\,
	datad => \inst30|DATA[0]_102~combout\,
	combout => \inst9|DOUT[5]~24_combout\);

-- Location: LCCOMB_X12_Y2_N22
\inst9|DOUT[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[5]~26_combout\ = ((\inst9|DOUT[5]~25_combout\ & (\inst9|DOUT[5]~24_combout\ & \inst13|DOUT[5]~19_combout\))) # (!\inst9|DOUT[7]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|DOUT[5]~25_combout\,
	datab => \inst9|DOUT[5]~24_combout\,
	datac => \inst13|DOUT[5]~19_combout\,
	datad => \inst9|DOUT[7]~19_combout\,
	combout => \inst9|DOUT[5]~26_combout\);

-- Location: LCFF_X12_Y2_N23
\inst7|DOUT[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst9|DOUT[5]~26_combout\,
	ena => \inst7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|DOUT\(5));

-- Location: LCCOMB_X10_Y4_N12
\inst1|inst|14~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|14~feeder_combout\ = \inst7|DOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|DOUT\(5),
	combout => \inst1|inst|14~feeder_combout\);

-- Location: LCFF_X10_Y4_N13
\inst1|inst|14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	datain => \inst1|inst|14~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|14~regout\);

-- Location: LCFF_X10_Y4_N29
\inst1|inst7|14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	sdata => \inst7|DOUT\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst7|14~regout\);

-- Location: LCCOMB_X10_Y4_N28
\inst13|DOUT[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[5]~19_combout\ = ((\inst13|process_0~0_combout\ & ((\inst1|inst7|14~regout\))) # (!\inst13|process_0~0_combout\ & (\inst1|inst|14~regout\))) # (!\inst13|DOUT[15]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|process_0~0_combout\,
	datab => \inst1|inst|14~regout\,
	datac => \inst1|inst7|14~regout\,
	datad => \inst13|DOUT[15]~16_combout\,
	combout => \inst13|DOUT[5]~19_combout\);

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

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X8_Y2_N6
\inst30|DATA[4]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|DATA[4]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & (\AD~11\)) # (!GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & ((\inst30|DATA[4]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nCS~regout\,
	datab => \AD~11\,
	datac => \inst30|DATA[4]$latch~combout\,
	datad => \inst30|DATA[0]~0clkctrl_outclk\,
	combout => \inst30|DATA[4]$latch~combout\);

-- Location: LCCOMB_X12_Y2_N8
\inst9|DOUT[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[4]~27_combout\ = (\inst30|DATA[4]$latch~combout\) # (!\inst30|DATA[0]_102~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|DATA[4]$latch~combout\,
	datad => \inst30|DATA[0]_102~combout\,
	combout => \inst9|DOUT[4]~27_combout\);

-- Location: LCCOMB_X14_Y4_N6
\inst9|DOUT[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[4]~28_combout\ = (\inst70|altsyncram_component|auto_generated|q_b\(4)) # (((\inst|CS_RAM_RD~regout\) # (\NOE~combout\)) # (!\NWE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst70|altsyncram_component|auto_generated|q_b\(4),
	datab => \NWE~combout\,
	datac => \inst|CS_RAM_RD~regout\,
	datad => \NOE~combout\,
	combout => \inst9|DOUT[4]~28_combout\);

-- Location: LCCOMB_X12_Y2_N10
\inst9|DOUT[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[4]~29_combout\ = ((\inst13|DOUT[4]~20_combout\ & (\inst9|DOUT[4]~27_combout\ & \inst9|DOUT[4]~28_combout\))) # (!\inst9|DOUT[7]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DOUT[4]~20_combout\,
	datab => \inst9|DOUT[7]~19_combout\,
	datac => \inst9|DOUT[4]~27_combout\,
	datad => \inst9|DOUT[4]~28_combout\,
	combout => \inst9|DOUT[4]~29_combout\);

-- Location: LCCOMB_X12_Y2_N4
\inst8|DOUT[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|DOUT[4]~feeder_combout\ = \inst9|DOUT[4]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|DOUT[4]~29_combout\,
	combout => \inst8|DOUT[4]~feeder_combout\);

-- Location: LCCOMB_X12_Y4_N18
\inst|CS_RAM_WR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|CS_RAM_WR~0_combout\ = (((!\AD~1\) # (!\AD~2\)) # (!\AD~0\)) # (!\AD~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~3\,
	datab => \AD~0\,
	datac => \AD~2\,
	datad => \AD~1\,
	combout => \inst|CS_RAM_WR~0_combout\);

-- Location: LCCOMB_X15_Y1_N6
\inst|CS_RAM_WR~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|CS_RAM_WR~1_combout\ = (((\inst|CS_RAM_WR~0_combout\) # (!\AD~4\)) # (!\AD~5\)) # (!\A16~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A16~combout\,
	datab => \AD~5\,
	datac => \AD~4\,
	datad => \inst|CS_RAM_WR~0_combout\,
	combout => \inst|CS_RAM_WR~1_combout\);

-- Location: LCFF_X15_Y1_N7
\inst|CS_RAM_WR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	datain => \inst|CS_RAM_WR~1_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|CS_RAM_WR~regout\);

-- Location: LCFF_X12_Y2_N5
\inst8|DOUT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst8|DOUT[4]~feeder_combout\,
	ena => \inst|ALT_INV_CS_RAM_WR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|DOUT\(4));

-- Location: LCCOMB_X15_Y1_N22
\inst|ADDR_RAM[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ADDR_RAM[0]~reg0feeder_combout\ = \AD~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AD~15\,
	combout => \inst|ADDR_RAM[0]~reg0feeder_combout\);

-- Location: LCFF_X15_Y1_N23
\inst|ADDR_RAM[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	datain => \inst|ADDR_RAM[0]~reg0feeder_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ADDR_RAM[0]~reg0_regout\);

-- Location: LCFF_X15_Y1_N11
\inst|ADDR_RAM[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	sdata => \AD~14\,
	sload => VCC,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ADDR_RAM[1]~reg0_regout\);

-- Location: LCCOMB_X8_Y2_N0
\inst|ADDR_RAM[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ADDR_RAM[2]~reg0feeder_combout\ = \AD~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AD~13\,
	combout => \inst|ADDR_RAM[2]~reg0feeder_combout\);

-- Location: LCFF_X8_Y2_N1
\inst|ADDR_RAM[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	datain => \inst|ADDR_RAM[2]~reg0feeder_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ADDR_RAM[2]~reg0_regout\);

-- Location: LCFF_X8_Y2_N27
\inst|ADDR_RAM[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	sdata => \AD~12\,
	sload => VCC,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ADDR_RAM[3]~reg0_regout\);

-- Location: LCCOMB_X8_Y2_N4
\inst|ADDR_RAM[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ADDR_RAM[4]~reg0feeder_combout\ = \AD~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AD~11\,
	combout => \inst|ADDR_RAM[4]~reg0feeder_combout\);

-- Location: LCFF_X8_Y2_N5
\inst|ADDR_RAM[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	datain => \inst|ADDR_RAM[4]~reg0feeder_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ADDR_RAM[4]~reg0_regout\);

-- Location: LCCOMB_X8_Y2_N22
\inst|ADDR_RAM[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ADDR_RAM[5]~reg0feeder_combout\ = \AD~10\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AD~10\,
	combout => \inst|ADDR_RAM[5]~reg0feeder_combout\);

-- Location: LCFF_X8_Y2_N23
\inst|ADDR_RAM[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	datain => \inst|ADDR_RAM[5]~reg0feeder_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ADDR_RAM[5]~reg0_regout\);

-- Location: LCFF_X8_Y2_N9
\inst|ADDR_RAM[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	sdata => \AD~9\,
	sload => VCC,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ADDR_RAM[6]~reg0_regout\);

-- Location: LCCOMB_X8_Y2_N10
\inst|ADDR_RAM[7]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ADDR_RAM[7]~reg0feeder_combout\ = \AD~8\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AD~8\,
	combout => \inst|ADDR_RAM[7]~reg0feeder_combout\);

-- Location: LCFF_X8_Y2_N11
\inst|ADDR_RAM[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	datain => \inst|ADDR_RAM[7]~reg0feeder_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ADDR_RAM[7]~reg0_regout\);

-- Location: LCCOMB_X8_Y2_N12
\inst|ADDR_RAM[8]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ADDR_RAM[8]~reg0feeder_combout\ = \AD~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AD~7\,
	combout => \inst|ADDR_RAM[8]~reg0feeder_combout\);

-- Location: LCFF_X8_Y2_N13
\inst|ADDR_RAM[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	datain => \inst|ADDR_RAM[8]~reg0feeder_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ADDR_RAM[8]~reg0_regout\);

-- Location: LCFF_X8_Y2_N15
\inst|ADDR_RAM[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NADV~clkctrl_outclk\,
	sdata => \AD~6\,
	sload => VCC,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ADDR_RAM[9]~reg0_regout\);

-- Location: LCCOMB_X14_Y4_N2
\inst13|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|process_0~0_combout\ = ((\inst|CS_FREQ_RD_L~regout\) # (\NOE~combout\)) # (!\inst|CS_FREQ_RD_H~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CS_FREQ_RD_H~regout\,
	datab => \inst|CS_FREQ_RD_L~regout\,
	datad => \NOE~combout\,
	combout => \inst13|process_0~0_combout\);

-- Location: LCCOMB_X10_Y4_N0
\inst13|DOUT[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[3]~21_combout\ = ((\inst13|process_0~0_combout\ & ((\inst1|inst7|16~regout\))) # (!\inst13|process_0~0_combout\ & (\inst1|inst|16~regout\))) # (!\inst13|DOUT[15]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|16~regout\,
	datab => \inst13|process_0~0_combout\,
	datac => \inst1|inst7|16~regout\,
	datad => \inst13|DOUT[15]~16_combout\,
	combout => \inst13|DOUT[3]~21_combout\);

-- Location: LCCOMB_X18_Y2_N18
\inst30|DATA[3]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|DATA[3]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & ((\AD~12\))) # (!GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & (\inst30|DATA[3]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nCS~regout\,
	datab => \inst30|DATA[3]$latch~combout\,
	datac => \AD~12\,
	datad => \inst30|DATA[0]~0clkctrl_outclk\,
	combout => \inst30|DATA[3]$latch~combout\);

-- Location: LCCOMB_X18_Y2_N8
\inst9|DOUT[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[3]~30_combout\ = (\inst30|DATA[3]$latch~combout\) # (!\inst30|DATA[0]_102~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|DATA[0]_102~combout\,
	datad => \inst30|DATA[3]$latch~combout\,
	combout => \inst9|DOUT[3]~30_combout\);

-- Location: LCCOMB_X14_Y4_N10
\inst9|DOUT[3]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[3]~31_combout\ = (\inst70|altsyncram_component|auto_generated|q_b\(3)) # (((\inst|CS_RAM_RD~regout\) # (\NOE~combout\)) # (!\NWE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst70|altsyncram_component|auto_generated|q_b\(3),
	datab => \NWE~combout\,
	datac => \inst|CS_RAM_RD~regout\,
	datad => \NOE~combout\,
	combout => \inst9|DOUT[3]~31_combout\);

-- Location: LCCOMB_X18_Y2_N10
\inst9|DOUT[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[3]~32_combout\ = ((\inst13|DOUT[3]~21_combout\ & (\inst9|DOUT[3]~30_combout\ & \inst9|DOUT[3]~31_combout\))) # (!\inst9|DOUT[7]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|DOUT[7]~19_combout\,
	datab => \inst13|DOUT[3]~21_combout\,
	datac => \inst9|DOUT[3]~30_combout\,
	datad => \inst9|DOUT[3]~31_combout\,
	combout => \inst9|DOUT[3]~32_combout\);

-- Location: LCFF_X18_Y2_N11
\inst7|DOUT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst9|DOUT[3]~32_combout\,
	ena => \inst7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|DOUT\(3));

-- Location: LCFF_X10_Y4_N1
\inst1|inst7|16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	sdata => \inst7|DOUT\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst7|16~regout\);

-- Location: LCCOMB_X10_Y4_N16
\inst1|inst|16~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|16~feeder_combout\ = \inst7|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|DOUT\(3),
	combout => \inst1|inst|16~feeder_combout\);

-- Location: LCFF_X10_Y4_N17
\inst1|inst|16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	datain => \inst1|inst|16~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|16~regout\);

-- Location: LCCOMB_X14_Y4_N14
\inst9|DOUT[1]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[1]~37_combout\ = (\inst70|altsyncram_component|auto_generated|q_b\(1)) # (((\inst|CS_RAM_RD~regout\) # (\NOE~combout\)) # (!\NWE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst70|altsyncram_component|auto_generated|q_b\(1),
	datab => \NWE~combout\,
	datac => \inst|CS_RAM_RD~regout\,
	datad => \NOE~combout\,
	combout => \inst9|DOUT[1]~37_combout\);

-- Location: LCCOMB_X18_Y2_N14
\inst30|DATA[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|DATA[1]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & (\AD~14\)) # (!GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & ((\inst30|DATA[1]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~14\,
	datab => \inst|nCS~regout\,
	datac => \inst30|DATA[1]$latch~combout\,
	datad => \inst30|DATA[0]~0clkctrl_outclk\,
	combout => \inst30|DATA[1]$latch~combout\);

-- Location: LCCOMB_X18_Y2_N16
\inst9|DOUT[1]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[1]~36_combout\ = (\inst30|DATA[1]$latch~combout\) # (!\inst30|DATA[0]_102~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|DATA[0]_102~combout\,
	datac => \inst30|DATA[1]$latch~combout\,
	combout => \inst9|DOUT[1]~36_combout\);

-- Location: LCFF_X10_Y4_N5
\inst1|inst7|18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	sdata => \inst7|DOUT\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst7|18~regout\);

-- Location: LCCOMB_X10_Y4_N20
\inst13|DOUT[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[1]~23_combout\ = ((\inst13|process_0~0_combout\ & (\inst1|inst7|18~regout\)) # (!\inst13|process_0~0_combout\ & ((\inst1|inst|18~regout\)))) # (!\inst13|DOUT[15]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|process_0~0_combout\,
	datab => \inst1|inst7|18~regout\,
	datac => \inst1|inst|18~regout\,
	datad => \inst13|DOUT[15]~16_combout\,
	combout => \inst13|DOUT[1]~23_combout\);

-- Location: LCCOMB_X18_Y2_N26
\inst9|DOUT[1]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[1]~38_combout\ = ((\inst9|DOUT[1]~37_combout\ & (\inst9|DOUT[1]~36_combout\ & \inst13|DOUT[1]~23_combout\))) # (!\inst9|DOUT[7]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|DOUT[7]~19_combout\,
	datab => \inst9|DOUT[1]~37_combout\,
	datac => \inst9|DOUT[1]~36_combout\,
	datad => \inst13|DOUT[1]~23_combout\,
	combout => \inst9|DOUT[1]~38_combout\);

-- Location: LCFF_X18_Y2_N27
\inst7|DOUT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst9|DOUT[1]~38_combout\,
	ena => \inst7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|DOUT\(1));

-- Location: LCFF_X10_Y4_N21
\inst1|inst|18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	sdata => \inst7|DOUT\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|18~regout\);

-- Location: LCCOMB_X10_Y6_N0
\inst27|acc[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[0]~32_combout\ = (\inst1|inst|19~regout\ & (\inst27|acc\(0) $ (VCC))) # (!\inst1|inst|19~regout\ & (\inst27|acc\(0) & VCC))
-- \inst27|acc[0]~33\ = CARRY((\inst1|inst|19~regout\ & \inst27|acc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|19~regout\,
	datab => \inst27|acc\(0),
	datad => VCC,
	combout => \inst27|acc[0]~32_combout\,
	cout => \inst27|acc[0]~33\);

-- Location: LCFF_X10_Y6_N1
\inst27|acc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(0));

-- Location: LCCOMB_X10_Y6_N4
\inst27|acc[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[2]~36_combout\ = ((\inst1|inst|17~regout\ $ (\inst27|acc\(2) $ (!\inst27|acc[1]~35\)))) # (GND)
-- \inst27|acc[2]~37\ = CARRY((\inst1|inst|17~regout\ & ((\inst27|acc\(2)) # (!\inst27|acc[1]~35\))) # (!\inst1|inst|17~regout\ & (\inst27|acc\(2) & !\inst27|acc[1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|17~regout\,
	datab => \inst27|acc\(2),
	datad => VCC,
	cin => \inst27|acc[1]~35\,
	combout => \inst27|acc[2]~36_combout\,
	cout => \inst27|acc[2]~37\);

-- Location: LCFF_X10_Y6_N5
\inst27|acc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(2));

-- Location: LCCOMB_X10_Y6_N8
\inst27|acc[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[4]~40_combout\ = ((\inst1|inst|15~regout\ $ (\inst27|acc\(4) $ (!\inst27|acc[3]~39\)))) # (GND)
-- \inst27|acc[4]~41\ = CARRY((\inst1|inst|15~regout\ & ((\inst27|acc\(4)) # (!\inst27|acc[3]~39\))) # (!\inst1|inst|15~regout\ & (\inst27|acc\(4) & !\inst27|acc[3]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|15~regout\,
	datab => \inst27|acc\(4),
	datad => VCC,
	cin => \inst27|acc[3]~39\,
	combout => \inst27|acc[4]~40_combout\,
	cout => \inst27|acc[4]~41\);

-- Location: LCFF_X10_Y6_N9
\inst27|acc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(4));

-- Location: LCCOMB_X10_Y6_N14
\inst27|acc[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[7]~46_combout\ = (\inst1|inst|12~regout\ & ((\inst27|acc\(7) & (\inst27|acc[6]~45\ & VCC)) # (!\inst27|acc\(7) & (!\inst27|acc[6]~45\)))) # (!\inst1|inst|12~regout\ & ((\inst27|acc\(7) & (!\inst27|acc[6]~45\)) # (!\inst27|acc\(7) & 
-- ((\inst27|acc[6]~45\) # (GND)))))
-- \inst27|acc[7]~47\ = CARRY((\inst1|inst|12~regout\ & (!\inst27|acc\(7) & !\inst27|acc[6]~45\)) # (!\inst1|inst|12~regout\ & ((!\inst27|acc[6]~45\) # (!\inst27|acc\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|12~regout\,
	datab => \inst27|acc\(7),
	datad => VCC,
	cin => \inst27|acc[6]~45\,
	combout => \inst27|acc[7]~46_combout\,
	cout => \inst27|acc[7]~47\);

-- Location: LCFF_X10_Y6_N15
\inst27|acc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[7]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(7));

-- Location: LCCOMB_X10_Y6_N18
\inst27|acc[9]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[9]~50_combout\ = (\inst1|inst5|18~regout\ & ((\inst27|acc\(9) & (\inst27|acc[8]~49\ & VCC)) # (!\inst27|acc\(9) & (!\inst27|acc[8]~49\)))) # (!\inst1|inst5|18~regout\ & ((\inst27|acc\(9) & (!\inst27|acc[8]~49\)) # (!\inst27|acc\(9) & 
-- ((\inst27|acc[8]~49\) # (GND)))))
-- \inst27|acc[9]~51\ = CARRY((\inst1|inst5|18~regout\ & (!\inst27|acc\(9) & !\inst27|acc[8]~49\)) # (!\inst1|inst5|18~regout\ & ((!\inst27|acc[8]~49\) # (!\inst27|acc\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|18~regout\,
	datab => \inst27|acc\(9),
	datad => VCC,
	cin => \inst27|acc[8]~49\,
	combout => \inst27|acc[9]~50_combout\,
	cout => \inst27|acc[9]~51\);

-- Location: LCFF_X10_Y6_N19
\inst27|acc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[9]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(9));

-- Location: LCCOMB_X10_Y6_N22
\inst27|acc[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[11]~54_combout\ = (\inst1|inst5|16~regout\ & ((\inst27|acc\(11) & (\inst27|acc[10]~53\ & VCC)) # (!\inst27|acc\(11) & (!\inst27|acc[10]~53\)))) # (!\inst1|inst5|16~regout\ & ((\inst27|acc\(11) & (!\inst27|acc[10]~53\)) # (!\inst27|acc\(11) & 
-- ((\inst27|acc[10]~53\) # (GND)))))
-- \inst27|acc[11]~55\ = CARRY((\inst1|inst5|16~regout\ & (!\inst27|acc\(11) & !\inst27|acc[10]~53\)) # (!\inst1|inst5|16~regout\ & ((!\inst27|acc[10]~53\) # (!\inst27|acc\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|16~regout\,
	datab => \inst27|acc\(11),
	datad => VCC,
	cin => \inst27|acc[10]~53\,
	combout => \inst27|acc[11]~54_combout\,
	cout => \inst27|acc[11]~55\);

-- Location: LCFF_X10_Y6_N23
\inst27|acc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(11));

-- Location: LCCOMB_X10_Y6_N26
\inst27|acc[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[13]~58_combout\ = (\inst1|inst5|14~regout\ & ((\inst27|acc\(13) & (\inst27|acc[12]~57\ & VCC)) # (!\inst27|acc\(13) & (!\inst27|acc[12]~57\)))) # (!\inst1|inst5|14~regout\ & ((\inst27|acc\(13) & (!\inst27|acc[12]~57\)) # (!\inst27|acc\(13) & 
-- ((\inst27|acc[12]~57\) # (GND)))))
-- \inst27|acc[13]~59\ = CARRY((\inst1|inst5|14~regout\ & (!\inst27|acc\(13) & !\inst27|acc[12]~57\)) # (!\inst1|inst5|14~regout\ & ((!\inst27|acc[12]~57\) # (!\inst27|acc\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|14~regout\,
	datab => \inst27|acc\(13),
	datad => VCC,
	cin => \inst27|acc[12]~57\,
	combout => \inst27|acc[13]~58_combout\,
	cout => \inst27|acc[13]~59\);

-- Location: LCFF_X10_Y6_N27
\inst27|acc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[13]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(13));

-- Location: LCCOMB_X10_Y6_N28
\inst27|acc[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[14]~60_combout\ = ((\inst1|inst5|13~regout\ $ (\inst27|acc\(14) $ (!\inst27|acc[13]~59\)))) # (GND)
-- \inst27|acc[14]~61\ = CARRY((\inst1|inst5|13~regout\ & ((\inst27|acc\(14)) # (!\inst27|acc[13]~59\))) # (!\inst1|inst5|13~regout\ & (\inst27|acc\(14) & !\inst27|acc[13]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|13~regout\,
	datab => \inst27|acc\(14),
	datad => VCC,
	cin => \inst27|acc[13]~59\,
	combout => \inst27|acc[14]~60_combout\,
	cout => \inst27|acc[14]~61\);

-- Location: LCFF_X10_Y6_N29
\inst27|acc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[14]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(14));

-- Location: LCCOMB_X10_Y6_N30
\inst27|acc[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[15]~62_combout\ = (\inst1|inst5|12~regout\ & ((\inst27|acc\(15) & (\inst27|acc[14]~61\ & VCC)) # (!\inst27|acc\(15) & (!\inst27|acc[14]~61\)))) # (!\inst1|inst5|12~regout\ & ((\inst27|acc\(15) & (!\inst27|acc[14]~61\)) # (!\inst27|acc\(15) & 
-- ((\inst27|acc[14]~61\) # (GND)))))
-- \inst27|acc[15]~63\ = CARRY((\inst1|inst5|12~regout\ & (!\inst27|acc\(15) & !\inst27|acc[14]~61\)) # (!\inst1|inst5|12~regout\ & ((!\inst27|acc[14]~61\) # (!\inst27|acc\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|12~regout\,
	datab => \inst27|acc\(15),
	datad => VCC,
	cin => \inst27|acc[14]~61\,
	combout => \inst27|acc[15]~62_combout\,
	cout => \inst27|acc[15]~63\);

-- Location: LCFF_X10_Y6_N31
\inst27|acc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[15]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(15));

-- Location: LCCOMB_X10_Y5_N0
\inst27|acc[16]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[16]~64_combout\ = ((\inst1|inst7|19~regout\ $ (\inst27|acc\(16) $ (!\inst27|acc[15]~63\)))) # (GND)
-- \inst27|acc[16]~65\ = CARRY((\inst1|inst7|19~regout\ & ((\inst27|acc\(16)) # (!\inst27|acc[15]~63\))) # (!\inst1|inst7|19~regout\ & (\inst27|acc\(16) & !\inst27|acc[15]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|19~regout\,
	datab => \inst27|acc\(16),
	datad => VCC,
	cin => \inst27|acc[15]~63\,
	combout => \inst27|acc[16]~64_combout\,
	cout => \inst27|acc[16]~65\);

-- Location: LCFF_X10_Y5_N1
\inst27|acc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[16]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(16));

-- Location: LCCOMB_X10_Y5_N2
\inst27|acc[17]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[17]~66_combout\ = (\inst1|inst7|18~regout\ & ((\inst27|acc\(17) & (\inst27|acc[16]~65\ & VCC)) # (!\inst27|acc\(17) & (!\inst27|acc[16]~65\)))) # (!\inst1|inst7|18~regout\ & ((\inst27|acc\(17) & (!\inst27|acc[16]~65\)) # (!\inst27|acc\(17) & 
-- ((\inst27|acc[16]~65\) # (GND)))))
-- \inst27|acc[17]~67\ = CARRY((\inst1|inst7|18~regout\ & (!\inst27|acc\(17) & !\inst27|acc[16]~65\)) # (!\inst1|inst7|18~regout\ & ((!\inst27|acc[16]~65\) # (!\inst27|acc\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|18~regout\,
	datab => \inst27|acc\(17),
	datad => VCC,
	cin => \inst27|acc[16]~65\,
	combout => \inst27|acc[17]~66_combout\,
	cout => \inst27|acc[17]~67\);

-- Location: LCFF_X10_Y5_N3
\inst27|acc[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[17]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(17));

-- Location: LCCOMB_X10_Y5_N4
\inst27|acc[18]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[18]~68_combout\ = ((\inst1|inst7|17~regout\ $ (\inst27|acc\(18) $ (!\inst27|acc[17]~67\)))) # (GND)
-- \inst27|acc[18]~69\ = CARRY((\inst1|inst7|17~regout\ & ((\inst27|acc\(18)) # (!\inst27|acc[17]~67\))) # (!\inst1|inst7|17~regout\ & (\inst27|acc\(18) & !\inst27|acc[17]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|17~regout\,
	datab => \inst27|acc\(18),
	datad => VCC,
	cin => \inst27|acc[17]~67\,
	combout => \inst27|acc[18]~68_combout\,
	cout => \inst27|acc[18]~69\);

-- Location: LCFF_X10_Y5_N5
\inst27|acc[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[18]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(18));

-- Location: LCCOMB_X10_Y5_N8
\inst27|acc[20]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[20]~72_combout\ = ((\inst1|inst7|15~regout\ $ (\inst27|acc\(20) $ (!\inst27|acc[19]~71\)))) # (GND)
-- \inst27|acc[20]~73\ = CARRY((\inst1|inst7|15~regout\ & ((\inst27|acc\(20)) # (!\inst27|acc[19]~71\))) # (!\inst1|inst7|15~regout\ & (\inst27|acc\(20) & !\inst27|acc[19]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|15~regout\,
	datab => \inst27|acc\(20),
	datad => VCC,
	cin => \inst27|acc[19]~71\,
	combout => \inst27|acc[20]~72_combout\,
	cout => \inst27|acc[20]~73\);

-- Location: LCFF_X10_Y5_N9
\inst27|acc[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[20]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(20));

-- Location: LCCOMB_X10_Y5_N12
\inst27|acc[22]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[22]~76_combout\ = ((\inst27|acc\(22) $ (\inst1|inst7|13~regout\ $ (!\inst27|acc[21]~75\)))) # (GND)
-- \inst27|acc[22]~77\ = CARRY((\inst27|acc\(22) & ((\inst1|inst7|13~regout\) # (!\inst27|acc[21]~75\))) # (!\inst27|acc\(22) & (\inst1|inst7|13~regout\ & !\inst27|acc[21]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|acc\(22),
	datab => \inst1|inst7|13~regout\,
	datad => VCC,
	cin => \inst27|acc[21]~75\,
	combout => \inst27|acc[22]~76_combout\,
	cout => \inst27|acc[22]~77\);

-- Location: LCFF_X10_Y5_N13
\inst27|acc[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[22]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(22));

-- Location: LCCOMB_X10_Y5_N14
\inst27|acc[23]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[23]~78_combout\ = (\inst1|inst7|12~regout\ & ((\inst27|acc\(23) & (\inst27|acc[22]~77\ & VCC)) # (!\inst27|acc\(23) & (!\inst27|acc[22]~77\)))) # (!\inst1|inst7|12~regout\ & ((\inst27|acc\(23) & (!\inst27|acc[22]~77\)) # (!\inst27|acc\(23) & 
-- ((\inst27|acc[22]~77\) # (GND)))))
-- \inst27|acc[23]~79\ = CARRY((\inst1|inst7|12~regout\ & (!\inst27|acc\(23) & !\inst27|acc[22]~77\)) # (!\inst1|inst7|12~regout\ & ((!\inst27|acc[22]~77\) # (!\inst27|acc\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|12~regout\,
	datab => \inst27|acc\(23),
	datad => VCC,
	cin => \inst27|acc[22]~77\,
	combout => \inst27|acc[23]~78_combout\,
	cout => \inst27|acc[23]~79\);

-- Location: LCFF_X10_Y5_N15
\inst27|acc[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[23]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(23));

-- Location: LCCOMB_X10_Y5_N16
\inst27|acc[24]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[24]~80_combout\ = ((\inst27|acc\(24) $ (\inst1|inst9|19~regout\ $ (!\inst27|acc[23]~79\)))) # (GND)
-- \inst27|acc[24]~81\ = CARRY((\inst27|acc\(24) & ((\inst1|inst9|19~regout\) # (!\inst27|acc[23]~79\))) # (!\inst27|acc\(24) & (\inst1|inst9|19~regout\ & !\inst27|acc[23]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|acc\(24),
	datab => \inst1|inst9|19~regout\,
	datad => VCC,
	cin => \inst27|acc[23]~79\,
	combout => \inst27|acc[24]~80_combout\,
	cout => \inst27|acc[24]~81\);

-- Location: LCFF_X10_Y5_N17
\inst27|acc[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[24]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(24));

-- Location: LCCOMB_X10_Y5_N18
\inst27|acc[25]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[25]~82_combout\ = (\inst27|acc\(25) & ((\inst1|inst9|18~regout\ & (\inst27|acc[24]~81\ & VCC)) # (!\inst1|inst9|18~regout\ & (!\inst27|acc[24]~81\)))) # (!\inst27|acc\(25) & ((\inst1|inst9|18~regout\ & (!\inst27|acc[24]~81\)) # 
-- (!\inst1|inst9|18~regout\ & ((\inst27|acc[24]~81\) # (GND)))))
-- \inst27|acc[25]~83\ = CARRY((\inst27|acc\(25) & (!\inst1|inst9|18~regout\ & !\inst27|acc[24]~81\)) # (!\inst27|acc\(25) & ((!\inst27|acc[24]~81\) # (!\inst1|inst9|18~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|acc\(25),
	datab => \inst1|inst9|18~regout\,
	datad => VCC,
	cin => \inst27|acc[24]~81\,
	combout => \inst27|acc[25]~82_combout\,
	cout => \inst27|acc[25]~83\);

-- Location: LCFF_X10_Y5_N19
\inst27|acc[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[25]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(25));

-- Location: LCCOMB_X10_Y5_N20
\inst27|acc[26]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[26]~84_combout\ = ((\inst27|acc\(26) $ (\inst1|inst9|17~regout\ $ (!\inst27|acc[25]~83\)))) # (GND)
-- \inst27|acc[26]~85\ = CARRY((\inst27|acc\(26) & ((\inst1|inst9|17~regout\) # (!\inst27|acc[25]~83\))) # (!\inst27|acc\(26) & (\inst1|inst9|17~regout\ & !\inst27|acc[25]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|acc\(26),
	datab => \inst1|inst9|17~regout\,
	datad => VCC,
	cin => \inst27|acc[25]~83\,
	combout => \inst27|acc[26]~84_combout\,
	cout => \inst27|acc[26]~85\);

-- Location: LCFF_X10_Y5_N21
\inst27|acc[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[26]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(26));

-- Location: LCCOMB_X10_Y5_N22
\inst27|acc[27]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[27]~86_combout\ = (\inst1|inst9|16~regout\ & ((\inst27|acc\(27) & (\inst27|acc[26]~85\ & VCC)) # (!\inst27|acc\(27) & (!\inst27|acc[26]~85\)))) # (!\inst1|inst9|16~regout\ & ((\inst27|acc\(27) & (!\inst27|acc[26]~85\)) # (!\inst27|acc\(27) & 
-- ((\inst27|acc[26]~85\) # (GND)))))
-- \inst27|acc[27]~87\ = CARRY((\inst1|inst9|16~regout\ & (!\inst27|acc\(27) & !\inst27|acc[26]~85\)) # (!\inst1|inst9|16~regout\ & ((!\inst27|acc[26]~85\) # (!\inst27|acc\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst9|16~regout\,
	datab => \inst27|acc\(27),
	datad => VCC,
	cin => \inst27|acc[26]~85\,
	combout => \inst27|acc[27]~86_combout\,
	cout => \inst27|acc[27]~87\);

-- Location: LCFF_X10_Y5_N23
\inst27|acc[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[27]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(27));

-- Location: LCCOMB_X10_Y5_N24
\inst27|acc[28]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[28]~88_combout\ = ((\inst27|acc\(28) $ (\inst1|inst9|15~regout\ $ (!\inst27|acc[27]~87\)))) # (GND)
-- \inst27|acc[28]~89\ = CARRY((\inst27|acc\(28) & ((\inst1|inst9|15~regout\) # (!\inst27|acc[27]~87\))) # (!\inst27|acc\(28) & (\inst1|inst9|15~regout\ & !\inst27|acc[27]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|acc\(28),
	datab => \inst1|inst9|15~regout\,
	datad => VCC,
	cin => \inst27|acc[27]~87\,
	combout => \inst27|acc[28]~88_combout\,
	cout => \inst27|acc[28]~89\);

-- Location: LCFF_X10_Y5_N25
\inst27|acc[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[28]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(28));

-- Location: LCCOMB_X10_Y5_N26
\inst27|acc[29]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[29]~90_combout\ = (\inst27|acc\(29) & ((\inst1|inst9|14~regout\ & (\inst27|acc[28]~89\ & VCC)) # (!\inst1|inst9|14~regout\ & (!\inst27|acc[28]~89\)))) # (!\inst27|acc\(29) & ((\inst1|inst9|14~regout\ & (!\inst27|acc[28]~89\)) # 
-- (!\inst1|inst9|14~regout\ & ((\inst27|acc[28]~89\) # (GND)))))
-- \inst27|acc[29]~91\ = CARRY((\inst27|acc\(29) & (!\inst1|inst9|14~regout\ & !\inst27|acc[28]~89\)) # (!\inst27|acc\(29) & ((!\inst27|acc[28]~89\) # (!\inst1|inst9|14~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|acc\(29),
	datab => \inst1|inst9|14~regout\,
	datad => VCC,
	cin => \inst27|acc[28]~89\,
	combout => \inst27|acc[29]~90_combout\,
	cout => \inst27|acc[29]~91\);

-- Location: LCFF_X10_Y5_N27
\inst27|acc[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[29]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(29));

-- Location: LCCOMB_X10_Y5_N28
\inst27|acc[30]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[30]~92_combout\ = ((\inst1|inst9|13~regout\ $ (\inst27|acc\(30) $ (!\inst27|acc[29]~91\)))) # (GND)
-- \inst27|acc[30]~93\ = CARRY((\inst1|inst9|13~regout\ & ((\inst27|acc\(30)) # (!\inst27|acc[29]~91\))) # (!\inst1|inst9|13~regout\ & (\inst27|acc\(30) & !\inst27|acc[29]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst9|13~regout\,
	datab => \inst27|acc\(30),
	datad => VCC,
	cin => \inst27|acc[29]~91\,
	combout => \inst27|acc[30]~92_combout\,
	cout => \inst27|acc[30]~93\);

-- Location: LCFF_X10_Y5_N29
\inst27|acc[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[30]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(30));

-- Location: LCCOMB_X10_Y5_N30
\inst27|acc[31]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|acc[31]~94_combout\ = \inst27|acc\(31) $ (\inst27|acc[30]~93\ $ (\inst1|inst9|12~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst27|acc\(31),
	datad => \inst1|inst9|12~regout\,
	cin => \inst27|acc[30]~93\,
	combout => \inst27|acc[31]~94_combout\);

-- Location: LCFF_X10_Y5_N31
\inst27|acc[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst27|acc[31]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|acc\(31));

-- Location: LCCOMB_X18_Y2_N0
\inst8|DOUT[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|DOUT[5]~feeder_combout\ = \inst9|DOUT[5]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|DOUT[5]~26_combout\,
	combout => \inst8|DOUT[5]~feeder_combout\);

-- Location: LCFF_X18_Y2_N1
\inst8|DOUT[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst8|DOUT[5]~feeder_combout\,
	ena => \inst|ALT_INV_CS_RAM_WR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|DOUT\(5));

-- Location: LCFF_X12_Y2_N27
\inst8|DOUT[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst9|DOUT[6]~23_combout\,
	ena => \inst|ALT_INV_CS_RAM_WR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|DOUT\(6));

-- Location: LCFF_X12_Y2_N25
\inst8|DOUT[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst9|DOUT[7]~20_combout\,
	ena => \inst|ALT_INV_CS_RAM_WR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|DOUT\(7));

-- Location: M4K_X11_Y5
\inst70|altsyncram_component|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM2PORT:inst70|altsyncram:altsyncram_component|altsyncram_acr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \inst4~combout\,
	portbrewe => VCC,
	clk0 => \inst6|altpll_component|_clk2~clkctrl_outclk\,
	portadatain => \inst70|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst70|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \inst70|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst70|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y4_N28
\inst9|DOUT[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[5]~25_combout\ = (\inst|CS_RAM_RD~regout\) # (((\inst70|altsyncram_component|auto_generated|q_b\(5)) # (\NOE~combout\)) # (!\NWE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CS_RAM_RD~regout\,
	datab => \NWE~combout\,
	datac => \inst70|altsyncram_component|auto_generated|q_b\(5),
	datad => \NOE~combout\,
	combout => \inst9|DOUT[5]~25_combout\);

-- Location: LCCOMB_X8_Y2_N2
\inst9|DOUT[5]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[5]~46_combout\ = (\inst13|DOUT[5]~19_combout\ & (\inst9|DOUT[5]~25_combout\ & ((\inst30|DATA[5]$latch~combout\) # (!\inst30|DATA[0]_102~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|DATA[5]$latch~combout\,
	datab => \inst30|DATA[0]_102~combout\,
	datac => \inst13|DOUT[5]~19_combout\,
	datad => \inst9|DOUT[5]~25_combout\,
	combout => \inst9|DOUT[5]~46_combout\);

-- Location: LCFF_X12_Y2_N11
\inst7|DOUT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst9|DOUT[4]~29_combout\,
	ena => \inst7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|DOUT\(4));

-- Location: LCCOMB_X10_Y4_N22
\inst1|inst|15~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|15~feeder_combout\ = \inst7|DOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|DOUT\(4),
	combout => \inst1|inst|15~feeder_combout\);

-- Location: LCFF_X10_Y4_N23
\inst1|inst|15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	datain => \inst1|inst|15~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|15~regout\);

-- Location: LCFF_X10_Y4_N7
\inst1|inst7|15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	sdata => \inst7|DOUT\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst7|15~regout\);

-- Location: LCCOMB_X10_Y4_N6
\inst13|DOUT[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[4]~20_combout\ = ((\inst13|process_0~0_combout\ & ((\inst1|inst7|15~regout\))) # (!\inst13|process_0~0_combout\ & (\inst1|inst|15~regout\))) # (!\inst13|DOUT[15]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|process_0~0_combout\,
	datab => \inst1|inst|15~regout\,
	datac => \inst1|inst7|15~regout\,
	datad => \inst13|DOUT[15]~16_combout\,
	combout => \inst13|DOUT[4]~20_combout\);

-- Location: LCCOMB_X8_Y2_N20
\inst9|DOUT[4]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[4]~47_combout\ = (\inst13|DOUT[4]~20_combout\ & (\inst9|DOUT[4]~28_combout\ & ((\inst30|DATA[4]$latch~combout\) # (!\inst30|DATA[0]_102~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|DATA[4]$latch~combout\,
	datab => \inst30|DATA[0]_102~combout\,
	datac => \inst13|DOUT[4]~20_combout\,
	datad => \inst9|DOUT[4]~28_combout\,
	combout => \inst9|DOUT[4]~47_combout\);

-- Location: LCCOMB_X18_Y2_N12
\inst9|DOUT[3]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[3]~48_combout\ = (\inst13|DOUT[3]~21_combout\ & (\inst9|DOUT[3]~31_combout\ & ((\inst30|DATA[3]$latch~combout\) # (!\inst30|DATA[0]_102~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|DATA[0]_102~combout\,
	datab => \inst30|DATA[3]$latch~combout\,
	datac => \inst13|DOUT[3]~21_combout\,
	datad => \inst9|DOUT[3]~31_combout\,
	combout => \inst9|DOUT[3]~48_combout\);

-- Location: LCCOMB_X18_Y2_N4
\inst30|DATA[2]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|DATA[2]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & (\AD~13\)) # (!GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & ((\inst30|DATA[2]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD~13\,
	datab => \inst|nCS~regout\,
	datac => \inst30|DATA[2]$latch~combout\,
	datad => \inst30|DATA[0]~0clkctrl_outclk\,
	combout => \inst30|DATA[2]$latch~combout\);

-- Location: LCCOMB_X18_Y2_N28
\inst9|DOUT[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[2]~33_combout\ = (\inst30|DATA[2]$latch~combout\) # (!\inst30|DATA[0]_102~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|DATA[0]_102~combout\,
	datac => \inst30|DATA[2]$latch~combout\,
	combout => \inst9|DOUT[2]~33_combout\);

-- Location: LCCOMB_X14_Y4_N26
\inst9|DOUT[2]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[2]~34_combout\ = (\inst70|altsyncram_component|auto_generated|q_b\(2)) # (((\inst|CS_RAM_RD~regout\) # (\NOE~combout\)) # (!\NWE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst70|altsyncram_component|auto_generated|q_b\(2),
	datab => \NWE~combout\,
	datac => \inst|CS_RAM_RD~regout\,
	datad => \NOE~combout\,
	combout => \inst9|DOUT[2]~34_combout\);

-- Location: LCCOMB_X18_Y2_N30
\inst9|DOUT[2]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[2]~35_combout\ = ((\inst13|DOUT[2]~22_combout\ & (\inst9|DOUT[2]~33_combout\ & \inst9|DOUT[2]~34_combout\))) # (!\inst9|DOUT[7]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DOUT[2]~22_combout\,
	datab => \inst9|DOUT[2]~33_combout\,
	datac => \inst9|DOUT[7]~19_combout\,
	datad => \inst9|DOUT[2]~34_combout\,
	combout => \inst9|DOUT[2]~35_combout\);

-- Location: LCFF_X18_Y2_N31
\inst7|DOUT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst9|DOUT[2]~35_combout\,
	ena => \inst7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|DOUT\(2));

-- Location: LCCOMB_X10_Y4_N2
\inst1|inst|17~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|17~feeder_combout\ = \inst7|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|DOUT\(2),
	combout => \inst1|inst|17~feeder_combout\);

-- Location: LCFF_X10_Y4_N3
\inst1|inst|17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	datain => \inst1|inst|17~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|17~regout\);

-- Location: LCFF_X10_Y4_N11
\inst1|inst7|17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	sdata => \inst7|DOUT\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst7|17~regout\);

-- Location: LCCOMB_X10_Y4_N10
\inst13|DOUT[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[2]~22_combout\ = ((\inst13|process_0~0_combout\ & ((\inst1|inst7|17~regout\))) # (!\inst13|process_0~0_combout\ & (\inst1|inst|17~regout\))) # (!\inst13|DOUT[15]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|process_0~0_combout\,
	datab => \inst1|inst|17~regout\,
	datac => \inst1|inst7|17~regout\,
	datad => \inst13|DOUT[15]~16_combout\,
	combout => \inst13|DOUT[2]~22_combout\);

-- Location: LCCOMB_X18_Y2_N6
\inst9|DOUT[2]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[2]~49_combout\ = (\inst13|DOUT[2]~22_combout\ & (\inst9|DOUT[2]~34_combout\ & ((\inst30|DATA[2]$latch~combout\) # (!\inst30|DATA[0]_102~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DOUT[2]~22_combout\,
	datab => \inst30|DATA[0]_102~combout\,
	datac => \inst30|DATA[2]$latch~combout\,
	datad => \inst9|DOUT[2]~34_combout\,
	combout => \inst9|DOUT[2]~49_combout\);

-- Location: LCCOMB_X18_Y2_N24
\inst9|DOUT[1]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[1]~50_combout\ = (\inst13|DOUT[1]~23_combout\ & (\inst9|DOUT[1]~37_combout\ & ((\inst30|DATA[1]$latch~combout\) # (!\inst30|DATA[0]_102~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DOUT[1]~23_combout\,
	datab => \inst30|DATA[0]_102~combout\,
	datac => \inst30|DATA[1]$latch~combout\,
	datad => \inst9|DOUT[1]~37_combout\,
	combout => \inst9|DOUT[1]~50_combout\);

-- Location: LCCOMB_X12_Y4_N30
\inst30|DATA[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|DATA[0]$latch~combout\ = (!\inst|nCS~regout\ & ((GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & (\AD~15\)) # (!GLOBAL(\inst30|DATA[0]~0clkctrl_outclk\) & ((\inst30|DATA[0]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nCS~regout\,
	datab => \AD~15\,
	datac => \inst30|DATA[0]$latch~combout\,
	datad => \inst30|DATA[0]~0clkctrl_outclk\,
	combout => \inst30|DATA[0]$latch~combout\);

-- Location: LCCOMB_X12_Y4_N4
\inst9|DOUT[0]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[0]~39_combout\ = (\inst30|DATA[0]$latch~combout\) # (!\inst30|DATA[0]_102~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|DATA[0]_102~combout\,
	datad => \inst30|DATA[0]$latch~combout\,
	combout => \inst9|DOUT[0]~39_combout\);

-- Location: LCCOMB_X14_Y4_N20
\inst9|DOUT[0]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[0]~40_combout\ = (\inst70|altsyncram_component|auto_generated|q_b\(0)) # (((\inst|CS_RAM_RD~regout\) # (\NOE~combout\)) # (!\NWE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst70|altsyncram_component|auto_generated|q_b\(0),
	datab => \NWE~combout\,
	datac => \inst|CS_RAM_RD~regout\,
	datad => \NOE~combout\,
	combout => \inst9|DOUT[0]~40_combout\);

-- Location: LCCOMB_X12_Y4_N0
\inst9|DOUT[0]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[0]~41_combout\ = ((\inst9|DOUT[0]~39_combout\ & (\inst13|DOUT[0]~24_combout\ & \inst9|DOUT[0]~40_combout\))) # (!\inst9|DOUT[7]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|DOUT[7]~19_combout\,
	datab => \inst9|DOUT[0]~39_combout\,
	datac => \inst13|DOUT[0]~24_combout\,
	datad => \inst9|DOUT[0]~40_combout\,
	combout => \inst9|DOUT[0]~41_combout\);

-- Location: LCCOMB_X12_Y4_N22
\inst7|DOUT[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|DOUT[0]~feeder_combout\ = \inst9|DOUT[0]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|DOUT[0]~41_combout\,
	combout => \inst7|DOUT[0]~feeder_combout\);

-- Location: LCFF_X12_Y4_N23
\inst7|DOUT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst7|DOUT[0]~feeder_combout\,
	ena => \inst7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|DOUT\(0));

-- Location: LCFF_X10_Y4_N31
\inst1|inst7|19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	sdata => \inst7|DOUT\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst7|19~regout\);

-- Location: LCFF_X10_Y4_N15
\inst1|inst|19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst19~clkctrl_outclk\,
	sdata => \inst7|DOUT\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|19~regout\);

-- Location: LCCOMB_X10_Y4_N14
\inst13|DOUT[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DOUT[0]~24_combout\ = ((\inst13|process_0~0_combout\ & (\inst1|inst7|19~regout\)) # (!\inst13|process_0~0_combout\ & ((\inst1|inst|19~regout\)))) # (!\inst13|DOUT[15]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|process_0~0_combout\,
	datab => \inst1|inst7|19~regout\,
	datac => \inst1|inst|19~regout\,
	datad => \inst13|DOUT[15]~16_combout\,
	combout => \inst13|DOUT[0]~24_combout\);

-- Location: LCCOMB_X12_Y4_N20
\inst9|DOUT[0]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|DOUT[0]~51_combout\ = (\inst13|DOUT[0]~24_combout\ & (\inst9|DOUT[0]~40_combout\ & ((\inst30|DATA[0]$latch~combout\) # (!\inst30|DATA[0]_102~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|DATA[0]_102~combout\,
	datab => \inst30|DATA[0]$latch~combout\,
	datac => \inst13|DOUT[0]~24_combout\,
	datad => \inst9|DOUT[0]~40_combout\,
	combout => \inst9|DOUT[0]~51_combout\);

-- Location: LCCOMB_X15_Y1_N8
inst4 : cycloneii_lcell_comb
-- Equation(s):
-- \inst4~combout\ = (!\NWE~combout\ & !\inst|CS_RAM_WR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NWE~combout\,
	datad => \inst|CS_RAM_WR~regout\,
	combout => \inst4~combout\);

-- Location: LCFF_X12_Y4_N1
\inst8|DOUT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst9|DOUT[0]~41_combout\,
	ena => \inst|ALT_INV_CS_RAM_WR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|DOUT\(0));

-- Location: LCCOMB_X18_Y2_N22
\inst8|DOUT[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|DOUT[1]~feeder_combout\ = \inst9|DOUT[1]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|DOUT[1]~38_combout\,
	combout => \inst8|DOUT[1]~feeder_combout\);

-- Location: LCFF_X18_Y2_N23
\inst8|DOUT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst8|DOUT[1]~feeder_combout\,
	ena => \inst|ALT_INV_CS_RAM_WR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|DOUT\(1));

-- Location: LCCOMB_X18_Y2_N20
\inst8|DOUT[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|DOUT[2]~feeder_combout\ = \inst9|DOUT[2]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|DOUT[2]~35_combout\,
	combout => \inst8|DOUT[2]~feeder_combout\);

-- Location: LCFF_X18_Y2_N21
\inst8|DOUT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst8|DOUT[2]~feeder_combout\,
	ena => \inst|ALT_INV_CS_RAM_WR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|DOUT\(2));

-- Location: LCCOMB_X18_Y2_N2
\inst8|DOUT[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|DOUT[3]~feeder_combout\ = \inst9|DOUT[3]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|DOUT[3]~32_combout\,
	combout => \inst8|DOUT[3]~feeder_combout\);

-- Location: LCFF_X18_Y2_N3
\inst8|DOUT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \NWE~clkctrl_outclk\,
	datain => \inst8|DOUT[3]~feeder_combout\,
	ena => \inst|ALT_INV_CS_RAM_WR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|DOUT\(3));

-- Location: M4K_X11_Y3
\inst70|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM2PORT:inst70|altsyncram:altsyncram_component|altsyncram_acr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \inst4~combout\,
	portbrewe => VCC,
	clk0 => \inst6|altpll_component|_clk2~clkctrl_outclk\,
	portadatain => \inst70|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst70|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst70|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst70|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_INT4);

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
	datain => \inst70|altsyncram_component|auto_generated|q_b\(7),
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
	datain => \inst70|altsyncram_component|auto_generated|q_b\(6),
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
	datain => \inst70|altsyncram_component|auto_generated|q_b\(5),
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
	datain => \inst70|altsyncram_component|auto_generated|q_b\(4),
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
	datain => \inst70|altsyncram_component|auto_generated|q_b\(3),
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
	datain => \inst70|altsyncram_component|auto_generated|q_b\(2),
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
	datain => \inst70|altsyncram_component|auto_generated|q_b\(1),
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
	datain => \inst70|altsyncram_component|auto_generated|q_b\(0),
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
	datain => \inst27|acc\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RAMADDR(31));

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
	padio => ww_COUT);

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
	padio => ww_DIN(11));

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
	padio => ww_DIN(10));

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
	padio => ww_DIN(9));

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
	padio => ww_DIN(8));

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
	padio => ww_DIN(7));

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
	padio => ww_DIN(6));

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
	padio => ww_DIN(5));

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
	padio => ww_DIN(4));

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
	padio => ww_DIN(3));

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
	padio => ww_DIN(2));

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
	padio => ww_DIN(1));

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
	padio => ww_DIN(0));
END structure;


