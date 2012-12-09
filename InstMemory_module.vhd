
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.textio.all;
use IEEE.numeric_bit.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity InstMemory_module is
    Port ( 
			  clkFPGA: in std_logic;
		     reset : in STD_LOGIC;
			  address : in  STD_LOGIC_VECTOR (4 downto 0);
           dataOut : out  STD_LOGIC_VECTOR (31 downto 0));
end InstMemory_module;

architecture Behavioral of InstMemory_module is
	type RamType is array (0 to 31) of bit_vector (31 downto 0);
   
	impure function InitRamFromFile (RamFileName:in string) return RamType is
		FILE RamFile:text is in RamFileName;
		variable RamFileLine:line;
		variable RAM:RamType;
		begin 
			for I in RamType 'range loop
				readline (RamFile, RamFileLine);
				read (RamFileLine, RAM(I));
			end loop;
			return RAM;
		end function;
signal RAM : RamType := InitRamFromFile("test2.data");


begin

	process(reset,address,clkFPGA) begin
		if(rising_edge(clkFPGA)) then
			if(reset = '1') then
				dataOut <= (others=>'0');
			else
				dataOut <= to_stdlogicvector(RAM(conv_integer(address)));
			end if;
	   end if; 
	end process;
end Behavioral;

