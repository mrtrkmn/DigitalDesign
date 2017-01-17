library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ModuleTwo is
    Port ( 
          EN : in STD_LOGIC;
          inputModuleTwo : in STD_LOGIC_VECTOR (7 downto 0);
           outputModuleTwo : out STD_LOGIC_VECTOR (2 downto 0));
          
end ModuleTwo;

architecture Behavioral of ModuleTwo is

begin
outputModuleTwo <= "--------" when inputModuleTwo = "000" else
         "00000000" when inputModuleTwo = "000" else
         "-------1" when inputModuleTwo = "111" else
         "------10" when inputModuleTwo = "110" else
         "-----100" when inputModuleTwo = "101"  else
         "----1000" when inputModuleTwo = "100"  else
         "---10000" when inputModuleTwo = "011" else
        "--100000" when inputModuleTwo = "010" else
        "10000000" when inputModuleTwo = "000"; 

end Behavioral;
