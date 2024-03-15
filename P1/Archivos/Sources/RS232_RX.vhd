----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.10.2023 19:03:19
-- Design Name: 
-- Module Name: RS232_RX - Behavioral
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
    Port ( Reset : in STD_LOGIC;
           Clk : in STD_LOGIC;
           LineRD_in : in STD_LOGIC;
           Valid_out : out STD_LOGIC;
           Code_out : out STD_LOGIC;
           Store_out : out STD_LOGIC);
end RS232_RX;

architecture Behavioral of RS232_RX is

type estados is (Idle,StartBit,RevData,StopBit);
signal current_state, next_state: estados;
signal Valid_tmp, Code_tmp, Store_tmp: STD_LOGIC;
signal DCS: UNSIGNED (3 downto 0);
signal BCS: UNSIGNED (7 downto 0);
signal EnCnt: STD_LOGIC;

component BitCounter is
Port ( 
       Clk : in STD_LOGIC;
       RST: in STD_LOGIC;
       EnCnt: in STD_LOGIC;
       DC : out UNSIGNED (3 downto 0);
       BC : out UNSIGNED (7 downto 0));
end component;

begin

Count_2: BitCounter port map(Clk => Clk,
                             RST => reset,
                             EnCnt => EnCnt,
                             DC => DCS,
                             BC => BCS);
                                     

PROCESS (current_state, LineRD_in,BCS,DCS)
 BEGIN
       -- Asignaciones por defecto
       next_state <= current_state;
       Valid_tmp <= '0';
       Code_tmp <= '0';
       Store_tmp <= '0';
       EnCnt <= '0';

           -- Lógica para transiciones y salidas
           CASE current_state IS

               WHEN idle =>
                   EnCnt <= '0';
                   Valid_tmp <= '0';
                   Code_tmp <= '0';
                   Store_tmp <= '0';
                   IF (LineRD_in='0') THEN
                       next_state <= StartBit;
                   else
                       next_state <= idle;
                   END IF;

               WHEN StartBit =>
                   EnCnt <= '1';
                   Valid_tmp <= '0';
                   Code_tmp <= '0';
                   Store_tmp <= '0';
                   if (BCS=87) then
                        next_state <= RevData;
                  end if;

               WHEN RevData =>
                   EnCnt <= '1';
                   Valid_tmp <= '0';
                   Code_tmp <= LineRD_in;
                   Store_tmp <= '0';
                   if (BCS=174) then

                        If (DCS > 7) then
                            next_state <= StopBit;
                        else
                            Valid_tmp <='1';
                            next_state <= RevData;
                        end if;
                   else
                    next_state<= RevData;    
                   end if;

               WHEN StopBit =>
                   EnCnt <= '1';
                   Valid_tmp <= '0';
                   Code_tmp <= lineRD_in;
                   Store_tmp <= '0';
                   if(BCS=87) then
                        If (lineRD_in = '1') then
                             Store_tmp <= '1';
                             next_state <= Idle;
                        elsif (lineRD_in = '0') then
                            Store_tmp <= '0';
                            next_state <= Idle;
                        end if;
                   end if;         

               END CASE;
   END PROCESS;

   -- Registro de estado y salidas registradas
   PROCESS (clk,Reset)
   BEGIN
       IF (Reset='0') then
            current_state <= Idle;
       ELSIF clk'event AND clk='1' THEN
           current_state <= next_state;
           Valid_out <= Valid_tmp;
           Code_out <= Code_tmp;
           Store_out <= Store_tmp;
       END IF;
   END PROCESS;
    
end Behavioral;
