library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
----------------------------------
entity four_bit_counter_ssd is
	port(KEY : in std_logic_vector(1 downto 0);
			HEX0 : out std_logic_vector(0 to 6);
			LEDG : out std_logic_vector(3 downto 0));
end four_bit_counter_ssd;
----------------------------------
architecture behavior of four_bit_counter_ssd is
signal rst, clk : std_logic;
signal pre_Q : std_logic_vector(3 downto 0);
begin
	rst <= KEY(1); clk <= KEY(0);
	count : process(rst, clk)
	begin
	if (rst='0') then
		pre_Q <= "0000";
	elsif (clk'event and clk='1') then
		if(pre_Q="1001") then
			pre_Q <= "0000";
		else pre_Q <= pre_Q+1;
		end if;
	end if;
end process count;
with pre_Q select
		HEX0 <= "0000001" when "0000",
				  "1001111" when "0001",
				  "0010010" when "0010",
				  "0000110" when "0011",
				  "1001100" when "0100",
				  "0100100" when "0101",
				  "1100000" when "0110",
				  "0001111" when "0111",
				  "0000000" when "1000",
				  "0001100" when "1001",
				  "1111111" when others;
end behavior;
