library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity fre_div1m_64 is
port
(
	clk:IN std_logic;
	Q:out std_logic
);
end entity;

architecture one of fre_div1m_64 is
signal s:std_logic_vector(14 downto 0);
begin
	process(clk)
	begin
		if clk'event and clk ='1' then 
			if s="111110100001000" then 
				s<="000000000000000"; 
         else 
            s<=s+1; 
			end if;
		end if; 
	Q<=s(14);
	end process;
end one;