----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:35:57 11/13/2012 
-- Design Name: 
-- Module Name:    Div50Mto700 - Behavioral 
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

entity Div50Mto700 is
    Port ( clk50m : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk700 : out  STD_LOGIC);			  
end Div50Mto700;

architecture arch of Div50Mto700 is
signal clkout: std_logic := '0';
signal counter: integer range 1 to 35_714 := 1;
begin
process (clk50M,reset) begin
	if(reset='1') then
		clkout<='0';
	elsif(rising_edge(clk50M)) then
		if(counter=35_714) then
			clkout<= not (clkout);
			counter<=1;
		else
			counter<=counter+1;
		end if;
	end if;	
end process;

clk700<=clkout;
end arch;

