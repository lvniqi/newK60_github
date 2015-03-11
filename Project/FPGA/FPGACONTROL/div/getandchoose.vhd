library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
entity getandchoose is
port(
	clk:in std_logic;
	clkdiv:out std_logic
);
end entity;
architecture one of getandchoose is
signal s:std_logic_vector(5 downto 0);
	begin
		process(clk)
		begin
		if(clk'event and clk='1') then
			if s="111111" then
				s<="000000";
			else s<=s+1;
			end if;
		end if; 
		
		clkdiv<=s(3);
		end process;
	end one;
		