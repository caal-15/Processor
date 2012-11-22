----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:52:55 11/20/2012 
-- Design Name: 
-- Module Name:    WindowManager - arch_wm 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity WindowManager is
    Port ( cwp : in  STD_LOGIC_VECTOR (4 downto 0);
           rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           rd : in  STD_LOGIC_VECTOR (4 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           ncwp : out  STD_LOGIC_VECTOR (4 downto 0);
           nrs1 : out  STD_LOGIC_VECTOR (5 downto 0);
           nrs2 : out  STD_LOGIC_VECTOR (5 downto 0);
           nrd : out  STD_LOGIC_VECTOR (5 downto 0);
           no7 : out  STD_LOGIC_VECTOR (5 downto 0));
end WindowManager;

architecture arch_wm of WindowManager is
signal tmp1 : std_logic_vector(5 downto 0);
signal tmp2 : std_logic_vector(5 downto 0);
signal tmp3 : std_logic_vector(5 downto 0);
begin
   process(cwp,rs1,rs2,rd,op3)begin
		if((op3="111100") or (op3="111101"))then -- save or restore operation
			if(cwp = "00000")then
				ncwp <= "00001";
			else
				ncwp <= "00000";
			end if;
				nrd <= "000000"; -- for safety
		elsif(cwp = "00001") then
			if(rs1 > "00111") then
				tmp1(4 downto 0) <= rs1;
				nrs1 <= tmp1 + 16; -- offset
			else
				nrs1(4 downto 0) <= rs1;
			end if;
			if(rs2 > "00111") then
				tmp2(4 downto 0) <= rs2;
				nrs2 <= tmp2 + 16; -- offset
			else
				nrs2(4 downto 0) <= rs2;
			end if;
			if(rd > "00111") then
				tmp3(4 downto 0) <= rd;
				nrd <= tmp3 + 16; -- offset
			else
				nrd(4 downto 0) <= rd;
			end if;
			
			no7 <= "011111";
		else
			no7 <= "001111";
		end if;
   
   end process;

end arch_wm;
