library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity frediv_25 is
port
(
clk_in:in std_logic;
clk_out:out std_logic
);
end entity;
architecture one of frediv_25 is
	signal cnt1,cnt2:integer range 0 to 24;
	signal clk1,clk2:std_logic;
	begin
		process(clk_in)
			begin
				if(rising_edge(clk_in)) then
					if(cnt1<24) then
						cnt1<=cnt1+1;
					else
						cnt1<=0;
					end if;
					if(cnt1<12) then
						clk1<='1';
					else 
						clk1<='0';
					end if;
				end if;
		end process;
		process(clk_in)
			begin
				if(falling_edge(clk_in))then
					if(cnt2<24) then
						cnt2<=cnt2+1;
					else
						cnt2<=0;
					end if;
					if(cnt2<12) then
						clk2<='1';
					else
						clk2<='0';
					end if;
				end if;	
		end process;
	clk_out<=clk1 or clk2;
	end one;