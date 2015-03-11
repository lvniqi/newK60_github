library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity div10 is
port
(
clkin: in std_logic;
clkout: out std_logic
);
end div10;

architecture one of div10 is
signal temp: std_logic_vector(3 downto 0);
signal clkouttemp: std_logic;
begin
	process(clkin)
	begin
		if(clkin'event and clkin = '1') then
			if(temp = 10) then
				temp <= (others=>'0');
				clkouttemp <= '1';
			end if;
			
			if(temp = 0) then
				clkouttemp <= '1';
			end if;
			
			if(temp = 5) then
				clkouttemp <= '0';
			end if;
			
			temp <= temp + 1;
			clkout <= clkouttemp;
		end if;
	end process;
end one;