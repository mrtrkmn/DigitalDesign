library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity dec is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           segment7 : out STD_LOGIC_VECTOR (6 downto 0));
end dec;

architecture Behavioral of dec is

begin

segment7 <= "0000001" when bcd = "0000" else
            "1001111" when bcd = "0001" else
            "0010010" when bcd = "0010" else
            "0000110" when bcd = "0011" else
            "1001100" when bcd = "0100" else
            "0100100" when bcd = "0101" else
            "0100000" when bcd = "0110" else
            "0001111" when bcd = "0111" else
            "0000000" when bcd = "1000" else
            "0000100" when bcd = "1001" else
            "1111111";


end Behavioral;
