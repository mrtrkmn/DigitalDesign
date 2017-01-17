library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity moduleOne is
    Port (
         EN : in STD_LOGIC;
        inputModuleOne : in STD_LOGIC_VECTOR (1 downto 0);
           outputModuleOne : out STD_LOGIC_VECTOR (3 downto 0));
end moduleOne;

architecture Behavioral of moduleOne is

begin
 outputModuleOne <= "00" when inputModuleOne = "1000" else
         "01" when inputModuleOne = "0100" else
         "10" when inputModuleOne = "0010" else
         "11" when inputModuleOne = "0001" else
         "--" when inputModuleOne = "0000" ;

end Behavioral;
