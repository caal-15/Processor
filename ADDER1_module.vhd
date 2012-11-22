library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ADDER1_module is
    Port ( OP1 : in  STD_LOGIC_VECTOR (4 downto 0);
           AddOut : out  STD_LOGIC_VECTOR (4 downto 0));
end ADDER1_module;

architecture Behavioral of ADDER1_module is

begin
process(OP1) begin

AddOut <= OP1 + 1;

end process;
end Behavioral;

