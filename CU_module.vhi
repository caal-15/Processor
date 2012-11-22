
-- VHDL Instantiation Created from source file CU_module.vhd -- 08:50:43 11/22/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT CU_module
	PORT(
		OP : IN std_logic_vector(1 downto 0);
		OP3 : IN std_logic_vector(5 downto 0);
		icc : IN std_logic_vector(3 downto 0);
		Cond : IN std_logic_vector(3 downto 0);
		clkFPGA : IN std_logic;          
		wren : OUT std_logic;
		PCsource : OUT std_logic_vector(1 downto 0);
		ALUOP : OUT std_logic_vector(7 downto 0);
		RdEnMem : OUT std_logic;
		WrEnMem : OUT std_logic;
		RFsource : OUT std_logic_vector(1 downto 0);
		RFdest : OUT std_logic
		);
	END COMPONENT;

	Inst_CU_module: CU_module PORT MAP(
		OP => ,
		OP3 => ,
		icc => ,
		Cond => ,
		wren => ,
		PCsource => ,
		ALUOP => ,
		RdEnMem => ,
		WrEnMem => ,
		RFsource => ,
		RFdest => ,
		clkFPGA => 
	);


