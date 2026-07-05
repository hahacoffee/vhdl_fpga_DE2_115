library ieee;
use ieee.std_logic_1164.all;
entity tri_state is
	port(ena : IN std_logic;
			input : IN std_logic_vector(7 downto 0);
			output : OUT std_logic_vector(7 downto 0));
end tri_state;
architecture behavior of tri_state is
begin
	output <= input when ena='0' else
					(others => 'Z');
end behavior;