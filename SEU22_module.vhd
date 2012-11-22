----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:27:49 11/22/2012 
-- Design Name: 
-- Module Name:    SEU22_module - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity SEU22_module is
    Port ( disp22 : in  STD_LOGIC_VECTOR (21 downto 0);
           seuOut : out  STD_LOGIC_VECTOR (31 downto 0));
end SEU22_module;

architecture Behavioral of SEU22_module is

begin
seuOut(21 downto 0) <= disp22;

process(disp22) begin
	if(disp22(21)='0') then
		seuOut(31 downto 22) <= (others => '0');
	else
		seuOut(31 downto 22) <= (others=>'1');
	
	end if;
end process;
end Behavioral;