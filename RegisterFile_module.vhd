library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.textio.all;
use IEEE.numeric_bit.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity RegisterFile_module is
    Port ( 
		   reset : in STD_LOGIC; 
  		   nRS1 : in  STD_LOGIC_VECTOR (5 downto 0);
			
           nRS2 : in  STD_LOGIC_VECTOR (5 downto 0);
           nRSD : in  STD_LOGIC_VECTOR (5 downto 0);
           DATATOREG : in  STD_LOGIC_VECTOR (31 downto 0);
           wren : in  STD_LOGIC;
           CRS1 : out  STD_LOGIC_VECTOR (31 downto 0);
           CRS2 : out  STD_LOGIC_VECTOR (31 downto 0);
           CRSD : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile_module;

architecture Behavioral of RegisterFile_module is

type ram_type is array (0 to 31) of STD_LOGIC_VECTOR (31 downto 0);

signal registers : ram_type := (others => x"00000000");

begin

process( reset, wren, nrs1, nrs2, nrsd, datatoreg, registers)

begin

	if(reset = '1')then
		CRS1 <= (others => '0');
		CRS2 <= (others => '0');
		CRSD <= (others => '0');
	else 
		crs1 <= registers(conv_integer(nrs1));
		crs2 <= registers(conv_integer(nrs2));
		crsd <= registers(conv_integer(nrsd));
		if(wren = '1' and nRSD /= "000000")then
			registers(conv_integer(nRSD)) <= DATATOREG;  
		end if;
	end if;
	
end process; 
end Behavioral;

