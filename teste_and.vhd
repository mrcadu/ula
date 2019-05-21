--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:48:20 05/21/2019
-- Design Name:   
-- Module Name:   /home/cadu/projetos/ula/teste_and.vhd
-- Project Name:  ProjetoULA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: AandB
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY teste_and IS
END teste_and;
 
ARCHITECTURE behavior OF teste_and IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AandB
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         S : OUT  std_logic_vector(3 downto 0);
         flags : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal flags : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AandB PORT MAP (
          A => A,
          B => B,
          S => S,
          flags => flags
        );


   -- Stimulus process
   stim_proc: process
   begin		
      A <= "1111";
      wait for 100 ns;	
		B <= "0001";
      wait for 10 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
