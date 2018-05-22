library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MODULOFINAL is

	PORT (
			CLK, botao1, botao2, botao3, botaoreset: in std_logic;
			entrada1 : in  STD_LOGIC_VECTOR (3 downto 0);
         entrada2 : in  STD_LOGIC_VECTOR (3 downto 0);
			selecao : in  STD_LOGIC_VECTOR (3 downto 0);
			saidaFinal : out  STD_LOGIC_VECTOR (3 downto 0);
			cout : out STD_LOGIC);


end MODULOFINAL;

architecture Behavioral of MODULOFINAL is


---------------------COMPONENTES
component MAQESTADOS

    Port ( CLK, botao1, botao2, botao3, botaoreset: in std_logic;
			 Z: out std_logic_vector(1 downto 0));
			  
end component MAQESTADOS;

---------------------COMPONENTES
component ULA is
    
	 Port ( entrada1 : in  STD_LOGIC_VECTOR (3 downto 0);
           entrada2 : in  STD_LOGIC_VECTOR (3 downto 0);
			  selecao : in  STD_LOGIC_VECTOR (3 downto 0);
           saidaFinal : out  STD_LOGIC_VECTOR (3 downto 0);
			  cout: out STD_LOGIC);
           
end component ULA;
----

signal primeiro_numero:STD_LOGIC_VECTOR (3 downto 0);
signal segundo_numero:STD_LOGIC_VECTOR (3 downto 0);
signal selecao_signal:STD_LOGIC_VECTOR (3 downto 0);
signal estado_atual:STD_LOGIC_VECTOR (1 downto 0);

begin	

ula_component: ULA port map (primeiro_numero, segundo_numero, selecao, saidaFinal,cout);
maqestados_component : MAQESTADOS port map (CLK, botao1, botao2, botao3, botaoreset,estado_atual);

process (estado_atual,entrada1,entrada2,selecao)
	begin
		if estado_atual = "01" then
			primeiro_numero <= entrada1;
		end if;
		if estado_atual = "10" then
			segundo_numero <= entrada2;
		end if;
		if estado_atual = "11" then
			selecao_signal <= selecao;
		end if;
		if estado_atual = "00" then
			selecao_signal <= "0000";
			primeiro_numero <= "0000";
			segundo_numero <= "0000";
		end if;
end process;

end Behavioral;
