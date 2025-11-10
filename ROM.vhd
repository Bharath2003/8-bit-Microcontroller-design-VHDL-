
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

entity rom_128x8_sync is
port (
			address: in std_logic_vector(6 downto 0);
			data_out: out std_logic_vector(7 downto 0);
			clock: in std_logic
		);
end rom_128x8_sync;

architecture Behavioral of rom_128x8_sync is
type instmem is array (0 to 127 ) of std_logic_vector (7 downto 0);
signal ROM: instmem :=( -- test program
							-- Program begins
                                x"86", x"55",   -- LOAD A, #55
                                x"88", x"0A",   -- LOAD B, #0A
                                x"42",           -- ADD A, B
                                x"96", x"E0",   -- STORE A, $E0
                                                        
							x"00",-- 0x08: (empty location)
							x"00",x"00",x"00",x"00",-- 0x0C: (empty location)
                            x"00",x"00",x"00",x"00",-- 0x: (empty location)
                            x"00",x"00",x"00",x"00",-- 0x10: (empty location)
                            x"00",x"00",x"00",x"00",-- 0x14: (empty location)
							x"00",x"00",x"00",x"00",-- 0x18: (empty location)
							x"00",x"00",x"00",x"00",-- 0x1C: (empty location)
							x"00",x"00",x"00",x"00",-- 0x20: (empty location)
							x"00",x"00",x"00",x"00",-- 0x24: (empty location)
							x"00",x"00",x"00",x"00",-- 0x28: (empty location)
							x"00",x"00",x"00",x"00",-- 0x2C: (empty location)
							x"00",x"00",x"00",x"00",-- 0x30: (empty location)
							x"00",x"00",x"00",x"00",-- 0x34: (empty location)
							x"00",x"00",x"00",x"00",-- 0x38: (empty location)
							x"00",x"00",x"00",x"00",-- 0x3C: (empty location)
							x"00",x"00",x"00",x"00",-- 0x40: (empty location)
							x"00",x"00",x"00",x"00",-- 0x44: (empty location)
							x"00",x"00",x"00",x"00",-- 0x48: (empty location)
							x"00",x"00",x"00",x"00",-- 0x4C: (empty location)
							x"00",x"00",x"00",x"00",-- 0x50: (empty location)
							x"00",x"00",x"00",x"00",-- 0x54: (empty location)
							x"00",x"00",x"00",x"00",-- 0x58: (empty location)
							x"00",x"00",x"00",x"00",-- 0x5C: (empty location)
							x"00",x"00",x"00",x"00",-- 0x60: (empty location)
							x"00",x"00",x"00",x"00",-- 0x64: (empty location)
							x"00",x"00",x"00",x"00",-- 0x68: (empty location)
							x"00",x"00",x"00",x"00",-- 0x6C: (empty location)
							x"00",x"00",x"00",x"00",-- 0x70: (empty location)
							x"00",x"00",x"00",x"00",-- 0x74: (empty location)
							x"00",x"00",x"00",x"00",-- 0x78: (empty location)
							x"00",x"00",x"00",x"00" -- 0x7C: (empty location)
							);	
begin
process(clock) 
begin	
	if(rising_edge(clock)) then
		data_out <= ROM(conv_integer(unsigned(address)));
	end if;
end process;
end Behavioral;
