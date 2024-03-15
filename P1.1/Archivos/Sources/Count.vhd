----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.09.2023 17:37:02
-- Design Name: 
-- Module Name: Count - Behavioral
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

entity Count is
    Port ( Clk : in STD_LOGIC;
           RST: in STD_LOGIC;
           EnPW: in STD_LOGIC;
           EnDC: in STD_LOGIC;
           DC : out UNSIGNED (3 downto 0);
           PW : out UNSIGNED (7 downto 0));
end Count;

architecture Behavioral of Count is

signal SDC: UNSIGNED (3 downto 0);
constant PulseEndOfCount: INTEGER := 174;
signal PWC: UNSIGNED (7 downto 0);

begin
process(CLK,RST)
begin 
    if(RST='0') then
        SDC <= (others=>'0');
        PWC <= (others=>'0');
    elsif(CLK'event and CLK='1') then
        if(EnPW='1') then
            PWC <= PWC+1;
	        if(PWC=PulseEndOfCount) then
		      PWC<=(others=>'0');
		      if(enDC='1') then
		           SDC<=SDC+1;
		           if(SDC=7) then
			         SDC<=(others=>'0');
		           end if;
		      end if;
	       end if;
        end if;
    end if;
end process;
           
DC <= SDC;    
PW <= PWC;

end Behavioral;
