
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Chronometer is
    Port ( clk_c : in  STD_LOGIC;
           reset_c : in  STD_LOGIC;
           dataout_c : out  STD_LOGIC_VECTOR (7 downto 0));
           
end Chronometer;

architecture arch_crh of Chronometer is






COMPONENT Processor
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;          
		DataOut : OUT std_logic_vector(31 downto 0)
		);
END COMPONENT;




COMPONENT Div50Mto05
	PORT(
		clk50M : IN std_logic;
		reset : IN std_logic;          
		clk05 : OUT std_logic
		);
END COMPONENT;



signal div05toproc: std_logic;
signal inutil : std_logic_vector (23 downto 0);


begin



Inst_Processor: Processor PORT MAP(
		clk => div05toproc,
		reset => reset_c,
		DataOut (7 downto 0)=>dataout_c,	
		DataOut (31 downto 8)=>inutil	
	);



	
Inst_Div50Mto05: Div50Mto05 PORT MAP(
		clk50M => clk_c,
		reset => reset_c,
		clk05 => div05toproc
	);

	
end arch_crh;