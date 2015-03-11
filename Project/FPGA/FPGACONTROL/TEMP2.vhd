LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TEMP2 IS
    PORT(
        ADDR : IN STD_LOGIC_VECTOR (15 DOWNTO 0); --ADDR16?????
        DIN : IN STD_LOGIC_VECTOR (15 DOWNTO 0); --D16?????
        nwe : IN STD_LOGIC; --nwe????
		nCS : IN STD_LOGIC; --nCS??????
		DOUT : OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
END TEMP2;

ARCHITECTURE decoder OF TEMP2 IS
BEGIN
	PROCESS(nCS,ADDR,DIN,nwe) --nCS
	BEGIN
		if(nCS='0')then
			if(nwe'event and nwe='1' and ADDR=X"E002")then
				DOUT<=DIN;
			end if;
		end if;
	END PROCESS;	
END decoder;