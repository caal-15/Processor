----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:48:16 11/13/2012 
-- Design Name: 
-- Module Name:    mux4to1 - Behavioral 
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

entity mux4to1 is
    Port ( usec : in  STD_LOGIC_VECTOR (3 downto 0);
           dsec : in  STD_LOGIC_VECTOR (3 downto 0);
           umin : in  STD_LOGIC_VECTOR (3 downto 0);
           dmin : in  STD_LOGIC_VECTOR (3 downto 0);
           display : out  STD_LOGIC_VECTOR (3 downto 0);
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC);
end mux4to1;

architecture Behavioral of mux4to1 is

begin

process(s0,s1,usec,dsec,umin,dmin) begin
	if(s0='0' and s1='0') then
		display<=usec;
	elsif(s0='0' and s1='1') then
		display<=dsec;	
	elsif(s0='1' and s1='0') then
		display<=umin;	
   elsif(s0='1' and s1='1') then
		display<=dmin;
	end if;
end process;	
end Behavioral;

