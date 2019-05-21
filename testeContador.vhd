LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY testeContador IS
END testeContador;
 
ARCHITECTURE behavior OF testeContador IS 
 
    COMPONENT contador
    PORT(
         contagemAtual : OUT  std_logic_vector(3 downto 0);
         clock : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';

 	--Outputs
   signal contagemAtual : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: contador PORT MAP (
          contagemAtual => contagemAtual,
          clock => clock
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
