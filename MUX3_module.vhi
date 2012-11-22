
-- VHDL Instantiation Created from source file MUX3_module.vhd -- 08:53:27 11/22/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MUX3_module
	PORT(
		ALUaddress : IN std_logic_vector(31 downto 0);
		PC_dis30 : IN std_logic_vector(31 downto 0);
		PC_seu : IN std_logic_vector(31 downto 0);
		PC_4 : IN std_logic_vector(4 downto 0);
		PCsource : IN std_logic_vector(1 downto 0);          
		MUXout : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;

	Inst_MUX3_module: MUX3_module PORT MAP(
		ALUaddress => ,
		PC_dis30 => ,
		PC_seu => ,
		PC_4 => ,
		PCsource => ,
		MUXout => 
	);


