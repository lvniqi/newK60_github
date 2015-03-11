LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY CS_TRANS IS
PORT
(
	ADDR : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
   DIN : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
   NWE : IN STD_LOGIC;
	CS : IN STD_LOGIC;
	DOUT : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
);
END CS_TRANS;

ARCHITECTURE TRANS OF CS_TRANS IS
BEGIN
	PROCESS(ADDR, DIN, NWE, CS)
	BEGIN
		IF(CS = '0') THEN
			IF(NWE'EVENT AND NWE = '1' AND ADDR(15 DOWNTO 8)=X"00") THEN
				DOUT <= DIN;
			END IF;
		END IF;
	END PROCESS;	
END TRANS;