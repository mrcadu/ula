
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY testesomador IS
END testesomador;
 
ARCHITECTURE behavior OF testesomador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fullAdder4bits
    PORT(
         num1 : IN  std_logic_vector(3 downto 0);
         num2 : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal num1 : std_logic_vector(3 downto 0) := ('0','0','1','1');
   signal num2 : std_logic_vector(3 downto 0) := ('0','0','1','1');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fullAdder4bits PORT MAP (
          num1 => num1,
          num2 => num2,
          Cin => Cin,
          Sum => Sum,
          Cout => Cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 

      wait;
   end process;

END;
