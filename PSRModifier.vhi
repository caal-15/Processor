
-- VHDL Instantiation Created from source file PSRModifier.vhd -- 08:54:35 11/22/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PSRModifier
	PORT(
		crs1 : IN std_logic_vector(31 downto 0);
		crs2 : IN std_logic_vector(31 downto 0);
		ALUOp : IN std_logic_vector(7 downto 0);
		ALUOut : IN std_logic_vector(31 downto 0);          
		NZVC : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_PSRModifier: PSRModifier PORT MAP(
		crs1 => ,
		crs2 => ,
		ALUOp => ,
		ALUOut => ,
		NZVC => 
	);


