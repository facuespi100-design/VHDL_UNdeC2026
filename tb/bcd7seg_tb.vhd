library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bcd7seg_tb is
--  Port ( );
end bcd7seg_tb;

architecture Behavioral of bcd7seg_tb is

--Declaración de componentes

 component bcd7seg
	port(
		data_in : in std_logic_vector(3 downto 0);
		data_out : out std_logic_vector(6 downto 0)
		);
	end component;

--Declaracion de seniales
	
	signal data_in_tb : std_logic_vector(3 downto 0);
	signal data_out_tb : std_logic_vector(6 downto 0);
	
begin
   --Instanciación de componentes 
	--y sus conexiones
   bcd7seg_1 : bcd7seg
   port map (
			data_in => data_in_tb,
			data_out => data_out_tb
			);
	--Estímulos
	estimulos: process
	begin
	   --Numeros
	   data_in_tb <= "0000";
	   wait for 1 ms;
	   data_in_tb <= "0001";
	   wait for 1 ms;
	   data_in_tb <= "0010";
	   wait for 1 ms;
	   data_in_tb <= "0011";
	   wait for 1 ms;
	   data_in_tb <= "0100";
	   wait for 1 ms;
	   data_in_tb <= "0101";
	   wait for 1 ms;
	   data_in_tb <= "0110";
	   wait for 1 ms;
	   data_in_tb <= "0111";
	   wait for 1 ms;
	   data_in_tb <= "1000";
	   wait for 1 ms;
	   data_in_tb <= "1001";
	   wait for 1 ms;
	   --Letras
	   data_in_tb <= "1010";
	   wait for 1 ms;
	   data_in_tb <= "1011";
	   wait for 1 ms;
	   data_in_tb <= "1100";
	   wait for 1 ms;
	   data_in_tb <= "1101";
	   wait for 1 ms;
	   data_in_tb <= "1111";
	   wait for 1 ms;
	end process;

end Behavioral;
