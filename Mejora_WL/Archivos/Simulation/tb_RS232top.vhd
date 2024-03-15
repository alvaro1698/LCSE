
library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;
   
entity RS232top_TB is
end RS232top_TB;

architecture Testbench of RS232top_TB is

  component RS232top
    port (
      Reset     : in  std_logic;
      Clk       : in  std_logic;
      Data_in   : in  std_logic_vector(7 downto 0);
      Valid_D   : in  std_logic;
      Ack_in    : out std_logic;
      TX_RDY    : out std_logic;
      TD        : out std_logic;
      RD        : in  std_logic;
      Data_out  : out std_logic_vector(7 downto 0);
      Data_read : in  std_logic;
      Full      : out std_logic;
      Empty     : out std_logic;
      EnWL      : in std_logic);
  end component;
  
  signal Reset, Valid_D, Ack_in, TX_RDY, EnWL : std_logic;
  signal TD, RD, Data_read, Full, Empty, clk : std_logic;
  signal Data_out, Data_in : std_logic_vector(7 downto 0);

  constant Tclk: time := 50 ns;  -- Clock Period 

begin

  UUT: RS232top
    port map (
      Reset     => Reset,
      Clk       => Clk,
      Data_in   => Data_in,
      Valid_D   => Valid_D,
      Ack_in    => Ack_in,
      TX_RDY    => TX_RDY,
      TD        => TD,
      RD        => RD,
      Data_out  => Data_out,
      Data_read => Data_read,
      Full      => Full,
      Empty     => Empty,
      EnWL      => EnWL);

  Data_in <= "01100010";
 
  -- Clock generator
  p_clk : PROCESS
  BEGIN
     Clk <= '1';
     wait for Tclk/2;
     Clk <= '0';
     wait for Tclk/2;
  END PROCESS;

  -- Reset generation
  reset <= '0', '1' after 75 ns;
  
  p_reset : PROCESS
  BEGIN
     
     Valid_D <= '1';     
     RD <= '1';     
     Data_read <= '0';
     EnWL <= '1';
     
     wait for 2500 ns;     -- Wait for 20-MHz clock signal ready

     Valid_D <= '1', '0' after 110 ns,
                '1' after 400 ns;
     RD <= '1',
           '0' after 500 ns,    -- StartBit
           '1' after 9150 ns,   -- LSb
           '1' after 17800 ns,
           '0' after 26450 ns,
           '0' after 35100 ns,
           '0' after 43750 ns,  -- MSb
           '1' after 52400 ns,  -- Stopbit
           '1' after 61050 ns;
           
 

     Data_read <= '0','1'after 88000 ns;
     
     EnWL <= '0' after 89000 ns;
     RD <= '1',
           '0' after 98000 ns,    -- StartBit
           '1' after 106650 ns,   -- LSb
           '1' after 115300 ns,
           '0' after 123950 ns,
           '0' after 132600 ns,
           '1' after 141250 ns,
           '0' after 149900 ns,
           '0' after 158550 ns,
           '0' after 167200 ns,  -- MSb
           '1' after 175850 ns,  -- Stopbit
           '1' after 184500 ns;
     wait;
     
  END PROCESS;

end Testbench;

