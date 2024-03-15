----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.10.2023 19:09:25
-- Design Name: 
-- Module Name: RS232_TX - Behavioral
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

entity RS232_TX is
    Port ( Reset : in STD_LOGIC;
       Clk : in STD_LOGIC;
       Start : in STD_LOGIC;
       EnWL : in STD_LOGIC;
       Data : in STD_LOGIC_VECTOR (7 downto 0);
       EOT : out STD_LOGIC;
       TX : out STD_LOGIC);
end RS232_TX;

architecture Behavioral of RS232_TX is

    type estados is (Idle,StartBit,SendData,StopBit);
    signal current_state, next_state: estados;
    signal EOT_tmp, TX_tmp: STD_LOGIC;
    signal DCS: UNSIGNED (3 downto 0);
    signal PWS: UNSIGNED (7 downto 0);
    signal WLS: integer;
    signal EnDC: STD_LOGIC;
    signal EnPW: STD_LOGIC;
    
    component Count is
        Port ( Clk : in STD_LOGIC;
               RST: in STD_LOGIC;
               EnPW: in STD_LOGIC;
               EnDC: in STD_LOGIC;
               EnWL: in STD_LOGIC;
               WL: out integer;
               DC : out UNSIGNED (3 downto 0);
               PW : out UNSIGNED (7 downto 0));
    end component;

begin

    Count_1: Count port map(Clk => Clk,
                            RST => reset,
                            EnPW => EnPW,
                            EnDC => EnDC,
                            EnWL => EnWL,
                            DC => DCS,
                            PW => PWS,
                            WL => WLS);
                                         


    PROCESS (current_state,EnWL, Start, Data,DCS,PWS,WLS)
     BEGIN
           -- Asignaciones por defecto
           next_state <= current_state;
           EOT_tmp <= '0';
           TX_tmp <= '0';
           EnPW<='0';
           EnDC<='0';
   
               -- Lógica para transiciones y salidas
               CASE current_state IS
   
                   WHEN idle =>
                       EnPW <= '0';
                       EnDC<='0';
                       EOT_tmp<='1';
                       TX_tmp<='1';
                       IF (start='1') THEN
                           next_state <= StartBit;
                       else
                           next_state <= idle;
                       END IF;
   
                   WHEN StartBit =>
                       EnPW <= '1';
                       EnDC<='0';
                       EOT_tmp <= '0';
                       TX_tmp <= '0';
                       if(PWS=174) then
                            next_state <= SendData;
                       end if;
                       
                   WHEN SendData =>
                       EnPW <= '1';
                       EnDC<='1';
                       EOT_tmp <= '0';                      
                       TX_tmp <= Data(to_integer(DCS));
                       if (DCS >= WLS and PWS=174) then
                            next_state <= StopBit;
                       else
                            next_state <= SendData;
                       end if;
                       
                   WHEN StopBit =>
                       EnPW <= '1';
                       EnDC<='0';
                       EOT_tmp <= '0';
                       TX_tmp <= '1';
                       if (PWS=174) then
                            next_state <= idle;
                       end if;
   
                   END CASE;
       END PROCESS;
   
       -- Registro de estado y salidas registradas
       PROCESS (clk,Reset)
       BEGIN
           if (Reset='0') then
                current_state <= Idle;
           elsIF clk'event AND clk='1' THEN
               current_state <= next_state;
               EOT <= EOT_tmp;
               TX <= TX_tmp;
           END IF;
       END PROCESS;  

end Behavioral;
