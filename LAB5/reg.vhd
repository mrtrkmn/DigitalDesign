library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity reg is
Port ( clk : in STD_LOGIC;
                  reset : in std_logic;
              a : out STD_LOGIC_VECTOR (3 downto 0));
end reg;
architecture Behavioral of reg is
signal anod:std_logic_vector(3 downto 0); begin
a<=anod;
andoSelect: process(clk )
variable cnt:integer;
begin
if(clk'event and clk='1') then
if(reset='1') then anod<="1111"; cnt:=0;
else
if(cnt=4) then cnt:=0;
end if; anod<="1111"; anod(cnt)<='0'; cnt:=cnt+1;
end if; end if;
end process; end Behavioral;
