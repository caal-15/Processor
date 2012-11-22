
-- VHDL Instantiation Created from source file MUX4_module.vhd -- 08:53:48 11/22/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MUX4_module
	PORT(
		PC : IN std_logic_vector(4 downto 0);
		RFsource : IN std_logic_vector(1 downto 0);
		DataToMem : IN std_logic_vector(31 downto 0);
		ALUResult : IN std_logic_vector(31 downto 0);          
		DataToReg : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_MUX4_module: MUX4_module PORT MAP(
		PC => ,
		RFsource => ,
		DataToMem => ,
		ALUResult => ,
		DataToReg => 
	);


