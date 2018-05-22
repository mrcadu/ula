-- TESTADA E FUNCIONANDO!


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TesteSubtrator IS
END TesteSubtrator;
 
ARCHITECTURE behavior OF TesteSubtrator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Subtrator
    PORT(
         minuendo : IN  std_logic_vector(3 downto 0);
         subtraendo : IN  std_logic_vector(3 downto 0);
         saida : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal minuendo : std_logic_vector(3 downto 0) := ("0110");
   signal subtraendo : std_logic_vector(3 downto 0) := ("0100");

 	--Outputs
   signal saida : std_logic_vector(3 downto 0);
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Subtrator PORT MAP (
          minuendo => minuendo,
          subtraendo => subtraendo,
          saida => saida
        );

END;
