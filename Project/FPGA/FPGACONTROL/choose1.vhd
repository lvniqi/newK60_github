library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity choose1 is
port
(
DIN: in std_logic_vector(7 downto 0);
DOUT: out std_logic_vector(7 downto 0);
RD: in std_logic;
NWE: IN STD_LOGIC
);
end choose1;

architecture one of choose1 is
begin
	process(RD, DIN)
	begin
		IF(NWE = '1') THEN
				if(RD = '0') then
					DOUT <= DIN;
					--DOUT<="11111111";
				ELSE
					DOUT <= "ZZZZZZZZ";
				END IF;
		ELSE
			DOUT <= "ZZZZZZZZ";
		END IF;
	end process;
end one;