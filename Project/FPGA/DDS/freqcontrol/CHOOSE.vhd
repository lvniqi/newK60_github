library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity CHOOSE is
port
(
DIN: in std_logic_vector(31 downto 0);
DOUT: out std_logic_vector(15 downto 0);
RDL: in std_logic;
RDH: in std_logic;
NWE: IN STD_LOGIC
);
end CHOOSE;

architecture one of CHOOSE is
begin
	process(RDL, RDH, DIN)
	begin
		IF(NWE = '1') THEN
				if(RDL = '0' AND RDH = '1') then
					DOUT <= DIN(15 downto 0);
					--DOUT<="0000000000000011";
				ELSIF(RDH = '0' AND RDL = '1') then
					DOUT <= DIN(31 downto 16);
					--DOUT <= "0000000000001111";
				ELSE
					DOUT <= "ZZZZZZZZZZZZZZZZ";
					--DOUT <= "0000000000000000";
				END IF;
		ELSE
			DOUT <= "ZZZZZZZZZZZZZZZZ";
			--DOUT <= "0000000000000001";
		END IF;
	end process;
end one;