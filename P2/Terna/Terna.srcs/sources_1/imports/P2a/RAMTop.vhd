LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

USE work.PIC_pkg.all;

ENTITY RAMTop IS
PORT (
   Clk      : in    std_logic;
   Reset    : in    std_logic;
   write_en : in    std_logic;
   oe       : in    std_logic;
   address  : in    std_logic_vector(7 downto 0);
   databus  : inout std_logic_vector(7 downto 0);
   Temp_H   : out    std_logic_vector(6 downto 0);
   Temp_L   : out    std_logic_vector(6 downto 0);
   Switches : out    std_logic_vector(7 downto 0));
   
END RAMTop;

ARCHITECTURE behavior OF RAMTop IS
    
    SIGNAL contents_ram : array8_ram(255 downto 0);
    SIGNAL addressGS,addressES : std_logic_vector(7 downto 0);
    SIGNAL oeES,write_enES,oeGS,write_enGS : std_logic;

    component RAMe
        port (
                Clk      : in    std_logic;
                Reset    : in    std_logic;
                write_enE : in    std_logic;
                oeE       : in    std_logic;
                addressE  : in    std_logic_vector(7 downto 0);
                databus  : inout std_logic_vector(7 downto 0);
                Temp_H   : out    std_logic_vector(6 downto 0);
                Temp_L   : out    std_logic_vector(6 downto 0);
                Switches : out    std_logic_vector(7 downto 0));
    end component;
    
    component RAMg
            port (
                    Clk      : in    std_logic;
                    write_enG : in    std_logic;
                    oeG       : in    std_logic;
                    addressG  : in    std_logic_vector(7 downto 0);
                    databus  : inout std_logic_vector(7 downto 0));
     end component;
BEGIN

-------------------------------------------------------------------------
-- Memoria de propósito general
-------------------------------------------------------------------------
    UUT1: RAMe
        port map (
            Reset     => Reset,
            Clk       => Clk,
            write_enE  => write_enES,
            oeE        => oeES,
            addressE   => addressES,
            databus   => databus,
            Temp_H    => Temp_H,
            Temp_L    => Temp_L,
            Switches  => Switches);
            
    UUT2: RAMg
        port map (
            Clk       => Clk,
            write_enG  => write_enGS,
            oeG        => oeGS,
            addressG   => addressGS,
            databus   => databus);        

p_ram : process (address, oe ,write_en)  -- no reset
begin
  
  --if clk'event and clk = '1' then
    if (unsigned(address)>63) then
        addressGS <= address;
        addressES <= (others => '0');
        Write_enGS <= Write_en;
        Write_enES <= '0';
        oeGS <= OE;
        oeES <= '1';       
--        if(Write_en='1') then
--            Write_enGS <= '1';
--            Write_enES <= '0';
--        else
--            Write_enGS <= '0';
--            Write_enES <= '0';           
--        end if;

--        if(OE='0') then
--            oeGS<='0';
--            oeES<='1';
--        else
--            oeGS<='1';
--            oees<='1';
--       end if;
        
    else
        addressGS <= "01000000";
        addressES <= address;
        Write_enGS<='0';
        Write_enES<=Write_en;
        oeGS<='1';
        oeES<=OE;
--        if(Write_en='1') then
--            Write_enGS <= '0';
--            Write_enES <= '1';
--         else
--            Write_enGS <= '0';
--            Write_enES <= '0';  
--        end if;
--        if(OE='0') then
--            oeGS<='1';
--            oeES<='0';
--        else
--            oeGS<='1';
--            oees<='1';
--       end if;
     end if;



end process;
  
END behavior;