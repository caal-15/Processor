----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:47:21 11/22/2012 
-- Design Name: 
-- Module Name:    Processor - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Processor is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           DataOut : out  STD_LOGIC_VECTOR (31 downto 0));
end Processor;

architecture Behavioral of Processor is

COMPONENT ADDER1_module
PORT(
	OP1 : IN std_logic_vector(4 downto 0);          
	AddOut : OUT std_logic_vector(4 downto 0)
	);
END COMPONENT;

COMPONENT ADDER2_module
	PORT(
		OP1 : IN std_logic_vector(4 downto 0);
		OP2 : IN std_logic_vector(31 downto 0);          
		AddOut : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT ADDER3_module
	PORT(
		OP1 : IN std_logic_vector(29 downto 0);
		OP2 : IN std_logic_vector(4 downto 0);          
		Addout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT ALU_module
	PORT(
		ALUOP : IN std_logic_vector(7 downto 0);
		Carry : IN std_logic;
		OP1 : IN std_logic_vector(31 downto 0);
		OP2 : IN std_logic_vector(31 downto 0);          
		data : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT CU_module
	PORT(
		OP : IN std_logic_vector(1 downto 0);
		OP3 : IN std_logic_vector(5 downto 0);
		icc : IN std_logic_vector(3 downto 0);
		Cond : IN std_logic_vector(3 downto 0);
		wren : OUT std_logic;
		PCsource : OUT std_logic_vector(1 downto 0);
		ALUOP : OUT std_logic_vector(7 downto 0);
		RdEnMem : OUT std_logic;
		WrEnMem : OUT std_logic;
		RFsource : OUT std_logic_vector(1 downto 0);
		RFdest : OUT std_logic
		);
	END COMPONENT;

COMPONENT DataMem_module
	PORT(
		WrEnMem : IN std_logic;
		RdEnMem : IN std_logic;
		reset : IN std_logic;
		crd : IN std_logic_vector(31 downto 0);
		ALUResult : IN std_logic_vector(31 downto 0);          
		DataToMem : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT InstMemory_module
	PORT(
		reset : IN std_logic;
		address : IN std_logic_vector(4 downto 0);          
		dataOut : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

COMPONENT MUX1_module
	PORT(
		nRDin : IN std_logic_vector(5 downto 0);
		o15 : IN std_logic_vector(5 downto 0);
		RFDest : IN std_logic;          
		nRD : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
	COMPONENT MUX2_module
	PORT(
		CRS2 : IN std_logic_vector(31 downto 0);
		SEUin : IN std_logic_vector(31 downto 0);
		i : IN std_logic;          
		OP2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT MUX3_module
	PORT(
		ALUaddress : IN std_logic_vector(31 downto 0);
		PC_dis30 : IN std_logic_vector(31 downto 0);
		PC_seu : IN std_logic_vector(31 downto 0);
		PC_4 : IN std_logic_vector(4 downto 0);
		PCsource : IN std_logic_vector(1 downto 0);          
		MUXout : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;

COMPONENT MUX4_module
	PORT(
		PC : IN std_logic_vector(4 downto 0);
		RFsource : IN std_logic_vector(1 downto 0);
		DataToMem : IN std_logic_vector(31 downto 0);
		ALUResult : IN std_logic_vector(31 downto 0);          
		DataToReg : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT PC_module
	PORT(
		nextInstruction : IN std_logic_vector(4 downto 0);
		reset : IN std_logic;
		clkFPGA : IN std_logic;          
		outInstruction : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;
	
	COMPONENT PSRModifier
	PORT(
		crs1 : IN std_logic_vector(31 downto 0);
		crs2 : IN std_logic_vector(31 downto 0);
		ALUOp : IN std_logic_vector(7 downto 0);
		ALUOut : IN std_logic_vector(31 downto 0);          
		NZVC : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

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
	
	COMPONENT RegisterFile_module
	PORT(
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
	
	COMPONENT SEU_module
	PORT(
		simm13 : IN std_logic_vector(12 downto 0);          
		seuOut : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
		
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
	
	COMPONENT SEU22_module
	PORT(
		disp22 : IN std_logic_vector(21 downto 0);          
		seuOut : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
signal nPCtoPC : std_logic_vector (4 downto 0);
signal PCtoOthers : std_logic_vector(4 downto 0);
signal IMout : std_logic_vector(31 downto 0);
signal nrdWM : std_logic_vector (5 downto 0);
signal o7WM : std_logic_vector (5 downto 0);
signal pc_4 : std_logic_vector (4 downto 0);
signal disp22e : std_logic_vector (31 downto 0);
signal disp22_PC : std_logic_vector (31 downto 0);
signal disp30_PC : std_logic_vector (31 downto 0);	
signal cualuop : std_logic_vector (7 downto 0);
signal carry_p : std_logic;
signal crs1_p : std_logic_vector (31 downto 0);
signal crs2_p : std_logic_vector (31 downto 0);
signal seusimm13 : std_logic_vector (31 downto 0);
signal frs2 : std_logic_vector (31 downto 0);
signal ALUout : std_logic_vector (31 downto 0); 
signal icc_p : std_logic_vector (3 downto 0); 
signal wren_p : std_logic;
signal rfdest_p : std_logic;
signal rfsource_p : std_logic_vector (1 downto 0); 
signal pcsource_p : std_logic_vector (1 downto 0);
signal rdenmem_p : std_logic;
signal wrenmem_p : std_logic;
signal crd_p : std_logic_vector (31 downto 0); 
signal datatoreg_p : std_logic_vector (31 downto 0); 
signal datatomux : std_logic_vector (31 downto 0); 
signal mux1torf : std_logic_vector (5 downto 0);
signal nrs1_p : std_logic_vector (5 downto 0);
signal nrs2_p : std_logic_vector (5 downto 0);
signal cwp_p : std_logic_vector (4 downto 0);
signal ncwp_p : std_logic_vector (4 downto 0);
signal nzvc_p : std_logic_vector (3 downto 0);
signal mux3tonpc : std_logic_vector (4 downto 0);





begin
	Inst_SEU22_module: SEU22_module PORT MAP(
		disp22 => IMout(21 downto 0),
		seuOut => disp22e
	);
	Inst_ADDER1_module: ADDER1_module PORT MAP(
			OP1 => PCtoOthers,
			AddOut => pc_4 
		);
	Inst_ADDER2_module: ADDER2_module PORT MAP(
		OP1 => PCtoOthers,
		OP2 => disp22e,
		AddOut => disp22_PC
	);
	Inst_ADDER3_module: ADDER3_module PORT MAP(
		OP1 => IMout(29 downto 0),
		OP2 => PCtoOthers,
		Addout => disp30_PC
	);
	Inst_ALU_module: ALU_module PORT MAP(
		ALUOP => cualuop,
		Carry => carry_p,
		OP1 => crs1_p,
		OP2 => frs2,
		data => ALUout
	);
	Inst_CU_module: CU_module PORT MAP(
		OP => IMout (31 downto 30),
		OP3 => IMout (24 downto 19),
		icc => icc_p,
		Cond => IMout (28 downto 25),
		wren => wren_p,
		PCsource => pcsource_p,
		ALUOP => cualuop,
		RdEnMem => rdenmem_p,
		WrEnMem => wrenmem_p,
		RFsource => rfsource_p,
		RFdest => rfdest_p
		
	);
	Inst_DataMem_module: DataMem_module PORT MAP(
		WrEnMem => wrenmem_p,
		RdEnMem => rdenmem_p,
		reset => reset,
		crd => crd_p,
		ALUResult => ALUout,
		DataToMem => datatomux 
	);
	Inst_InstMemory_module: InstMemory_module PORT MAP(
		
		reset => reset,
		address => PCtoOthers,
		dataOut => IMout 
	);
	Inst_MUX1_module: MUX1_module PORT MAP(
		nRDin => nrdWM,
		o15 => o7WM,
		RFDest => rfdest_p,
		nRD => mux1torf 
	);
	Inst_MUX2_module: MUX2_module PORT MAP(
		CRS2 => crs2_p,
		SEUin => seusimm13,
		i => IMout (13),
		OP2 => frs2
	);
	Inst_MUX3_module: MUX3_module PORT MAP(
		ALUaddress => ALUout,
		PC_dis30 => disp30_PC,
		PC_seu => disp22_PC,
		PC_4 => pc_4,
		PCsource => pcsource_p,
		MUXout => mux3tonpc
	);
	Inst_MUX4_module: MUX4_module PORT MAP(
		PC => PCtoOthers,
		RFsource => rfsource_p,
		DataToMem => datatomux ,
		ALUResult => ALUout,
		DataToReg => datatoreg_p 
	);
	Inst_PC_module: PC_module PORT MAP(
		nextInstruction => nPCtoPC,
		reset => reset,
		clkFPGA => clk,
		outInstruction => PCtoOthers 
	);
	Inst_nPC_module: PC_module PORT MAP(
		nextInstruction => mux3tonpc,
		reset => reset,
		clkFPGA => clk,
		outInstruction => nPCtoPC
	);


	Inst_PSRModifier: PSRModifier PORT MAP(
		crs1 => crs1_p ,
		crs2 => crs2_p,
		ALUOp => cualuop,
		ALUOut => ALUout,
		NZVC => nzvc_p
	);
	Inst_PSR_module: PSR_module PORT MAP(
		clkFPGA => clk,
		reset => reset ,
		NZVC => nzvc_p,
		nCWP => ncwp_p,
		CWP => cwp_p,
		Carry => carry_p,
		icc => icc_p 
	);
	Inst_RegisterFile_module: RegisterFile_module PORT MAP(
		
		reset => reset,
		nRS1 => nrs1_p,
		nRS2 => nrs2_p,
		nRSD => mux1torf,
		DATATOREG => datatoreg_p ,
		wren => wren_p,
		CRS1 => crs1_p,
		CRS2 => crs2_p,
		CRSD => crd_p
	);
	Inst_SEU_module: SEU_module PORT MAP(
		simm13 => IMout (12 downto 0),
		seuOut =>  seusimm13
	);
	Inst_WindowManager: WindowManager PORT MAP(
		cwp => cwp_p,
		rs1 => IMout (18 downto 14),
		rs2 => IMout (4 downto 0) ,
		rd => IMout (29 downto 25),
		op3 => IMout (24 downto 19),
		ncwp => ncwp_p,
		nrs1 => nrs1_p,
		nrs2 => nrs2_p,
		nrd => nrdWM,
		no7 => o7WM
	);
	
DataOut<=datatoreg_p;	
	
	

	


end Behavioral;

