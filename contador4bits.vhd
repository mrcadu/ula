library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity contador4bits is
    Port ( clock : in std_logic;
           contagemAtual: out STD_LOGIC_VECTOR);
end contador4bits;
-----------------------
chitecture Behavioral of contador4bitsis

begin
    variable numeroAtualContador: integer range 0 to 15;
    numeroAtualContador:=0;
    process(clock)
    if clock'event and clock = '1' then
        numeroAtualContador := numeroAtualContador + 1;
        if numeroAtualContador = '15' then
            numeroAtualContador := '0'
end Behavioral;