----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/08/2016 12:38:33 AM
-- Design Name: 
-- Module Name: M4_EntireCircuit - Behavioral
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

entity M4_EntireCircuit is
    Port ( SS : in STD_LOGIC_VECTOR (5 downto 0);
           DD : out STD_LOGIC);
end M4_EntireCircuit;

architecture Behavioral of M4_EntireCircuit is
component model_0  Port ( notinput : in STD_LOGIC_VECTOR (5 downto 0); notoutput : out STD_LOGIC_VECTOR (5 downto 0));
end component;
component model_1 port ( A,B,C : in STD_LOGIC; D: out STD_LOGIC);
end component;
component model_2 port (X,Y,Z : in STD_LOGIC; T: out STD_LOGIC);
end component;
component model_3     Port ( AA,BB  : in STD_LOGIC; CC : out STD_LOGIC);
end component;
signal wire1 : STD_LOGIC_VECTOR (5 downto 0);
signal wire2,wire3,wire4 : STD_LOGIC;

begin
Firstmodule: model_0 port map (SS, wire1);
Secondmodule: model_1 port map (wire1(5), wire1(4), wire1(3), wire2);
Thirdmodule: model_2 port map (wire1(2), wire1(1), wire1(0), wire3);
Fourthmodule: model_3 port map (wire2,wire3,wire4);
DD <= wire4;
end Behavioral;
