LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY modulo_final_teste IS
END modulo_final_teste;
 
ARCHITECTURE behavior OF modulo_final_teste IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MODULOFINAL
    PORT(
         CLK : IN  std_logic;
         botaoreset : IN  std_logic;
         selecao : IN  std_logic_vector(3 downto 0);
         saidaFinal : buffer  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal botaoreset : std_logic := '0';
   signal selecao : std_logic_vector(3 downto 0) := "0001";

 	--Outputs
   signal saidaFinal : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MODULOFINAL PORT MAP (
          CLK => CLK,
          botaoreset => botaoreset,
          selecao => selecao,
          saidaFinal => saidaFinal
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
