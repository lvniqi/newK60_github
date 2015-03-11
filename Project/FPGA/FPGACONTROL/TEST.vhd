library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity TEST is
port
(
DIN: in std_logic_vector(15 downto 0);
DOUT: out std_logic_vector(31 downto 0);
WRL: in std_logic;
WRH: in std_logic;
NOE: IN STD_LOGIC
);
end TEST;

architecture one of TEST is
SIGNAL S: std_logic_vector(31 downto 0);
begin
	process(WRL, WRH, DIN, NOE)
	begin
		--IF(NOE = '1') THEN
			--IF(NOE = '0') THEN
				if(WRL = '0') then
					--DOUT <= DIN(15 downto 0);
					DOUT<="00000000000000000000000000000011";
				ELSIF(WRH = '0') then
					--DOUT <= DIN(15 downto 0);
					 DOUT<= "00000000000000000000000000001111";
				ELSE
					DOUT <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
				END IF;
		--ELSE
			--DOUT <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		--END IF;
	end process;
end one;