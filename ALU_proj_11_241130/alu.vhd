library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity alu is
	port(a, b: in std_logic_vector(7 downto 0);
			sel: in std_logic_vector(3 downto 0);
			cin: in std_logic;
			y  : out std_logic_vector(7 downto 0));
end alu;
architecture dataflow of alu is
signal logic, arith : std_logic_vector(7 downto 0);
begin
	-- logic --
	with sel(2 downto 0) select
	logic <= NOT a when "000",
			NOT b when "001",
			a AND b when "010",
			a OR b when "011",
			a NAND b when "100",
			a NOR b when "101",
			a XOR b when "110",
			NOT (a XOR b) when others;
	
	-- arith --
	with sel(2 downto 0) select
	arith <= a when "000",
			a + 1 when "001",
			a - 1 when "010",
			b when "011",
			b + 1 when "100",
			b - 1 when "101",
			a + b when "110",
			a + b + cin when others;
			
	-- mux2to1 --
	with sel(3) select
	y <= logic when '0',
			arith when others;
end dataflow;