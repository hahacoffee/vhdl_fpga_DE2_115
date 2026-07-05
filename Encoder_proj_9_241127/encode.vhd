library ieee;
use ieee.std_logic_1164.all;
entity encode is 
	port( a : IN std_logic_vector(7 downto 0);
			b : OUT std_logic_vector(2 downto 0));
end encode;
architecture behavior of encode is
begin
	--b <= "000" when a="00000001" else
			--"001" when a="00000010" else
			--"010" when a="00000100" else
			--"011" when a="00001000" else
			--"100" when a="00010000" else
			--"101" when a="00100000" else
			--"110" when a="01000000" else
			--"111" when a="10000000" else
			--"ZZZ";
	with a select
	b <= "000" when "00000001",
			"001" when "00000010",
			"010" when "00000100",
			"011" when "00001000",
			"100" when "00010000",
			"101" when "00100000",
			"110" when "01000000",
			"111" when "10000000",
			"ZZZ" when others;
end behavior;