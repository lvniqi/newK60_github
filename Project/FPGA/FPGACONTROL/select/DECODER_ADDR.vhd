LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY DECODER_ADDR IS
PORT
(
	ADDR : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
	nCS : IN STD_LOGIC;
	CS_FREQ_L : OUT STD_LOGIC;
	CS_FREQ_H : OUT STD_LOGIC;
	CS_FIFO : OUT STD_LOGIC;
	CS_FIFO_START : OUT STD_LOGIC;
	CS_FREQ_WR_L : OUT STD_LOGIC;
	CS_FREQ_WR_H : OUT STD_LOGIC;
	CS_RAM_WR : OUT STD_LOGIC
);
END DECODER_ADDR;

ARCHITECTURE decoder OF DECODER_ADDR IS
BEGIN
	PROCESS(nCS,ADDR)
	BEGIN
		IF(nCS='0')THEN
			IF(ADDR=X"8014")THEN
				CS_FREQ_L<='0';
				CS_FREQ_H<='1';
				CS_FIFO<='1';
				CS_FIFO_START<='1';
				CS_FREQ_WR_L<='1';
				CS_FREQ_WR_H <='1';
				CS_RAM_WR<='1';
			ELSIF(ADDR=X"8025")THEN
				CS_FREQ_L<='1';
				CS_FREQ_H<='0';
				CS_FIFO<='1';
				CS_FIFO_START<='1';
				CS_FREQ_WR_L<='1';
				CS_FREQ_WR_H <='1';
				CS_RAM_WR<='1';
			ELSIF(ADDR=X"8036")THEN
				CS_FREQ_L<='1';
				CS_FREQ_H<='1';
				CS_FIFO<='0';
				CS_FIFO_START<='1';
				CS_FREQ_WR_L<='1';
				CS_FREQ_WR_H <='1';
				CS_RAM_WR<='1';
			ELSIF(ADDR=X"8047")THEN
				CS_FREQ_L<='1';
				CS_FREQ_H<='1';
				CS_FIFO<='1';
				CS_FIFO_START<='0';
				CS_FREQ_WR_L<='1';
				CS_FREQ_WR_H <='1';
				CS_RAM_WR<='1';
			ELSIF(ADDR=X"825C")THEN
				CS_FREQ_L<='1';
				CS_FREQ_H<='1';
				CS_FIFO<='1';
				CS_FIFO_START<='1';
				CS_FREQ_WR_L<='0';
				CS_FREQ_WR_H <='1';
				CS_RAM_WR<='1';
			ELSIF(ADDR=X"826D")THEN
				CS_FREQ_L<='1';
				CS_FREQ_H<='1';
				CS_FIFO<='1';
				CS_FIFO_START<='1';
				CS_FREQ_WR_L<='1';
				CS_FREQ_WR_H <='0';
				CS_RAM_WR<='1';
			ELSIF(ADDR=X"8300")THEN
				CS_FREQ_L<='1';
				CS_FREQ_H<='1';
				CS_FIFO<='1';
				CS_FIFO_START<='1';
				CS_FREQ_WR_L<='1';
				CS_FREQ_WR_H <='1';
				CS_RAM_WR<='0';
			ELSE
				CS_FREQ_L<='1';
				CS_FREQ_H<='1';
				CS_FIFO<='1';
				CS_FIFO_START<='1';
				CS_FREQ_WR_L<='1';
				CS_FREQ_WR_H <='1';
				CS_RAM_WR<='1';		
			END IF;
		ELSE
			CS_FREQ_L<='1';
			CS_FREQ_H<='1';
			CS_FIFO<='1';
			CS_FIFO_START<='1';
			CS_FREQ_WR_L<='1';
			CS_FREQ_WR_H <='1';
			CS_RAM_WR<='1';
		END IF;
	END PROCESS;	
END decoder;