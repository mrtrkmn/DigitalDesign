library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
entity system is
 Port ( clk : in STD_LOGIC;
 reset : in STD_LOGIC;
 bcd0 : in unsigned (3 downto 0);
 bcd1 : in unsigned (3 downto 0);
 B : in unsigned (3 downto 0);
 -- A : in unsigned (3 downto 0);
 -- sum : out unsigned (3 downto 0);
 -- carry : inout std_logic;

 anodes : out STD_LOGIC_VECTOR (3 downto 0);
 segmentDisplay : out STD_LOGIC_VECTOR (6 downto 0));
end system;
architecture Behavioral of system is
component clockDivider Port ( clockIn : in STD_LOGIC;
 resetClk : in STD_LOGIC;
 clockOut : out STD_LOGIC);
end component;
component reg Port ( clk : in STD_LOGIC;
 reset : in std_logic;
 a : out STD_LOGIC_VECTOR (3 downto 0));
end component;
component mux Port ( anodSel : in std_logic_vector (3 downto 0);
 i0 : in unsigned (3 downto 0);
 i1 : in unsigned (3 downto 0);
 i2 : in unsigned (3 downto 0);
 i3 : in unsigned (3 downto 0);
 outMux : out unsigned (3 downto 0));
end component;
component dec Port ( bcd : in unsigned (3 downto 0);
 segment7 : out STD_LOGIC_VECTOR (6 downto 0));
end component;
component FourBitAdd Port ( A : in unsigned (3 downto 0);
 B : in unsigned (3 downto 0);
 sum : out unsigned (3 downto 0);
 carry : inout STD_LOGIC);
 end component;
signal clockWire : STD_LOGIC;
signal anodWire : STD_LOGIC_VECTOR (3 downto 0);
signal bcdWire : unsigned (3 downto 0);
--signal s : std_logic_vector (1 downto 0);
shared variable tempSum : unsigned (3 downto 0);
shared variable temp1, temp2: unsigned(3 downto 0);
shared variable tempCarry:STD_LOGIC;
begin
U1: clockDivider port map (clk,reset,clockWire);
U2: reg port map(clockWire,reset,anodWire);
U3: mux port map(anodWire,bcd0,bcd1,temp1,temp2,bcdWire);
U4: dec port map(bcdWire,segmentDisplay);
U5: FourBitAdd port map(bcd0, bcd1, tempSum, tempCarry);
process(clk)
begin
tempSum := bcd0 + bcd1;
if(tempSum > 9 or tempCarry = '1') then
temp1 := "0001";
case tempSum is
when "0010" => temp2 :="1000";
when "0001" => temp2 :="0111";
when "0000" => temp2 :="0110";
when others =>temp2 :="1001";
end case;
else if(tempSum > 9 or tempCarry = '0')then
case tempSum is
when "0001" => temp2 :="0111";
when "0010" => temp2 :="1000";
when "0011" => temp2 :="0010";
when "0100" => temp2 :="1100";
when "0110" => temp2 :="1000";
when "1000" => temp2 :="1001";
when "0111" => temp2 :="0100";
when others =>temp2:= "0011";
end case;
end if;
end if;
end process;
anodes <= anodWire;
end Behavioral;
