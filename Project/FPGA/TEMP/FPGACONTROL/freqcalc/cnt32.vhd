library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity cnt32 is
port(	clk: in std_logic; --input clock signal
		cs: in std_logic; --input clear signal
		clr:	in std_logic; --input cs signal
		qq: buffer std_logic_vector(31 downto 0); --buffer signal
		co: out std_logic --output carry signal
	);
end cnt32;

architecture one of cnt32 is
begin
	process(clk, clr, cs)
	begin
		if(clr = '1') then
			qq <= "00000000000000000000000000000000";
		elsif(clk'event and clk = '1') then
			if(cs = '1') then
				if(qq = "1111111111111111111111111111111111") then
					qq <="0000000000000000000000000000000000";
				else
					qq <= qq + 1;
				end if;
			end if;
		end if;
	end process;
	
	process(qq)
	begin
		if(qq = "1111111111111111111111111111111111") then
			co <= '1';
		else
			co <= '0';
		end if;
	end process;
end one;