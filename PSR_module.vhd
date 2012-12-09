library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PSR_module is
    Port ( clkFPGA : in STD_LOGIC;
	        reset : in STD_LOGIC;
		     NZVC : in  STD_LOGIC_VECTOR (3 downto 0);
           nCWP : in  STD_LOGIC_VECTOR (4 downto 0);
           CWP : out  STD_LOGIC_VECTOR (4 downto 0);
           Carry : out  STD_LOGIC;
           icc : out  STD_LOGIC_VECTOR (3 downto 0));
end PSR_module;

architecture Behavioral of PSR_module is

begin

process(NZVC, nCWP, clkFPGA, reset ) begin
if(rising_edge(clkFPGA))then
	if(reset = '1')then 
		Carry <= '0';
		CWP <= (others => '0');
		icc <= (others => '0');
	else
	   Carry <= NZVC(0);
	   icc <= NZVC;
	   CWP <= nCWP;
	end if;
end if;
end process;

end Behavioral;

