----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/20/2016 05:36:14 PM
-- Design Name: 
-- Module Name: sevensegment - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevensegment is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           anod : out STD_LOGIC_VECTOR (3 downto 0);
           segmentDisp : out STD_LOGIC_VECTOR (6 downto 0);
           clk : in STD_LOGIC;
           switch : in STD_LOGIC_VECTOR (1 downto 0));
end sevensegment;

architecture Behavioral of sevensegment is

begin

process (switch)

BEGIN
case switch is 
when "00"=> anod <="1110";  
when "01"=> anod <="1101";  
when "11"=> anod <="1011";  
when "10"=> anod <="0111";  
when others => anod <="0000";
end case;
end process;


process (clk, bcd)
BEGIN
if (clk'event and clk='1') then 
case bcd is 
when "0000"=> segmentDisp <="0000001";  -- '0'
when "0001"=> segmentDisp <="1001111";  -- '1'
when "0010"=> segmentDisp <="0010010";  -- '2'
when "0011"=> segmentDisp <="0000110";  -- '3'
when "0100"=> segmentDisp <="1001100";  -- '4' 
when "0101"=> segmentDisp <="0100100";  -- '5'
when "0110"=> segmentDisp <="0100000";  -- '6'
when "0111"=> segmentDisp <="0001111";  -- '7'
when "1000"=> segmentDisp <="0000000";  -- '8'
when "1001"=> segmentDisp <="0000100";  -- '9'
when others => segmentDisp <="1111111";
end case;
end if;
end process;
end Behavioral;
