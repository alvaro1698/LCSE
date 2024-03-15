

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RS232_TX is
    Port ( CLK : in  STD_LOGIC;    -- Reloj de entrada a la FPGA
     reset : in  STD_LOGIC;
     Start    : in  STD_LOGIC;
     DATA    : in  STD_LOGIC_VECTOR (7 downto 0);
     EOT      : out  STD_LOGIC;
     TX      : out  STD_LOGIC
     );  
end RS232_TX;

architecture Behavioral of RS232_TX is
signal contador : unsigned (7 downto 0); --Hasta 173
signal datos: std_logic_vector (10 downto 0);
signal dato_TDATA: std_logic_vector (7 downto 0);

signal estado: unsigned (3 downto 0); --10 max
begin
 datos<= '1'&dato_TDATA&'0'&'1';
  PROC_SHIFT : process (CLK,reset)
    begin
    if reset='0' then
        EOT<='1'; --estoy libre para recibir
        TX<='1';
        dato_TDATA<=(others=>'0');
        contador<=(others=>'0');
        estado<=(others=>'0');
        elsif CLK'event and CLK='1' then
         TX<=datos(to_integer(estado));
         contador<=contador+1;
         EOT<='0';  
         
         case estado is
              -- when 0=>
              when "0000"=>
                   EOT<='1'; -- estoy esperando, ya he acabado
                   TX<=datos(to_integer(estado));
                   if(start='1') then
                     estado<=estado+1;
                     dato_TDATA<=DATA;
                     contador<=(others=>'0');
                    end if;	 
               --when "0001" to  "1010"=> --when 1 to 10 --when "0001" | "0010"....
               when others=>
               if (contador=173) then
                   contador<=(others=>'0');
                       if (estado=10) then
                            estado<=(others=>'0');
                        else
                            estado<=estado+1;
                    
                         end if;   
                   
                end if;
           
           
                             
             end case ;  
       end if;

    end process;
    

end Behavioral;
