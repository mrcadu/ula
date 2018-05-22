-- TESTADA E FUNCIONANDO!

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AnorB is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0));
end AnorB;
-----------------------
architecture Behavioral of AnorB is

begin

S(0) <= A(0) nor B(0);
S(1) <= A(1) nor B(1);
S(2) <= A(2) nor B(2);
S(3) <= A(3) nor B(3);


end Behavioral;
