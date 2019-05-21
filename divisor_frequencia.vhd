library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity divisor_frequencia is
    Port ( clock : in  STD_LOGIC;
           clock_dividido : buffer STD_LOGIC;
           reset : in  STD_LOGIC);
end divisor_frequencia;

architecture Behavioral of divisor_frequencia is

begin
   process(clock)
   variable contagem: integer range 0 to 50000000;
	begin
	if reset='1' then
		contagem := 0;
	elsif clock='1' then
      contagem := contagem + 1;
	end if;
	if contagem=50000000 then
		contagem:=0;
		if clock_dividido='0' then
			clock_dividido<='1';
		else
			clock_dividido<='0';
		end if;
	end if;
	end process;

end Behavioral;

