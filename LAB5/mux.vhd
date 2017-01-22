library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
entity mux is
Port (
anodSel : in std_logic_vector (3 downto 0); i0 : in unsigned (3 downto 0);
i1 : in unsigned (3 downto 0);
i2 : in unsigned (3 downto 0);
i3 : in unsigned (3 downto 0); outMux : out unsigned (3 downto 0));
end mux;
architecture Behavioral of mux is
begin
outMux <= i0 when anodSel = "1110" else i1 when anodSel = "1101" else i2 when anodSel = "1011" else
i3 when anodSel= "1111"; end Behavioral;
