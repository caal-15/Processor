----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:31:05 11/19/2012 
-- Design Name: 
-- Module Name:    MUX1_module - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.std_logic_arith.all;

entity MUX1_module is
    Port ( nRDin : in  STD_LOGIC_VECTOR (5 downto 0);
           o15 : in  STD_LOGIC_VECTOR (5 downto 0);
           RFDest : in  STD_LOGIC;
           nRD : out  STD_LOGIC_VECTOR (5 downto 0));
end MUX1_module;

architecture Behavioral of MUX1_module is

begin
process(nRDin,  RFDest) begin
	if( RFDest='1') then
		nRD<= o15;
	else
		nRD<=nRDin;
	
	end if;
end process;	


end Behavioral;

