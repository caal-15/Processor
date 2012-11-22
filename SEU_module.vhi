
-- VHDL Instantiation Created from source file SEU_module.vhd -- 08:56:13 11/22/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SEU_module
	PORT(
		simm13 : IN std_logic_vector(12 downto 0);          
		seuOut : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_SEU_module: SEU_module PORT MAP(
		simm13 => ,
		seuOut => 
	);


