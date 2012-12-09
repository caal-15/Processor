----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:19:39 11/13/2012 
-- Design Name: 
-- Module Name:    CyclicalCounter - Behavioral 
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

entity CyclicalCounter is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           s0 : out  STD_LOGIC;
           s1 : out  STD_LOGIC);
end CyclicalCounter;

architecture Behavioral of CyclicalCounter is

signal s0out : std_logic := '0';
signal s1out : std_logic := '0';


begin
process(clk, reset,s0out,s1out) begin
	if(rising_edge(clk)) then
		if(reset='1') then
			s0out<='0';
			s1out<='1';
		elsif(s0out='0' and s1out='0') then
			s1out<='1';
		elsif(s0out='0' and s1out='1') then
			s0out<='1';
			s1out<='0';	
		elsif(s0out='1' and s1out='0') then
			s1out<='1';	
		elsif(s0out='1' and s1out='1') then
			s0out<='0';
			s1out<='0';	
		end if;
	end if;	
end process;	
s0<=s0out;
s1<=s1out;

end Behavioral;

