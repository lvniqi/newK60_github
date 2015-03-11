library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity latch32 is
port
(
le: in std_logic;
dd: in std_logic_vector(31 downto 0);
qq: out std_logic_vector(31 downto 0)
);
end latch32;

architecture one of latch32 is
begin
	process(le, dd)
	begin
		if(le = '1') then
			qq <= dd;
		end if;
	end process;
end one;