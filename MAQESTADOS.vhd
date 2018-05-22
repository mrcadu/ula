library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MAQESTADOS is

	PORT ( CLK, botao1, botao2, botao3, botaoreset: in std_logic;
			 Z: out std_logic_vector(1 downto 0));

end;

architecture Behavioral of MAQESTADOS is
	
	type estados_type is (S0,S1,S2,S3);
	signal estadoatual:estados_type;

begin
	estados_maquina: process (CLK)
		begin

			if CLK'event and CLK = '1' then
				if botaoreset = '1' then 
					estadoatual <= S0; Z <= "00";
				else
					case estadoatual is
						when S0 =>
							if botao1 = '1' then
								estadoatual <= S1; Z <= "01";
							end if;
						when S1 =>
							if botao2 = '1' then
								estadoatual <= S2; Z <= "10";
							end if;
						when S2 =>
							if botao3 = '1' then
								estadoatual <= S3; Z <= "11";
							end if;
						when others =>
							null;
					end case;
				end if;
			end if;
		end process;
end Behavioral;