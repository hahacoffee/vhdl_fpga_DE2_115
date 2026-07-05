library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity alu is
	port(a, b: in std_logic_vector(7 downto 0);
			sel: in std_logic_vector(2 downto 0);
			y  : out std_logic_vector(7 downto 0));
end alu;
architecture dataflow of alu is
begin
	with sel(2 downto 0) select
	y <= a + b when "000",
			a - b when "001",
			a and b when "010",
			a or b when "100",
			not a when "101",
			a xor b when "011",
			a when "110",
			b when others;
end dataflow;
