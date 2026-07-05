library ieee;
use ieee.std_logic_1164.all;
entity full_adder is
	port(a, b, Cin: in std_logic;
			Sum, Cout: out std_logic);
end full_adder;
architecture dataflow of full_adder is
begin
	Sum <= a xor b xor Cin;
	Cout <= (a and b) or (b and Cin) or (a and Cin);
end dataflow;