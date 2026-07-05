library ieee;
use ieee.std_logic_1164.all;
entity dff_1130 is
port(d, clk, rst : IN std_logic;
		q : OUT std_logic);
end dff_1130;
architecture behavior of dff_1130 is
begin
	process(rst, clk)
	begin
		if(rst='1') then
			q <= '0';
		elsif(clk'event and clk='1') then
			q <= d;
		end if;	
	end process;
end behavior;