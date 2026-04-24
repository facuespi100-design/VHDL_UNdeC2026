library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity contador is
    Port (
        clk  : in  std_logic;
        rst  : in  std_logic;
        S    : out std_logic_vector(3 downto 0)
    );
end contador;

architecture Behavioral of contador is

    signal cuenta : unsigned(3 downto 0);

begin

    process(clk, rst)
    begin
        if rst = '1' then
            cuenta <= (others => '0');
        elsif rising_edge(clk) then
            cuenta <= cuenta + 1;
        end if;
    end process;

    S <= std_logic_vector(cuenta);

end Behavioral;