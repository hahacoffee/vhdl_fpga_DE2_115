library ieee;
use ieee.std_logic_1164.all;
entity HW2_1to4Multiplexer is
port(SW : IN std_logic_vector(2 downto 0);
		LEDR : OUT std_logic_vector(2 downto 0);
		LEDG : OUT std_logic_vector(3 downto 0));
end HW2_1to4Multiplexer;
architecture behavior of HW2_1to4Multiplexer is
begin
	LEDR <= SW;
	LEDG <= ("000" & SW(0)) when SW(2 downto 1)="00" else
			  ("00" & SW(0) & "0")  when SW(2 downto 1)="01" else
			  ("0" & SW(0) & "00")  when SW(2 downto 1)="10" else
			  (SW(0) & "000");
end behavior;