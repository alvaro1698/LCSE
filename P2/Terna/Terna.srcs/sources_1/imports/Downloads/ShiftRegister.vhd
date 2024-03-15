------------------------------------------------------
-- EJEMPLO 2: DIVISIÓN DE LA FRECUENCIA DEL RELOJ
--
-- Departamento de Ingeniería Electrónica (2013)
------------------------------------------------------ 


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ShiftRegister is
    Port ( CLK : in  STD_LOGIC;    -- Reloj de entrada a la FPGA
     reset : in  STD_LOGIC;
     Enable: in  STD_LOGIC;
     D     : in  STD_LOGIC;
     Q      : out  STD_LOGIC_VECTOR (7 downto 0)
     );  
end ShiftRegister;

architecture Behavioral of ShiftRegister is
signal desplazado : STD_LOGIC_VECTOR (7 downto 0);
begin
  PROC_SHIFT : process (CLK,reset)
    begin
    if reset='0' then
        desplazado<=(others=>'0');
        elsif CLK'event and CLK='1' then
            if(enable='1') then
                desplazado<=D&desplazado(7 downto 1);
            end if;	 
        end if;	
   
    end process;
    
  Q<=desplazado;
end Behavioral;
