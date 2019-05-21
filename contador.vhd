library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity contador is
    Port ( contagemAtual : out  STD_LOGIC_VECTOR (9 downto 0);
			  reset : in  STD_LOGIC;
           clock : in  STD_LOGIC);
end contador;

architecture Behavioral of contador is

begin
	
   process(clock)
   variable contagem: integer range 0 to 1024;
	begin
	if reset='1' then
		contagem := 0;
	elsif clock='1' then
      contagem := contagem + 1;
	end if;
	
	contagemAtual <= conv_std_logic_vector(contagem,10);
	end process;
	
end Behavioral;

