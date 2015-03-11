library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TS12 is
port
(
en: in std_logic;
di: in std_logic_vector(11 downto 0);
do: out std_logic_vector(11 downto 0)
);
end TS12;

architecture one of TS12 is
begin
	process(en, di)
	begin
		if en = '1' then
			do<=di;
		else
			do <= "ZZZZZZZZZZZZ";
		end if;
	end process;
end one;