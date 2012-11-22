----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:41:27 11/19/2012 
-- Design Name: 
-- Module Name:    ADDER3_module - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADDER3_module is
    Port ( OP1 : in  STD_LOGIC_VECTOR (29 downto 0);
           OP2 : in  STD_LOGIC_VECTOR (4 downto 0);
			  Addout : out std_logic_vector (31 downto 0));
end ADDER3_module;

architecture Behavioral of ADDER3_module is
signal tmp : std_logic_vector (31 downto 0);
begin
	tmp(29 downto 0) <= OP1;
	tmp(31 downto 30)<= "00";
	Addout <= tmp + OP2;
end Behavioral;

