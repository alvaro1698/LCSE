----------------------------------------------------------------------------------
--- Company: 
-- Engineer: 
-- 
-- Create Date: 26.10.2023 15:42:30
-- Design Name: 
-- Module Name: DMA - Behavioral
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

entity DMA is
    Port (
           Reset :     in STD_LOGIC;
           CLK :       in STD_LOGIC;
           RCVD_Data : in STD_LOGIC_VECTOR (7 downto 0);
           --RX_Full :   in STD_LOGIC;
           RX_Empty :  in STD_LOGIC;
           Data_Read : out STD_LOGIC;
           ACK_out :   in STD_LOGIC;
           TX_RDY :    in STD_LOGIC;
           Valid_D :   out STD_LOGIC;
           TX_Data :   out STD_LOGIC_VECTOR (7 downto 0);
           Address :   out STD_LOGIC_VECTOR (7 downto 0);
           Databus :   inout STD_LOGIC_VECTOR (7 downto 0);
           Write_en :  out STD_LOGIC;
           OE :        out STD_LOGIC;
           DMA_RQ :    out STD_LOGIC;
           DMA_ACK :   in STD_LOGIC;
           Send_comm : in STD_LOGIC;
           READY :     out STD_LOGIC);
end DMA;

architecture Behavioral of DMA is

    type estados is (Idle,StartRec,RW1,RW2,RW3,RtnControl,EndRec,StartTrans,SendT1,Wait1,SendT2,Wait2,EndTrans);
    signal current_state, next_state: estados;
    signal OE_temp,DMA_RQ_temp,READY_temp: std_logic;
    signal cnt_R,cnt_r_temp: unsigned(1 downto 0);
    signal ACK_out_Ret: std_logic;

    
begin

PROCESS (current_state,RCVD_Data,RX_empty,ACK_out,TX_RDY,DMA_ACK,Send_comm,cnt_R,reset,databus,ACK_out_ret)
 BEGIN
       -- Asignaciones por defecto poner a la derecha el valor sin temp
       next_state<=current_state;
       Valid_D <= '1';
       Data_Read <= '0';
       Write_en <= '0';
       OE_temp <= '1';
       DMA_RQ_temp <= '0';
       Ready_temp <= '1';
       Databus <=(others => 'Z');
       TX_Data <= (others => '0');
       Address <= (others => '0');
       cnt_R_temp<=cnt_R;
   
       -- Lógica para transiciones y salidas
           CASE current_state IS

               WHEN idle =>
                Valid_D <= '1';
                cnt_r_temp <= cnt_r;
                Data_Read <= '0';
                Write_en <= '0';
                OE_temp <= '1';
                DMA_RQ_temp <= '0';
                Ready_temp <= '1';
                Databus <= (others => 'Z');
                TX_Data <= (others => '0');
                Address <= (others => '0');
                
                if (RX_Empty='0' and send_comm='0') then
                       next_state <= StartRec;
                elsif(send_comm='1') then
                       next_state <= StartTrans;
                else
                       next_state <= Idle;
                END IF;

               WHEN StartRec =>
                   Valid_D <= '1';
                   Data_Read <= '0';
                   Write_en <= '0';
                   OE_temp <= '1';
                   DMA_RQ_temp <= '1';
                   Ready_temp <= '0';
                   cnt_r_temp <= cnt_r;
                   Databus <= (others => 'Z');
                   TX_Data <= (others => '0');
                   Address <= (others => '0');
                   
                   IF (DMA_ACK='1' and Cnt_R=0) THEN
                          next_state <= RW1;
                   elsif(DMA_ACK='1' and Cnt_R=1) THEN
                          next_state <= RW2;
                   elsif(DMA_ACK='1' and Cnt_R=2) THEN
                          next_state <= RW3;    
                   else
                          next_state <= StartRec;
                   END IF;                   

               WHEN RW1 =>
                   Valid_D <= '1';
                   Data_Read <= '1';
                   Write_en <= '1';
                   OE_temp <= '1';
                   DMA_RQ_temp <= '0';
                   Ready_temp <= '0';
                   Databus <= RCVD_Data;
                   TX_Data <= (others => '0');
                   Address <= (others => '0');
                   cnt_R_temp <= cnt_R + 1;
                   
                   next_state <= RTNControl;
        
               WHEN RW2 =>
                    Valid_D <= '1';
                    Data_Read <= '1';
                    Write_en <= '1';
                    OE_temp <= '1';
                    DMA_RQ_temp <= '0';
                    Ready_temp <= '0';
                    Databus <= RCVD_Data;
                    TX_Data <= (others => '0');
                    Address <= "00000001";
                    cnt_R_temp <= cnt_R + 1;
                 
                    next_state <= RTNControl;         
    
               WHEN RW3 =>
                    Valid_D <= '1';
                    Data_Read <= '1';
                    Write_en <= '1';
                    OE_temp <= '1';
                    DMA_RQ_temp <= '0';
                    Ready_temp <= '0';
                    Databus <= RCVD_Data;
                    TX_Data <= (others => '0');
                    Address <= "00000010";
                    cnt_R_temp <= cnt_R + 1;
                    
                    next_state <= EndRec;
                                            
               WHEN RTNControl =>
                    Valid_D <= '1';
                    Data_Read <= '0';
                    Write_en <= '0';
                    OE_temp <= '1';
                    DMA_RQ_temp <= '0';
                    Ready_temp <= '0';
                    Databus <= RCVD_Data;
                    TX_Data <= (others => '0');
                    Address<= "00000000";
                    cnt_R_temp <= cnt_R;
                   
                    if(DMA_ACK='0') then
                        next_state <= Idle;  
                    else
                        next_state <= RTNControl;
                    end if;
                   
               WHEN ENDRec =>
                    Valid_D<= '1';
                    Data_Read <= '0';
                    Write_en <= '1';
                    OE_temp <= '1';
                    DMA_RQ_temp <= '0';
                    Ready_temp <= '0';
                    Databus <= "11111111";
                    TX_Data <= (others => '0');
                    Address <= "00000011";
                    cnt_R_temp <= (others => '0');
                      
                    if(DMA_ACK='0') then
                           next_state <= Idle;  
                    else
                           next_state <= ENDRec;
                    end if;
                      
               WHEN StartTrans =>
                   Valid_D <= '1';
                   Data_Read <= '0';
                   Write_en <= '0';
                   OE_temp <= '0';
                   DMA_RQ_temp <= '0';
                   Ready_temp <= '0';
                   TX_Data <= (others=>'0');
                   Databus <=(others => 'Z');
                   Address <= "00000000";
                   cnt_R_temp <= cnt_r;
                   if (send_comm='0') then                       
                        next_state <= SendT1;
                   end if;
                   
               WHEN SendT1 =>
                   OE_temp<= '0';
                   Address <="00000100";  
                   TX_Data <= Databus;
                   Valid_D <= '0';
                   Write_en <= '0';
                   DMA_RQ_temp <= '0';
                   Ready_temp <= '0';
                   Data_Read <= '0';
                   cnt_r_temp <=cnt_r;
                   
                   if(ACK_out='1' AND ACK_out_Ret='0') then
                        next_state <=Wait1;
                   else
                        next_state <= SendT1;
                   end if;
                   
               WHEN Wait1 =>
                   OE_temp<= '0';
                   Address <="00000100";  
                   TX_Data <= Databus;
                   Valid_D <= '1';
                   Write_en <= '0';
                   DMA_RQ_temp <= '0';
                   Ready_temp <= '0';
                   Data_Read <= '0';
                   cnt_r_temp <=cnt_r;
               
                  if(TX_RDY='1') then
                       next_state <=SendT2;
                  elsif (TX_RDY='0') then
                       next_state <= wait1;
                  end if;              
       
               WHEN SendT2 =>
                  OE_temp<= '0';
                  Address <="00000101";  
                  TX_Data <= Databus;
                  Valid_D <= '0';
                  Write_en <= '0';
                  DMA_RQ_temp <= '0';
                  Ready_temp <= '0';
                  Data_Read <= '0';
                  cnt_r_temp <=cnt_r;
                      
                  if(ACK_out='1' AND ACK_out_Ret='0') then
                       next_state <=Wait2;
                  else
                       next_state <= SendT2;
                  end if;
                      
               WHEN Wait2 =>
                  OE_temp<= '0';
                  Address <="00000101";  
                  TX_Data <= Databus;
                  Valid_D <= '1';
                  Write_en <= '0';
                  DMA_RQ_temp <= '0';
                  Ready_temp <= '0';
                  Data_Read <= '0';
                  cnt_r_temp <=cnt_r;
                 
                  if(TX_RDY='1') then
                       next_state <=EndTrans;
                  elsif (TX_RDY='0') then
                       next_state <= wait2;
                  end if;    
 
               WHEN EndTrans =>
                   OE_temp<= '0';
                   Address <="00000101";  
                   TX_Data <= Databus;
                   Valid_D <= '1';
                   Write_en <= '0';
                   DMA_RQ_temp <= '0';
                   Ready_temp <= '1';
                   Data_Read <= '0';
                   cnt_r_temp <=cnt_r;
                   
                   next_state <=Idle; 
               END CASE;
   END PROCESS;

   -- Registro de estado y salidas registradas
   PROCESS (clk,reset)
   BEGIN
       if (reset='0') then
           current_state <=idle;
           OE <= '1';
           DMA_RQ <= '0';
           Ready <= '1';
           cnt_r <= (others  => '0');

       ELSIF clk'event AND clk='1' THEN
           ACK_out_RET<= ACK_out;
           current_state <= next_state;
           OE <= OE_temp;
           DMA_RQ <= DMA_RQ_temp;
           READY <= READY_temp;
           cnt_R<=cnt_R_temp;
           
       END IF;
   END PROCESS;
    
end behavioral;
