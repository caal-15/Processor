
-- VHDL Instantiation Created from source file muxI.vhd -- 14:39:37 12/07/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT muxI
	PORT(
		inst1 : IN std_logic_vector(15 downto 0);
		inst2 : IN std_logic_vector(15 downto 0);
		s : IN std_logic;          
		instout : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	Inst_muxI: muxI PORT MAP(
		inst1 => ,
		inst2 => ,
		s => ,
		instout => 
	);


