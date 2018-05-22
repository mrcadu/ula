
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TestModuloFinal IS
END TestModuloFinal;
 
ARCHITECTURE behavior OF TestModuloFinal IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MODULOFINAL
    PORT(
         CLK : IN  std_logic;
         botao1 : IN  std_logic;
         botao2 : IN  std_logic;
         botao3 : IN  std_logic;
         botaoreset : IN  std_logic;
         entrada1 : IN  std_logic_vector(3 downto 0);
         entrada2 : IN  std_logic_vector(3 downto 0);
         selecao : IN  std_logic_vector(3 downto 0);
         saidaFinal : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal botao1 : std_logic := '0';
   signal botao2 : std_logic := '0';
   signal botao3 : std_logic := '0';
   signal botaoreset : std_logic := '0';
   signal entrada1 : std_logic_vector(3 downto 0) := (others => '0');
   signal entrada2 : std_logic_vector(3 downto 0) := (others => '0');
   signal selecao : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal saidaFinal : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MODULOFINAL PORT MAP (
          CLK => CLK,
          botao1 => botao1,
          botao2 => botao2,
          botao3 => botao3,
          botaoreset => botaoreset,
          entrada1 => entrada1,
          entrada2 => entrada2,
          selecao => selecao,
          saidaFinal => saidaFinal
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		wait for CLK_period;
		
		entrada1 <= "0001";
		
		wait for CLK_Period;
		
		botao1 <= '1';
		
		wait for CLK_Period;
		
		CLK <= '1';
		
		wait for CLK_period;

		entrada2 <= "0001";
		
		wait for CLK_period;
		
		botao2 <= '1';

		wait for CLK_period;
		
		CLK <= '0';
		
		wait for CLK_period;
		
		CLK <= '1';
		
		wait for CLK_period;
		
		selecao <= "0011";
		
		wait for CLK_period;
		
		botao3 <= '1';
		
		wait for CLK_period;
		
		CLK <= '0';
		
		wait for CLK_period;
		
		CLK <= '1';
		
      wait;
   end process;

END;
