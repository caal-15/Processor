
-- VHDL Instantiation Created from source file InstMemory_module.vhd -- 08:51:29 11/22/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT InstMemory_module
	PORT(
		clkFPGA : IN std_logic;
		reset : IN std_logic;
		address : IN std_logic_vector(4 downto 0);          
		dataOut : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_InstMemory_module: InstMemory_module PORT MAP(
		clkFPGA => ,
		reset => ,
		address => ,
		dataOut => 
	);


