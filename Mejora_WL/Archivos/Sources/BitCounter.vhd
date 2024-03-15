----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.09.2023 16:46:05
-- Design Name: 
-- Module Name: BitCounter - Behavioral
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

entity BitCounter is
    Port ( Clk : in STD_LOGIC;
           RST: in STD_LOGIC;
           EnCnt: in STD_LOGIC;
           EnDC: in STD_LOGIC;
           EnHC: in STD_LOGIC;
           EnWL: in STD_LOGIC;
           DC : out UNSIGNED (3 downto 0);
           HC : out UNSIGNED (6 downto 0);
           WL : out integer;
           BC : out UNSIGNED (7 downto 0));
end BitCounter;

architecture Behavioral of BitCounter is

constant PulseEndOfHalfCount: INTEGER := 87;
constant PulseEndOfCount: INTEGER := 174;
constant WL5: INTEGER := 5;
constant WL8: INTEGER := 8;

signal SDC: UNSIGNED (3 downto 0); 
signal HBC: UNSIGNED (6 downto 0); 
signal BCS: UNSIGNED (7 downto 0);
signal WLS: integer;

begin



process(CLK,RST)
begin 
    if(RST='0') then
        SDC <= (others=>'0');
        HBC <= (others=>'0');
        BCS <= (others=>'0');
    elsif(CLK'event and CLK='1') then
        if(EnCNT='1') then
            if (HBC<PulseEndOfHalfCount) then
	            HBC<=HBC+1;
	        elsif(HBC=PulseEndOfHalfCount) then
		        BCS<=BCS+1;
		        if(EnHC='1') then 
                    HBC<= (others => '0');
                end if;   
		        if(BCS=PulseEndOfCount) then
			         BCS<=(others=>'0');
			         if(EnDC='1') then
			             SDC<=SDC+1;
			             if(EnWL='1') then
			                 if(SDC=WL5) then
                                SDC<=(others=>'0');
				                HBC<=(others=>'0');
			                 end if;
			             elsif (EnWL='0') then
			                 if(SDC=WL8) then
                                SDC<=(others=>'0');
                                HBC<=(others=>'0');
                            end if;
                        end if; 
			         end if;
		        end if;
	        end if;
        end if;
  end if;
end process;
       
DC <= SDC;  
BC <= BCS;
HC <= HBC;
WL <=WL5 when (EnWL='1') else
     WL8;
     
end Behavioral;
