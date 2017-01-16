----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/08/2016 12:40:27 AM
-- Design Name: 
-- Module Name: model_0 - Behavioral
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

entity model_0 is
    Port ( notinput : in STD_LOGIC_VECTOR (5 downto 0);
           notoutput : out STD_LOGIC_VECTOR (5 downto 0));
end model_0;

architecture Behavioral of model_0 is

begin
notoutput(0) <= not notinput(0);
notoutput(1) <= not notinput(1);
notoutput(2) <= not notinput(2);
notoutput(3) <= not notinput(3);
notoutput(4) <= not notinput(4);
notoutput(5) <= not notinput(5);


end Behavioral;
