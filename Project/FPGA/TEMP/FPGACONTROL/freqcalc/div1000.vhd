library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity div1000 is
port
(
clkin: in std_logic;
clkout: out std_logic
);
end div1000;

architecture one of div1000 is
signal temp: std_logic_vector(9 downto 0);
signal clkouttemp: std_logic;
begin
	process(clkin)
	begin
		if(clkin'event and clkin = '1') then
			if(temp = 1000) then
				temp <= (others=>'0');
				clkouttemp <= '1';
			end if;
			
			if(temp = 0) then
				clkouttemp <= '1';
			end if;
			
			if(temp = 500) then
				clkouttemp <= '0';
			end if;
			
			temp <= temp + 1;
			clkout <= clkouttemp;
		end if;
	end process;
end one;