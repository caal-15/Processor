
-- VHDL Instantiation Created from source file DataMem_module.vhd -- 08:51:06 11/22/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DataMem_module
	PORT(
		WrEnMem : IN std_logic;
		RdEnMem : IN std_logic;
		reset : IN std_logic;
		clkFPGA : IN std_logic;
		crd : IN std_logic_vector(31 downto 0);
		ALUResult : IN std_logic_vector(31 downto 0);          
		DataToMem : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_DataMem_module: DataMem_module PORT MAP(
		WrEnMem => ,
		RdEnMem => ,
		reset => ,
		clkFPGA => ,
		crd => ,
		ALUResult => ,
		DataToMem => 
	);


