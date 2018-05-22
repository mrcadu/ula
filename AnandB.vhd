-- TESTADA E FUNCIONANDO!

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AnandB is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0));
end AnandB;
-----------------------
architecture Behavioral of AnandB is

begin

S(0) <= A(0) nand B(0);
S(1) <= A(1) nand B(1);
S(2) <= A(2) nand B(2);
S(3) <= A(3) nand B(3);

end Behavioral;


