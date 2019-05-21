--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:47:33 05/20/2019
-- Design Name:   
-- Module Name:   /home/cadu/projetos/ula/divisor_test.vhd
-- Project Name:  ProjetoULA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: divisor_frequencia
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
 
ENTITY divisor_test IS
END divisor_test;
 
ARCHITECTURE behavior OF divisor_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT divisor_frequencia
    PORT(
         clock : IN  std_logic;
         clock_dividido : OUT  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal clock_dividido : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
   constant clock_dividido_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: divisor_frequencia PORT MAP (
          clock => clock,
          clock_dividido => clock_dividido,
          reset => reset
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
