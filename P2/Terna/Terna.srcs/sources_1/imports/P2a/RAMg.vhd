
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

USE work.PIC_pkg.all;

ENTITY RAMg IS
PORT (
   Clk      : in    std_logic;
   write_enG : in    std_logic;
   oeG       : in    std_logic;
   addressG  : in    std_logic_vector(7 downto 0);
   databus  : inout std_logic_vector(7 downto 0));
END RAMg;

ARCHITECTURE behavior OF RAMg IS

  SIGNAL contents_ram : array8_ram(255 downto 64);

BEGIN

-------------------------------------------------------------------------
-- Memoria de propósito general
-------------------------------------------------------------------------
p_ram : process (clk)  -- no reset
begin
  
  if clk'event and clk = '1' then
    if write_enG = '1' then
      contents_ram(to_integer(unsigned(addressG))) <= databus;
    end if;
  end if;

end process;

databus <= contents_ram(to_integer(unsigned(addressG))) when oeG = '0' else (others => 'Z');

END behavior;

