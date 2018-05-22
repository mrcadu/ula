-- TESTADA E FUNCIONANDO!!!


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TesteULA IS
END TesteULA;
 
ARCHITECTURE behavior OF TesteULA IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ULA
    PORT(
         entrada1 : IN  std_logic_vector(3 downto 0);
         entrada2 : IN  std_logic_vector(3 downto 0);
         selecao : IN  std_logic_vector(3 downto 0);
         botao1 : IN  std_logic;
         botao2 : IN  std_logic;
         botao3 : IN  std_logic;
			botaoreset : IN std_logic;
         saidaFinal : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada1 : std_logic_vector(3 downto 0) := (others => '0');
   signal entrada2 : std_logic_vector(3 downto 0) := (others => '0');
   signal selecao : std_logic_vector(3 downto 0) := (others => '0');
   signal botao1 : std_logic := '0';
   signal botao2 : std_logic := '0';
   signal botao3 : std_logic := '0';
	signal botaoreset : std_logic := '0';

 	--Outputs
   signal saidaFinal : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ULA PORT MAP (
          entrada1 => entrada1,
          entrada2 => entrada2,
          selecao => selecao,
          botao1 => botao1,
          botao2 => botao2,
          botao3 => botao3,
			 botaoreset => botaoreset,
          saidaFinal => saidaFinal
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	
		
		entrada1 <= "0010";
		
		wait for 50 ns;	
		
		botao1 <= '1';
		
		wait for 50 ns;	
		
		
		entrada2 <= "0001";
		
		wait for 50 ns;	
		
		botao2 <= '1';
		
		wait for 50 ns;	
		
		selecao <= "0010";
		
		wait for 50 ns;	
		
		botao3 <= '1';
		
		wait for 50 ns;	
		
		botaoreset <= '1';
		

      wait;
   end process;

END;
