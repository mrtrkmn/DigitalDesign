// Created by Ahmet TURKMEN 
 library IEEE; 

 use IEEE.STD_LOGIC_1164.ALL; 
 
 entity system is 

 Port ( clk : in STD_LOGIC; 
 reset : in STD_LOGIC; 
 bcd0 : in STD_LOGIC_VECTOR (3 downto 0); 
 bcd1 : in STD_LOGIC_VECTOR (3 downto 0); 
 bcd2 : in STD_LOGIC_VECTOR (3 downto 0); 
 bcd3 : in STD_LOGIC_VECTOR (3 downto 0); 
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
 component mux Port ( anodSel : in STD_LOGIC_VECTOR (3 downto 0); 
 i0 : in STD_LOGIC_VECTOR (3 downto 0);  
 i1 : in STD_LOGIC_VECTOR (3 downto 0); 
 i2 : in STD_LOGIC_VECTOR (3 downto 0); 
 i3 : in STD_LOGIC_VECTOR (3 downto 0); 
 outMux : out STD_LOGIC_VECTOR (3 downto 0)); 
 end component; 
 
 component dec Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0); 
 segment7 : out STD_LOGIC_VECTOR (6 downto 0)); 
 end component; 
 
 signal clockWire : STD_LOGIC; 
 signal anodWire : STD_LOGIC_VECTOR (3 downto 0); 
 signal bcdWire : STD_LOGIC_VECTOR (3 downto 0); 
 
 begin 
 U1: clockDivider port map (clk,reset,clockWire); 
 U2: reg port map(clockWire,reset,anodWire); 
 U3: mux port map (anodWire,bcd0,bcd1,bcd2,bcd3,bcdWire); 
 U4: dec port map (bcdWire,segmentDisplay); 
 anodes <= anodWire; 
 end Behavioral;
