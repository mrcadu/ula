--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:29:23 05/14/2019
-- Design Name:   
-- Module Name:   /home/cadu/projetos/ula/teste_final.vhd
-- Project Name:  ProjetoULA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MODULOFINAL
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
 
ENTITY teste_final IS
END teste_final;
 
ARCHITECTURE behavior OF teste_final IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MODULOFINAL
    PORT(
         CLK : IN  std_logic;
         botaoreset : IN  std_logic;
         selecao : IN  std_logic_vector(3 downto 0);
         saidaFinal : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal botaoreset : std_logic := '0';
   signal selecao : std_logic_vector(3 downto 0) := "0011";

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
