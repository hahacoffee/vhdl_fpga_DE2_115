library ieee;
use ieee.std_logic_1164.all;
entity shiftreg is
generic (n: integer := 4);
	port( d, rst, clk : in std_logic;
			q : out std_logic);
end shiftreg;
architecture behavior of shiftreg is
signal internal : std_logic_vector(n-1 downto 0);
begin
	process(clk, rst)
	begin
		if(rst='1') then internal <= (others => '0');
		elsif(clk'event and clk='1') then
			internal <= d & internal(internal'left downto 1);
		end if;
	end process;
	q <= internal(0);
end behavior;