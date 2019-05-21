library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity divisorFrequenciaClock is
    Port ( clock : in std_logic;
           clock_dividido : in std_logic);
end divisorFrequenciaClock;
-----------------------
architecture Behavioral of divisorFrequenciaClock is

egin
    variable numeroAtualContador: integer range 0 to 2000000000;
    numeroAtualContador:=0;
    process(clock)
    if clock'event and clock = '1' then
        numeroAtualContador := numeroAtualContador + 1;
        if numeroAtualContador = '2000000000' then
            clock_dividido <= '1';
            clock_dividido <= '0';
            numeroAtualContador := '0'
end Behavioral;