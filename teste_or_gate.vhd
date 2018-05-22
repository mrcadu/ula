LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY teste_or_gate IS
END teste_or_gate;
 
ARCHITECTURE behavior OF teste_or_gate IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AorB
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         S : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    
    -- Inputs
   signal A : std_logic_vector(3 downto 0) := ("0000");
   signal B : std_logic_vector(3 downto 0) := ("1110");

 	 -- Outputs
   
	signal S : std_logic_vector(3 downto 0);
   
	-- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
	-- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AorB PORT MAP (
          A => A,
          B => B,
          S => S
        );

	 
   teste1: process
   begin		
      
      wait for 100 ns;	
		A(2) <= '1';
		B(3) <= '0';
		
	end process;
	
	

END;
