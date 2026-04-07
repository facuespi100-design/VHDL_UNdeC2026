library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity divfrec_tb is --entidad vacia
end entity divfrec_tb;

architecture test_div of divfrec_tb is
    component divfrec is
        generic (
            OUTPUT_FREQ : natural := 10
        );
        port (
        clk_in : in std_logic;
        rst : in std_logic;
        clk_out : out std_logic
        );
    end component;

    signal clk_tb, rst_tb, clk_out_tb : std_logic;    

    begin
    
    mi_divisor: divfrec
     port map( clk_in => clk_tb,
              rst => rst_tb,
              clk_out => clk_out_tb);

    process
    begin
        clk_tb <= '0';
        wait for 1 ms;
        clk_tb <= '1';
        wait for 1 ms;
    end process;

    rst_tb <= '0', '1' after 5 ms, '0' after 20 ms;


end architecture;