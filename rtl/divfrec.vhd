library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;

--Declara la interfaz del bloque
entity divfrec is
  generic (
    OUTPUT_FREQ : natural 
    --:= 100000000/2 --1Hz
    := 2 --debug
  );
  port (
    clk : in std_logic;
    rst : in std_logic;
    clk_1hz : out std_logic
    );
end entity divfrec;

--Describe la funcionalidad del bloque
architecture beh of divfrec is
   signal contador : unsigned(integer(ceil(log2(real(OUTPUT_FREQ))))-1 downto 0);
   signal data_out_aux : std_logic;
begin
   clk_1hz <= data_out_aux;
   process(rst, clk) 
   begin
       if rst = '1' then
           data_out_aux <= '0';
           contador <= (others => '0');
       elsif rising_edge(clk) then
            if contador = OUTPUT_FREQ then
                data_out_aux <= not data_out_aux;
                contador <= (others => '0');
            else
                contador <= contador + 1;
            end if;
        end if;
    end process;
end architecture;

