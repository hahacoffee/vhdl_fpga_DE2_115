library ieee;
use ieee.std_logic_1164.all;
entity mux2to1_1125 is
	port ( SW : in std_logic_vector(2 downto 0);
			LEDR : out std_logic_vector(2 downto 0);
			LEDG : out std_logic_vector(0 to 0));
end mux2to1_1125;
architecture dataflow of mux2to1_1125 is
begin
	LEDR <= SW;
	LEDG(0) <= (not SW(2) AND SW(0)) OR (SW(2) AND SW(1));
end dataflow;