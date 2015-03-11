library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity PHASE_ACC is
port
(
	FREQIN:in std_logic_vector(31 downto 0);
	CLK:in std_logic;
	ROMADDR:out std_logic_vector(7 downto 0)
);
end PHASE_ACC;

architecture one of PHASE_ACC is
signal ACC:std_logic_vector(31 downto 0);
begin
	process(CLK)
	begin
		if(CLK'event and CLK='1')
		then
			ACC<=ACC+FREQIN;
			--acc<=acc+"00000000000000110100011011011100";
		end if;
	end process;
	ROMADDR<=ACC(31 downto 24);						
end one;