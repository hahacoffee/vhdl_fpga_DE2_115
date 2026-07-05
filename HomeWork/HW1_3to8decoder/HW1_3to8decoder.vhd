library ieee;
use ieee.std_logic_1164.all;
entity HW1_3to8decoder is
	port(SW : IN std_logic_vector(2 downto 0);
			HEX0 : OUT std_logic_vector(7 downto 0));
end HW1_3to8decoder;
architecture behavior of HW1_3to8decoder is
begin
	HEX0 <= "10001001" when SW="000" else
				"10000110" when SW="001" else
				"11000111" when SW="010" else
				"11000000" when SW="011" else
				"10001100" when SW="100" else
				"11000110" when SW="101" else
				"10001110" when SW="110" else
				"11111111";
end behavior;