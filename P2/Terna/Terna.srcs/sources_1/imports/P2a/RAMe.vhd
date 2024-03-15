LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

USE work.PIC_pkg.all;

ENTITY RAMe IS
PORT (
   Clk      : in    std_logic;
   Reset    : in    std_logic;
   write_enE : in    std_logic;
   oeE       : in    std_logic;
   addressE  : in    std_logic_vector(7 downto 0);
   databus  : inout std_logic_vector(7 downto 0);
   Temp_H   : out    std_logic_vector(6 downto 0);
   Temp_L   : out    std_logic_vector(6 downto 0);
   Switches : out    std_logic_vector(7 downto 0));
END RAMe;

ARCHITECTURE behavior OF RAMe IS

  SIGNAL contents_ram : array8_ram(63 downto 0);

BEGIN

-------------------------------------------------------------------------
-- Memoria de propósito general
-------------------------------------------------------------------------
p_ram : process (clk, reset)
begin
  if (reset='0') then

        contents_ram(0) <= (others=>'0');
        contents_ram(1) <= (others=>'0');
        contents_ram(2) <= (others=>'0');
        contents_ram(3) <= (others=>'0');
        contents_ram(4) <= (others=>'0');
        contents_ram(5) <= (others=>'0');
        contents_ram(6) <= (others=>'0');
        contents_ram(7) <= (others=>'0');
        contents_ram(8) <= (others=>'0');
        contents_ram(9) <= (others=>'0');
        contents_ram(10) <= (others=>'0');
        contents_ram(11) <= (others=>'0');
        contents_ram(11) <= (others=>'0');
        contents_ram(12) <= (others=>'0');
        contents_ram(13) <= (others=>'0');
        contents_ram(14) <= (others=>'0');
        contents_ram(15) <= (others=>'0');
        contents_ram(16) <= (others=>'0');
        contents_ram(17) <= (others=>'0');
        contents_ram(18) <= (others=>'0');
        contents_ram(19) <= (others=>'0');
        contents_ram(20) <= (others=>'0');
        contents_ram(21) <= (others=>'0');
        contents_ram(22) <= (others=>'0');
        contents_ram(23) <= (others=>'0');
        contents_ram(24) <= (others=>'0');
        contents_ram(25) <= (others=>'0');
        contents_ram(26) <= (others=>'0');
        contents_ram(27) <= (others=>'0');
        contents_ram(28) <= (others=>'0');
        contents_ram(29) <= (others=>'0');
        contents_ram(30) <= (others=>'0');
        contents_ram(31) <= (others=>'0');
        contents_ram(32) <= (others=>'0');
        contents_ram(33) <= (others=>'0');
        contents_ram(34) <= (others=>'0');
        contents_ram(35) <= (others=>'0');
        contents_ram(36) <= (others=>'0');
        contents_ram(37) <= (others=>'0');
        contents_ram(38) <= (others=>'0');
        contents_ram(39) <= (others=>'0');
        contents_ram(40) <= (others=>'0');
        contents_ram(41) <= (others=>'0');
        contents_ram(42) <= (others=>'0');
        contents_ram(43) <= (others=>'0');
        contents_ram(44) <= (others=>'0');
        contents_ram(45) <= (others=>'0');
        contents_ram(46) <= (others=>'0');
        contents_ram(47) <= (others=>'0');
        contents_ram(48) <= (others=>'0');
        contents_ram(49) <= "00100011"; -- "EE" Termostato
        contents_ram(50) <= (others=>'0');
        contents_ram(51) <= (others=>'0');
        contents_ram(52) <= (others=>'0');
        contents_ram(53) <= (others=>'0');
        contents_ram(54) <= (others=>'0');
        contents_ram(55) <= (others=>'0');
        contents_ram(56) <= (others=>'0');
        contents_ram(57) <= (others=>'0');
        contents_ram(58) <= (others=>'0');
        contents_ram(59) <= (others=>'0');
        contents_ram(60) <= (others=>'0');
        contents_ram(61) <= (others=>'0');
        contents_ram(62) <= (others=>'0');
        contents_ram(63) <= (others=>'0');

  elsif clk'event and clk = '1' then
    if write_enE = '1' then
      contents_ram(to_integer(unsigned(addressE))) <= databus;
    end if;
  end if;

end process;

databus <= contents_ram(to_integer(unsigned(addressE))) when oeE = '0' else (others => 'Z');
-------------------------------------------------------------------------

-------------------------------------------------------------------------
-- Decodificador de BCD a 7 segmentos
-------------------------------------------------------------------------
with contents_ram(49)(7 downto 4) select
    Temp_H <=
        "0111111" when "0000",  -- 0
        "0000110" when "0001",  -- 1
        "1011011" when "0010",  -- 2
        "1001111" when "0011",  -- 3
        "1100110" when "0100",  -- 4
        "1101101" when "0101",  -- 5
        "1111101" when "0110",  -- 6
        "0000111" when "0111",  -- 7
        "1111111" when "1000",  -- 8
        "1101111" when "1001",  -- 9
        "1111001" when others;  -- E (error)
    
with contents_ram(49)(3 downto 0) select
    Temp_L <=
        "0111111" when "0000",  -- 0
        "0000110" when "0001",  -- 1
        "1011011" when "0010",  -- 2
        "1001111" when "0011",  -- 3
        "1100110" when "0100",  -- 4
        "1101101" when "0101",  -- 5
        "1111101" when "0110",  -- 6
        "0000111" when "0111",  -- 7
        "1111111" when "1000",  -- 8
        "1101111" when "1001",  -- 9
        "1111001" when others;  -- E (error)
-------------------------------------------------------------------------
switches(0)<= contents_ram(16)(0);
switches(1)<= contents_ram(17)(0);
switches(2)<= contents_ram(18)(0);
switches(3)<= contents_ram(19)(0);
switches(4)<= contents_ram(20)(0);
switches(5)<= contents_ram(21)(0);
switches(6)<= contents_ram(22)(0);
switches(7)<= contents_ram(23)(0);

END behavior;
