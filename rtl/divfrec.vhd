library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--Declara la interfaz del bloque
entity divfrec is
  port (
    clk : in std_logic;
    rst : in std_logic;
    clk_1hz : out std_logic
    );
end entity divfrec;

--Describe la funcionalidad del bloque
architecture beh of divfrec is
   signal contador : unsigned(31 downto 0);
   constant const1HZ : integer := 100000000/2;
   signal data_out_aux : std_logic;
   --constant c100MHz : integer := 2;
begin
   clk_1hz <= data_out_aux;
   process(rst, clk) 
   begin
       if rst = '1' then
           data_out_aux <= '0';
           contador <= (others => '0');
       elsif rising_edge(clk) then
            if contador = const1HZ then
                data_out_aux <= not data_out_aux;
                contador <= (others => '0');
            else
                contador <= contador + 1;
            end if;
        end if;
    end process;
end architecture;

