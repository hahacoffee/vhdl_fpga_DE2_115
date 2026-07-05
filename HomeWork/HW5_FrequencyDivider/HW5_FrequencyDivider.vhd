library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity HW5_FrequencyDivider is
	port(CLOCK : in std_logic;
			LEDG : out std_logic_vector(0 to 0));
end HW5_FrequencyDivider;
architecture behavior of HW5_FrequencyDivider is
signal pre_Q : std_logic_vector(4 downto 0);
begin
	count : process(CLOCK)
	begin
		if (CLOCK'event and CLOCK='1') then
			if (pre_Q < 24) then
				pre_Q <= pre_Q + 1;
			else pre_Q <= "00000";
			end if;
			if (pre_Q < 12) then
				LEDG(0) <= '0';
			else LEDG(0) <= '1';
			end if;
		end if;
	end process count;
end behavior;
