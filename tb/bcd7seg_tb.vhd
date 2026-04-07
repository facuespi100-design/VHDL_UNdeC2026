library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_contador is
end tb_contador;

architecture Behavioral of tb_contador is

    signal clk  : std_logic := '0';
    signal rst  : std_logic := '0';
    signal S    : std_logic_vector(3 downto 0);

begin

    -- Instancia del diseño
    uut: entity work.contador
        port map (
            clk => clk,
            rst => rst,
            S   => S
        );

    -- Clock (10 ns)
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for 5 ns;
            clk <= '1';
            wait for 5 ns;
        end loop;
    end process;

    -- Estímulos
    stim_proc: process
    begin
        rst <= '1';
        wait for 20 ns;

        rst <= '0';

        wait for 200 ns;

        rst <= '1';
        wait for 20 ns;

        rst <= '0';

        wait;
    end process;

end Behavioral;
