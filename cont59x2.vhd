----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:15:11 11/06/2012 
-- Design Name: 
-- Module Name:    cont59x2 - Behavioral 
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
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity cont59x2 is
    Port ( clk : in  STD_LOGIC;
			  reset: in STD_LOGIC;
           cont1out : out  STD_LOGIC_VECTOR (3 downto 0);
           cont2out : out  STD_LOGIC_VECTOR (3 downto 0);
           cont3out : out  STD_LOGIC_VECTOR (3 downto 0);
           cont4out : out  STD_LOGIC_VECTOR (3 downto 0));
end cont59x2;

architecture contArch of cont59x2 is

signal cont1 : std_logic_vector (3 downto 0) := "0000";
signal cont2 : std_logic_vector (3 downto 0) := "0000";
signal cont3 : std_logic_vector (3 downto 0) := "0000";
signal cont4 : std_logic_vector (3 downto 0) := "0000";
begin

process (clk,reset) begin
	if(reset='1') then
		cont1<= (others => '0');
		cont2<= (others => '0');
		cont3<= (others => '0');
		cont4<= (others => '0');
	elsif(rising_edge(clk)) then
	   if(cont1 = x"9" and cont2 = "0101" and cont3 = x"9" and cont4 < "0101") then
			cont1 <= x"0";
			cont2 <= "0000";
			cont3 <= x"0";
			cont4 <= cont4+1;
		elsif(cont1 = x"9" and cont2 = "0101" and cont3 < x"9") then
			cont1 <= x"0";
			cont2 <= "0000";
			cont3 <= cont3+1;
      elsif(cont1 = x"9" and cont2 < "0101") then
			cont2 <= cont2+1;
			cont1 <= x"0";
					
		elsif(cont1 < x"9") then 
			cont1 <= cont1 + 1;
		
		
		end if;
	end if;
end process;	

cont1out<=cont1;
cont2out<=cont2;
cont3out<=cont3;
cont4out<=cont4;

end contArch;
