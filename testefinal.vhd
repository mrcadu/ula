--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:24:16 05/22/2018
-- Design Name:   
-- Module Name:   /home/sd/ula_important/testefinal.vhd
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
 
ENTITY testefinal IS
END testefinal;
 
ARCHITECTURE behavior OF testefinal IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MODULOFINAL
    PORT(
         CLK : IN  std_logic;
         botao1 : IN  std_logic;
         botao2 : IN  std_logic;
         botao3 : IN  std_logic;
         botaoreset : IN  std_logic;
         pinos : IN  std_logic_vector(3 downto 0);
         saidaFinal : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal botao1 : std_logic := '0';
   signal botao2 : std_logic := '0';
   signal botao3 : std_logic := '0';
   signal botaoreset : std_logic := '0';
   signal pinos : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal saidaFinal : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MODULOFINAL PORT MAP (
          CLK => CLK,
          botao1 => botao1,
          botao2 => botao2,
          botao3 => botao3,
          botaoreset => botaoreset,
          pinos => pinos,
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
      wait for 10 ns;	

      wait for CLK_period*10;

      --insert stimulus here 
		
		pinos <= "0001";
		
		wait for CLK_Period;
		
		botao1 <= '1';
		botao2 <= '0';
		botao3 <= '0';
	
		wait for CLK_period;

		pinos <= "0001";
		
		wait for CLK_period*10;
		
		botao1 <= '0';
		botao2 <= '1';
		botao3 <= '0';

		wait for CLK_period;
		
		pinos <= "0011" 	;
		
		wait for CLK_period;
		
		botao1 <= '0';
		botao2 <= '0';
		botao3 <= '1';
		
      wait;
   end process;

END;
