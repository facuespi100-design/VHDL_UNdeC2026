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
begin
    

end architecture;

