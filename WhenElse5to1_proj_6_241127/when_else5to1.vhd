library ieee;
use ieee.std_logic_1164.all;
entity when_else5to1 is
port(SW : IN std_logic_vector(17 downto 0);
		LEDR : OUT std_logic_vector(17 downto 0);
		LEDG : OUT std_logic_vector(2 downto 0));
end when_else5to1;
architecture behavior of when_else5to1 is
begin
	LEDR <= SW;
	LEDG <= SW(2 downto 0) when SW(17 downto 15)="000" else
				SW(5 downto 3) when SW(17 downto 15)="001" else
				SW(8 downto 6) when SW(17 downto 15)="010" else
				SW(11 downto 9) when SW(17 downto 15)="011" else
				SW(14 downto 12);	
end behavior;