
-- VHDL Instantiation Created from source file PSR_module.vhd -- 08:55:20 11/22/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PSR_module
	PORT(
		clkFPGA : IN std_logic;
		reset : IN std_logic;
		NZVC : IN std_logic_vector(3 downto 0);
		nCWP : IN std_logic_vector(4 downto 0);          
		CWP : OUT std_logic_vector(4 downto 0);
		Carry : OUT std_logic;
		icc : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_PSR_module: PSR_module PORT MAP(
		clkFPGA => ,
		reset => ,
		NZVC => ,
		nCWP => ,
		CWP => ,
		Carry => ,
		icc => 
	);


