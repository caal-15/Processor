library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SLx2_module is
    Port ( DataIn : in  STD_LOGIC_VECTOR (31 downto 0);
           DataOut : out  STD_LOGIC_VECTOR (31 downto 0));
end SLx2_module;

architecture Behavioral of SLx2_module is

begin

process(DataIn) begin

DataOut(31 downto 2) <= DataIn (29 downto 0);
DataOut(1 downto 0) <= (others => '0');

end process;
end Behavioral;

