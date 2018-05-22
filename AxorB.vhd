library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity AxorB is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0));
end AxorB;
-----------------------
architecture Behavioral of AxorB is

begin

S(0) <= A(0) xor B(0);
S(1) <= A(1) xor B(1);
S(2) <= A(2) xor B(2);
S(3) <= A(3) xor B(3);


end Behavioral;
