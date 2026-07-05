library ieee;
use ieee.std_logic_1164.all;
entity with_select_when5to1 is
	port(SW : IN std_logic_vector(17 downto 0);
			LEDR : OUT std_logic_vector(17 downto 0);
			LEDG : OUT std_logic_vector(2 downto 0));
end with_select_when5to1;
architecture behavior of with_select_when5to1 is
begin
	LEDR <= SW;
	with SW(17 downto 15) select
		LEDG <= SW(2 downto 0) when "000",
		SW(5 downto 3) when "001",
		SW(8 downto 6) when "010",
		SW(11 downto 9) when "011",
		SW(14 downto 12) when others;
end behavior;