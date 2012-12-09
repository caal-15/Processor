----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:16:32 11/16/2012 
-- Design Name: 
-- Module Name:    bcd - arch_bcd 
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



entity bcd is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           datain : in  STD_LOGIC_VECTOR (3 downto 0);
           dataout : out  STD_LOGIC_VECTOR (7 downto 0));
end bcd;

architecture arch_bcd of bcd is

begin
	process(clk,reset,datain) begin
		if(rising_edge(clk))then
			if(reset = '1') then
				dataout<=X"FF";
			else
				case (datain) is
					when X"0" => dataout<= not( X"FC");
					when X"1" => dataout<= not(X"60");
					when X"2" => dataout<= not(X"DA");
					when X"3" => dataout<= not(X"F2");
					when X"4" => dataout<= not(X"66");
					when X"5" => dataout<= not(X"B6");
					when X"6" => dataout<= not(X"BE");
					when X"7" => dataout<= not(X"E0");
					when X"8" => dataout<= not(X"FE");
					when X"9" => dataout<= not(X"F6");
					when X"A" => dataout<= not(X"EE");
					when X"B" => dataout<= not(X"3E");
					when X"C" => dataout<= not(X"9C");
					when X"D" => dataout<= not(X"76");
					when X"E" => dataout<= not(X"9E");
					when others => dataout<= not(X"8E");
				end case;
					
			end if;
		end if;
	end process;

end arch_bcd;

