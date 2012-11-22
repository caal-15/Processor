--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:59:14 11/19/2012
-- Design Name:   
-- Module Name:   F:/Documentos/Arquitectura/Processor/tb_CU.vhd
-- Project Name:  Core_iDeivid
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CU_module
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY tb_CU IS
END tb_CU;
 
ARCHITECTURE behavior OF tb_CU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CU_module
    PORT(
         OP : IN  std_logic_vector(1 downto 0);
         OP3 : IN  std_logic_vector(5 downto 0);
         icc : IN  std_logic_vector(3 downto 0);
         Cond : IN  std_logic_vector(3 downto 0);
         wren : OUT  std_logic;
         PCsource : OUT  std_logic_vector(1 downto 0);
         ALUOP : OUT  std_logic_vector(7 downto 0);
         RdEnMem : OUT  std_logic;
         WrEnMem : OUT  std_logic;
         RFsource : OUT  std_logic_vector(1 downto 0);
         RFdest : OUT  std_logic;
         clkFPGA : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal OP : std_logic_vector(1 downto 0) := (others => '0');
   signal OP3 : std_logic_vector(5 downto 0) := (others => '0');
   signal icc : std_logic_vector(3 downto 0) := (others => '0');
   signal Cond : std_logic_vector(3 downto 0) := (others => '0');
   signal clkFPGA : std_logic := '0';

 	--Outputs
   signal wren : std_logic;
   signal PCsource : std_logic_vector(1 downto 0);
   signal ALUOP : std_logic_vector(7 downto 0);
   signal RdEnMem : std_logic;
   signal WrEnMem : std_logic;
   signal RFsource : std_logic_vector(1 downto 0);
   signal RFdest : std_logic;

   -- Clock period definitions
   constant clkFPGA_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CU_module PORT MAP (
          OP => OP,
          OP3 => OP3,
          icc => icc,
          Cond => Cond,
          wren => wren,
          PCsource => PCsource,
          ALUOP => ALUOP,
          RdEnMem => RdEnMem,
          WrEnMem => WrEnMem,
          RFsource => RFsource,
          RFdest => RFdest,
          clkFPGA => clkFPGA
        );

   -- Clock process definitions
   clkFPGA_process :process
   begin
		clkFPGA <= '0';
		wait for clkFPGA_period;
		clkFPGA <= '1';
		wait for clkFPGA_period;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
      
      icc<="0010";--suma
		op<="10";
		op3<="000000";
		cond<="0000";
		wait for 100 ns;	
      icc<="0011";--store
		op<="11";
		op3<="000100";
		cond<="0000";
		wait for 100 ns;	
      icc<="0011";
		op<="01";
		op3<="000000";
		cond<="0000";
      wait for 100 ns;	
      icc<="0011";
		op<="00";
		op3<="000100";
		cond<="1000";
		
		wait;

      -- insert stimulus here 

      wait;
   end process;

END;
