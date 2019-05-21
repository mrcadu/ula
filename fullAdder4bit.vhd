-- TESTADA E FUNCIONANDO!


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullAdder4bits is

    Port ( num1: in  STD_LOGIC_VECTOR (3 downto 0);
           num2 : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           Sum : buffer  STD_LOGIC_VECTOR (3 downto 0);
			  flags : out STD_LOGIC_VECTOR (3 downto 0));
end fullAdder4bits;
------------------------
architecture Behavioral of fullAdder4bits is

component adder1Bit 
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           sum : buffer  STD_LOGIC;
           cout : out  STD_LOGIC);
end component adder1Bit;
-----------------------
signal carry1 :std_logic;
signal carry2 :std_logic;
signal carry3 :std_logic;
signal resultado :STD_LOGIC_VECTOR(3 downto 0);
begin

	soma1: adder1Bit port map (num1(0), num2(0), Cin, resultado(0), carry1);
	soma2: adder1Bit port map (num1(1), num2(1), carry1, resultado(1), carry2);
	soma3: adder1Bit port map (num1(2), num2(2), carry2, resultado(2), carry3);
	soma4: adder1Bit port map (num1(3), num2(3), carry3, resultado(3),flags(2));
	sum <= resultado;
	flags(0)<= (not resultado(0)) and (not resultado(1)) and (not resultado(2)) and (not resultado(3));
	flags(1)<= not resultado(3);
	flags(3)<= (num1(3) and num2(3) and (not resultado(3))) or ((not num1(3)) and (not num2(3)) and resultado(3));

end Behavioral;