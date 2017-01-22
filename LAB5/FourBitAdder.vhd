library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity FourBitAdd is
Port ( A : in unsigned (3 downto 0);
B : in unsigned (3 downto 0); sum : out unsigned (3 downto 0); carry : inout STD_LOGIC);
end FourBitAdd;
architecture Behavioral of FourBitAdd is
begin
sum(0) <= A(0) xor (carry xor B(0));
carry <= (B(0) and carry) or (A(0) and B(0)) or (A(0) and carry);
sum(1) <= A(1) xor (carry xor B(1));
carry <= (B(1) and carry) or (A(1) and B(1)) or (A(1) and carry);
sum(2) <= A(2) xor (carry xor B(2));
carry <= (B(2) and carry) or (A(2) and B(2)) or (A(2) and carry);
sum(3) <= A(3) xor (carry xor B(3));
carry <= (B(3) and carry) or (A(3) and B(3)) or (A(3) and carry);
end Behavioral;
