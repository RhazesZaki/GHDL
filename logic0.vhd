library ieee;
use ieee.std_logic_1164.all;

entity logic0 is
    port (
        A, B, C, D, E : in std_logic;
        F : out std_logic
    );
end logic0;

architecture behavior of logic0 is
begin
    F <= (not A and B) or (C and not D) or (A and E);
end behavior;
