
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testeula IS
END testeula;
 
ARCHITECTURE behavior OF testeula IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ULA
    PORT(
         entrada1 : IN  std_logic_vector(3 downto 0);
         entrada2 : IN  std_logic_vector(3 downto 0);
         selecao : IN  std_logic_vector(3 downto 0);
         saidaFinal : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada1 : std_logic_vector(3 downto 0) := (others => '0');
   signal entrada2 : std_logic_vector(3 downto 0) := (others => '0');
   signal selecao : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal saidaFinal : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant break : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ULA PORT MAP (
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
		
		entrada1 <= "0001";
		
		wait for break;
		
		entrada2 <= "0001";
		
		wait for break;
		
		selecao <= "0011";
		
		wait for break;
		
      wait;
   end process;

END;
