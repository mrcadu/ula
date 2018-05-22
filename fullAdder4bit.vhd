-- TESTADA E FUNCIONANDO!


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullAdder4bits is

    Port ( num1: in  STD_LOGIC_VECTOR (3 downto 0);
           num2 : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0));
end fullAdder4bits;
------------------------
architecture Behavioral of fullAdder4bits is

component adder1Bit 
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component adder1Bit;
-----------------------
signal carry1 :std_logic;
signal carry2 :std_logic;
signal carry3 :std_logic;

begin

	soma1: adder1Bit port map (num1(0), num2(0), Cin, Sum(0), carry1);
	soma2: adder1Bit port map (num1(1), num2(1), carry1, Sum(1), carry2);
	soma3: adder1Bit port map (num1(2), num2(2), carry2, Sum(2), carry3);
	soma4: adder1Bit port map (num1(3), num2(3), carry3, Sum(3));

end Behavioral;