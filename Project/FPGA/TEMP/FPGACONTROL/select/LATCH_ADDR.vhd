LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY LATCH_ADDR IS
PORT
(
	AD : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
	A16 : IN STD_LOGIC;
	A17 : IN STD_LOGIC;
	A18 : IN STD_LOGIC;
   ADDR : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
   nCS : OUT STD_LOGIC;
	NADV : IN STD_LOGIC
);
END LATCH_ADDR;

ARCHITECTURE latch OF LATCH_ADDR IS
BEGIN
	PROCESS(NADV,AD,A16)
	BEGIN
		IF(NADV'event and NADV='1')THEN
			ADDR<=AD;
			IF(A16 = '1' AND AD(15) = '1')THEN
				nCS <= '0';
			ELSE
				nCS <= '1';
			END IF;
		END IF;
	END PROCESS;
END latch;