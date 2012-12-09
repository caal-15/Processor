----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:37 12/07/2012 
-- Design Name: 
-- Module Name:    CyclicalCounter2 - Behavioral 
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

entity CyclicalCounter2 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           s : out  STD_LOGIC);
end CyclicalCounter2;

architecture Behavioral of CyclicalCounter2 is
signal sout : std_logic := '0';
begin
process(clk, reset) begin
	if (reset='1') then
		sout<='0';
	elsif(rising_edge(clk)) then
		sout<= not(sout);
	end if;	
end process;

s<=sout;

end Behavioral;

