LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TEMP IS
    PORT(
        ADDR : IN STD_LOGIC_VECTOR (15 DOWNTO 0); --ADDR16?????
        DIN : IN STD_LOGIC_VECTOR (15 DOWNTO 0); --D16?????
        nwe : IN STD_LOGIC; --nwe????
		nCS1 : IN STD_LOGIC; --nCS??????
		nCS2 : IN STD_LOGIC; --nCS??????
		DOUT : OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
END TEMP;

ARCHITECTURE decoder OF TEMP IS
BEGIN
	PROCESS(nCS1,nCS2,ADDR,DIN,nwe) --nCS
	BEGIN
		if(nCS1='0' OR nCS2 = '0')then
			if(nwe'event and nwe='1')then
				DOUT<=DIN;
			end if;
		end if;
	END PROCESS;	
END decoder;