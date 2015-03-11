LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY LATCH_ADDR IS
PORT
(
	AD : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
	A16 : IN STD_LOGIC;
	NADV : IN STD_LOGIC;
	NOE : IN STD_LOGIC;
	NWE : IN STD_LOGIC;
   ADDR : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
	CS_FREQ_WR_L : OUT STD_LOGIC;
	CS_FREQ_RD_L : OUT STD_LOGIC; 
	CS_FREQ_WR_H : OUT STD_LOGIC;
	CS_FREQ_RD_H : OUT STD_LOGIC;
	CS_RAM_WR : OUT STD_LOGIC;
	CS_RAM_RD : OUT STD_LOGIC;
	ADDR_RAM : OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
	nCS : OUT STD_LOGIC
);
END LATCH_ADDR;

ARCHITECTURE latch OF LATCH_ADDR IS
BEGIN
	PROCESS(NADV,AD,A16,NOE,NWE)
	BEGIN
		--IF(NADV'event and NADV='1' AND NOE = '1' AND NWE = '1')THEN
		IF(NADV'event and NADV='1' AND (NWE = '1' OR NOE = '1'))THEN
		--IF(NADV'event and NADV='1')THEN
			ADDR<=AD;
			nCS <= NOT A16;
			IF(A16 = '1') THEN
				IF(AD=X"E000")THEN
					CS_FREQ_WR_L<='0';
					CS_FREQ_RD_L<='1';
					CS_FREQ_WR_H <='1';
					CS_FREQ_RD_H<='1';
					CS_RAM_RD<='1';
					CS_RAM_WR<='1';
					ADDR_RAM<="ZZZZZZZZZZ";
					--nCS <= '0';
				ELSIF(AD=X"E001")THEN
					CS_FREQ_WR_L<='1';
					CS_FREQ_RD_L<='0';
					CS_FREQ_WR_H <='1';
					CS_FREQ_RD_H<='1';
					CS_RAM_RD<='1';
					CS_RAM_WR<='1';
					ADDR_RAM<="ZZZZZZZZZZ";
					--nCS <= '0';
				ELSIF(AD=X"E002")THEN
					CS_FREQ_WR_L<='1';
					CS_FREQ_RD_L<='1';
					CS_FREQ_WR_H <='0';
					CS_FREQ_RD_H<='1';
					CS_RAM_RD<='1';
					CS_RAM_WR<='1';
					ADDR_RAM<="ZZZZZZZZZZ";
					--nCS <= '0';
				ELSIF(AD=X"E003")THEN
					CS_FREQ_WR_L<='1';
					CS_FREQ_RD_L<='1';
					CS_FREQ_WR_H <='1';
					CS_FREQ_RD_H<='0';
					CS_RAM_RD<='1';
					CS_RAM_WR<='1';
					ADDR_RAM<="ZZZZZZZZZZ";
					--nCS <= '0';
				ELSIF(AD=X"E004")THEN
					CS_FREQ_WR_L<='1';
					CS_FREQ_RD_L<='1';
					CS_FREQ_WR_H <='1';
					CS_FREQ_RD_H<='0';
					CS_RAM_RD<='0';
					CS_RAM_WR<='1';
					ADDR_RAM<="ZZZZZZZZZZ";
					--nCS <= '0';
				ELSIF(AD(15 DOWNTO 10) = "111111")THEN
					CS_FREQ_WR_L<='1';
					CS_FREQ_RD_L<='1';
					CS_FREQ_WR_H <='1';
					CS_FREQ_RD_H<='1';
					CS_RAM_RD<='1';
					CS_RAM_WR<='0';
					ADDR_RAM<=AD(9 DOWNTO 0);
					--nCS <= '0';
				ELSE
					CS_FREQ_WR_L<='1';
					CS_FREQ_RD_L<='1';
					CS_FREQ_WR_H <='1';
					CS_FREQ_RD_H<='1';
					CS_RAM_RD<='1';
					CS_RAM_WR<='1';
					ADDR_RAM<="ZZZZZZZZZZ";
					--nCS <= '1';
				END IF;
			ELSE
				CS_FREQ_WR_L<='1';
				CS_FREQ_RD_L<='1';
				CS_FREQ_WR_H <='1';
				CS_FREQ_RD_H<='1';
				CS_RAM_RD<='1';
				CS_RAM_WR<='1';
				ADDR_RAM<="ZZZZZZZZZZ";
				nCS <= '1';
			END IF;
		END IF;
	END PROCESS;
END latch;