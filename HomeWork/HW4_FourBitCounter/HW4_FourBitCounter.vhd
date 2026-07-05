library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
----------------------------------
entity HW4_FourBitCounter is
	port(KEY : in std_logic_vector(0 to 0);
			HEX0 : out std_logic_vector(0 to 6));
end HW4_FourBitCounter;
----------------------------------
architecture behavior of HW4_FourBitCounter is
signal clk, dir : std_logic;
signal QN : std_logic_vector(3 downto 0);
begin
	clk <= KEY(0);
	process(clk)
	begin
	if (clk'event and clk='1') then
		if(dir='0') then
			QN <= QN + 1;
		else QN <= QN - 1;
		end if;
	end if;
	if(QN="0000") then
		dir <= '0';
	elsif(QN="1001") then
		dir <= '1';
	end if;
end process;
with QN select
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
