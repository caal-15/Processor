
-- VHDL Instantiation Created from source file ALU_module.vhd -- 08:50:25 11/22/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU_module
	PORT(
		ALUOP : IN std_logic_vector(7 downto 0);
		Carry : IN std_logic;
		OP1 : IN std_logic_vector(31 downto 0);
		OP2 : IN std_logic_vector(31 downto 0);          
		data : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ALU_module: ALU_module PORT MAP(
		ALUOP => ,
		Carry => ,
		OP1 => ,
		OP2 => ,
		data => 
	);


