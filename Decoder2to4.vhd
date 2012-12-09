----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:10:53 11/13/2012 
-- Design Name: 
-- Module Name:    Decoder2to4 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decoder2to4 is
    Port ( s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           dispsel : out  STD_LOGIC_VECTOR (3 downto 0));
end Decoder2to4;

architecture Behavioral of Decoder2to4 is

begin
process(s0,s1) begin
	if(s0='0' and s1='0') then
	 dispsel<="1110";
	elsif(s0='0' and s1='1') then
	 dispsel<="1101"; 
	elsif(s0='1' and s1='0') then
	 dispsel<="1011"; 
	elsif(s0='1' and s1='1') then
	 dispsel<="0111"; 
	end if;
end process;	
		


end Behavioral;

