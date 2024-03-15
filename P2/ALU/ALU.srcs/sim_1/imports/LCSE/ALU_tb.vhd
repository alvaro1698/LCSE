----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.12.2023 17:27:01
-- Design Name: 
-- Module Name: ALU_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_tb is
--  Port ( );
end ALU_tb;

architecture Testbench of ALU_tb is

component ALU is 
  port ( Reset : in STD_LOGIC;
          Clk           : in STD_LOGIC;
          u_instruction : in Alu_op;
          Databus       : inout STD_LOGIC_VECTOR (7 downto 0);
          Index_Reg     : out STD_LOGIC_vector(7 downto 0);
          FlagZ         : out STD_LOGIC;
          FlagC         : out STD_LOGIC;
          FlagN         : out STD_LOGIC;
          FlagE         : out STD_LOGIC);    
   end component;
    
    signal Reset, Clk, FlagZ, FlagC, flagN, FlagE: STD_LOGIC;
    signal u_instruction: Alu_op;
    signal Databus, Index_Reg: STD_LOGIC_VECTOR (7 downto 0);
    
    constant Tclk: time := 10 ns;
    
begin
    Unit_ALU: ALU
    port map(
        Clk => Clk,
        Reset => Reset,
        u_instruction => u_instruction,
        Databus => Databus,
        Index_Reg => Index_Reg,
        FlagZ => FlagZ,
        FlagC => FlagC,
        FlagN => FlagN,
        FlagE => FlagE);
        
reset <= '1', '0' after 75 ns, '1' after 175 ns;    

  p_clk : PROCESS
  BEGIN
     Clk <= '1';
     wait for Tclk/2;
     Clk <= '0';
     wait for Tclk/2;
  END PROCESS;
  
  p_entradas : PROCESS
  BEGIN
    wait for 200 ns;
    databus <= (others => 'Z');
    u_instruction <= NOP;
    wait for 2*TClk;
    
    databus <= "00001111";
    u_instruction <= OP_LDA;
    wait for 2*TClk;

    databus <= "00010000";
    u_instruction <= OP_LDB;
    wait for 2*TClk;
  
    databus <= "11100000";
    u_instruction <= OP_LDACC;
    wait for 2*TClk;
    
    databus <= "11111111";
    u_instruction <= OP_LDID;
    wait for 2*TClk; 

    databus <= (others => 'Z');
    u_instruction <= OP_MVACC2ID;
    wait for 2*TClk;   
 
    databus <= (others => 'Z');
    u_instruction <= OP_MVACC2A;
    wait for 2*TClk;
    
    databus <= (others => 'Z');
    u_instruction <= OP_MVACC2B;
    wait for 2*TClk;                     

    databus <= "00001111";
    u_instruction <= OP_LDA;
    wait for 2*TClk;

    databus <= "00010000";
    u_instruction <= OP_LDB;
    wait for 2*TClk;

    databus <= (others => 'Z');
    u_instruction <= OP_ADD;
    wait for 2*TClk;      
 
    databus <= (others => 'Z');
    u_instruction <= OP_SUB;
    wait for 2*TClk;     

    databus <= (others => 'Z');
    u_instruction <= OP_SHIFTL;
    wait for 2*TClk;     

    databus <= (others => 'Z');
    u_instruction <= OP_SHIFTR;
    wait for 2*TClk;   
      
    databus <= (others => 'Z');
    u_instruction <= OP_AND;
    wait for 2*TClk;         

    databus <= (others => 'Z');
    u_instruction <= OP_OR;
    wait for 2*TClk;     

    databus <= (others => 'Z');
    u_instruction <= OP_XOR;
    wait for 2*TClk;     
 
    databus <= (others => 'Z');
    u_instruction <= OP_CMPE;
    wait for 2*TClk;
    
    databus <= (others => 'Z');
    u_instruction <= OP_CMPG;
    wait for 2*TClk;              

    databus <= (others => 'Z');
    u_instruction <= OP_CMPL;
    wait for 2*TClk;     

    databus <= "00110001";
    u_instruction <= OP_LDA;
    wait for 2*TClk;

    databus <= (others => 'Z');
    u_instruction <= OP_ASCII2BIN;
    wait for 2*TClk; 
 
    databus <= "00001000";
    u_instruction <= OP_LDA;
    wait for 2*TClk;
    
    databus <= (others => 'Z');
    u_instruction <= OP_BIN2ASCII;
    wait for 2*TClk;         
    
    u_instruction <= OP_OEACC;
    wait for 2*TClk;     
                          
    wait; --Para matar el process      
  END PROCESS; 
end Testbench;
