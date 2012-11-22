library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CU_module is
    Port ( OP  : in  STD_LOGIC_VECTOR (1 downto 0);
           OP3  : in  STD_LOGIC_VECTOR (5 downto 0);
           icc : in  STD_LOGIC_VECTOR (3 downto 0);
           Cond : in  STD_LOGIC_VECTOR (3 downto 0);
           wren : out  STD_LOGIC;
           PCsource : out  STD_LOGIC_VECTOR (1 downto 0);
           ALUOP : out  STD_LOGIC_VECTOR (7 downto 0);
           RdEnMem : out  STD_LOGIC;
           WrEnMem : out  STD_LOGIC;
           RFsource : out  STD_LOGIC_VECTOR (1 downto 0);
           RFdest : out  STD_LOGIC;
           clkFPGA : in  STD_LOGIC);
end CU_module;

architecture Behavioral of CU_module is
signal calcicc : std_logic :='0';
begin

process(clkFPGA, icc, Cond)

begin

	if(rising_edge(clkFPGA))then 
		PCsource <= "11";--defaults
		RFsource <= "01";
		wren <= '1';
		RdEnMem <= '0';
		WrEnMem <= '0';
		RFdest <= '0';
		
		if(OP = "10")then
			case OP3 is
			
				when "000000" => ALUOP <= x"01"; --INICION ADDERs
				when "010000" => ALUOP <= x"02"; --ADDcc
				when "001000" => ALUOP <= x"03";	--ADDx
				when "011000" => ALUOP <= x"04"; -- FIN ADDERS
				
				when "000100" => ALUOP <= x"05"; --INICIO SUBs
				when "010100" => ALUOP <= x"06"; --SUBcc
				when "001100" => ALUOP <= x"07";	--SUBx
				when "011100" => ALUOP <= x"08"; --FIN SUBs
				
				when "000001" => ALUOP <= x"09"; --INICIO ANDs 
				when "010001" => ALUOP <= x"0A"; --ANDcc
				when "000101" => ALUOP <= x"0B";	--ANDn
				when "010101" => ALUOP <= x"0C"; --FIN ANDs	
				
				when "000010" => ALUOP <= x"0D"; --INICIO ORs
				when "010010" => ALUOP <= x"0E"; --ORcc
				when "000110" => ALUOP <= x"0F";	--ORn
				when "010110" => ALUOP <= x"10"; --FIN ORs
				
				when "000011" => ALUOP <= x"11"; --INICIO XORs
				when "010011" => ALUOP <= x"12"; --XORcc
				when "000111" => ALUOP <= x"13";	--NXOR
				when "010111" => ALUOP <= x"14"; --FIN XORs
				
				when "100101" => ALUOP <= x"15"; --SLL
				when "100110" => ALUOP <= x"16";	--SRL
				when "100111" => ALUOP <= x"17"; --SRA
				
				when "111000" => 
					ALUOP <= x"18";
					RFsource <= "10";--selecciona PC como datatoreg
					PCsource <= "00";--operacion de la alu
					RFdest <= '0';--seleccion nRD
					
				when others => ALUOP <= x"00";
			end case;
			
		
		elsif(OP = "11")then
			case OP3 is
					
				when "000000" =>--load word
					ALUOP <= X"19";
					RdEnMem <= '1';--activa lectura en memoria
					WrEnMem <= '0';
					RFsource <= "01";--selecciona dato de memoria como datatoreg
				
				when "000100" =>--store word
					ALUOP <= x"20";
					WrEnMem <= '1';--activa escritura en memoria
					RdEnMem <= '0';
					wren <= '0';--desactiva escritura en register
									
					
				when others => ALUOP <= x"00";
			end case;
			
		elsif(OP="01") then
			ALUOP <= x"00";
			wren <='0';
			RFsource <= "10";--selecciona PC como datatoreg
			RFdest <= '1';--selecciona o7 como registro de destino
			PCsource <=  "01";--selecciona disp30 como source del PC
			WrEnMem <= '0';
			RdEnMem <= '1';

		elsif(OP="00") then
		   --NZCV
         wren<='0';
			ALUOP<=x"00";	
			case cond is
			
				when "1000" => PCsource <= "10";--BA escoge disp22 como source 
				
				when "1001" =>--BNE
               calcicc <= not icc(2);				
					if(calcicc='1') then PCsource <= "10";
				   end if;
					
				when "0001" =>--BE 
				   calcicc <= icc(2);
					if(calcicc='1') then PCsource <= "10";
				   end if;
				
				when "1010" =>--BG
					calcicc <= not (icc(2) or (icc(3) xor icc(0)));
					if(calcicc='1') then PCsource <= "10";
				   end if;
				when "0010" =>--BLE
					calcicc <= icc(2) or (icc(3) xor icc(0));
					if(calcicc='1') then PCsource <= "10";
				   end if;
				when "1011" =>--BGE
					calcicc <= not(icc(3) xor icc(0));
					if(calcicc='1') then PCsource <= "10";
				   end if;
				when "0011" =>--BL
					calcicc <= (icc(3) xor icc(0));
					if(calcicc='1') then PCsource <= "10";
				   end if;	
				when "1100" =>--BGU
					calcicc <= not(icc(1) or icc(2));
					if(calcicc='1') then PCsource <= "10";
				   end if;
				when "0100" =>--BLEU
					calcicc <= (icc(1) or icc(2));
					if(calcicc='1') then PCsource <= "10";
				   end if;
				when "1101" =>--BCC
					calcicc <= not icc(1);
					if(calcicc='1') then PCsource <= "10";
				   end if;
				when "0101" =>--BCS
					calcicc <=  icc(1);
					if(calcicc='1') then PCsource <= "10";
				   end if;
				when "1110" =>--BPOS
					calcicc <= not icc(3);
					if(calcicc='1') then PCsource <= "10";
				   end if;
				when "0110" =>--BNEG
					calcicc <=  icc(3);
					if(calcicc='1') then PCsource <= "10";
				   end if;
				when "1111" =>--BVC
					calcicc <= not icc(0);
					if(calcicc='1') then PCsource <= "10";
				   end if;
				when "0111" =>--BVS
					calcicc <=  icc(0);
					if(calcicc='1') then PCsource <= "10";
				   end if;	
					
					
					
				when others => PCsource <="00";	
			end case;	
		end if;
	end if;
	
					

end process;
end Behavioral;

