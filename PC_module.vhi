
-- VHDL Instantiation Created from source file PC_module.vhd -- 08:54:10 11/22/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PC_module
	PORT(
		nextInstruction : IN std_logic_vector(4 downto 0);
		reset : IN std_logic;
		clkFPGA : IN std_logic;          
		outInstruction : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;

	Inst_PC_module: PC_module PORT MAP(
		nextInstruction => ,
		reset => ,
		clkFPGA => ,
		outInstruction => 
	);


