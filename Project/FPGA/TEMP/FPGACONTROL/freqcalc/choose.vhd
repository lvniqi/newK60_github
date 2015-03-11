library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity choose is
port
(
DIN: in std_logic_vector(31 downto 0);
DOUT: out std_logic_vector(15 downto 0);
RDL: in std_logic;
RDH: in std_logic
);
end choose;

architecture one of choose is
begin
	process(RDL, RDH, DIN)
	begin
		if(RDH = '0') then
			DOUT <= DIN(31 downto 16);
		elsif(RDL = '0') then
			DOUT <= DIN(15 downto 0);
		else
			DOUT <= (others=>'Z');
		end if;
	end process;
end one;