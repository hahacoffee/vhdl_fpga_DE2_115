library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity counter4 is
port(KEY : in std_logic_vector(1 downto 0);
		LEDG : out std_logic_vector(3 downto 0));
end counter4;
architecture count of counter4 is
signal rst, clk : std_logic;
signal pre_Q : std_logic_vector(3 downto 0);
begin
	rst <= KEY(0); clk <= KEY(1);
	count : process(rst, clk) 
	begin
		if(rst='0') then pre_Q <= "0000";
		elsif(clk'event and clk='0') then
			if(pre_Q="1111") then pre_Q <= "0000";
			else pre_Q <= pre_Q+1;
			end if;
		end if;
		LEDG <= pre_Q;
	end process count;
end count;