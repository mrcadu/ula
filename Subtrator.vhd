
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

------------------------------------------ ENTITY

entity Subtrator is
	PORT (
				minuendo: in STD_LOGIC_VECTOR( 3 downto 0);
				subtraendo: in STD_LOGIC_VECTOR( 3 downto 0);
				saida: out STD_LOGIC_VECTOR (3 downto 0)
				);
				
end Subtrator;



------------------------------------------ ENTITY


architecture Behavioral of Subtrator is


----------------------------------- COMPONENTS

component complemento2 
    Port ( num1 : in  STD_LOGIC_VECTOR(3 downto 0);
           saida : out  STD_LOGIC_VECTOR(3 downto 0)
			  );
end component complemento2;

---------

component fullAdder4bits

    Port ( num1: in  STD_LOGIC_VECTOR (3 downto 0);
           num2 : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
			  
end component fullAdder4bits;

----------------------------------- COMPONENTS

	signal novosubtraendo: STD_LOGIC_VECTOR (3 downto 0);	


begin

passo1:	complemento2 port map(subtraendo, novosubtraendo); 
passo2:	fullAdder4bits port map (minuendo, novosubtraendo, '0', saida);

	
end Behavioral;

