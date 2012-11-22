
-- VHDL Instantiation Created from source file MUX1_module.vhd -- 08:51:53 11/22/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MUX1_module
	PORT(
		nRDin : IN std_logic_vector(5 downto 0);
		o15 : IN std_logic_vector(5 downto 0);
		RFDest : IN std_logic;          
		nRD : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_MUX1_module: MUX1_module PORT MAP(
		nRDin => ,
		o15 => ,
		RFDest => ,
		nRD => 
	);


