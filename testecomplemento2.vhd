LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY testecomplemento2 IS
END testecomplemento2;
 
ARCHITECTURE behavior OF testecomplemento2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT complemento2
    PORT(
         num1 : IN  std_logic_vector(3 downto 0);
         saida : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal num1 : std_logic_vector(3 downto 0) := ("1111");
	
	-- Outputs
	signal saida : std_logic_vector(3 downto 0);

--	signal clock:Std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: complemento2 PORT MAP (
          num1 => num1,
			 saida => saida
        );

--   -- Clock process definitions
--   clock_process :process
--   begin
--		clock <= '0';
--		wait for clock_period/2;
--		clock <= '1';
--		wait for clock_period/2;
--   end process;
 

--   -- Stimulus process
--   stim_proc: process
--   begin		
----      -- hold reset state for 100 ns.
----      wait for 100 ns;	
----
----      wait for clock_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

END;
