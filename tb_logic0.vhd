library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_logic0 is
end tb_logic0;

architecture behavior of tb_logic0 is

    signal A, B, C, D, E : std_logic := '0';
    signal F : std_logic;

begin

    uut: entity work.logic0
        port map (
            A => A,
            B => B,
            C => C,
            D => D,
            E => E,
            F => F
        );

    process
        variable temp : std_logic_vector(4 downto 0);
    begin
        for i in 0 to 31 loop
            temp := std_logic_vector(to_unsigned(i, 5));

            A <= temp(4);
            B <= temp(3);
            C <= temp(2);
            D <= temp(1);
            E <= temp(0);

            wait for 10 ns;
        end loop;

        wait;
    end process;

end behavior;
