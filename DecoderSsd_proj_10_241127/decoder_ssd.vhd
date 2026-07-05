library ieee;
use ieee.std_logic_1164.all;
entity decoder_ssd is
	port(SW : IN std_logic_vector(2 downto 0);
			HEX0 : OUT std_logic_vector(6 downto 0));
end decoder_ssd;
architecture behavior of decoder_ssd is
begin
	--HEX0 <= "0001001" when SW="000" else
				--"0000110" when SW="001" else
				--"1000111" when SW="010" else
				--"1000000" when SW="011" else
				--"0001100" when SW="100" else
				--"1000110" when SW="101" else
				--"0001110" when SW="110" else
				--"1111111";
	with SW select
	HEX0 <= "0001001" when "000",
				"0000110" when "001",
				"1000111" when "010",
				"1000000" when "011",
				"0001100" when "100",
				"1000110" when "101",
				"0001110" when "110",
				"1111111" when others;
end behavior;