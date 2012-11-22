
-- VHDL Instantiation Created from source file WindowManager.vhd -- 08:56:36 11/22/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT WindowManager
	PORT(
		cwp : IN std_logic_vector(4 downto 0);
		rs1 : IN std_logic_vector(4 downto 0);
		rs2 : IN std_logic_vector(4 downto 0);
		rd : IN std_logic_vector(4 downto 0);
		op3 : IN std_logic_vector(5 downto 0);          
		ncwp : OUT std_logic_vector(4 downto 0);
		nrs1 : OUT std_logic_vector(5 downto 0);
		nrs2 : OUT std_logic_vector(5 downto 0);
		nrd : OUT std_logic_vector(5 downto 0);
		no7 : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_WindowManager: WindowManager PORT MAP(
		cwp => ,
		rs1 => ,
		rs2 => ,
		rd => ,
		op3 => ,
		ncwp => ,
		nrs1 => ,
		nrs2 => ,
		nrd => ,
		no7 => 
	);


