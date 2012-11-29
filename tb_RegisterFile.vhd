--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:20:50 11/28/2012
-- Design Name:   
-- Module Name:   /home/pin3da/Repos/Processor/tb_RegisterFile.vhd
-- Project Name:  Core_iDeivid
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegisterFile_module
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
 
ENTITY tb_RegisterFile IS
END tb_RegisterFile;
 
ARCHITECTURE behavior OF tb_RegisterFile IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegisterFile_module
    PORT(
         reset : IN  std_logic;
         nRS1 : IN  std_logic_vector(5 downto 0);
         nRS2 : IN  std_logic_vector(5 downto 0);
         nRSD : IN  std_logic_vector(5 downto 0);
         DATATOREG : IN  std_logic_vector(31 downto 0);
         wren : IN  std_logic;
         CRS1 : OUT  std_logic_vector(31 downto 0);
         CRS2 : OUT  std_logic_vector(31 downto 0);
         CRSD : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal nRS1 : std_logic_vector(5 downto 0) := (others => '0');
   signal nRS2 : std_logic_vector(5 downto 0) := (others => '0');
   signal nRSD : std_logic_vector(5 downto 0) := (others => '0');
   signal DATATOREG : std_logic_vector(31 downto 0) := (others => '0');
   signal wren : std_logic := '0';

 	--Outputs
   signal CRS1 : std_logic_vector(31 downto 0);
   signal CRS2 : std_logic_vector(31 downto 0);
   signal CRSD : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegisterFile_module PORT MAP (
          reset => reset,
          nRS1 => nRS1,
          nRS2 => nRS2,
          nRSD => nRSD,
          DATATOREG => DATATOREG,
          wren => wren,
          CRS1 => CRS1,
          CRS2 => CRS2,
          CRSD => CRSD
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      reset <= '1';
      wait for 100 ns;	
      reset <= '0';
      wait for 100 ns;	
      nrs1 <= "000000";
      nrs2 <= "000001";
      nrsd <= "000010";
      wait for 100 ns;	
      nrs1 <= "000000";
      nrs2 <= "000001";
      nrsd <= "000000";
      wait for 100 ns;	
      wren <= '1';
      datatoreg<=X"11111111";
      nrs1 <= "000000";
      nrs2 <= "000001";
      nrsd <= "000010";
      wait for 100 ns;	
      wren <= '0';
      datatoreg<=X"11111111";
      nrs1 <= "000000";
      nrs2 <= "000001";
      nrsd <= "000010";

      -- insert stimulus here 

      wait;
   end process;

END;
