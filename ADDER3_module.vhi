
-- VHDL Instantiation Created from source file ADDER3_module.vhd -- 08:50:09 11/22/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ADDER3_module
	PORT(
		OP1 : IN std_logic_vector(29 downto 0);
		OP2 : IN std_logic_vector(4 downto 0);          
		Addout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ADDER3_module: ADDER3_module PORT MAP(
		OP1 => ,
		OP2 => ,
		Addout => 
	);


