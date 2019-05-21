library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MODULOFINAL is

	PORT (
			CLK,botaoreset: in std_logic;
			selecao : in STD_LOGIC_VECTOR(3 downto 0);
			saidaFinal : buffer  STD_LOGIC_VECTOR (3 downto 0));


end MODULOFINAL;

architecture Behavioral of MODULOFINAL is

---------------------COMPONENTES
component ULA is
    
	 Port ( entrada1 : in  STD_LOGIC_VECTOR (3 downto 0);
           entrada2 : in  STD_LOGIC_VECTOR (3 downto 0);
			  selecao : in  STD_LOGIC_VECTOR (3 downto 0);
           saidaFinal : buffer STD_LOGIC_VECTOR (3 downto 0);
			  flags: out STD_LOGIC_VECTOR(3 downto 0));
           
end component ULA;
----

COMPONENT contador
	PORT(
		reset : IN std_logic;
		clock : IN std_logic;         
		contagemAtual : OUT std_logic_vector(9 downto 0)
		);
END COMPONENT;

COMPONENT divisor_frequencia
    Port ( clock : in  STD_LOGIC;
           clock_dividido : buffer STD_LOGIC;
           reset : in  STD_LOGIC);
END COMPONENT;

signal contadorAtual:STD_LOGIC_VECTOR(9 downto 0);
signal resultadoOperacao:STD_LOGIC_VECTOR(3 downto 0);
signal primeiroNumero:STD_LOGIC_VECTOR(3 downto 0);
signal segundoNumero:STD_LOGIC_VECTOR(3 downto 0);
signal flags_signal: STD_LOGIC_VECTOR(3 downto 0);
signal clock_visivel: STD_LOGIC;

begin
divisor_frequencia_instancia: divisor_frequencia PORT MAP (CLK,clock_visivel,botaoreset);
primeiroNumero <= contadorAtual(9 downto 6);
segundoNumero <= contadorAtual(5 downto 2);
ula_component: ULA port map (primeiroNumero,segundoNumero , selecao, resultadoOperacao,flags_signal);
Inst_contador: contador PORT MAP(botaoreset, clock_visivel,contadorAtual);
	process (clock_visivel)
		begin
			if contadorAtual(1 downto 0)="00" then
				saidaFinal <= contadorAtual(5 downto 2);
			elsif contadorAtual(1 downto 0)="01" then
				saidaFinal <= contadorAtual(9 downto 6);
			elsif contadorAtual(1 downto 0)="10" then
				saidaFinal <= resultadoOperacao;
			elsif contadorAtual(1 downto 0)="11" then
				saidaFinal <= flags_signal;
			end if;
	end process;

end Behavioral;
