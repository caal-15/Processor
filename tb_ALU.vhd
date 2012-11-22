--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:41:21 11/22/2012
-- Design Name:   
-- Module Name:   F:/Documentos/Arquitectura/Processor/tb_ALU.vhd
-- Project Name:  Core_iDeivid
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_module
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_ALU IS
END tb_ALU;
 
ARCHITECTURE behavior OF tb_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_module
    PORT(
         ALUOP : IN  std_logic_vector(7 downto 0);
         Carry : IN  std_logic;
         OP1 : IN  std_logic_vector(31 downto 0);
         OP2 : IN  std_logic_vector(31 downto 0);
         data : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ALUOP : std_logic_vector(7 downto 0) := (others => '0');
   signal Carry : std_logic := '0';
   signal OP1 : std_logic_vector(31 downto 0) := (others => '0');
   signal OP2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal data : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_module PORT MAP (
          ALUOP => ALUOP,
          Carry => Carry,
          OP1 => OP1,
          OP2 => OP2,
          data => data
        );

   -- Clock process definitions
  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		ALUOP<=X"01";
      Carry <= '1';
		OP1 <= x"00000001";
		OP2 <= x"00000006";
		
		wait for 100 ns;	
		
      
      -- insert stimulus here 

      wait;
   end process;

END;
