library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity WRREQ1 is
port
(
en1: in std_logic;
en2: in std_logic;
di: in std_logic;
do: out std_logic
);
end WRREQ1;

architecture one of WRREQ1 is
SIGNAL START:STD_LOGIC:='0';
begin
	process(en1, en2, di)
	begin
		if(en1 = '0') THEN
			IF(di = '1') THEN
				START <= '1';
			ELSE
				START <= '0';
			END IF;	
		end if;
		
		if(en2  = '1') then
			START <= '0';
		end if;

		do <= START;
	end process;
end one;