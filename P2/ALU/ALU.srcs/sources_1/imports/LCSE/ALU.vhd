----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.12.2023 15:35:42
-- Design Name: 
-- Module Name: ALU - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use work.PIC_PKG.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( Reset : in STD_LOGIC;
           Clk           : in STD_LOGIC;
           u_instruction : in Alu_op;
           Databus       : inout STD_LOGIC_VECTOR (7 downto 0);
           Index_Reg     : out STD_LOGIC_vector(7 downto 0);
           FlagZ         : out STD_LOGIC;
           FlagC         : out STD_LOGIC;
           FlagN         : out STD_LOGIC;
           FlagE         : out STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

signal A, B, ACC :  std_logic_vector(7 downto 0);
signal FlagCMP, FlagCONV: std_logic;


begin

process (reset, clk)
begin
    if reset = '0' then
        FlagC <= '0';
        FlagN <= '0';
        A <= (others => '0');
        B <= (others => '0');
        ACC <= (others => '0');
        Index_reg <= (others => '0');
        Databus <= (others => 'Z');    
                                    
    elsif clk'event and clk='1' then
    
    case u_instruction is
    
    when nop =>
        FlagC <= '0';
        FlagN <= '0';
        databus <= (others=>'Z');
        
    when op_lda =>
        A <= databus;
    
    when op_ldb =>
        B <= databus; 
        
    when op_ldacc =>
        ACC <= databus;
     
    when op_ldid =>
        Index_Reg <= databus;
   
    when op_mvacc2id =>
         Index_Reg <= ACC; 
         
    when op_mvacc2a =>
         A <= ACC;
      
    when op_mvacc2b =>
         B <= ACC;    
 
    when op_add =>
         ACC <= std_logic_vector(unsigned(A)+unsigned(B));
         
    when op_sub =>
         ACC <= std_logic_vector(unsigned(A)-unsigned(B));
                      
    when op_shiftl =>
         ACC <= ACC(6 downto 0) & '0';  
         
    when op_shiftr =>
         ACC <= '0' & ACC(7 downto 1);      
    
    when op_and =>
         ACC <= A and B;
     
    when op_or =>
         ACC <= A or B;  
    
    when op_xor =>
        ACC <= A xor B;
    
    when op_cmpe =>
        if(A=B) then 
            FlagCMP <= '1';
        else
            FlagCMP <= '0';
       end if;               
    
    when op_cmpg =>
        if(A>B) then
            FlagCMP <= '1';
        else
            FlagCMP <= '0';
        end if;
    
    when op_cmpl =>
        if (A<B) then
            FlagCMP <= '1';
        else
            FlagCMP <= '0';
        end if;

    when op_ascii2bin =>
        if (A < "00110000" or A > "00111001") then 
            FlagCONV <= '1';
            ACC <= "11111111";
        else
           A <= std_logic_vector(unsigned(A)-30);
           FlagCONV <= '0';
        end if;
    when op_bin2ascii =>
        if (A < "00000000" or A > "00001001") then 
           FlagCONV <= '1';
           ACC <= "11111111";
        else
           A <= std_logic_vector(unsigned(A)+30);
           FlagCONV <= '0';
            end if;
    when op_oeacc =>
           Databus <= ACC;        
    END CASE;
end if;
end process;

FlagZ <= '1' when ACC="00000000" else
         '1' when FlagCMP = '1' else 
         '0';  

FlagE <= '1' when FlagCONV = '1' else
         '0';          

end Behavioral;
