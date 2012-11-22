
-- VHDL Instantiation Created from source file SEU22_module.vhd -- 09:29:56 11/22/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SEU22_module
	PORT(
		disp22 : IN std_logic_vector(21 downto 0);          
		seuOut : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_SEU22_module: SEU22_module PORT MAP(
		disp22 => ,
		seuOut => 
	);


