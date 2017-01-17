
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MainModule is
    Port (
          addend1 : in STD_LOGIC_VECTOR (9 downto 0);
           EN : in STD_LOGIC;  
           sumTotal : out STD_LOGIC_VECTOR (3 downto 0));
end MainModule;



architecture Behavioral of MainModule is
component moduleOne Port (
            EN : in STD_LOGIC;
            inputModuleOne : in STD_LOGIC_VECTOR (1 downto 0);
           outputModuleOne : out STD_LOGIC_VECTOR (3 downto 0));
                         end component;

component moduleTwo  Port ( 
          EN : in STD_LOGIC;
          inputModuleTwo : in STD_LOGIC_VECTOR (7 downto 0);
           outputModuleTwo : out STD_LOGIC_VECTOR (2 downto 0));
                           end component;
signal wire1 : STD_LOGIC_VECTOR (3 downto 0);
signal wire2 : STD_LOGIC_VECTOR (2 downto 0);
signal wire3, wire4: STD_LOGIC;


begin

sumTotal(3) <= wire1(1) XOR wire2(0);
sumTotal(2) <= wire1(2) OR wire2(1);
sumTotal(1) <= wire1(3) and wire2(2);
sumTotal(0) <= not wire1(2);

U1: moduleOne port map (EN, addend1(9 downto 8), wire1);

U2: moduleTwo port map (EN,addend1(7 downto 0 ), wire2);


end Behavioral;
