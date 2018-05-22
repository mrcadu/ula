-- TESTADA E FUNCIONANDO!


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity complemento2 is

	Port ( num1: in  STD_LOGIC_VECTOR (3 downto 0);
			 saida: out STD_LOGIC_VECTOR (3 downto 0)
			 );
end complemento2;

---------------------------------------

architecture Behavioral of complemento2 is

	-- INTRODUZIMOS O SOMADOR

component adder1Bit 
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component adder1Bit;

-----------------------

	-- INTRODUZIMOS OS SINAIS

signal carry1 :std_logic;
signal carry2 :std_logic;
signal carry3 :std_logic;

signal num1invertido: STD_LOGIC_VECTOR (3 downto 0);


begin
	
--PRIMEIRO INVERTEMOS TODOS OS BITS

	num1invertido(0) <= not num1(0);
	num1invertido(1) <= not num1(1);
	num1invertido(2) <= not num1(2);
	num1invertido(3) <= not num1(3);
	
--DEPOIS SOMAMOS 1 AO LSB
	
	soma1: adder1Bit port map (num1invertido(0), '1' , '0' , saida(0), carry1);
	soma2: adder1Bit port map (num1invertido(1), '0' , carry1, saida(1), carry2);
	soma3: adder1Bit port map (num1invertido(2), '0' , carry2, saida(2), carry3);
	soma4: adder1Bit port map (num1invertido(3), '0' , carry3, saida(3));


end Behavioral;

