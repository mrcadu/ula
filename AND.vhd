-- TESTADA E FUNCIONANDO!

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AandB is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0));
end AandB;
-----------------------
architecture Behavioral of AandB is

begin

S(0) <= A(0) and B(0);
S(1) <= A(1) and B(1);
S(2) <= A(2) and B(2);
S(3) <= A(3) and B(3);

end Behavioral;

