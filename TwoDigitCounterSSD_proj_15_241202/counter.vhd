library ieee;
use ieee.std_logic_1164.all;
entity counter is
	port(clk, rst : in std_logic;
		digit1, digit2: out std_logic_vector(0 to 6));
end counter;
architecture behavior of counter is
begin
	process(clk,rst)
		variable  temp1 : integer range 0 to 10;
		variable  temp2 : integer range 0 to 10;
	begin 
		if (rst='1') then 
		temp1 := 0;
		temp2 := 0;
		elsif (clk'event and clk='1') then
			temp1 := temp1+1;
			if (temp1 = 10) then
				temp1 := 0;
				temp2 := temp2 +1;
				if (temp2 = 10) then
					temp2 := 0;
				end if;
			end if;
		end if;
		case temp1 is
			when 0 => digit1 <= "0000001";
			when 1 => digit1 <= "1001111";
			when 2 => digit1 <= "0010010";
			when 3 => digit1 <= "0000110";
			when 4 => digit1 <= "1001100";
			when 5 => digit1 <= "0100100";
			when 6 => digit1 <= "0100000";
			when 7 => digit1 <= "0001111";
			when 8 => digit1 <= "0000000";
			when 9 => digit1 <= "0000100";
			when others => NULL;
		end case;
		case temp2 is
			when 0 => digit2 <= "0000001";
			when 1 => digit2 <= "1001111";
			when 2 => digit2 <= "0010010";
			when 3 => digit2 <= "0000110";
			when 4 => digit2 <= "1001100";
			when 5 => digit2 <= "0100100";
			when 6 => digit2 <= "0100000";
			when 7 => digit2 <= "0001111";
			when 8 => digit2 <= "0000000";
			when 9 => digit2 <= "0000100";
			when others => NULL;
		end case;		
	end process;
end behavior;