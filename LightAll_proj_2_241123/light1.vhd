library ieee;
use ieee.std_logic_1164.all;
----------------------------------------------
entity light1 is
	port(SW : in std_logic_vector(0 to 17);
		  LEDR : out std_logic_vector(0 to 17));
end light1;
----------------------------------------------
architecture behavior of light1 is
begin
	LEDR <= SW;
end behavior;