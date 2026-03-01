library ieee;
use ieee.std_logic_1164.all;
-------------------------------------------
entity diff_nand is
	port(a, b, clk : in std_logic;
					 q : out std_logic);
end diff_nand;
-------------------------------------------
architecture behavior of diff_nand is
signal temp : std_logic;
begin
	temp <= a nand b;
	process(clk)
		begin
		if(clk'event and clk = '1') then q <= temp;
		end if;
	end process;
end behavior;
	