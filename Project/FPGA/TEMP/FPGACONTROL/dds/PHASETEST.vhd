library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity PHASETEST is
port
(
DOUT: out std_logic;
RDL: in std_logic;
RDH: in std_logic
);
end PHASETEST;

architecture one of PHASETEST is
SIGNAL START: STD_LOGIC:='0';
begin
	process(RDL)
	begin
		if(RDL = '0') then
			START <= '1';
		end if;
		DOUT<=START;
	end process;
end one;