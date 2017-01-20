library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux is
    Port ( anodSel : in STD_LOGIC_VECTOR (3 downto 0);
           i0 : in STD_LOGIC_VECTOR (3 downto 0);
           i1 : in STD_LOGIC_VECTOR (3 downto 0);
           i2 : in STD_LOGIC_VECTOR (3 downto 0);
           i3 : in STD_LOGIC_VECTOR (3 downto 0);
           outMux : out STD_LOGIC_VECTOR (3 downto 0));
end mux;

architecture Behavioral of mux is

begin

    outMux <= i0 when anodSel = "1110" else
              i1 when anodSel = "1101" else
              i2 when anodSel = "1011" else
              i3 when anodSel= "1111";

end Behavioral;
