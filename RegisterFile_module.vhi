
-- VHDL Instantiation Created from source file RegisterFile_module.vhd -- 08:55:48 11/22/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT RegisterFile_module
	PORT(
		clkFPGA : IN std_logic;
		reset : IN std_logic;
		nRS1 : IN std_logic_vector(5 downto 0);
		nRS2 : IN std_logic_vector(5 downto 0);
		nRSD : IN std_logic_vector(5 downto 0);
		DATATOREG : IN std_logic_vector(31 downto 0);
		wren : IN std_logic;          
		CRS1 : OUT std_logic_vector(31 downto 0);
		CRS2 : OUT std_logic_vector(31 downto 0);
		CRSD : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_RegisterFile_module: RegisterFile_module PORT MAP(
		clkFPGA => ,
		reset => ,
		nRS1 => ,
		nRS2 => ,
		nRSD => ,
		DATATOREG => ,
		wren => ,
		CRS1 => ,
		CRS2 => ,
		CRSD => 
	);


