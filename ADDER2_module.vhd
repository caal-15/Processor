library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;



entity ADDER2_module is
    Port ( OP1 : in  STD_LOGIC_VECTOR (4 downto 0);
           OP2 : in  STD_LOGIC_VECTOR (31 downto 0);
           AddOut : out  STD_LOGIC_VECTOR (31 downto 0));
end ADDER2_module;

architecture Behavioral of ADDER2_module is



begin
process(OP1, OP2) begin 

AddOut <= OP1 + OP2;


end process;
end Behavioral;

