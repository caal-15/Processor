----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:17:19 11/19/2012 
-- Design Name: 
-- Module Name:    PSRModifier - arch_PSRM 
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

entity PSRModifier is
    Port ( crs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           crs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUOp : in  STD_LOGIC_VECTOR (7 downto 0);
           ALUOut : in  STD_LOGIC_VECTOR (31 downto 0);
           NZVC : out  STD_LOGIC_VECTOR (3 downto 0));
end PSRModifier;

architecture arch_PSRM of PSRModifier is

begin
   process(crs1,crs2,ALUOp,ALUOut) begin
  
		if(ALUOut = X"0000000")then -- Supports all icc modifications for logical instructions (not overflow or carry)
			NZVC(3) <= '1';
		else 
			NZVC(3) <= '0';
		end if;
		if((ALUOp = X"02") or (ALUOp = X"04")) then -- ADDcc ADDxcc
			if((crs1(31) = crs2(31)) and (crs1(31) /= ALUOut(31)))then
				NZVC(1)<='1';  -- indicates overflow and set carry to 1.
				NZVC(0)<='1';
			else
				NZVC(1)<='0';
				NZVC(0)<='0';
			end if;
		end if;
		if((ALUOp = X"07") or (ALUOp = X"08")) then -- SUBcc SUBxcc
			if((crs1(31) /= crs2(31)) and (crs1(31) /= ALUOut(31)))then
				NZVC(1)<='1';  -- like add
				NZVC(0)<='1';
			else
				NZVC(1)<='0';
				NZVC(0)<='0';
			end if;
		end if;
   end process;

end arch_PSRM;

