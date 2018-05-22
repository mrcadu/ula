library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity AxnorB is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0));
end AxnorB;
-----------------------
architecture Behavioral of AxnorB is

begin

S(0) <= A(0) xnor B(0);
S(1) <= A(1) xnor B(1);
S(2) <= A(2) xnor B(2);
S(3) <= A(3) xnor B(3);


end Behavioral;
