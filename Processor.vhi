
-- VHDL Instantiation Created from source file Processor.vhd -- 08:48:43 12/07/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Processor
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;          
		DataOut : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Processor: Processor PORT MAP(
		clk => ,
		reset => ,
		DataOut => 
	);


