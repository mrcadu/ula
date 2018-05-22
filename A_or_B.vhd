-- TESTADA E FUNCIONANDO!

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AorB is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0));
end AorB;
-----------------------
architecture Behavioral of AorB is

begin

S(0) <= A(0) or B(0);
S(1) <= A(1) or B(1);
S(2) <= A(2) or B(2);
S(3) <= A(3) or B(3);


end Behavioral;
