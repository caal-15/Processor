----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:54:16 11/19/2012 
-- Design Name: 
-- Module Name:    MUX4_module - Behavioral 
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



entity MUX4_module is
    Port ( PC : in  STD_LOGIC_VECTOR (4 downto 0);
	        RFsource : in std_logic_vector (1 downto 0);
           DataToMem : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUResult : in  STD_LOGIC_VECTOR (31 downto 0);
           DataToReg : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX4_module;

architecture Behavioral of MUX4_module is

begin
process( PC, RFsource, DataToMem, ALUResult) begin
	if(RFsource = "00") then
		DataToReg<=DataToMem;
	elsif(RFsource="01") then
		DataToReg<=ALUResult;
	else
		DataToReg(4 downto 0)<=PC;
      DataToReg(31 downto 5)<= (others=>'0');
	end if;
end process;
	
   		
		
	


end Behavioral;

