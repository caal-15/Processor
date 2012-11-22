library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.numeric_bit.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU_module is
    Port ( ALUOP : in  STD_LOGIC_VECTOR (7 downto 0);
           Carry : in  STD_LOGIC;
           OP1 : in  STD_LOGIC_VECTOR (31 downto 0);
           OP2 : in  STD_LOGIC_VECTOR (31 downto 0);
           data: out  STD_LOGIC_VECTOR(31 downto 0));
end ALU_module;

architecture Behavioral of ALU_module is

signal dataOut : std_logic_vector (31 downto 0);

begin

	process(ALUOP,OP1,OP2,Carry) begin
		case ALUOP is
			when x"01" => --ADD
				dataOut <= OP1 + OP2;
			when x"02" => --ADDcc
				dataOut <= OP1 + OP2;
			when x"03"	=> --ADDx
				dataOut <= OP1 + OP2 + Carry;
			when x"04"	=> --ADDxcc
				dataOut <= OP1 + OP2 + Carry;
			when x"05"	=> --SUB
				dataOut <= OP1 - OP2;
			when x"06"	=> --SUBcc
				dataOut <= OP1 - OP2;	
			when x"07"	=> --SUBx
				dataOut <= OP1 - OP2 - Carry;
			when x"08"	=> --SUBxcc
				dataOut <= OP1 - OP2 - Carry;	
			when x"09"	=> --AND
				dataOut <= OP1 AND OP2;
			when x"0A"	=> --ANDcc
				dataOut <= OP1 AND OP2;	
			when x"0B"	=> --ANDx
				dataOut <= OP1 AND OP2;
				dataOut(0) <= dataOut(0) AND Carry;
			when x"0C"	=> --ANDxcc
				dataOut <= OP1 AND OP2;
				dataOut(0) <= dataOut(0) AND Carry;	
			when x"0D"	=> --OR
				dataOut <= OP1 OR OP2;
			when x"0E"	=> --ORcc
				dataOut <= OP1 OR OP2;	
			when x"0F"	=> --ORx
				dataOut <= OP1 OR OP2;
				dataOut(0) <= dataOut(0) OR Carry;
			when x"10"	=> --ORxcc
				dataOut <= OP1 OR OP2;
				dataOut(0) <= dataOut(0) OR Carry;	
			when x"11"	=> --XOR
				dataOut <= OP1 XOR OP2;
			when x"12"	=> --XORcc
				dataOut <= OP1 XOR OP2;	
			when x"13"	=> --XORx
				dataOut <= OP1 XOR OP2;
				dataOut(0) <= dataOut(0) XOR Carry;
			when x"14"	=> --XORxcc
				dataOut <= OP1 XOR OP2;
				dataOut(0) <= dataOut(0) XOR Carry;	
			when x"15"	=> --SLL
				dataOut(31 downto conv_integer(OP2)) <= OP1(31 downto conv_integer(OP2));
				dataOut((conv_integer(OP2)-1) downto 0) <= (others => '0');
			when x"16"	=> --SRL
				dataOut((31-conv_integer(OP2)) downto 0) <= OP1(31 downto conv_integer(OP2));
				dataOut(31 downto (31-conv_integer(OP2))) <= (others => '0');	
			when x"17"	=> --SRA
				dataOut((31-conv_integer(OP2)) downto 0) <= OP1(31 downto conv_integer(OP2));
				dataOut(31 downto (31-conv_integer(OP2))) <= OP1((conv_integer(OP2)-1) downto 0);
			when x"18"  =>	--JUMPL
				dataOut <= OP1 + OP2;
			when x"19"  => --SAVE
				dataOut <= OP1 + OP2;
			when x"1A"  => --STORE
				dataOut <= OP1 + OP2;
						
			when others =>
				dataOut <= OP1;
		end case;
	end process;
	data<= dataOut;	
end Behavioral;

