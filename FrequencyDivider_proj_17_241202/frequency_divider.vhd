library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity frequency_divider is
	port(KEY : in std_logic_vector(0 to 0);
			CLOCK_50 : in std_logic;
			LEDG : out std_logic_vector(0 to 0));
end frequency_divider;
architecture behavior of frequency_divider is
signal rst, clk, clk_o : std_logic;
signal pre_Q : std_logic_vector(24 downto 0);
begin
	rst <= KEY(0); clk <= CLOCK_50;
	count : process(clk, rst)
	begin
		if (rst = '0') then
			pre_Q <= (others => '0');
			clk_o <= '0';
		elsif (clk'event and clk='1') then
			if (pre_Q = "1100000000000000000000000") then
				pre_Q <= (others=> '0');
				clk_o <= not clk_o;
			else pre_Q <= pre_Q +1;
			end if;
		end if;
		LEDG(0) <= clk_o;
	end process count;
end behavior;