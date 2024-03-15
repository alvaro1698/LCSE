----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.09.2023 13:45:36
-- Design Name: 
-- Module Name: Receiver - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RS232_RX is
    Port (  CLK: in STD_LOGIC;
    Reset        : in  STD_LOGIC;
    LineRD_in    : in  STD_LOGIC;
    Valid_out    : out STD_LOGIC;
    Code_out     : out  STD_LOGIC;
    Store_out    : out  STD_LOGIC
           
           );
end RS232_RX;

architecture Behavioral of RS232_RX is
signal contador : unsigned (7 downto 0); --Hasta 173
signal contador_bit: unsigned (2 downto 0);
type estados_receptor_t is (Idle, StartBit, RcvData, StopBit);
signal estado_receptor : estados_receptor_t;
begin
 
  PROC_SHIFT : process (CLK,reset)
    begin
    if reset='0' then
        Valid_out<='0';
        Code_out<='0';
        Store_out<='0';
        contador<=(others=>'0');
        contador_bit<=(others=>'0');
        estado_receptor<= Idle;
        elsif CLK'event and CLK='1' then
         Valid_out<='0';
         Store_out<='0';
         contador<=contador+1;
         
         case estado_receptor is
              -- when 0=>
              when Idle=>                   
                   if(LineRD_in='0') then
                     estado_receptor<=StartBit;
   
                     contador<=(others=>'0');
                    end if;	
                     
               when StartBit=>
                   if (contador=87) then ---MITAD BIT
                       contador<=(others=>'0');
                       estado_receptor<= RcvData; 
                    end if;
                    
               when RcvData=>
               if (contador=173) then   
                     contador<=(others=>'0');
                     Valid_out<='1';
                     code_out<=LineRD_in;
                       if (contador_bit=7) then --DUDA CODE_OUT
                            estado_receptor<=StopBit;
                            contador_bit<=(others=>'0');
                        else
                            contador_bit<=contador_bit+1;
                    
                         end if;                     
                end if;               
                when StopBit=>
               if (contador=173) then
                     contador<=(others=>'0');
                       if (LineRD_in='1') then
                            Store_out<='1';  
                        end if;
                        estado_receptor<=Idle;
                end if;                 
             end case ;  
       end if;

    end process;


end Behavioral;
